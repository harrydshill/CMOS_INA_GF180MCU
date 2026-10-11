# CMOS_INA_GF180MCU

Open-source analog front-end (AFE) for biomedical and utility applications, designed in the GlobalFoundries GF180MCU open-source PDK as part of the Chipalooza Challenge.

## Overview
This project implements a **Differential Difference Amplifier (DDA)-based instrumentation amplifier** paired with a **Sallen-Key anti-aliasing filter**, targeting biomedical signals such as ECG as well as general-purpose utility applications in for SoCs.

## Key Features
- DDA-based instrumentation amplifier front-end for low-amplitude biomedical signal acquisition
- Sallen-Key active anti-aliasing filter stage
- Programmable **fine and coarse gain** control
- Programmable filter **cutoff frequency**, enabling easy digital configuration
- Fully open-source design flow using tools such as **Xschem** (schematic capture) and **KLayout** (layout)

## Status
Currently at the **final tapeout readiness review** stage of the Chipalooza Challenge.

## Tools
- Xschem — schematic entry and simulation setup
- ngspice — circuit simulation
- KLayout — layout and physical verification

## License
Open-source — see repository for license details.
