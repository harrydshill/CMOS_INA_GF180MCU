# fdda_lv changelog — S13: class-AB resize (option B)

Date: 2026-10-19. Applies to `xschem/blocks/fdda_lv/fdda_lv.sch`.
Previous version (S12) saved as `fdda_lv.sch.s12`. Revert by copying it back over `fdda_lv.sch`.

## Specs this work targets

From the project changelog / owner:

- Phase margin > 35 deg on every PVT corner.
- UGF > 1 MHz on every PVT corner.
- Supply current ≤ 150 uA, including mismatch spread.
- Offset/mismatch as small as possible.
- Aol as high as possible.

Design rules (owner):

- Every W, L and m is an even number.
- Minimum device area is 16 um^2.
- Matched devices use multiplicity.
- Class-AB NMOS and PMOS output devices share the same W/L and scale only with m.
- Class-AB bias chains use L = 2u.
- Bias currents are integer uA.
- Devices are named XM<n>, numbered left to right.
- PVT corners are the 45 rows of `xschem/pvt_cases.csv`: tt/ss/ff/sf/fs, -40/25/125 C, 2.97/3.3/3.63 V.

## What changed in S13 (schematic edits only)

- Only `m=` values changed.
- No topology, net, W, L, R, C or testbench changes.
- Scope agreed with the owner: class-AB output devices, Monticelli floating source, and the class-AB replica bias.

| Current name | Old name (claude_work scripts) | Role | W/L (um) | m S12 → S13 |
|---|---|---|---|---|
| M30, M32 | XM33, XM34 | PMOS output | 8/2 | 32 → **16** |
| M31, M33 | XM14, XM37 | NMOS output | 8/2 | 16 (unchanged) |
| M6 | XMRP0 | Ibn source, 0.25 uA/unit (vb1) | 2/8 | 24 → **28** (Ibn 6 → **7 uA**) |
| M11 | XMRN0 | Ibp sink, 0.25 uA/unit (vb3) | 2/16 | 12 → **20** (Ibp 3 → **5 uA**) |
| M24, M23 | XM36, XM32 | floating source, NMOS | 8/2 | 4 → **2** |
| M7 | XMRN2 | replica of M24/M23 | 8/2 | 6 → **4** |
| M29, M18 | XM35, XM30 | floating source, PMOS | 8/2 | 4 → **2** |
| M10 | XMRP2 | replica of M29/M18 | 8/2 | 6 → **4** |
| M8 / M9 | XMRN1 / XMRP1 | replicas of NMOS / PMOS output | 8/2 | 2 / 2 (unchanged) |

Translinear ratios after S13:

- NMOS output : M8 replica = 16:2.
- PMOS output : M9 replica = 16:2.
- Floating NMOS : M7 = 2:4.
- Floating PMOS : M10 = 2:4.

The edited schematic was parsed back and checked against `P_B.json` through `rename_map.json`: zero mismatches on every W, L, m, R and C. All transistor W/L/m values are even.

## Results

- Worst case over 45 PVT corners.
- Unity-feedback checks use 100 pF loads, as in `tb_fdda_lv_cmfb_stab`.
- Monte Carlo: 200 runs, typical corner, per-finger mismatch (every m=N device expanded into N instances).

| Metric | S12 | **S13 (B)** |
|---|---|---|
| UGF min / max (MHz) | 1.029 / 1.74 | **1.090 / 1.88** |
| PM min (deg) | 39.1 | **43.0** |
| GM min (dB) | 20.6 | 18.8 |
| CMFB loop PM min (deg) | 39.1 | **42.3** |
| CMFB loop GM min (dB) | 10.3 | 12.1 |
| Aol min / max (dB) | 97.0 / 104.9 | 97.5 / 103.6 |
| Idd max, PVT (uA) | 127.4 | 130.2 |
| Idd max, MC (uA) | 132.5 | 135.2 |
| Iq per output, PVT (uA) | 40.1–43.6 | 40.0–43.4 |
| Iq sigma, MC (uA) | 1.06 | 1.03 |
| Offset sigma / max, MC (mV) | 1.14 / 2.78 | 1.15 / 2.79 |
| 100 mV closed-loop step: max overshoot (%) | 26.2 | **22.2** |
| 100 mV step: max 1 % settling (us) | 1.62 | 1.50 |
| CM kick: 5 % settling (us) | 2.98 | 3.78 |
| Slew, 2 V diff step, min rise / fall (V/us) | 1.10 / 1.04 | 1.08 / 1.06 |
| Slew asymmetry max (%) | 6.1 | **3.5** |
| Worst Vds − Vdsat (unchanged devices) | M5 113 mV, M16 132 mV | same; M11 (Ibp sink) 166 mV at ss/−40 C |

