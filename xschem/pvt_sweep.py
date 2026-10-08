#!/usr/bin/env python3
"""Run curated GF180 PVT cases against an xschem-generated ngspice deck.

Every case runs in its own directory, so existing fixed-name ``write *.raw``
commands cannot overwrite another case. PVT edits are applied to temporary
deck copies; the source schematic and generated netlist are never modified.
"""
from __future__ import annotations

import argparse
import csv
import hashlib
import json
import re
import shutil
import subprocess
import sys
from pathlib import Path
from typing import Any

TOKEN = re.compile(r"@([A-Za-z_][A-Za-z0-9_]*)@")
MEASURE = re.compile(
    r"^\s*([A-Za-z_][A-Za-z0-9_]*)\s*=\s*([-+0-9.eE]+)",
    re.IGNORECASE | re.MULTILINE,
)
RAW_WRITE = re.compile(
    r"^(?P<indent>\s*)write\s+(?P<file>\"[^\"]+\"|'[^']+'|\S+)"
    r"(?P<vectors>.*)$",
    re.IGNORECASE,
)
DECK_MEASURE = re.compile(
    r"(?im)^\s*\.?meas(?:ure)?\s+(?:(?:ac|dc|tran|op|noise|tf)\s+)?"
    r"([A-Za-z_][A-Za-z0-9_]*)\b"
)
DECK_PRINT = re.compile(r"(?i)^\s*print\s+([A-Za-z_][A-Za-z0-9_]*)\s*$")


def read_cases(filename: Path) -> list[dict[str, str]]:
    """Read named, correlated PVT cases from CSV and validate their shape."""
    with filename.open(newline="", encoding="utf-8-sig") as stream:
        reader = csv.DictReader(stream)
        headers = reader.fieldnames
        if not headers or any(not h or not h.strip() for h in headers):
            raise ValueError(f"{filename}: expected non-empty CSV headers")
        if len(set(headers)) != len(headers):
            raise ValueError(f"{filename}: duplicate CSV headers are not allowed")
        rows = list(reader)
    if not rows:
        raise ValueError(f"{filename}: expected at least one case row")
    cases: list[dict[str, str]] = []
    for index, row in enumerate(rows, start=2):
        if None in row or any(value is None or not value.strip() for value in row.values()):
            raise ValueError(f"{filename}:{index}: missing or blank case value")
        cases.append({key.strip(): value.strip() for key, value in row.items() if key})
    if "CASE" in cases[0]:
        names = [case["CASE"] for case in cases]
        if len(set(names)) != len(names):
            raise ValueError(f"{filename}: CASE values must be unique")
    return cases


def case_name(case: dict[str, str], index: int) -> str:
    """Return a filesystem-safe, stable name for a case."""
    raw = case.get("CASE") or f"case_{index:03d}"
    slug = re.sub(r"[^A-Za-z0-9_.-]+", "_", raw.strip()).strip("._-")
    return slug or f"case_{index:03d}"


def overlay_filename(case_names: list[str]) -> str:
    """Name the combined raw file after the corner configurations it contains."""
    label = "_".join(case_names)
    basename = f"pvt_overlay_{label}.raw"
    if len(basename) <= 200:
        return basename
    digest = hashlib.sha256(label.encode("utf-8")).hexdigest()[:10]
    prefix = "_".join(name[:20] for name in case_names[:4])
    remaining = len(case_names) - 4
    return f"pvt_overlay_{prefix}_and_{remaining}_more_{digest}.raw"


def case_raw_path(path: Path, name: str) -> Path:
    """Add the corner name to a native raw filename."""
    return path.with_name(f"{path.stem}_{name}{path.suffix}")


def label_deck_case(deck: str, case: dict[str, str], name: str) -> str:
    """Put case identity in the SPICE title, which is carried into raw plots."""
    lines = deck.splitlines()
    if not lines:
        raise ValueError("SPICE deck is empty")
    values = ", ".join(
        f"{key}={value}" for key, value in case.items() if key != "CASE"
    )
    label = f"PVT case {name}"
    if values:
        label += f" ({values})"
    title = lines[0].replace("\r", " ").replace("\n", " ")
    lines[0] = f"{label} | {title}"
    return "\n".join(lines) + ("\n" if deck.endswith("\n") else "")


