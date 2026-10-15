v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -750 30 -750 50 {lab=0}
N -750 50 -730 50 {lab=0}
N -750 -50 -750 -30 {lab=A}
N -750 -50 -730 -50 {lab=A}
N -540 -50 -540 -30 {lab=B}
N -540 -50 -520 -50 {lab=B}
N -540 30 -540 50 {lab=0}
N -540 50 -520 50 {lab=0}
N -940 30 -940 50 {lab=0}
N -940 50 -920 50 {lab=0}
N -940 -50 -940 -30 {lab=PSUP_LV}
N -940 -50 -920 -50 {lab=PSUP_LV}
N -310 -50 -310 -30 {lab=C}
N -310 -50 -290 -50 {lab=C}
N -310 30 -310 50 {lab=0}
N -310 50 -290 50 {lab=0}
C {vsource.sym} -540 0 0 0 {name=VB value="PULSE(0 3.3 250n 1n 1n 250n 500n 2)" savecurrent=false}
C {vsource.sym} -750 0 0 0 {name=VA value="PULSE(0 3.3 500n 1n 1n 500n)" savecurrent=false
}
C {vsource.sym} -940 0 0 0 {name=VDD value="\{vdd\}" savecurrent=false}
C {lab_wire.sym} -920 -50 0 1 {name=p1 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -730 -50 0 1 {name=p2 sig_type=std_logic lab=A}
C {lab_wire.sym} -520 -50 0 1 {name=p3 sig_type=std_logic lab=B}
C {lab_wire.sym} -920 50 0 1 {name=p4 sig_type=std_logic lab=0}
C {lab_wire.sym} -730 50 0 1 {name=p5 sig_type=std_logic lab=0}
C {lab_wire.sym} -520 50 0 1 {name=p6 sig_type=std_logic lab=0}
C {lab_wire.sym} 10 -40 0 1 {name=p7 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -10 40 2 1 {name=p8 sig_type=std_logic lab=0}
C {lab_wire.sym} -50 -20 0 0 {name=p9 sig_type=std_logic lab=A}
C {lab_wire.sym} -50 0 0 0 {name=p10 sig_type=std_logic lab=B}
C {lab_wire.sym} 60 0 0 1 {name=p11 sig_type=std_logic lab=Y}
C {code_shown.sym} 200 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim

.temp 25

.param vdd=3.3

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0
"}
C {code_shown.sym} 200 190 0 0 {name=NGSPICE only_toplevel=true value="
.control
save all
tran 10p 2u

write tb_nand_3_tran.raw
.endc
"}
C {blocks/nand_3/nand_3.sym} 0 0 0 0 {name=x1}
C {lab_wire.sym} -50 20 0 0 {name=p12 sig_type=std_logic lab=C}
C {vsource.sym} -310 0 0 0 {name=VC value="PULSE(0 3.3 125n 1n 1n 125n 250n 4)" savecurrent=false}
C {lab_wire.sym} -290 -50 0 1 {name=p13 sig_type=std_logic lab=C}
C {lab_wire.sym} -290 50 0 1 {name=p14 sig_type=std_logic lab=0}
