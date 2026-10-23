v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -320 30 -320 50 {lab=0}
N -320 50 -300 50 {lab=0}
N -320 -50 -320 -30 {lab=PSUP_LV}
N -320 -50 -300 -50 {lab=PSUP_LV}
N 140 80 140 100 {lab=0}
N 140 100 160 100 {lab=0}
N 140 0 140 20 {lab=#net1}
N 120 0 140 0 {lab=#net1}
N -540 30 -540 50 {lab=0}
N -540 50 -520 50 {lab=0}
N -540 -50 -540 -30 {lab=CONF1}
N -540 -50 -520 -50 {lab=CONF1}
N -450 -50 -450 -30 {lab=CONF0}
N -450 -50 -430 -50 {lab=CONF0}
N -450 30 -450 50 {lab=0}
N -450 50 -430 50 {lab=0}
N -640 30 -640 50 {lab=0}
N -640 50 -620 50 {lab=0}
N -640 -50 -640 -30 {lab=CONF2}
N -640 -50 -620 -50 {lab=CONF2}
C {vsource.sym} -320 0 0 0 {name=VDD value="\{vdd\}" savecurrent=false}
C {lab_wire.sym} -300 -50 0 1 {name=p1 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -300 50 0 1 {name=p4 sig_type=std_logic lab=0}
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

.param cbit0=0
.param cbit1=0
.param cbit2=0

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0
"}
C {code_shown.sym} 320 110 0 0 {name=NGSPICE only_toplevel=true value="
.control
save all
ac dec 100 1 1G

let FB_Gain=db(1/V(Vout))

write tb_LPF_gain_fb_ac.raw fb_gain
.endc
"}
C {lab_wire.sym} -100 0 0 0 {name=VBIT6 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 0 120 0 0 {name=p9 sig_type=std_logic lab=0}
C {lab_wire.sym} -90 110 0 0 {name=p2 sig_type=std_logic lab=0}
C {blocks/LPF_gain_fb/LPF_gain_fb.sym} 0 0 0 0 {name=x1}
C {vsource.sym} 140 50 0 0 {name=VIN value="DC 1.65 AC 1" savecurrent=false}
C {lab_wire.sym} 160 100 0 1 {name=p7 sig_type=std_logic lab=0}
C {lab_wire.sym} -520 -50 0 1 {name=p22 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -430 -50 0 1 {name=p28 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -520 50 0 1 {name=p29 sig_type=std_logic lab=0}
C {lab_wire.sym} -430 50 0 1 {name=p30 sig_type=std_logic lab=0}
C {vsource.sym} -640 0 0 0 {name=CBIT2 value=\{cbit2\} savecurrent=false
}
C {lab_wire.sym} -620 -50 0 1 {name=VBIT1 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -620 50 0 1 {name=VBIT3 sig_type=std_logic lab=0}
C {vsource.sym} -540 0 0 0 {name=CBIT1 value=\{cbit1\} savecurrent=false
}
C {vsource.sym} -450 0 0 0 {name=CBIT0 value=\{cbit0\} savecurrent=false
}
C {lab_wire.sym} -100 80 0 0 {name=p3 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -100 60 0 0 {name=p12 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -100 40 0 0 {name=VBIT2 sig_type=std_logic lab=CONF2}
