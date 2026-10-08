v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -590 30 -590 50 {lab=0}
N -590 50 -570 50 {lab=0}
N -590 -50 -590 -30 {lab=CONF1}
N -590 -50 -570 -50 {lab=CONF1}
N -380 -50 -380 -30 {lab=CONF0}
N -380 -50 -360 -50 {lab=CONF0}
N -380 30 -380 50 {lab=0}
N -380 50 -360 50 {lab=0}
N -930 30 -930 50 {lab=0}
N -930 50 -910 50 {lab=0}
N -930 -50 -930 -30 {lab=PSUP_LV}
N -930 -50 -910 -50 {lab=PSUP_LV}
N -800 30 -800 50 {lab=0}
N -800 50 -780 50 {lab=0}
N -800 -50 -800 -30 {lab=CONF2}
N -800 -50 -780 -50 {lab=CONF2}
C {vsource.sym} -380 0 0 0 {name=VBIT0 value="PULSE(0 3.3 25u 1n 1n 25u 50u)" savecurrent=false}
C {vsource.sym} -590 0 0 0 {name=VBIT4 value="PULSE(0 3.3 50u 1n 1n 50u 100u)" savecurrent=false
}
C {vsource.sym} -930 0 0 0 {name=VDD value="\{vdd\}" savecurrent=false}
C {lab_wire.sym} -910 -50 0 1 {name=p1 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -570 -50 0 1 {name=p2 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -360 -50 0 1 {name=p3 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -910 50 0 1 {name=p4 sig_type=std_logic lab=0}
C {lab_wire.sym} -570 50 0 1 {name=p5 sig_type=std_logic lab=0}
C {lab_wire.sym} -360 50 0 1 {name=p6 sig_type=std_logic lab=0}
C {lab_wire.sym} -100 60 0 0 {name=p7 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -100 80 0 0 {name=p8 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -100 -60 0 0 {name=p10 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -100 -40 0 0 {name=p11 sig_type=std_logic lab=0}
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

let FB_Gain=db(V(PSUP_LV)/V(Vout))

write tb_LPF_gain_fb_tran.raw FB_Gain
.endc
"}
C {lab_wire.sym} 120 0 0 1 {name=p12 sig_type=std_logic lab=PSUP_LV}
C {vsource.sym} -800 0 0 0 {name=VBIT2 value="PULSE(0 3.3 100u 1n 1n 100u)" savecurrent=false
}
C {lab_wire.sym} -780 -50 0 1 {name=VBIT1 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -780 50 0 1 {name=VBIT3 sig_type=std_logic lab=0}
C {lab_wire.sym} -100 40 0 0 {name=VBIT5 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -100 0 0 0 {name=VBIT6 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 0 120 0 0 {name=p9 sig_type=std_logic lab=0}
C {blocks/LPF_gain_fb/LPF_gain_fb.sym} 0 0 0 0 {name=x1}
