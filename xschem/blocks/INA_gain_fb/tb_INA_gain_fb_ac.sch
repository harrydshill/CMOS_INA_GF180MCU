v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -420 30 -420 50 {lab=0}
N -420 50 -400 50 {lab=0}
N -420 -50 -420 -30 {lab=PSUP_LV}
N -420 -50 -400 -50 {lab=PSUP_LV}
N -320 30 -320 50 {lab=0}
N -320 50 -300 50 {lab=0}
N -320 -50 -320 -30 {lab=ACP}
N -320 -50 -300 -50 {lab=ACP}
N -320 50 -320 70 {lab=0}
N -320 130 -320 150 {lab=ACN}
N -320 150 -300 150 {lab=ACN}
C {vsource.sym} -420 0 0 0 {name=VDD value="\{vdd\}" savecurrent=false}
C {lab_wire.sym} -400 -50 0 1 {name=p1 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -400 50 0 1 {name=p4 sig_type=std_logic lab=0}
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
set units=degrees
save all
ac dec 100 1 1G

let vout=V(outp)-V(outn)
let phase_outp = cph(outp)
let phase_outn = cph(outn)
let phase_inp = cph(acp)
let phase_inn = cph(acn)

write tb_INA_gain_fb_ac.raw
.endc
"}
C {blocks/INA_gain_fb/INA_gain_fb.sym} 0 0 0 0 {name=x1}
C {lab_wire.sym} 0 -140 0 1 {name=p2 sig_type=std_logic lab=ACP}
C {lab_wire.sym} 60 -40 0 1 {name=p5 sig_type=std_logic lab=outp}
C {lab_wire.sym} 60 40 0 1 {name=p6 sig_type=std_logic lab=outn}
C {lab_wire.sym} -170 90 0 0 {name=p7 sig_type=std_logic lab=0}
C {lab_wire.sym} -160 70 0 0 {name=p8 sig_type=std_logic lab=0}
C {lab_wire.sym} -100 80 0 0 {name=p9 sig_type=std_logic lab=0}
C {vsource.sym} -320 0 0 0 {name=VDD1 value="DC 1.65 AC 0.5" savecurrent=false}
C {lab_wire.sym} -300 -50 0 1 {name=p12 sig_type=std_logic lab=ACP}
C {lab_wire.sym} -300 50 0 1 {name=p13 sig_type=std_logic lab=0}
C {lab_wire.sym} -100 60 0 0 {name=p15 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -150 240 0 0 {name=p16 sig_type=std_logic lab=PSUP_LV}
C {vsource.sym} -320 100 0 0 {name=VDD2 value="DC -1.65 AC 0.5" savecurrent=false}
C {lab_wire.sym} -300 150 2 0 {name=p17 sig_type=std_logic lab=ACN}
C {lab_wire.sym} 0 140 2 0 {name=p3 sig_type=std_logic lab=ACN}
C {lab_wire.sym} -110 100 0 0 {name=p18 sig_type=std_logic lab=PSUP_LV}
