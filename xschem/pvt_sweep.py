#!/usr/bin/env python3
"""Generic PVT / parameter sweep runner for batch ngspice simulations.

The input deck is an xschem-generated SPICE netlist template containing literal
@NAME@ tokens, for example @MOS@, @TEMP@, @VDD@, and @VCM@.  It may also
contain xschem's GF180 model-directory reference $::180MCU_MODELS.  For every
point, this program substitutes the configured values, runs ngspice in batch
mode, extracts one named .meas result, and writes a CSV matrix.

Every @NAME@ token used by the deck must be supplied by --sweep or --cases.
If --inner is omitted, the variable in the final --sweep argument is the inner
sweep variable.  If $::180MCU_MODELS occurs in the deck, supply --pdk with the
directory containing design.ngspice and sm141064.ngspice.
"""
from __future__ import annotations

import argparse
import csv
import itertools
import re
import shutil
import subprocess
import sys
import tempfile
from decimal import Decimal, InvalidOperation
from pathlib import Path

TOKEN = re.compile(r"@([A-Za-z_][A-Za-z0-9_]*)@")
XSCHEM_MODELS = "$::180MCU_MODELS"


def values(spec: str) -> list[str]:
    """Parse either a,b,c or start:stop:step, retaining SPICE-friendly text."""
    if ":" not in spec:
        answer = [x.strip() for x in spec.split(",") if x.strip()]
        if not answer:
            raise ValueError("empty value list")
        return answer
    parts = spec.split(":")
    if len(parts) != 3:
        raise ValueError(f"range must be start:stop:step, got {spec!r}")
    try:
        start, stop, step = map(Decimal, parts)
    except InvalidOperation as exc:
        raise ValueError(f"range needs plain decimal numbers: {spec!r}") from exc
    if step == 0 or (stop - start) * step < 0:
        raise ValueError(f"range has an invalid direction: {spec!r}")
    result, x = [], start
    # Decimal avoids dropped/endlessly repeated floating-point endpoints.
    while (step > 0 and x <= stop) or (step < 0 and x >= stop):
        result.append(format(x, "f"))
        x += step
    return result


def assignment(text: str) -> tuple[str, list[str]]:
    if "=" not in text:
        raise ValueError(f"expected NAME=VALUES, got {text!r}")
    name, spec = text.split("=", 1)
    if not re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", name):
        raise ValueError(f"invalid variable name {name!r}")
    return name, values(spec)


def read_cases(filename: Path) -> list[dict[str, str]]:
    with filename.open(newline="") as f:
        rows = list(csv.DictReader(f))
    if not rows or not rows[0]:
        raise ValueError(f"{filename}: expected a header plus at least one case")
    if any(not k or v is None or v == "" for row in rows for k, v in row.items()):
        raise ValueError(f"{filename}: blank headers or values are not permitted")
    return [{k: v for k, v in row.items() if k} for row in rows]


def model_path(path: Path) -> str:
    """Return a checked, absolute model-directory path usable in a SPICE deck."""
    expanded = path.expanduser().resolve()
    if not expanded.is_dir():
        raise FileNotFoundError(f"PDK model directory does not exist: {expanded}")
    if any(char.isspace() for char in str(expanded)):
        raise ValueError(
            "--pdk path contains whitespace; use a PDK path without whitespace "
            "because this value is inserted into unquoted .include/.lib paths")
    return str(expanded)


def prepare_template(template: str, pdk: Path | None) -> str:
    """Replace the xschem-only model-directory reference, when present."""
    if XSCHEM_MODELS not in template:
        return template
    if pdk is None:
        raise ValueError(
            f"deck contains {XSCHEM_MODELS}; supply --pdk DIRECTORY "
            "with the GF180 ngspice model files")
    return template.replace(XSCHEM_MODELS, model_path(pdk))


def deck_for(template: str, point: dict[str, str]) -> str:
    missing = sorted(set(TOKEN.findall(template)) - set(point))
    if missing:
        raise ValueError("no value supplied for deck token(s): " + ", ".join(missing))
    return TOKEN.sub(lambda m: point[m.group(1)], template)


def get_measure(log: str, measure: str) -> str:
    # ngspice prints .meas results as: measure_name = numeric_value
    pat = re.compile(r"^\s*" + re.escape(measure) +
                     r"\s*=\s*([-+0-9.eE]+)", re.IGNORECASE | re.MULTILINE)
    found = pat.findall(log)
    if not found:
        print(log)
        raise RuntimeError(f"measurement {measure!r} was not found in ngspice output")
    return found[-1]


