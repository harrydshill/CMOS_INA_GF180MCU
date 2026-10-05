v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {1u} -810 -350 0 0 0.4 0.4 {}
N -480 170 -460 170 {lab=0}
N -480 150 -480 170 {lab=0}
N -560 170 -540 170 {lab=0}
N -560 150 -560 170 {lab=0}
N -560 70 -560 90 {lab=VCM}
N -560 70 -540 70 {lab=VCM}
N -740 -410 -740 -380 {lab=PSUP}
N -740 -460 -740 -410 {lab=PSUP}
N -740 -330 -680 -330 {lab=vb1}
N -680 120 -680 170 {lab=vb3}
N -740 120 -680 120 {lab=vb3}
N -740 120 -740 140 {lab=vb3}
N -700 170 -680 170 {lab=vb3}
N -740 190 -740 270 {lab=0}
N -700 -380 -680 -380 {lab=vb1}
N -680 20 -680 70 {lab=vb2}
N -740 20 -680 20 {lab=vb2}
N -700 70 -680 70 {lab=vb2}
N -740 -120 -740 30 {lab=vb2}
N -680 -380 -680 -330 {lab=vb1}
N -740 -350 -740 -330 {lab=vb1}
N -740 -230 -680 -230 {lab=vb4}
N -680 -280 -680 -230 {lab=vb4}
N -740 -250 -740 -230 {lab=vb4}
N -700 -280 -680 -280 {lab=vb4}
N -740 -330 -740 -310 {lab=vb1}
N -740 -230 -740 -180 {lab=vb4}
N -740 170 -740 190 {lab=0}
N -740 30 -740 40 {lab=vb2}
N -740 100 -740 120 {lab=vb3}
N -740 270 -720 270 {lab=0}
N -740 -460 -720 -460 {lab=PSUP}
N -480 70 -460 70 {lab=PSUP}
N -480 70 -460 70 {lab=PSUP}
N -180 110 -180 190 {lab=PSUP}
N -170 110 -170 160 {lab=0}
N -170 160 -160 160 {lab=0}
N -190 110 -190 160 {lab=vb1}
N -200 160 -190 160 {lab=vb1}
N -170 -40 -170 20 {lab=PSUP}
N -480 70 -480 90 {lab=PSUP}
N -170 -40 -160 -40 {lab=PSUP}
N -190 -20 -180 -20 {lab=vb3}
N -180 -20 -180 20 {lab=vb3}
C {lab_pin.sym} -210 70 0 0 {name=p1 sig_type=std_logic lab=VCM}
C {lab_pin.sym} -210 60 0 0 {name=p3 sig_type=std_logic lab=VCM}
C {lab_pin.sym} -160 -40 2 0 {name=p5 sig_type=std_logic lab=PSUP}
C {vsource.sym} -480 120 0 0 {name=V1 value=5 savecurrent=false}
C {vsource.sym} -560 120 0 0 {name=V2 value=2.5 savecurrent=false}
C {lab_pin.sym} -540 70 2 0 {name=p10 sig_type=std_logic lab=VCM}
C {code_shown.sym} 150 120 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
op
show all
write tb_auxgb_dc.raw
.endc
"}
C {code_shown.sym} 140 -300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical

.temp 25

.param vcm=2.5
.param vdd=5

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0

"}
C {isource.sym} -740 -150 0 0 {name=I0 value=1u}
C {symbols/pfet_06v0.sym} -720 -380 0 1 {name=M7
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
model=pfet_06v0
spiceprefix=X
}
C {lab_pin.sym} -680 -380 0 1 {name=p11 sig_type=std_logic lab=vb1}
C {symbols/nfet_06v0_nvt.sym} -720 170 0 1 {name=M16
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
model=nfet_06v0
spiceprefix=X
}
C {lab_pin.sym} -680 170 2 0 {name=p29 sig_type=std_logic lab=vb3}
C {symbols/nfet_06v0_nvt.sym} -720 70 0 1 {name=M30
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
model=nfet_06v0
spiceprefix=X
}
C {lab_pin.sym} -680 70 2 0 {name=p44 sig_type=std_logic lab=vb2}
C {lab_pin.sym} -740 70 2 1 {name=p45 sig_type=std_logic lab=0}
C {symbols/pfet_06v0.sym} -720 -280 0 1 {name=M31
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
model=pfet_06v0
spiceprefix=X
}
C {lab_pin.sym} -680 -280 2 0 {name=p48 sig_type=std_logic lab=vb4}
C {lab_pin.sym} -740 -280 2 1 {name=p18 sig_type=std_logic lab=PSUP}
C {lab_pin.sym} -720 270 2 0 {name=p13 sig_type=std_logic lab=0
}
C {lab_pin.sym} -720 -460 2 0 {name=p12 sig_type=std_logic lab=PSUP}
C {blocks/aux_amp_gb/aux_amp_gb.sym} -170 160 0 0 {name=x1}
C {lab_pin.sym} -180 190 3 0 {name=p15 sig_type=std_logic lab=PSUP}
C {lab_pin.sym} -460 70 2 0 {name=p16 sig_type=std_logic lab=PSUP}
C {lab_pin.sym} -200 160 0 0 {name=p2 sig_type=std_logic lab=vb1}
C {lab_pin.sym} -190 -20 2 1 {name=p4 sig_type=std_logic lab=vb3}
C {lab_pin.sym} -540 170 2 0 {name=p6 sig_type=std_logic lab=0}
C {lab_pin.sym} -460 170 2 0 {name=p7 sig_type=std_logic lab=0}
C {lab_pin.sym} -160 160 2 0 {name=p8 sig_type=std_logic lab=0
}
