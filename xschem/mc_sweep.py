#!/usr/bin/env python3
"""Run repeated GF180 Monte Carlo simulations and retain scalar results only.

Each trial runs in an isolated temporary directory. The source deck is never
modified, and ngspice logs/raw files/decks are deleted after their result has
been recorded in the output CSV.
"""
from __future__ import annotations

import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import csv
import math
import os
import re
import secrets
import shutil
import statistics
import subprocess
import sys
import tempfile
from pathlib import Path

import pvt_sweep


SWITCHES = {
    "mismatch": ("0", "1"),
    "global": ("1", "0"),
    "both": ("1", "1"),
    "none": ("0", "0"),
}
MAX_SEED = 2_147_483_647


def configure_statistical_switches(deck: str, mode: str = "both") -> str:
    """Set or insert GF180 statistical switches without changing other params."""
    if mode not in SWITCHES:
        raise ValueError(f"unknown variation mode {mode!r}; choose from {', '.join(SWITCHES)}")

    result = deck
    for name, value in zip(("sw_stat_global", "sw_stat_mismatch"), SWITCHES[mode]):
        assignment = re.compile(
            rf"(?i)(?<![A-Za-z0-9_]){name}(\s*=\s*)[^\s]+"
        )
        active_lines = [
            line for line in result.splitlines()
            if line.lstrip() and not line.lstrip().startswith(("*", "#"))
        ]
        occurrences = sum(len(assignment.findall(line)) for line in active_lines)
        if occurrences > 1:
            raise ValueError(f"deck must assign {name} at most once; found {occurrences}")
        if occurrences:
            result = "\n".join(
                assignment.sub(lambda match: f"{name}{match.group(1)}{value}", line)
                if line.lstrip() and not line.lstrip().startswith(("*", "#")) else line
                for line in result.split("\n")
            )
        else:
            directive = f".param {name}={value}"
            control = re.search(r"(?im)^\s*\.control\b", result)
            if control:
                result = result[:control.start()] + directive + "\n\n" + result[control.start():]
            else:
                result = result.rstrip() + "\n" + directive + "\n"
    return result


def select_measurement(deck: str, requested: str | None) -> str:
    """Select one measurement, requiring an explicit name when ambiguous."""
    if requested:
        return requested
    names = pvt_sweep.deck_result_names(deck)
    if len(names) == 1:
        return names[0]
    if not names:
        raise ValueError("no .meas or simple print result detected; provide --measure NAME")
    raise ValueError(
        "multiple results detected; select one with --measure: " + ", ".join(names)
    )


def set_random_seed(deck: str, seed: int) -> str:
    """Set one explicit ngspice random seed before model parameters evaluate."""
    pattern = re.compile(r"(?i)(?<![A-Za-z0-9_])seed(\s*=\s*)[^\s]+")
    lines = deck.splitlines()
    matches = [
        (index, pattern) for index, line in enumerate(lines)
        if line.lstrip() and not line.lstrip().startswith(("*", "#"))
        for pattern in pattern.finditer(line)
    ]
    if len(matches) > 1:
        raise ValueError("deck must set ngspice seed at most once")
    if matches:
        index, match = matches[0]
        lines[index] = pattern.sub(lambda found: f"seed{found.group(1)}{seed}", lines[index], count=1)
    else:
        if not lines:
            raise ValueError("SPICE deck is empty")
        lines.insert(1, f".option seed={seed}")
    return "\n".join(lines) + ("\n" if deck.endswith("\n") else "")


def run_trial(
    source: Path,
    template: str,
    measure: str,
    mode: str,
    ngspice: str,
    seed: int,
) -> tuple[str, str]:
    """Run one trial in a disposable cwd; return (value, status)."""
    with tempfile.TemporaryDirectory(prefix="gf180-mc-") as temporary:
        run_dir = Path(temporary)
        deck_path = run_dir / source.name
        log_path = run_dir / "ngspice.log"
        prepared = configure_statistical_switches(template, mode)
        prepared = set_random_seed(prepared, seed)
        prepared = pvt_sweep.resolve_relative_includes(prepared, source.parent)
        deck_path.write_text(prepared, encoding="utf-8")
        try:
            completed = subprocess.run(
                [ngspice, "-b", "-o", str(log_path), str(deck_path)],
                cwd=run_dir,
                text=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                check=False,
            )
        except OSError as exc:
            return "", f"launch_error: {exc}"
        log = log_path.read_text(encoding="utf-8", errors="replace") if log_path.exists() else completed.stdout
        if completed.returncode:
            return "", f"ngspice_error:{completed.returncode}"
        value = pvt_sweep.get_measurements(log, [measure])[measure]
        if not value:
            return "", "missing_measurement"
        try:
            parsed = float(value)
        except ValueError:
            return "", "invalid_measurement"
        if not math.isfinite(parsed):
            return "", "invalid_measurement"
        return value, "ok"


