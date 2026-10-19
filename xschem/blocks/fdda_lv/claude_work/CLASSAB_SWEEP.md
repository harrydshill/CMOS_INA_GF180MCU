# Class-AB resize study (2026-10-19)

Only the class-AB output stage, the Monticelli floating source and its replica bias were changed. Every device is the 8u/2u unit except the bias sources M6 (2/8 unit, 0.25 uA each) and M11 (2/16 unit, 0.25 uA each).
Cc, Rz, input stage, CMFB and testbenches are unchanged. All results are worst case over the 45 PVT rows of pvt_cases.csv; Monte Carlo is 200 runs, per-finger mismatch, typical corner.

Device names below are the current schematic names (renumbered).

| | S12 (current) | A | B (recommended) | C |
|---|---|---|---|---|
| NMOS out M31/M33 (m) | 16 | 16 | 16 | 12 |
| PMOS out M30/M32 (m) | 32 | 16 | 16 | 12 |
| Ibn (M6 m) / Ibp (M11 m) | 6 uA (m24) / 3 uA (m12) | 7 uA (m28) / 5 uA (m20) | 7 uA (m28) / 5 uA (m20) | 8 uA (m32) / 6 uA (m24) |
| Floating N M24/M23 : replica M7 | 4 : 6 | 4 : 6 | 2 : 4 | 4 : 6 |
| Floating P M29/M18 : replica M10 | 4 : 6 | 4 : 6 | 2 : 4 | 4 : 6 |
| Replicas M8 / M9 | 2 / 2 | 2 / 2 | 2 / 2 | 2 / 2 |
| UGF min (MHz) | 1.029 | 1.142 | 1.090 | 1.106 |
| PM min (deg) | 39.1 | 43.4 | 43.0 | 44.8 |
| GM min (dB) | 20.6 | 17.4 | 18.8 | 18.3 |
| CMFB loop PM min (deg) | 39.1 | 44.0 | 42.3 | 42.7 |
| Aol min / max (dB) | 97.0 / 104.9 | 98.6 / 104.6 | 97.5 / 103.6 | 99.1 / 104.9 |
| Idd max PVT (uA) | 127.4 | 147.8 | 130.2 | 143.3 |
| Idd max MC (uA) | 132.5 | 155.6 | 135.2 | 150.2 |
| Iq range PVT (uA) | 40.1-43.6 | 48.0-52.2 | 40.0-43.4 | 45.2-48.9 |
| Iq sigma MC (uA) | 1.06 | 1.39 | 1.03 | 1.27 |
| Offset sigma MC (mV) | 1.14 | 1.14 | 1.15 | 1.15 |
| 100 mV step overshoot max (%) | 26.2 | 21.5 | 22.2 | 20.2 |
| 1% settling max (us) | 1.62 | 1.47 | 1.50 | 1.50 |
| Slew min rise/fall (V/us), 45 corners | 1.10 / 1.04 | 1.08 / 1.06 | 1.08 / 1.06 | 1.07 / 1.07 |
| Slew asymmetry max (%) | 6.1 | 3.5 | 3.5 | 3.5 |

## Noise (input-referred, open loop, identical for all four candidates to <0.2%)

| corner | thermal floor (nV/rtHz) | 1/f corner (Hz) | @1 Hz (uV/rtHz) | @10 Hz (nV/rtHz) | 0.5-150 Hz (uVrms) |
|---|---|---|---|---|---|
| typical_t25_v330 | 71.2 | 992 | 2.78 | 809 | 6.20 |
| ss_t125_v297 | 97.1 | 812 | 3.44 | 999 | 7.67 |
| ff_tm40_v363 | 54.6 | 1170 | 2.30 | 672 | 5.14 |
| fs_t125_v297 | 96.4 | 766 | 3.34 | 968 | 7.43 |
| sf_tm40_v363 | 55.0 | 1245 | 2.38 | 696 | 5.32 |

Contributors (typical): thermal at 100 kHz - M28/M22 fold sinks 40%, M19/M25 CMFB loads 26%, the four input devices 34%; at 10 Hz - M19/M25 49%, M28/M22 31%, inputs 20%. Class-AB devices contribute <0.1%.
