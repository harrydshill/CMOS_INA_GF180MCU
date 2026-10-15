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

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0
"}
C {code_shown.sym} 320 110 0 0 {name=NGSPICE only_toplevel=true value="
.control
save all
ac dec 100 1 1G

let FB_Gain=db(1/V(Vout))

write tb_LPF_gain_fb_ac.raw 
.endc
"}
C {lab_wire.sym} -100 0 0 0 {name=VBIT6 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 0 120 0 0 {name=p9 sig_type=std_logic lab=0}
C {lab_wire.sym} -230 100 0 0 {name=p2 sig_type=std_logic lab=0}
C {lab_wire.sym} -230 60 0 0 {name=p3 sig_type=std_logic lab=0}
C {lab_wire.sym} -230 80 0 0 {name=p5 sig_type=std_logic lab=0}
C {lab_wire.sym} -100 40 0 0 {name=p6 sig_type=std_logic lab=PSUP_LV}
C {blocks/LPF_gain_fb/LPF_gain_fb.sym} 0 0 0 0 {name=x1}
C {vsource.sym} 140 50 0 0 {name=VIN value="DC 0 AC 1" savecurrent=false}
C {lab_wire.sym} 160 100 0 1 {name=p7 sig_type=std_logic lab=0}
C {lab_wire.sym} -100 60 0 0 {name=p8 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -100 80 0 0 {name=p12 sig_type=std_logic lab=PSUP_LV}
