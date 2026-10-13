v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {1u} 50 -350 0 0 0.4 0.4 {}
N -80 0 -60 0 {lab=0}
N -80 -20 -80 0 {lab=0}
N -80 -100 -80 -80 {lab=PSUP_LV}
N -80 -100 -60 -100 {lab=PSUP_LV}
N -160 0 -140 0 {lab=0}
N -160 -20 -160 0 {lab=0}
N -160 -100 -160 -80 {lab=VCM}
N -160 -100 -140 -100 {lab=VCM}
N 300 -130 340 -130 {lab=#net1}
N 300 -90 340 -90 {lab=#net2}
N 230 -290 230 -280 {lab=PSUP_LV}
N 230 -220 230 -210 {lab=#net3}
N 90 -400 90 -370 {lab=PSUP_LV}
N 90 -320 150 -320 {lab=g}
N 130 -370 150 -370 {lab=g}
N 150 -370 150 -320 {lab=g}
N 90 -340 90 -320 {lab=g}
N 90 -320 90 -300 {lab=g}
N 210 -400 210 -370 {lab=PSUP_LV}
N 150 -370 170 -370 {lab=g}
N 210 -340 210 -320 {lab=#net4}
N 210 -320 210 -300 {lab=#net4}
N 90 -420 210 -420 {lab=PSUP_LV}
N 90 -240 90 -210 {lab=0}
N 210 -420 210 -400 {lab=PSUP_LV}
N 90 -420 90 -400 {lab=PSUP_LV}
N 210 -220 210 -210 {lab=#net5}
N 210 -300 210 -280 {lab=#net4}
C {blocks/fdda_lv/fdda_lv.sym} 80 -160 0 0 {name=x1}
C {lab_pin.sym} 150 -90 0 0 {name=p1 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 150 -110 0 0 {name=p2 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 150 -130 0 0 {name=p3 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 150 -150 0 0 {name=p4 sig_type=std_logic lab=VCM}
C {noconn.sym} 190 -210 1 0 {name=l4}
C {lab_pin.sym} 230 -290 2 0 {name=p5 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} 240 -10 3 0 {name=p6 sig_type=std_logic lab=0}
C {vsource.sym} -80 -50 0 0 {name=VDD value=\{vdd\} savecurrent=false}
C {lab_pin.sym} -60 0 2 0 {name=p7 sig_type=std_logic lab=0}
C {lab_pin.sym} -60 -100 2 0 {name=p8 sig_type=std_logic lab=PSUP_LV}
C {vsource.sym} -160 -50 0 0 {name=VCM value=\{vdd/2\} savecurrent=false}
C {lab_pin.sym} -140 0 2 0 {name=p9 sig_type=std_logic lab=0}
C {lab_pin.sym} -140 -100 2 0 {name=p10 sig_type=std_logic lab=VCM}
C {code_shown.sym} 550 -50 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
op
print i(Vmeas)
write tb_fdda_lv_dc.raw
.endc
"}
C {code_shown.sym} 540 -470 0 0 {name=MODELS only_toplevel=true
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
C {ammeter.sym} 230 -250 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {symbols/pfet_03v3.sym} 110 -370 0 1 {name=M7
L=4u
W=2u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 190 -370 0 0 {name=M1
L=4u
W=2u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 210 -420 2 0 {name=p11 sig_type=std_logic lab=PSUP_LV}
C {isource.sym} 90 -270 0 0 {name=I0 value=1u}
C {lab_pin.sym} 90 -210 2 0 {name=p12 sig_type=std_logic lab=0}
C {lab_pin.sym} 200 -10 3 0 {name=p13 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} 220 -10 3 0 {name=p14 sig_type=std_logic lab=0}
C {ammeter.sym} 210 -250 0 1 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 150 -330 2 0 {name=p15 sig_type=std_logic lab=g}
C {lab_pin.sym} 150 -70 0 0 {name=p16 sig_type=std_logic lab=VCM}