### Alternatives evaluated (not implemented)

Full data for A and C is in `CLASSAB_SWEEP.md` and `P_A.json` / `P_C.json`.

- **A** — outputs 16/16, Ibn 7, Ibp 5, floating 4:6.
  - PM 43.4, UGF 1.14, CM PM 44.0.
  - Idd 147.8 uA PVT and **155.6 uA in MC**, so it fails the 150 uA limit.
- **C** — outputs 12/12, Ibn 8, Ibp 6, floating 4:6.
  - PM 44.8, UGF 1.11, Aol 99.1 (best Aol).
  - Idd 143.3 uA PVT and 150.2 uA in MC, right at the limit.
- B was chosen because it keeps almost all of A's margin for about 18 uA less.

### Sweep findings (useful for further work)

Data is in `run1.jsonl`, `run2.jsonl` and `run3.jsonl`, about 230 points.

- **PMOS:NMOS output m.** 1:1 with the same 8/2 unit was as good as or better than 2:1 or 3:1. The output devices sit in weak or moderate inversion, so the mobility ratio does not set the required sizing. A larger PMOS only adds gate capacitance on n10/n9.
- **Ibn (NMOS-side chain current).** Raising it pushes UGF and CM-loop PM up, and PM and GM down.
- **Ibp (PMOS-side chain current).** Raising it pushes PM up and UGF down.
- **Iq.** Higher Iq raises PM and Aol. Idd ≈ 2·Iq + ~45 uA.
- **Floating-source halving.** Halving the floating source and its replica (4:6 → 2:4) cut Iq and Idd by about 18 uA while keeping PM within about 0.5 deg.
- **UGF is capped at about 1.1–1.15 MHz worst case** by Cc (42 um MIM) and the input-pair gm. The class-AB knobs cannot move it much further. To gain more, look at Cc, Rz or the input stage, which were outside this task's scope.

## Noise (unchanged by S13: class-AB devices contribute < 0.1 %)

- Input-referred, differential.
- Open loop, AOL bench with 100 pF loads.
- Driven at the INP/INM port (Vp+ / Vn− of x2).

| Corner | Thermal floor (nV/√Hz) | 1/f corner (Hz) | @1 Hz (uV/√Hz) | @10 Hz (nV/√Hz) | 0.5–150 Hz (uVrms) | 0.1–10 Hz (uVrms) |
|---|---|---|---|---|---|---|
| typical, 25 C, 3.3 V | 71.2 | 992 | 2.78 | 809 | 6.20 | 6.00 |
| ss, 125 C, 2.97 V | 97.1 | 812 | 3.44 | 999 | 7.67 | 7.43 |
| ff, −40 C, 3.63 V | 54.6 | 1170 | 2.30 | 672 | 5.14 | 4.97 |
| fs, 125 C, 2.97 V | 96.4 | 766 | 3.34 | 968 | 7.43 | 7.21 |
| sf, −40 C, 3.63 V | 55.0 | 1245 | 2.38 | 696 | 5.32 | 5.14 |

Noise contributors at typical (`nzc.py`):

| Device(s) | Role | Share of thermal noise @100 kHz | Share of noise @10 Hz |
|---|---|---|---|
| M28, M22 | NMOS fold sinks, 2/16 x48 | 40 % | 31 % |
| M19, M25 | PMOS CMFB loads, 4/4 x16 | 26 % | 49 % |
| M12, M14, M17, M15 | input pairs, 10/2 x16 | 34 % total | 20 % total |

To cut noise:

