# PVT sweep runner

`pvt_sweep.py` runs an xschem-generated SPICE deck once for each row in a cases CSV. It edits a temporary copy of the deck for each case; the schematic and source netlist are left unchanged.

## Setup

1. In xschem, open the testbench and generate its SPICE netlist.
2. Ensure the testbench contains the model, temperature, and supply statements needed for simulation, plus an ngspice `write <name>.raw` command for waveform output. For scalar results, use an ngspice `meas` command or print a scalar by name (for example, `print inoise_total`). Both `meas` names and simple `print <scalar_name>` commands are detected automatically for the measurements CSV. For a supply swept by the built-in `gf180` profile, define `.param vdd=<typical voltage>` and use `{vdd}` as the value of the supply source connected from `PSUP` (or `PSUP_LV`) to ground. This leaves a valid typical value for ordinary xschem simulation; the sweep profile substitutes each case's `VDD` in the generated deck.
3. Edit [pvt_cases.csv](pvt_cases.csv): each row defines one complete case. Set the model-section names, temperature, and supply values you want to test. The CSV values are applied by the selected profile; confirm its rules match the generated deck.

The default profile is [pvt_profiles.json](pvt_profiles.json), profile name `gf180`. It maps CSV columns to deck edits. If the deck's statements differ, update the profile before running. The runner checks configured match counts and stops rather than silently using an unchanged value.

## Run

Run the command from any directory. By default, output is created beside the SPICE input at `results/<deck-name>/`:

```sh
python3 /path/to/xschem/pvt_sweep.py /path/to/testbench.spice
```

The runner detects `meas` commands and simple scalar `print` commands in the deck, collects those values into `measurements.csv`, creates a combined waveform raw file named for the included cases, and opens the raw output in GAW when GAW is installed. Each individual raw is named with its case, and its title includes that case's PVT parameters. If GAW is not installed, the simulation still completes and the runner reports a warning.

To choose an output directory explicitly, use `--outdir`. To select only certain results (including a printed scalar), repeat `--measure`. For example, a noise bench that prints integrated input noise can use:

```sh
python3 pvt_sweep.py path/to/tb_noise.spice --measure inoise_total
```

The CSV records `inoise_total` for every corner using the value printed in the ngspice log; no `meas` command is required. Alternatively, omit `--measure` to collect all detectable `meas` and simple scalar `print` results.

To select multiple results:

```sh
python3 pvt_sweep.py path/to/testbench.spice \
  --outdir results/testbench \
  --measure metric_one --measure metric_two \
  --metrics-csv measurements.csv
```

Use `--no-overlay-raw` to disable the combined file, `--no-open-gaw` to skip launching GAW, or `--no-metrics-csv` to omit the measurement CSV. `--strict-measures` makes an unreported measurement fail the run; otherwise missing values are marked in the CSV and the sweep continues. `--metrics-csv FILE` changes the CSV name/location. Run `python3 pvt_sweep.py --help` for all options.

If the output directory already contains files, the runner asks before clearing them. Answer `y`/`yes` to replace the previous results; any other answer cancels without changing them. For scripts or other non-interactive runs, pass `--clean-output` to confirm cleanup explicitly.

## Results

The default output directory is `<input deck directory>/results/<input deck name>`. It contains one folder per case. Each case folder contains the generated deck, ngspice log, and raw file(s) with the case name appended before `.raw` (for example, `tb_aol_ss.raw`). The root may also contain:

- `measurements.csv` — measurement results detected from the deck, with case parameters, metric name, value, and status (unless disabled).
- `pvt_overlay_<case1>_<case2>_....raw` — multi-plot raw file for viewing runs together (unless disabled). Overlay vector names have a `__<case>` suffix (for example, `v_vop__ss`) so traces identify their corner instead of appearing only under plot indices. The case names are also listed in the filename; plot order follows CSV row order. Very long case lists use a shortened filename with a hash; the manifest and individual raw filenames preserve the mapping.
- `manifest.json` — input deck, profile, case list, and generated outputs.

Raw files are retained per case even when an overlay is requested. The overlay is most useful when each case runs the same analysis and writes the same vectors. GAW is launched by default when installed. If it is not installed, the run completes and prints a warning; raw files are still available.

Measurements require corresponding `meas` commands in the testbench. A missing crossing/result is recorded with an empty value unless strict measurement checking is enabled. The runner accepts generated `.spice`/`.cir` decks; generate the netlist in xschem before running it.
