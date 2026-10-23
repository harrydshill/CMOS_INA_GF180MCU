v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -900 30 -900 50 {lab=0}
N -900 50 -880 50 {lab=0}
N -900 -50 -900 -30 {lab=PSUP_LV}
N -900 -50 -880 -50 {lab=PSUP_LV}
N -570 30 -570 50 {lab=0}
N -570 50 -550 50 {lab=0}
N -570 -50 -570 -30 {lab=CONF1}
N -570 -50 -550 -50 {lab=CONF1}
N -360 -50 -360 -30 {lab=CONF0}
N -360 -50 -340 -50 {lab=CONF0}
N -360 30 -360 50 {lab=0}
N -360 50 -340 50 {lab=0}
N -780 30 -780 50 {lab=0}
N -780 50 -760 50 {lab=0}
N -780 -50 -780 -30 {lab=CONF2}
N -780 -50 -760 -50 {lab=CONF2}
C {vsource.sym} -900 0 0 0 {name=VDD value="\{vdd\}" savecurrent=false}
C {lab_wire.sym} -880 -50 0 1 {name=p1 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -880 50 0 1 {name=p4 sig_type=std_logic lab=0}
C {lab_wire.sym} -100 80 0 0 {name=p7 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -100 60 0 0 {name=p8 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -100 -80 0 0 {name=p10 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -100 -60 0 0 {name=p11 sig_type=std_logic lab=0}
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
tran 10n 200u

let vout=V(outp)-V(outn)

write tb_INA_gain_fb_tran.raw vout
.endc
"}
C {blocks/INA_gain_fb/INA_gain_fb.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -360 0 0 0 {name=VBIT0 value="PULSE(0 3.3 25u 1n 1n 25u 50u)" savecurrent=false}
C {vsource.sym} -570 0 0 0 {name=VBIT4 value="PULSE(0 3.3 50u 1n 1n 50u 100u)" savecurrent=false
}
C {lab_wire.sym} -550 -50 0 1 {name=p16 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -340 -50 0 1 {name=p17 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -550 50 0 1 {name=p18 sig_type=std_logic lab=0}
C {lab_wire.sym} -340 50 0 1 {name=p19 sig_type=std_logic lab=0}
C {vsource.sym} -780 0 0 0 {name=VBIT2 value="PULSE(0 3.3 100u 1n 1n 100u)" savecurrent=false
}
C {lab_wire.sym} -760 -50 0 1 {name=VBIT1 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -760 50 0 1 {name=VBIT3 sig_type=std_logic lab=0}
C {lab_wire.sym} 0 -140 0 1 {name=p2 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 0 140 2 0 {name=p3 sig_type=std_logic lab=0}
C {lab_wire.sym} 60 -40 0 1 {name=p5 sig_type=std_logic lab=outp}
C {lab_wire.sym} 60 40 0 1 {name=p6 sig_type=std_logic lab=outn}