def prepare_output_directory(output: Path, *, clean: bool) -> None:
    """Create the output directory, clearing populated contents after consent."""
    if output.exists() and not output.is_dir():
        raise ValueError(f"output path exists and is not a directory: {output}")
    if output.is_dir() and any(output.iterdir()):
        if not clean:
            try:
                answer = input(f"Output directory is not empty: {output}\nClear its contents? [y/N] ")
            except EOFError as exc:
                raise ValueError(
                    "output directory is not empty; rerun interactively to confirm or use --clean-output"
                ) from exc
            if answer.strip().lower() not in {"y", "yes"}:
                raise ValueError("output directory was not cleared; no simulations were run")
        for child in output.iterdir():
            if child.is_dir() and not child.is_symlink():
                shutil.rmtree(child)
            else:
                child.unlink()
    output.mkdir(parents=True, exist_ok=True)


def read_profile(filename: Path, name: str) -> dict[str, Any]:
    try:
        profiles = json.loads(filename.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        raise ValueError(f"{filename}: invalid JSON: {exc}") from exc
    try:
        profile = profiles["profiles"][name]
    except (KeyError, TypeError) as exc:
        available = ", ".join(profiles.get("profiles", {}))
        raise ValueError(f"unknown profile {name!r}; available profiles: {available}") from exc
    return profile


def replace_profile_values(
    deck: str, case: dict[str, str], profile: dict[str, Any]
) -> str:
    """Apply configured regex edits, enforcing each expected match count."""
    result = deck
    for operation in profile.get("substitutions", []):
        column = operation["column"]
        if column not in case:
            raise ValueError(f"profile requires CSV column {column!r}")
        pattern = re.compile(operation["pattern"])
        matches = list(pattern.finditer(result))
        expected = operation.get("matches", 1)
        if len(matches) != expected:
            raise ValueError(
                f"profile substitution for {column} expected {expected} match(es), "
                f"found {len(matches)}"
            )
        replacement = operation["replacement"].replace("{value}", case[column])
        result = pattern.sub(replacement, result)

    for operation in profile.get("directives", []):
        column = operation["column"]
        if column not in case:
            raise ValueError(f"profile requires CSV column {column!r}")
        pattern = re.compile(operation["pattern"])
        matches = list(pattern.finditer(result))
        if len(matches) > 1:
            raise ValueError(
                f"profile directive for {column} expected at most one existing directive, "
                f"found {len(matches)}"
            )
        line = operation["replacement"].replace("{value}", case[column])
        if matches:
            result = pattern.sub(lambda _: line, result, count=1)
        else:
            marker = re.compile(operation["insert_before"])
            if not marker.search(result):
                raise ValueError(
                    f"cannot insert {column}: marker {operation['insert_before']!r} not found"
                )
            result = marker.sub(lambda _match: line + "\n\n" + _match.group(0), result, count=1)
    return result


def substitute_tokens(deck: str, case: dict[str, str]) -> str:
    missing = sorted(set(TOKEN.findall(deck)) - set(case))
    if missing:
        raise ValueError("no value supplied for deck token(s): " + ", ".join(missing))
    return TOKEN.sub(lambda match: case[match.group(1)], deck)


def resolve_relative_includes(deck: str, base_dir: Path) -> str:
    """Keep relative top-level include paths valid after changing run CWD."""
    directive = re.compile(
        r"(?im)^(\s*\.(?:include|inc|lib)\s+)(\"[^\"]+\"|'[^']+'|\S+)(.*)$"
    )

    def resolve(match: re.Match[str]) -> str:
        raw_path = match.group(2)
        quote = raw_path[0] if raw_path.startswith(('"', "'")) else ""
        path_text = raw_path[1:-1] if quote else raw_path
        # A .lib control statement can name a section without a file. Restrict
        # path normalization to values that visibly identify a filesystem path.
        if "$" in path_text or "{" in path_text or (match.group(0).lstrip().lower().startswith(".lib ") and "/" not in path_text):
            return match.group(0)
        candidate = Path(path_text).expanduser()
        if candidate.is_absolute():
            return match.group(0)
        absolute = (base_dir / candidate).resolve()
        return f"{match.group(1)}{quote}{absolute}{quote}{match.group(3)}"

    return directive.sub(resolve, deck)


def get_measurements(
    log: str, requested: list[str], *, strict: bool = False
) -> dict[str, str]:
    found = {name.lower(): value for name, value in MEASURE.findall(log)}
    missing = [name for name in requested if name.lower() not in found]
    if missing and strict:
        raise RuntimeError("measurement(s) not found in ngspice output: " + ", ".join(missing))
    return {name: found.get(name.lower(), "") for name in requested}


def deck_result_names(deck: str) -> list[str]:
    """Find scalar result names declared by meas or simple print commands."""
    names: list[str] = []
    for line in deck.splitlines():
        if line.lstrip().startswith("*"):
            continue
        match = DECK_MEASURE.match(line) or DECK_PRINT.match(line)
        if match and match.group(1).lower() not in {name.lower() for name in names}:
            names.append(match.group(1))
    return names


def overlay_vector_name(vector: str, case_name: str) -> str:
    """Build a legal, case-identifiable vector name for the overlay raw."""
    base = re.sub(r"[^A-Za-z0-9_]+", "_", vector).strip("_").lower()
    case = re.sub(r"[^A-Za-z0-9_]+", "_", case_name).strip("_").lower()
    if not base or base[0].isdigit():
        base = f"vec_{base}"
    return f"{base}__{case}"


def with_overlay_write(
    deck: str, overlay: Path, append: bool, case_name: str
) -> str:
    """Mirror raw writes using corner-suffixed vector names in the overlay."""
    if any(char.isspace() for char in str(overlay)):
        raise ValueError("overlay raw path must not contain whitespace (ngspice limitation)")
    lines = deck.splitlines()
    output: list[str] = []
    writes = 0
    for line in lines:
        output.append(line)
        match = RAW_WRITE.match(line)
        if not match or not re.search(r"\.raw(?:\s|$)", match.group("file"), re.IGNORECASE):
            continue
        if append or writes:
            output.append(match.group("indent") + "set appendwrite")
        vectors = match.group("vectors").split()
        aliases = [overlay_vector_name(vector, case_name) for vector in vectors]
        for alias, vector in zip(aliases, vectors):
            output.append(f"{match.group('indent')}let {alias} = {vector}")
        output.append(f"{match.group('indent')}write {overlay} {' '.join(aliases)}")
        writes += 1
    if not writes:
        raise ValueError("--overlay-raw requested, but the deck has no 'write *.raw' command")
    return "\n".join(output) + ("\n" if deck.endswith("\n") else "")


def run() -> int:
    script_dir = Path(__file__).resolve().parent
    parser = argparse.ArgumentParser(
        description="Run each row of a PVT CSV against an xschem-generated SPICE deck."
    )
    parser.add_argument("deck", type=Path, help="saved xschem-generated .spice/.cir deck")
    parser.add_argument("--cases", type=Path, default=script_dir / "pvt_cases.csv")
    parser.add_argument("--profile", default="gf180", help="deck-edit profile name")
    parser.add_argument("--profiles", type=Path, default=script_dir / "pvt_profiles.json")
    parser.add_argument("--outdir", type=Path,
                        help="result directory (default: <deck directory>/results/<deck name>)")
    parser.add_argument("--clean-output", action="store_true",
                        help="clear a populated output directory without prompting")
    parser.add_argument("--measure", action="append", default=[], metavar="NAME",
                        help="measurement to extract; repeat to select multiple (default: all deck meas names)")
    parser.add_argument("--strict-measures", action="store_true",
                        help="fail if a requested measurement is missing in any case")
    parser.add_argument("--metrics-csv", type=Path,
                        help="measurement CSV path (default: measurements.csv in result directory)")
    parser.add_argument("--no-metrics-csv", action="store_true",
                        help="do not write the measurements CSV")
    overlay_group = parser.add_mutually_exclusive_group()
    overlay_group.add_argument("--overlay-raw", dest="overlay_raw", action="store_true",
                               help="write a multi-plot raw overlay (default)")
    overlay_group.add_argument("--no-overlay-raw", dest="overlay_raw", action="store_false",
                               help="disable the combined raw overlay")
    parser.set_defaults(overlay_raw=True)
    gaw_group = parser.add_mutually_exclusive_group()
    gaw_group.add_argument("--open-gaw", dest="open_gaw", action="store_true",
                           help="open generated raw output with GAW (default)")
    gaw_group.add_argument("--no-open-gaw", dest="open_gaw", action="store_false",
                           help="do not launch GAW")
    parser.set_defaults(open_gaw=True)
    parser.add_argument("--gaw", default="gaw", help="GAW executable")
    parser.add_argument("--ngspice", default="ngspice", help="ngspice executable")
    args = parser.parse_args()

    try:
        source = args.deck.expanduser().resolve(strict=True)
        if not source.is_file():
            raise ValueError(f"deck is not a file: {source}")
        output = (
            args.outdir.expanduser().resolve()
            if args.outdir
            else source.parent / "results" / source.stem
        )
        prepare_output_directory(output, clean=args.clean_output)
        cases = read_cases(args.cases.expanduser())
        profile = read_profile(args.profiles.expanduser(), args.profile)
        if not shutil.which(args.ngspice) and not Path(args.ngspice).exists():
            raise FileNotFoundError(f"cannot find ngspice executable: {args.ngspice}")
        template = source.read_text(encoding="utf-8", errors="replace")
        requested_measures = args.measure or deck_result_names(template)
        write_metrics = not args.no_metrics_csv and bool(requested_measures)
        if args.metrics_csv and args.no_metrics_csv:
            raise ValueError("--metrics-csv and --no-metrics-csv cannot be used together")
        measurements: list[dict[str, str]] = []
        raw_paths: list[Path] = []
        metrics_path: Path | None = None
        case_names = [case_name(case, index) for index, case in enumerate(cases, start=1)]
        if len(set(case_names)) != len(case_names):
            raise ValueError("case names must remain unique after filesystem-safe normalization")
        overlay = output / overlay_filename(case_names) if args.overlay_raw else None
        if overlay and overlay.exists():
            overlay.unlink()

        for index, case in enumerate(cases, start=1):
            name = case_names[index - 1]
            run_dir = output / name
            if run_dir.exists():
                raise ValueError(f"duplicate or colliding case output name: {name}")
            run_dir.mkdir(parents=True)
            deck = substitute_tokens(replace_profile_values(template, case, profile), case)
            deck = resolve_relative_includes(deck, source.parent)
            deck = label_deck_case(deck, case, name)
            if overlay:
                deck = with_overlay_write(deck, overlay.name, append=index > 1, case_name=name)
            simdeck = run_dir / f"{source.stem}_{name}.spice"
            log_path = run_dir / f"{source.stem}_{name}.log"
            simdeck.write_text(deck, encoding="utf-8")
            completed = subprocess.run(
                [args.ngspice, "-b", "-o", str(log_path), str(simdeck)],
                cwd=output,
                text=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                check=False,
            )
            log = log_path.read_text(encoding="utf-8", errors="replace") if log_path.exists() else completed.stdout
            if completed.returncode:
                raise RuntimeError(f"ngspice failed for case {name} (exit {completed.returncode}):\n{log}")
            case_raws: list[Path] = []
            for produced in sorted(output.rglob("*.raw")):
                if overlay and produced == overlay:
                    continue
                relative = produced.relative_to(output)
                if relative.parts[0] in case_names:
                    continue
                destination = case_raw_path(run_dir / relative, name)
                destination.parent.mkdir(parents=True, exist_ok=True)
                shutil.move(str(produced), destination)
                case_raws.append(destination)
            if not case_raws or any(path.stat().st_size == 0 for path in case_raws):
                raise RuntimeError(f"case {name}: ngspice did not produce a non-empty raw file")
            raw_paths.extend(case_raws)
            if requested_measures:
                values = get_measurements(log, requested_measures, strict=args.strict_measures)
                for metric, value in values.items():
                    status = "ok" if value else "missing"
                    measurements.append(
                        {**case, "METRIC": metric, "VALUE": value, "STATUS": status}
                    )
                    if not value:
                        print(f"warning: {name}: measurement {metric} was not reported by ngspice")
            print(f"[{index}/{len(cases)}] {name}: {len(case_raws)} raw file(s)")

        if write_metrics:
            csv_path = args.metrics_csv.expanduser() if args.metrics_csv else output / "measurements.csv"
            if args.metrics_csv and not csv_path.is_absolute():
                csv_path = output / csv_path
            metrics_path = csv_path
            csv_path.parent.mkdir(parents=True, exist_ok=True)
            fields = list(cases[0]) + ["METRIC", "VALUE", "STATUS"]
            with csv_path.open("w", newline="", encoding="utf-8") as stream:
                writer = csv.DictWriter(stream, fieldnames=fields)
                writer.writeheader()
                writer.writerows(measurements)

        manifest = {
            "source_deck": str(source),
            "profile": args.profile,
            "cases_csv": str(args.cases.expanduser().resolve()),
            "raw_files": [str(path.relative_to(output)) for path in raw_paths],
            "overlay_raw": str(overlay.relative_to(output)) if overlay else None,
            "metrics_csv": (
                str(metrics_path.relative_to(output))
                if metrics_path and metrics_path.is_relative_to(output)
                else str(metrics_path) if metrics_path else None
            ),
            "measurements": measurements,
        }
        (output / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n", encoding="utf-8")
        if overlay and (not overlay.exists() or overlay.stat().st_size == 0):
            raise RuntimeError("ngspice did not produce the requested overlay raw file")
        if args.open_gaw:
            if not shutil.which(args.gaw) and not Path(args.gaw).exists():
                print(f"warning: GAW executable {args.gaw!r} not found; raw files were retained", file=sys.stderr)
            else:
                targets = [overlay] if overlay else raw_paths
                subprocess.Popen([args.gaw, *(str(path) for path in targets)])
        print(f"PVT results: {output}")
        return 0
    except (OSError, KeyError, ValueError, RuntimeError, json.JSONDecodeError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(run())
