# Claude working state - fdda_lv (updated 2026-10-19: S13 class-AB resize implemented)

**Latest: S13 = option B. Read `CHANGELOG_S13_classAB.md` first** (what changed, results, noise, how to rebuild the environment, open items). Previous schematic saved as `../fdda_lv.sch.s12`. S13 params: `P_B.json`; sweep data `run1-3.jsonl`, `cand.json`; helper `sw.py`.

---


The schematic `../fdda_lv.sch` is now **S9** (final; S5 saved as `../fdda_lv.sch.s5`). Report: Claude doc 'fdda_lv Compensation Report'. S9 params: P9.json; reproduce with sim.evaluate(P9,{'nobuf','replica'}). The previous saved version (buffer removed, before S5) is `../fdda_lv.sch.pre_s5`;
the original before any Claude edits is `../fdda_lv.sch.orig`.

## Step results (worst case over 45 PVT corners; slew from 5 corners, unity-feedback, 100 pF, 2 V diff step)

| Step | Change | UGF min (MHz) | PM (deg) | GM (dB) | Aol min (dB) | Idd max (uA) | Iq (uA) | CM PM (deg) | SR rise/fall (V/us) | SR asym |
|---|---|---|---|---|---|---|---|---|---|---|
| S0 | Saved schematic: aux buffers removed, M33/M34 gates tied to n10/n9 | 1.086 | 41.3 | 11.1 | 96.0 | 104.8 | 32.7-36.6 | 55.5 | 0.96/0.86 | 12% |
| S1 | Restore M26/M27 to exact M11 unit (W2/L8), m=48 | 1.094 | 42.2 | 11.4 | 95.9 | 106.5 | 34.6-37.7 | 54.8 | 0.96/0.87 | 11% |
| S2 | Dedicated matched replica stacks for Monticelli (unit-cell + m ratios) | 1.058 | 42.8 | 12.5 | 96.0 | 116.1 | 34.8-38.9 | 53.7 | 0.95/0.87 | 10% |
| S3 | Split Miller (C on Vofcp 20x20/Rz20 + C on n10 34x34/Rz20) - REJECTED: equal-UGF PM worse, CM PM worse | 1.075 | 37.8 | 14.1 | 96.3 | 116.1 | 34.8-38.9 | 33.4 | 1.35/0.90 | 37% |
| S4 | Input pairs m40->m16 (cut sum-node C); Cc 45->42um, Rz 6->10um | 1.123 | 47.4 | 16.1 | 95.6 | 116.1 | 34.8-38.9 | 50.0 | 1.04/1.08 | 6% |
| S5 | Iq 37->44uA: output m40->48 (replicas unchanged, so Iq scales by m); Cc 42->43um | 1.151 | 51.8 | 15.1 | 96.2 | 131.6 | 41.7-46.7 | 54.4 | 1.00/1.03 | 5% |
| S6 | Offset trade: input pairs m16->m24, Cc 43->44um | 1.156 | 51.2 | 12.8 | 96.4 | 131.6 | 41.7-46.7 | 56.5 | 0.96/0.95 | 3% |

Monte Carlo (300 runs, per-finger mismatch, unity feedback): S1 offset sigma 1.09 mV, Iq sigma 3.0 %; S5 offset sigma 1.36 mV, Iq sigma 3.1 %. S6 MC not yet run.

## S5 topology changes vs your saved schematic
- Six new devices (class-AB replica bias, bottom-left of sheet): MRN1/MRN2 (NMOS replicas of M14 / M36), MRP1/MRP2 (PMOS replicas of M33 / M35),
  MRP0 (I_bn = 3.5 uA, M7 unit) and MRN0 (I_bp = 3.5 uA, M11 unit). New nets: vbnab, vbpab, abn1, abp1.
- M36/M32 gates moved IBIAS -> vbnab; M35/M30 gates moved vb2 -> vbpab. (M28/M29 still on IBIAS; M12/M15 still on vb2.)
- Sizes: M26/M27 W2/L8 x48; M35/M30 W2/L1 x4; input pairs M9/M1/M24/M13 x16; M14/M37 W4/L2 x48; M33/M34 W4/L1 x48; C4/C6 43x43um; R2/R4 10um.
- aux_amp is no longer instantiated in fdda_lv (its schematic still has the earlier m=24 tail; irrelevant now).

## Remaining TODO
1. Offset MC for S6 (input pairs x24, Cc 44um) and pick S5 vs S6.
2. Full verification of chosen run: tb_fdda_lv_cmfb_stab transient, closed-loop step, DC saturation margins incl. MRP0/MRN0, slew all corners.
3. Report: theory per step, changelog, full parameter table per step.
4. Recommendation to evaluate: separate (lower) gate bias for M28/M29 so the folded cascode saturates (currently triode; blocks spending current on tails/floating source).

## How the environment was built (cloud container; rebuild if reset)
- ngspice 45.2 built from github.com/imr/ngspice tag ngspice-45.2 (flex 2.6.4 from westes/flex release; libtool m4/ltmain from the flex tarball;
  configure --with-x=no --disable-xspice --disable-osdi --enable-openmp).
- gf180mcuD models: fossi-foundation/ciel-releases tag gf180mcu-ff08c23db8359afce3f134c454e7930586d0641c, common.tar.zst, extracted to /usr/share/pdk/gf180mcuD/libs.tech/ngspice.
- Scripts here expect staged copies of the repo under /mnt/user-data/uploads/CMOS_INA_GF180MCU/ (gen.py reads simulation/tb_fdda_lv_aol.spice as generated
  from the *pre-S5* schematic, i.e. with aux buffers; topology flags 'nobuf' and 'replica' reproduce S5). `python3 -c "import json,sim; ..."`:
  `sim.evaluate(P,{'nobuf','replica'})` with P from P5.json reproduces S5.