def label(point: dict[str, str], names: list[str]) -> str:
    return "; ".join(f"{name}={point[name]}" for name in names)


def main() -> int:
    ap = argparse.ArgumentParser(
        description="Substitute netlist values, run batch ngspice, and write a CSV matrix.")
    ap.add_argument("deck", type=Path, help="xschem-generated SPICE deck/template")
    ap.add_argument("--measure", required=True, help="name used by .meas, e.g. vos")
    ap.add_argument(
        "--pdk", type=Path, metavar="DIRECTORY",
        help=("directory replacing $::180MCU_MODELS; it must contain the GF180 "
              "ngspice model files, such as design.ngspice"))
    ap.add_argument(
        "--inner", metavar="NAME",
        help="sweep variable used as CSV rows; defaults to the final --sweep argument")
    ap.add_argument("--sweep", action="append", default=[], metavar="NAME=VALUES",
                    help="repeatable; VALUES are a,b,c or start:stop:step")
    ap.add_argument("--cases", type=Path, help="CSV of correlated outer-case values")
    ap.add_argument("--out", type=Path, required=True, help="result CSV filename")
    ap.add_argument("--ngspice", default="ngspice", help="ngspice executable/path")
    ap.add_argument("--keep", action="store_true", help="keep generated decks and logs")
    args = ap.parse_args()

    try:
        declared: dict[str, list[str]] = {}
        sweep_order: list[str] = []
        for item in args.sweep:
            name, vals = assignment(item)
            if name in declared:
                raise ValueError(f"{name!r} was supplied more than once")
            declared[name] = vals
            sweep_order.append(name)

        if args.inner is None:
            if not sweep_order:
                raise ValueError("at least one --sweep is required when --inner is omitted")
            inner = sweep_order[-1]
        else:
            inner = args.inner
            if inner not in declared:
                raise ValueError("--inner must name a variable supplied by --sweep")

        cases = read_cases(args.cases) if args.cases else [{}]
        case_names = list(cases[0]) if args.cases else []
        if args.cases and any(list(row) != case_names for row in cases):
            raise ValueError("all --cases CSV rows must use the same headers")
        overlap = set(declared) & set(case_names)
        if overlap:
            raise ValueError("variable supplied by both --sweep and --cases: " +
                             ", ".join(sorted(overlap)))

        outer_sweep_names = [name for name in sweep_order if name != inner]
        outer_names = case_names + outer_sweep_names
        outer_values = [declared[name] for name in outer_sweep_names]
        outer_points: list[dict[str, str]] = []
        for case in cases:
            combinations = itertools.product(*outer_values) if outer_values else [()]
            for combo in combinations:
                outer_points.append(case | dict(zip(outer_sweep_names, combo)))
        if not outer_points:
            raise ValueError("no outer simulation points")

        template = prepare_template(args.deck.read_text(), args.pdk)
        if not shutil.which(args.ngspice) and not Path(args.ngspice).exists():
            raise FileNotFoundError(f"cannot find ngspice executable: {args.ngspice}")

        table: list[list[str]] = [[inner] + [label(p, outer_names) for p in outer_points]]
        rows = {value: [value] for value in declared[inner]}
        root = args.out.with_suffix("")
        work = Path(tempfile.mkdtemp(prefix="pvt_sweep_"))
        try:
            for col, outer in enumerate(outer_points, start=1):
                for row_index, inner_value in enumerate(declared[inner]):
                    point = outer | {inner: inner_value}
                    stem = f"{root.name}_{col:03d}_{row_index:04d}"
                    simdeck = work / f"{stem}.sp"
                    log = work / f"{stem}.log"
                    simdeck.write_text(deck_for(template, point))
                    run = subprocess.run(
                        [args.ngspice, "-b", "-o", str(log), str(simdeck)],
                        text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
                    text = log.read_text(errors="replace") if log.exists() else run.stdout
                    if run.returncode:
                        print(text)
                        raise RuntimeError(
                            f"ngspice failed at {label(point, list(point))}\n{text}")
                    rows[inner_value].append(get_measure(text, args.measure))
                    if args.keep:
                        args.out.parent.mkdir(parents=True, exist_ok=True)
                        shutil.copy2(simdeck, args.out.parent / simdeck.name)
                        shutil.copy2(log, args.out.parent / log.name)
            table.extend(rows[value] for value in declared[inner])
            args.out.parent.mkdir(parents=True, exist_ok=True)
            with args.out.open("w", newline="") as f:
                csv.writer(f).writerows(table)
        finally:
            shutil.rmtree(work, ignore_errors=True)
    except (ValueError, FileNotFoundError, RuntimeError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 2
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
