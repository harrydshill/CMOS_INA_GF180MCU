"""Focused tests for the PVT deck transformation helpers."""
from __future__ import annotations

import shutil
import subprocess
import tempfile
import unittest
from pathlib import Path
import json
from unittest.mock import patch

import pvt_sweep


ROOT = Path(__file__).resolve().parent
SAMPLE = """.lib /pdk/sm141064.ngspice typical
.lib /pdk/sm141064.ngspice res_typical
.lib /pdk/sm141064.ngspice bjt_typical
.lib /pdk/sm141064.ngspice mimcap_typical
* .temp @TEMP@
.param vdd=5
V1 PSUP 0 5
.control
ac dec 10 1 1Meg
meas ac UGF when gain_db=0
write tb.raw frequency v(out)
.endc
"""
CASE = {
    "CASE": "ss",
    "MOS": "ss",
    "RES": "res_ss",
    "BJT": "bjt_ss",
    "TEMP": "125",
    "VDD": "2.97",
}


class PvtSweepHelpersTest(unittest.TestCase):
    def test_populated_output_requires_confirmation_and_decline_preserves_files(self) -> None:
        with tempfile.TemporaryDirectory() as temp:
            output = Path(temp) / "results"
            output.mkdir()
            sentinel = output / "keep.txt"
            sentinel.write_text("preserve")
            with patch("builtins.input", return_value="n"):
                with self.assertRaisesRegex(ValueError, "was not cleared"):
                    pvt_sweep.prepare_output_directory(output, clean=False)
            self.assertEqual(sentinel.read_text(), "preserve")

    def test_populated_output_is_cleared_after_confirmation(self) -> None:
        with tempfile.TemporaryDirectory() as temp:
            output = Path(temp) / "results"
            output.mkdir()
            (output / "old.txt").write_text("old")
            with patch("builtins.input", return_value="yes"):
                pvt_sweep.prepare_output_directory(output, clean=False)
            self.assertEqual(list(output.iterdir()), [])

    def test_clean_output_flag_bypasses_prompt(self) -> None:
        with tempfile.TemporaryDirectory() as temp:
            output = Path(temp) / "results"
            output.mkdir()
            (output / "old.txt").write_text("old")
            with patch("builtins.input", side_effect=AssertionError("should not prompt")):
                pvt_sweep.prepare_output_directory(output, clean=True)
            self.assertEqual(list(output.iterdir()), [])

    def test_overlay_filename_lists_corner_names(self) -> None:
        self.assertEqual(
            pvt_sweep.overlay_filename(["typical", "ss", "ff", "fs", "sf"]),
            "pvt_overlay_typical_ss_ff_fs_sf.raw",
        )
        long_names = [f"corner_{index}_" + "x" * 40 for index in range(8)]
        shortened = pvt_sweep.overlay_filename(long_names)
        self.assertLessEqual(len(shortened), 200)
        self.assertIn("and_4_more_", shortened)

    def test_case_raw_filename_includes_corner_name(self) -> None:
        self.assertEqual(
            pvt_sweep.case_raw_path(Path("waveforms/tb_aol.raw"), "ss"),
            Path("waveforms/tb_aol_ss.raw"),
        )

    def test_case_label_is_written_into_spice_title(self) -> None:
        labeled = pvt_sweep.label_deck_case("Original deck title\nR1 a b 1k\n", CASE, "ss")
        self.assertTrue(labeled.startswith("PVT case ss (MOS=ss, RES=res_ss, BJT=bjt_ss, TEMP=125, VDD=2.97) | Original deck title\n"))

    def test_gf180_profile_updates_all_csv_fields(self) -> None:
        profile = pvt_sweep.read_profile(ROOT / "pvt_profiles.json", "gf180")
        changed = pvt_sweep.replace_profile_values(SAMPLE, CASE, profile)
        changed = pvt_sweep.substitute_tokens(changed, CASE)
        self.assertIn(".lib /pdk/sm141064.ngspice ss", changed)
        self.assertIn(".lib /pdk/sm141064.ngspice res_ss", changed)
        self.assertIn(".lib /pdk/sm141064.ngspice bjt_ss", changed)
        self.assertIn(".lib /pdk/sm141064.ngspice mimcap_typical", changed)
        self.assertIn(".temp 125", changed)
        self.assertIn(".param vdd=2.97", changed)
        self.assertIn("V1 PSUP 0 2.97", changed)

    def test_gf180_profile_matches_psup_lv_supply_source(self) -> None:
        profile = pvt_sweep.read_profile(ROOT / "pvt_profiles.json", "gf180")
        deck = SAMPLE.replace("V1 PSUP 0 5", "VDD PSUP_LV 0 3.3")
        changed = pvt_sweep.replace_profile_values(deck, CASE, profile)
        self.assertIn("VDD PSUP_LV 0 2.97", changed)
        self.assertIn(".param vdd=2.97", changed)

    def test_profile_fails_if_expected_supply_is_missing(self) -> None:
        profile = pvt_sweep.read_profile(ROOT / "pvt_profiles.json", "gf180")
        with self.assertRaisesRegex(ValueError, "VDD expected 1 match"):
            pvt_sweep.replace_profile_values(SAMPLE.replace("V1 PSUP 0 5\n", ""), CASE, profile)

    def test_temperature_is_inserted_if_missing(self) -> None:
        profile = pvt_sweep.read_profile(ROOT / "pvt_profiles.json", "gf180")
        changed = pvt_sweep.replace_profile_values(
            SAMPLE.replace("* .temp @TEMP@\n", ""), CASE, profile
        )
        self.assertRegex(changed, r"\.temp 125\n\n\.control")

    def test_measure_extraction_is_case_insensitive(self) -> None:
        self.assertEqual(
            pvt_sweep.get_measurements("UGF = 1.234e+06\nphase_margin = 61.2\n", ["UGF", "PHASE_MARGIN"]),
            {"UGF": "1.234e+06", "PHASE_MARGIN": "61.2"},
        )

    def test_missing_measurement_is_reported(self) -> None:
        with self.assertRaisesRegex(RuntimeError, "missing"):
            pvt_sweep.get_measurements("UGF = 1", ["UGF", "missing"], strict=True)
        self.assertEqual(
            pvt_sweep.get_measurements("UGF = 1", ["UGF", "missing"]),
            {"UGF": "1", "missing": ""},
        )

    def test_deck_result_names_detect_meas_and_print_ignore_comments_duplicates(self) -> None:
        deck = """* meas ac ignored 0
.control
meas ac gain_peak max gain_db
meas ac phase_margin find phase when gain_db=0
.measure tran settling_time when v(out)=1
meas ac gain_peak max gain_db
print inoise_total
* print ignored_scalar
.endc
"""
        self.assertEqual(
            pvt_sweep.deck_result_names(deck),
            ["gain_peak", "phase_margin", "settling_time", "inoise_total"],
        )

    def test_cli_help_lists_default_behavior_opt_outs(self) -> None:
        result = subprocess.run(
            ["/usr/bin/python", str(ROOT / "pvt_sweep.py"), "--help"],
            capture_output=True,
            text=True,
            check=False,
        )
        self.assertEqual(result.returncode, 0, result.stderr)
        for option in ("--no-metrics-csv", "--no-overlay-raw", "--no-open-gaw"):
            self.assertIn(option, result.stdout)

    def test_overlay_mirrors_each_write_and_appends_plots(self) -> None:
        deck = ".control\nwrite a.raw v(out)\nwrite b.raw v(other)\n.endc\n"
        rendered = pvt_sweep.with_overlay_write(
            deck, Path("../overlay.raw"), append=False, case_name="ss"
        )
        self.assertEqual(rendered.count("write ../overlay.raw"), 2)
        self.assertIn("let v_out__ss = v(out)", rendered)
        self.assertIn("let v_other__ss = v(other)", rendered)
        self.assertIn("write ../overlay.raw v_out__ss", rendered)
        self.assertEqual(rendered.count("set appendwrite"), 1)
        later = pvt_sweep.with_overlay_write(
            deck, Path("../overlay.raw"), append=True, case_name="ff"
        )
        self.assertEqual(later.count("set appendwrite"), 2)
        self.assertIn("v_out__ff", later)

    def test_relative_includes_are_anchored_to_deck_directory(self) -> None:
        with tempfile.TemporaryDirectory() as temp:
            base = Path(temp)
            (base / "models.spice").write_text("* dependency\n")
            result = pvt_sweep.resolve_relative_includes(".include models.spice\n.lib typical\n", base)
            self.assertIn(f".include {base / 'models.spice'}", result)
            self.assertIn(".lib typical", result)

    @unittest.skipUnless(shutil.which("ngspice"), "ngspice is not installed")
    def test_ngspice_appends_compatible_raw_plots(self) -> None:
        overlay: Path
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            overlay = root / "comparison.raw"
            for index, resistance in enumerate(("1k", "2k")):
                run_dir = root / f"run{index}"
                run_dir.mkdir()
                deck = f"""PVT append integration test
V1 in 0 AC 1
R1 in out {resistance}
C1 out 0 1u
.control
ac dec 10 1 10k
write run.raw frequency v(out)
.endc
.end
"""
                rendered = pvt_sweep.with_overlay_write(
                    deck, Path("comparison.raw"), append=index > 0,
                    case_name=f"corner_{index}",
                )
                deck_path = run_dir / "test.spice"
                deck_path.write_text(rendered)
                result = subprocess.run(
                    ["ngspice", "-b", "-o", str(run_dir / "run.log"), str(deck_path)],
                    cwd=root,
                    capture_output=True,
                    text=True,
                    check=False,
                )
                self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
                self.assertTrue((root / "run.raw").is_file())
                self.assertTrue(overlay.is_file(), (run_dir / "run.log").read_text())
                (root / "run.raw").rename(run_dir / "run.raw")
            overlay_bytes = overlay.read_bytes()
            self.assertGreaterEqual(overlay_bytes.count(b"Plotname:"), 2)
            self.assertIn(b"v_out__corner_0", overlay_bytes)
            self.assertIn(b"v_out__corner_1", overlay_bytes)

    @unittest.skipUnless(shutil.which("ngspice"), "ngspice is not installed")
    def test_cli_defaults_create_results_metrics_overlay_and_attempt_gaw(self) -> None:
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            deck = root / "tb_default.spice"
            deck.write_text("""Default output integration test
V1 in 0 AC 1
R1 in out 1k
C1 out 0 1u
.control
ac dec 10 1 10k
meas ac peak_gain max vm(out)
write tb_default.raw frequency v(out)
.endc
.end
""")
            cases = root / "cases.csv"
            cases.write_text("CASE,UNUSED\nnominal,1\n")
            profiles = root / "profiles.json"
            profiles.write_text(json.dumps({"profiles": {"generic": {}}}))
            result = subprocess.run(
                [
                    "/usr/bin/python",
                    str(ROOT / "pvt_sweep.py"),
                    str(deck),
                    "--cases", str(cases),
                    "--profiles", str(profiles),
                    "--profile", "generic",
                    "--gaw", "pvt-test-gaw-not-installed",
                ],
                capture_output=True,
                text=True,
                check=False,
            )
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            out = root / "results" / "tb_default"
            self.assertTrue((out / "nominal" / "tb_default_nominal.raw").is_file())
            self.assertTrue((out / "measurements.csv").is_file())
            self.assertTrue((out / "pvt_overlay_nominal.raw").is_file())
            raw_header = (out / "nominal" / "tb_default_nominal.raw").read_bytes().splitlines()[0]
            self.assertIn(b"pvt case nominal", raw_header.lower())
            self.assertIn("GAW executable", result.stderr)


if __name__ == "__main__":
    unittest.main()
