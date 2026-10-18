# fdda_lv compensation rework (2026-10-18)

Only device sizes / multipliers / R / C values were changed; no topology or testbench changes.
Originals saved as `fdda_lv.sch.orig` and `../aux_amp/aux_amp.sch.orig`.
Verified with ngspice 45.2 + gf180mcuD models on all 45 rows of `pvt_cases.csv`.

## Results (worst case over 45 PVT corners, tb_fdda_lv_aol)

| | spec | before | after |
|---|---|---|---|
| Phase margin | > 35 deg | 16.2 deg | 46.5 deg |
| UGF | > 1 MHz | 0.69 MHz | 1.14 MHz |
| Gain margin | - | 17 dB | 11.3 dB |
| Aol (min / max) | max | 95.1 / 103.8 dB | 96.0 / 104 dB |
| Supply current (max) | <= 150 uA | 102 uA | 117 uA |
| CMFB loop PM (min) | - | 22 deg (oscillates in tb_fdda_lv_cmfb_stab at ff/ss/fs, -40C, 3.63V) | 59.5 deg |
| Input offset sigma (per-finger mismatch, see note) | min | 1.52 mV | 1.04 mV |

Closed-loop 100 mV step (unity feedback, 100 pF): overshoot 9-18 %, 1 % settling < 1 us in all corners checked
(before: 54-58 % overshoot, sustained oscillation at cold corners).

## Poles and what was moved

1. **p1 - dominant, Vofcp/Vofcn (Miller).** UGF ~ gm1 / (2 pi Cc).
   - C4/C6: 35x35 um -> **45x45 um** (2.45 pF -> 4.05 pF) to place UGF at ~1.15 MHz (hot) ... 2 MHz (cold).
   - R2/R4: 30 um -> **6 um** (~30k -> ~6k). The large Rz created a pole at 1/(Rz*C1) right at the UGF.
2. **p2 - output pole, gm2_eff / 100 pF. This was the root cause (0.57 MHz, below the UGF).** Now ~2.5-3.3 MHz.
   - PMOS output only saw 0.39x the gate signal (n10/Vofc = gm36/gm35). Re-ratioed the floating class-AB pair:
     **M35/M30 4/4 x16 -> W1/L1 x3, M36/M32 x8 -> x6, bias diode M4 4/4 -> W1/L1** (keeps the translinear loop matched). n10/Vofc is now ~2.6.
   - Output devices into weak inversion with less gate cap: **M14/M37 4/4 x20 -> W4/L2 x40, M33/M34 L 4u -> 1u (x40)**.
   - Iq is 32.6-36.4 uA across all corners.
3. **p3 - PMOS gate path (n10 node + aux buffer).**
   - **M12/M15 4/4 x30 -> W4/L1 x2**: these "cascodes" are in deep triode (shared vb2 with M35), so their ~1.8 pF gate cap sat directly on n10.
   - M33 gate cap is now ~1/4, so the **aux_amp tail M1 x40 -> x24** (10 -> 6 uA each). Buffer PM ~87 deg.

## CMFB loop (was marginal/unstable before)
- **M21/M25 W10/L2 x6 -> W2/L8 x1** (strong inversion: lower CM loop gm, CM UGF ~0.5-0.8 MHz, below p2).
- **M19/M20/M3/M8 W8/L2 -> W4/L4** (same m): lighter Vcmfb node, higher ro.

## Other
- **M28/M29 x10 -> x4** (they sit in triode, set by the class-AB loop; small PM/Aol gain).
- **M26/M27 W2/L8 x48 -> W2/L16 x96** (same current; lower gm/Id and 2x area -> less offset).

## Note on Monte Carlo
The GF180 ngspice mismatch model does **not** scale with `m` (an m=40 device gets one finger's sigma-Vth).
The existing MC flow therefore reports ~6-7 mV offset sigma. Expanding each m=N device into N instances
(real per-finger averaging) gives the 1.52 mV -> 1.04 mV figures above. Use nf / separate instances
(W per instance <= 100 um for the model bins) if you want MC to reflect layout reality.
