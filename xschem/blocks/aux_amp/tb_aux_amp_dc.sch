v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 10 -0 {}
T {vdd needs to become a variable to sweep
} -420.0000000000007 -120.0000000000001 0 0 0.2 0.2 {}
T {1u} -310 280 0 0 0.4 0.4 {}
N -40 -70 -40 -30 {lab=PSUP}
N -40 30 -40 70 {lab=0}
N -320 -50 -300 -50 {lab=PSUP}
N -300 -50 -300 -30 {lab=PSUP}
N -320 50 -300 50 {lab=0}
N -300 30 -300 50 {lab=0}
N -190 90 -190 130 {lab=0}
N -190 -10 -190 -0 {lab=INP}
N -190 -0 -190 20 {lab=INP}
N -190 20 -190 40 {lab=INP}
N -10 0 10 0 {lab=OUT}
N -190 -10 -70 -10 {lab=INP}
N -400 340 -400 390 {lab=vb3}
N -460 340 -460 360 {lab=vb3}
N -420 390 -400 390 {lab=vb3}
N -460 340 -400 340 {lab=vb3}
N -400 240 -400 290 {lab=IBIAS}
N -460 240 -460 260 {lab=IBIAS}
N -420 290 -400 290 {lab=IBIAS}
N -460 240 -400 240 {lab=IBIAS}
N -460 320 -460 340 {lab=vb3}
N -460 420 -460 470 {lab=0}
N -460 390 -460 420 {lab=0}
N -460 140 -460 160 {lab=PSUP}
N -460 220 -460 240 {lab=IBIAS}
N -50 30 -50 60 {lab=vb3}
N -110 10 -70 10 {lab=OUT}
N -110 10 -110 100 {lab=OUT}
N -110 100 20 100 {lab=OUT}
N 20 0 20 100 {lab=OUT}
N 10 -0 20 -0 {lab=OUT}
N -270 230 -270 260 {lab=PSUP}
N -270 180 -270 230 {lab=PSUP}
N -270 310 -210 310 {lab=vb1}
N -230 260 -210 260 {lab=vb1}
N -210 260 -210 310 {lab=vb1}
N -270 290 -270 310 {lab=vb1}
N -270 410 -210 410 {lab=vb2}
N -210 360 -210 410 {lab=vb2}
N -270 390 -270 410 {lab=vb2}
N -230 360 -210 360 {lab=vb2}
N -270 310 -270 330 {lab=vb1}
N -270 410 -270 460 {lab=vb2}
N -270 520 -270 540 {lab=0}
N -70 -50 -50 -50 {lab=PSUP}
N -50 -50 -50 -30 {lab=PSUP}
C {lab_wire.sym} -40 -70 0 0 {name=p1 sig_type=std_logic lab=PSUP
}
C {lab_wire.sym} -320 -50 0 0 {name=p2 sig_type=std_logic lab=PSUP


}
C {lab_wire.sym} -320 50 0 0 {name=p3 sig_type=std_logic lab=0
}
C {lab_wire.sym} -40 70 0 1 {name=p4 sig_type=std_logic lab=0
}
C {lab_wire.sym} -190 130 0 0 {name=p5 sig_type=std_logic lab=0
}
C {vsource.sym} -300 0 0 0 {name=VDD value=\{vdd\} savecurrent=false}
C {vsource.sym} -190 70 0 0 {name=VCM value=2.6 savecurrent=false}
C {code_shown.sym} 240 200 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
op
show all
write tb_aux_amp_dc.raw
.endc
"}
C {blocks/aux_amp/aux_amp.sym} -40 70 0 0 {name=x1}
C {lab_wire.sym} -190 0 0 0 {name=p7 sig_type=std_logic lab=INP
}
C {lab_wire.sym} 10 0 0 1 {name=p6 sig_type=std_logic lab=OUT
}
C {code_shown.sym} 230 -220 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim

.temp 25

.param vcm=1.65
.param vdd=3.3

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0

"}
C {lab_pin.sym} -400 340 2 0 {name=p29 sig_type=std_logic lab=vb3}
C {symbols/nfet_03v3.sym} -440 390 0 1 {name=M11
L=8u
W=2u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -440 290 0 1 {name=M18
L=4u
W=4u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -400 240 2 0 {name=p33 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} -460 290 0 0 {name=p32 sig_type=std_logic lab=0}
C {lab_wire.sym} -460 140 0 0 {name=p9 sig_type=std_logic lab=PSUP


}
C {isource.sym} -460 190 0 0 {name=I0 value=1u}
C {lab_wire.sym} -460 470 0 0 {name=p10 sig_type=std_logic lab=0
}
C {lab_pin.sym} -50 60 2 1 {name=p12 sig_type=std_logic lab=vb3}
C {symbols/pfet_03v3.sym} -250 260 0 1 {name=M7
L=8u
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
C {lab_pin.sym} -210 260 0 1 {name=p8 sig_type=std_logic lab=vb1}
C {lab_pin.sym} -210 360 2 0 {name=p11 sig_type=std_logic lab=vb2}
C {symbols/pfet_03v3.sym} -250 360 0 1 {name=M4
L=4u
W=4u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -270 360 2 1 {name=p46 sig_type=std_logic lab=PSUP}
C {lab_wire.sym} -270 180 0 0 {name=p13 sig_type=std_logic lab=PSUP


}
C {isource.sym} -270 490 0 0 {name=I1 value=1u}
C {lab_wire.sym} -270 540 0 0 {name=p14 sig_type=std_logic lab=0
}
C {lab_pin.sym} -70 -50 0 0 {name=p15 sig_type=std_logic lab=vb1}
