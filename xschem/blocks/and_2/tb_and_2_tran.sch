v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -590 30 -590 50 {lab=0}
N -590 50 -570 50 {lab=0}
N -590 -50 -590 -30 {lab=B}
N -590 -50 -570 -50 {lab=B}
N -380 -50 -380 -30 {lab=A}
N -380 -50 -360 -50 {lab=A}
N -380 30 -380 50 {lab=0}
N -380 50 -360 50 {lab=0}
N -780 30 -780 50 {lab=0}
N -780 50 -760 50 {lab=0}
N -780 -50 -780 -30 {lab=PSUP_LV}
N -780 -50 -760 -50 {lab=PSUP_LV}
C {vsource.sym} -380 0 0 0 {name=VLSB value="PULSE(0 3.3 250n 1n 1n 250n 500n 2)" savecurrent=false}
C {vsource.sym} -590 0 0 0 {name=VMSB value="PULSE(0 3.3 500n 1n 1n 500n)" savecurrent=false
}
C {vsource.sym} -780 0 0 0 {name=VDD value="\{vdd\}" savecurrent=false}
C {lab_wire.sym} -760 -50 0 1 {name=p1 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -570 -50 0 1 {name=p2 sig_type=std_logic lab=B}
C {lab_wire.sym} -360 -50 0 1 {name=p3 sig_type=std_logic lab=A}
C {lab_wire.sym} -760 50 0 1 {name=p4 sig_type=std_logic lab=0}
C {lab_wire.sym} -570 50 0 1 {name=p5 sig_type=std_logic lab=0}
C {lab_wire.sym} -360 50 0 1 {name=p6 sig_type=std_logic lab=0}
C {lab_wire.sym} 10 -40 0 1 {name=p7 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -10 40 2 1 {name=p8 sig_type=std_logic lab=0}
C {lab_wire.sym} -50 -20 0 0 {name=p9 sig_type=std_logic lab=A}
C {lab_wire.sym} -50 20 0 0 {name=p10 sig_type=std_logic lab=B}
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
tran 10p 1u

write tb_and_2_tran.raw
.endc
"}
C {blocks/and_2/and_2.sym} 0 0 0 0 {name=x1}
