# CMOS Current-Feedback Programmable Instrumentation Amplifier Standard Cell
### GF180n

Bruno, Harry

## Design

Crap

### Target Specifications

| Parameter | Min | Typ | Max | Unit | Notes |
|---|---:|---:|---:|---|---|
| Bandwidth | — | 10 | — | MHz | UGF |
| Phase margin | 45 | 60 | — | ° | — |
| Gain | — | 40 | — | dB | Maximum gain setting |
| Gain step size | — | 2.5 | — | dB | Step size |
| CMRR | 80 | 100 | — | dB | — |
| CMR | 1 | — | 4 | V | SOA verified |
| Input Impedance | 5 | 10 | — | impedance |  |
| Input-referred wideband noise | 50 | 100 | — | µV/√Hz | Thermal noise (above 1/f corner) |
| Input offset voltage (uncalibrated) | — | 5 | 10 | mV | Digital calibration register available |
| Slew rate | 5 | 10 | — | V/µs |  |
| Supply voltage range | — | 5 | — | V | — |
| Quiescent current | — | 500 | 1000 | µA | — |

### Pin List

| Pin | Function | Type |
|---|---|---|
| $V_{IN+}$ | Non-inverting differential input | Input |
| $V_{IN-}$ | Inverting differential input | Input |
| $V_{OUT+}$ | Differential output + | Output |
| $V_{OUT-}$ | Differential output − | Output |
| $V_{DD}$ | Positive supply | Power |
| $V_{SS}$ | Ground | Power |
| `Gain<0:3>` | Programmable gain bus | Power |
| `Offset<0:3>` | Offset trim bus | Power |
| `Test<0:3>` | Analogue DFT mux (for internal nodes) | Power |

### Key Features

- High input impedance
- 4-bit linear-in-dB programmable gain
- Excellent CMRR
- Low input offset voltage (digital register trim)
- Low quiescent current (<10 mA)
- Wide bandwidth

### Applications

- Biomedical analogue frontend (EEG, ECG, EGG)
- LCR meter analogue frontend
- Whetstone bridge sensing
  - Temperature sensing
  - Strain sensing
  - Pressure sensing
- Inline high-side and low-side current sensing
- High speed instrumentation

### Required Analogue Simulations

1. DC (device operating region, DC operating point, SOA)
2. AC (stability, bandwidth, small signal gain)
3. Monte-carlo (mismatch)
4. Transient (slew)
5. Transient startup/shutdown/settings

## Topology and Literature Review



### Selected Architecture and Justification

Fillme

---

## Testing and Characterisation

### Test Equipment

- Bringup test PCB
- DC power supplies
- DMM
- AWG
- Oscilloscope

### Functional Performance Tests

1. **Literally**: A description of a test for each criteria

### Acceptance Criteria

All measured parameters must fall within the Min/Typ/Max ranges given in the design table (Section 1.2). If any parameter falls outside the Min/Max limits, the block cannot be certified as functional.

## References

**Placeholder:** Add full citations to relevant datasheets, journal papers, and application notes here. Suggested entry format:

1. Author(s). “Title.” Publication, year.
2. Author(s). “Title.” Publication, year.
3. ...

[1] https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10363609
[2] https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=9234770
[3] https://ieeexplore.ieee.org/document/8868504
[4] https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10692516
[5] https://www.sciencedirect.com/science/article/pii/S0167926023000287
[6] https://www.sbmicro.org.br/jics/html/artigos/vol5no1/04.pdf
[7] https://github.com/orpheus016/Programmable-Instrumentation-Amplifier-IP/tree/main/designs/libs/core_analog/instramp_cmos5l
[8] https://github.com/orpheus016/Programmable-Instrumentation-Amplifier-IP
[9] https://www.crowdsupply.com/wafer-space/gf180mcu-run-1/updates/openfasoc#1#1