def summarize(values: list[float]) -> str:
    """Format a compact summary of successful trials."""
    if not values:
        return "Summary: no successful measurements."
    deviation = statistics.stdev(values) if len(values) > 1 else 0.0
    return (
        f"Summary: n={len(values)}, mean={statistics.mean(values):.9g}, "
        f"sample_stddev={deviation:.9g}, min={min(values):.9g}, max={max(values):.9g}"
    )


def run(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(
        description="Run repeated GF180 Monte Carlo simulations and save scalar results to CSV."
    )
    parser.add_argument("deck", type=Path, help="saved xschem-generated .spice/.cir deck")
    parser.add_argument("--runs", type=int, required=True, help="number of trials")
    parser.add_argument(
        "--jobs", type=int, default=os.cpu_count() or 1,
        help="maximum simultaneous ngspice trials (default: available CPU count)",
    )
    parser.add_argument("--out", type=Path, help="CSV path (default: results/<deck>/monte_carlo.csv)")
    parser.add_argument("--measure", help="result name from a .meas or simple print command")
    parser.add_argument(
        "--variation", choices=SWITCHES, default="both",
        help="GF180 variation mode (default: both global and mismatch)",
    )
    parser.add_argument(
        "--seed", type=int,
        help="first ngspice random seed (default: randomly chosen; trials use consecutive seeds)",
    )
    parser.add_argument("--ngspice", default="ngspice", help="ngspice executable")
    args = parser.parse_args(argv)

    try:
        if args.runs < 1:
            raise ValueError("--runs must be a positive integer")
        if args.jobs < 1:
            raise ValueError("--jobs must be a positive integer")
        seed = args.seed if args.seed is not None else secrets.randbelow(MAX_SEED - args.runs + 1) + 1
        if seed < 1 or seed + args.runs - 1 > MAX_SEED:
            raise ValueError(f"seed range must be between 1 and {MAX_SEED}")
        source = args.deck.expanduser().resolve(strict=True)
        if not source.is_file():
            raise ValueError(f"deck is not a file: {source}")
        if not shutil.which(args.ngspice) and not Path(args.ngspice).is_file():
            raise FileNotFoundError(f"cannot find ngspice executable: {args.ngspice}")
        template = source.read_text(encoding="utf-8", errors="replace")
        measure = select_measurement(template, args.measure)
        output = args.out.expanduser() if args.out else source.parent / "results" / source.stem / "monte_carlo.csv"
        if not output.is_absolute():
            output = Path.cwd() / output
        output.parent.mkdir(parents=True, exist_ok=True)
        values: list[float] = []
        print(f"Using ngspice seeds {seed} through {seed + args.runs - 1}")
        print(f"Running up to {min(args.jobs, args.runs)} trial(s) concurrently")
        with output.open("w", newline="", encoding="utf-8") as stream:
            fields = ["RUN", "SEED", "MEASURE", "VALUE", "STATUS"]
            writer = csv.DictWriter(stream, fieldnames=fields)
            writer.writeheader()
            with ThreadPoolExecutor(max_workers=min(args.jobs, args.runs)) as executor:
                futures = {
                    executor.submit(
                        run_trial, source, template, measure, args.variation, args.ngspice,
                        seed + index - 1,
                    ): index
                    for index in range(1, args.runs + 1)
                }
                for future in as_completed(futures):
                    index = futures[future]
                    try:
                        value, status = future.result()
                    except (OSError, ValueError, RuntimeError) as exc:
                        value, status = "", f"runner_error: {exc}"
                    run_seed = seed + index - 1
                    writer.writerow({
                        "RUN": index, "SEED": run_seed, "MEASURE": measure,
                        "VALUE": value, "STATUS": status,
                    })
                    stream.flush()
                    if status == "ok":
                        values.append(float(value))
                    else:
                        print(f"warning: run {index}/{args.runs}: {status}", file=sys.stderr)
                    print(f"[{index}/{args.runs}] {status}")
        print(f"Monte Carlo CSV: {output}")
        print(summarize(values))
        return 0
    except (OSError, ValueError, RuntimeError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(run())
