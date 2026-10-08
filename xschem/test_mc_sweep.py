"""Tests for the CSV-only GF180 Monte Carlo runner."""
from __future__ import annotations

import csv
import shutil
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

import mc_sweep


ROOT = Path(__file__).resolve().parent


class MonteCarloHelpersTest(unittest.TestCase):
    def test_switches_are_replaced_for_each_mode(self) -> None:
        deck = ".param sw_stat_global=0\n.param sw_stat_mismatch = 0\n.control\n.endc\n"
        both = mc_sweep.configure_statistical_switches(deck)
        self.assertIn(".param sw_stat_global=1", both)
        self.assertIn(".param sw_stat_mismatch = 1", both)
        mismatch = mc_sweep.configure_statistical_switches(deck, "mismatch")
        self.assertIn("sw_stat_global=0", mismatch)
        self.assertIn("sw_stat_mismatch = 1", mismatch)
        global_only = mc_sweep.configure_statistical_switches(deck, "global")
        self.assertIn("sw_stat_global=1", global_only)
        self.assertIn("sw_stat_mismatch = 0", global_only)
        self.assertEqual(mc_sweep.configure_statistical_switches(deck, "none"), deck)

    def test_missing_switches_are_inserted_once_before_control(self) -> None:
        deck = "title\n.include design.ngspice\n.control\n.endc\n"
        changed = mc_sweep.configure_statistical_switches(deck, "mismatch")
        self.assertEqual(changed.count(".param sw_stat_global=0"), 1)
        self.assertEqual(changed.count(".param sw_stat_mismatch=1"), 1)
        self.assertLess(changed.index("sw_stat_global"), changed.index(".control"))

    def test_seed_is_inserted_before_statistical_parameters_and_can_be_replaced(self) -> None:
        deck = "title\n.param x=agauss(1,0.5,3)\n.control\n.endc\n"
        seeded = mc_sweep.set_random_seed(deck, 123)
        self.assertLess(seeded.index(".option seed=123"), seeded.index("agauss"))
        self.assertEqual(mc_sweep.set_random_seed(seeded, 124).count("seed=124"), 1)

    def test_duplicate_seeds_are_rejected(self) -> None:
        with self.assertRaisesRegex(ValueError, "seed at most once"):
            mc_sweep.set_random_seed("title\n.option seed=1\n.option seed=2\n", 3)

    def test_duplicate_switch_assignment_is_rejected(self) -> None:
        with self.assertRaisesRegex(ValueError, "assign sw_stat_global at most once"):
            mc_sweep.configure_statistical_switches(
                ".param sw_stat_global=0\n.param sw_stat_global=1\n"
            )

    def test_comment_switches_do_not_count_as_assignments(self) -> None:
        changed = mc_sweep.configure_statistical_switches(
            "* .param sw_stat_global=1\n.control\n.endc\n"
        )
        self.assertIn("* .param sw_stat_global=1", changed)
        self.assertIn(".param sw_stat_global=1", changed)

    def test_measurement_autodetection_requires_unambiguous_result(self) -> None:
        self.assertEqual(mc_sweep.select_measurement(".control\nmeas tran v_offset when v(out)=0\n.endc\n", None), "v_offset")
        self.assertEqual(mc_sweep.select_measurement("print i(Vmeas)\n", None), "i(Vmeas)")
        with self.assertRaisesRegex(ValueError, "multiple results"):
            mc_sweep.select_measurement("print v(a)\nprint v(b)\n", None)
        with self.assertRaisesRegex(ValueError, "no .meas"):
            mc_sweep.select_measurement("* no results\n", None)

    def test_summary_handles_one_or_no_successes(self) -> None:
        self.assertIn("n=2, mean=2", mc_sweep.summarize([1.0, 3.0]))
        self.assertIn("sample_stddev=1.41421356", mc_sweep.summarize([1.0, 3.0]))
        self.assertEqual(mc_sweep.summarize([]), "Summary: no successful measurements.")
        self.assertIn("sample_stddev=0", mc_sweep.summarize([4.5]))

    def test_trial_parses_measurement_and_cleans_temporary_outputs(self) -> None:
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            deck = root / "input.spice"
            deck.write_text("title\n.control\nprint v_offset\n.endc\n")
            created: list[Path] = []

            def fake_run(command, **kwargs):
                log = Path(command[command.index("-o") + 1])
                created.append(log.parent)
                log.write_text("v_offset = 1.25e-3\n")
                return subprocess.CompletedProcess(command, 0, "", "")

            with patch.object(mc_sweep.subprocess, "run", side_effect=fake_run):
                value, status = mc_sweep.run_trial(
                    deck, deck.read_text(), "v_offset", "both", "ngspice", 7
                )
            self.assertEqual((value, status), ("1.25e-3", "ok"))
            self.assertTrue(created)
            self.assertFalse(created[0].exists())

    def test_trial_records_missing_measurement(self) -> None:
        with tempfile.TemporaryDirectory() as temp:
            deck = Path(temp) / "input.spice"
            deck.write_text("title\n.control\nprint v_offset\n.endc\n")

            def fake_run(command, **kwargs):
                Path(command[command.index("-o") + 1]).write_text("no measurement here\n")
                return subprocess.CompletedProcess(command, 0, "", "")

            with patch.object(mc_sweep.subprocess, "run", side_effect=fake_run):
                self.assertEqual(
                    mc_sweep.run_trial(
                        deck, deck.read_text(), "v_offset", "both", "ngspice", 42
                    ),
                    ("", "missing_measurement"),
                )

    def test_cli_rejects_nonpositive_run_count(self) -> None:
        with tempfile.TemporaryDirectory() as temp:
            deck = Path(temp) / "tb.spice"
            deck.write_text("title\n")
            result = subprocess.run(
                [sys.executable, str(ROOT / "mc_sweep.py"), str(deck), "--runs", "0"],
                capture_output=True,
                text=True,
                check=False,
            )
            self.assertEqual(result.returncode, 2)
            self.assertIn("positive integer", result.stderr)


@unittest.skipUnless(shutil.which("ngspice"), "ngspice is not installed")
class MonteCarloNgspiceIntegrationTest(unittest.TestCase):
    def test_cli_writes_only_csv_with_repeated_print_results(self) -> None:
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            deck = root / "simple.spice"
            deck.write_text(
                """Simple MC runner integration
V1 in 0 1
R1 in out 1k
.control
op
print v(out)
write result.raw all
.endc
.end
"""
            )
            output = root / "mc.csv"
            result = subprocess.run(
                [
                    sys.executable, str(ROOT / "mc_sweep.py"), str(deck),
                    "--runs", "2", "--jobs", "2", "--seed", "100",
                    "--variation", "none", "--out", str(output),
                    "--measure", "v(out)",
                ],
                capture_output=True,
                text=True,
                check=False,
            )
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            with output.open(newline="", encoding="utf-8") as stream:
                rows = list(csv.DictReader(stream))
            self.assertEqual(len(rows), 2)
            self.assertEqual([row["RUN"] for row in rows], ["1", "2"])
            self.assertEqual({row["SEED"] for row in rows}, {"100", "101"})
            self.assertTrue(all(row["STATUS"] == "ok" for row in rows), rows)
            self.assertTrue(all(float(row["VALUE"]) == 1.0 for row in rows))
            self.assertEqual(set(root.iterdir()), {deck, output})


if __name__ == "__main__":
    unittest.main()
