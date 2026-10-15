v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -530 30 -530 50 {lab=0}
N -530 50 -510 50 {lab=0}
N -530 -50 -530 -30 {lab=PSUP_LV}
N -530 -50 -510 -50 {lab=PSUP_LV}
N -370 30 -370 50 {lab=0}
N -370 50 -350 50 {lab=0}
N -370 -50 -370 -30 {lab=VP}
N -370 -50 -350 -50 {lab=VP}
C {blocks/transmission_gate/transmission_gate.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -530 0 0 0 {name=VDD value="\{vdd\}" savecurrent=false}
C {lab_wire.sym} -510 -50 0 1 {name=p3 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -510 50 0 1 {name=p4 sig_type=std_logic lab=0}
C {lab_wire.sym} -20 -20 3 1 {name=p5 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 20 2 1 {name=p6 sig_type=std_logic lab=0}
C {lab_wire.sym} 40 0 0 1 {name=p7 sig_type=std_logic lab=0}
C {lab_wire.sym} -350 -50 0 1 {name=p8 sig_type=std_logic lab=VP}
C {lab_wire.sym} -350 50 0 1 {name=p9 sig_type=std_logic lab=0}
C {code_shown.sym} 320 -290 0 0 {name=MODELS only_toplevel=true
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
C {code_shown.sym} 320 110 0 0 {name=NGSPICE only_toplevel=true value="
.control
save all
op

write tb_TG_Ron.raw
.endc
"}
C {lab_wire.sym} 0 -20 3 1 {name=p1 sig_type=std_logic lab=0}
C {lab_wire.sym} 0 20 1 1 {name=p2 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -40 0 0 0 {name=p10 sig_type=std_logic lab=VP}
C {isource.sym} -370 0 2 0 {name=I0 value=1u}
