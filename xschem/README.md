# Project Layout

## blocks
Contains each design block in a directory with the name of the block. Within this directory, there should be a .sch and .sym file with the block name.

Testbenches should also exist in this directory and be named tb_[block name]_[parameter].sch, with one test bench for each parameter.

Simulations and netlists from the testbenches go in the simulation directory of each block. Xschem is configured to do this automatically in the xschemrc file.

## PVT sweeps

See [PVT_SWEEPS.md](PVT_SWEEPS.md) for how to prepare the testbench and cases CSV, run the sweep, and find its outputs. By default, results from `meas` and simple scalar `print` commands are written to `measurements.csv`; raw names and overlay vector names identify corner cases. GAW is opened when installed, while each case's raw is retained. A populated output directory prompts before cleanup; use `--clean-output` to confirm automatically. Use `--no-metrics-csv`, `--no-overlay-raw`, or `--no-open-gaw` to disable those defaults.