- Lower gm/Id in M28/M22 and M19/M25 (longer L, strong inversion).
- Give M19/M25 more area (1/f).
- Raise the input-pair gm.
- Or chop.

These devices were all outside the S13 scope.

Literature comparison: per-device numbers are in the chat summary. Published FDDA/DDA noise at 1 kHz ranges from 80 nV/√Hz (3 mW, 0.18 um BCD) to 1.2 uV/√Hz (0.25 uW, 0.5 V). The open-source SKY130 FDDA from LASCAS 2025 is 275 nV/√Hz at 220 uW. This design is about 100 nV/√Hz at 1 kHz.

## How to reproduce / continue (for the next agent)

### Environment

The cloud container is ephemeral; rebuild it if reset.

1. Build ngspice 45.2:
   - `git clone --depth 1 --branch ngspice-45.2 https://github.com/imr/ngspice`
   - flex 2.6.4 from the GitHub release tarball `westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz` (configure, make, make install).
   - Then: `./autogen.sh && ./configure --with-x=no --disable-xspice --disable-osdi --enable-openmp && make -j && make install`
2. Get the models:
   - Download `fossi-foundation/ciel-releases` release `gf180mcu-ff08c23db8359afce3f134c454e7930586d0641c`, file `common.tar.zst`.
   - Decompress it with zstd built from `git clone facebook/zstd` (pip and apt are blocked).
   - Copy `gf180mcuD/libs.tech/ngspice` to `/usr/share/pdk/gf180mcuD/libs.tech/ngspice`.
3. Stage the repo:
   - Stage `xschem/pvt_cases.csv`, `xschem/blocks/fdda_lv/simulation/*.spice` and `claude_work/*` to `/mnt/user-data/uploads/CMOS_INA_GF180MCU/...`.
   - Copy `claude_work` to a work directory.
   - Create `<workdir>/../w2/tmp`, or edit `sim.run` to point at a temp directory.

### Scripts

The scripts use OLD device names. `rename_map.json` maps old → current schematic names.

- `gen.py` builds the netlist from the pre-S5 `tb_fdda_lv_aol.spice`.
  - Topology flags `{'nobuf','replica'}` reproduce the current schematic topology.
  - `sim.evaluate(P,{'nobuf','replica'})` with `P = P_B.json` reproduces S13.
  - The S12 numbers above were reproduced exactly with `P12.json` before any change, which validates the flow.
- `sw.py` — `sw.mk(mn, mp, ibn, ibp, k1=2, k3=2, m36=4, k2=6, m35=4, k4=6)` returns a parameter set based on P12 with only the class-AB devices changed. It asserts that every value is even. `sw.ev(cfg)` gives the PVT summary.
- `cand.py` — full verification:
  - AOL and CM loop on 45 corners.
  - Slew, step and CM kick on 45 corners.
  - 200-run MC.
  - Vds−Vdsat margins.
  - Noise on 5 corners.
- `nz.py` — noise density and integrated noise per corner.
- `nzc.py` — per-device noise contributions.
- `mc.py`, `ver.py`, `margins.py` — as before. `ver.py` now always imports `P9.json` at module level; that is just a placeholder copy of P12 so imports work.
- `rank.py` — ranks sweep results.
- `steps.json` — now includes the S13 entry: params, results and noise.

### Open items / suggestions

1. **Re-netlist in xschem and run the owner's own benches as a sanity check**:
   - `pvt_sweep.py` and `mc_sweep.py`.
   - `tb_fdda_lv_noise`, `tb_fdda_lv_startup`, `tb_fdda_lv_disabled`.
   - These were not rerun by xschem here: the S13 netlist was produced by `gen.py`, not xschem.
2. **Start-up and disabled-mode behaviour with the new Ibn/Ibp has not been simulated.** M6/M11 were only re-ratioed, but check `tb_fdda_lv_startup` anyway.
3. **Noise reduction (outside the class-AB scope)**: resize M28/M22 and M19/M25 (see the contributor table above).
4. **UGF headroom**: the worst case is 1.09 MHz. Any further gain needs Cc/Rz or input-pair changes.
5. **Option C** if Aol is preferred over current headroom: 99.1 dB, but MC Idd is 150.2 uA.
