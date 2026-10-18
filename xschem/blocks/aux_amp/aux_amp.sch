v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -130 -80 180 -80 {}
L 4 -130 -190 -130 -80 {}
L 4 -130 -190 180 -190 {}
L 4 180 -190 180 -80 {}
T {matched} -100 160 0 0 0.2 0.2 {}
T {matched} 10 -210 0 0 0.2 0.2 {}
T {18u} 40 180 0 0 0.4 0.4 {}
N 30 100 120 100 {lab=AA2}
N -150 -230 -70 -230 {lab=PSUP_LV}
N -70 70 -70 100 {lab=AA2}
N 120 70 120 100 {lab=AA2}
N 160 40 180 40 {lab=V+}
N -130 40 -110 40 {lab=V-}
N -70 -90 -70 0 {lab=AA1
}
N 120 -50 120 0 {lab=Vo}
N -10 -140 80 -140 {lab=AA1}
N -70 -230 -70 -140 {lab=PSUP_LV}
N -70 -230 120 -230 {lab=PSUP_LV}
N 120 -230 120 -140 {lab=PSUP_LV}
N -70 -90 -10 -90 {lab=AA1}
N -10 -140 -10 -90 {lab=AA1}
N -70 40 120 40 {lab=NSUP}
N -70 100 30 100 {lab=AA2}
N -70 -120 -70 -90 {lab=AA1}
N -30 -140 -10 -140 {lab=AA1}
N 120 -110 120 -50 {lab=Vo}
N 30 270 30 330 {lab=NSUP}
N 30 330 30 350 {lab=NSUP}
N 30 240 30 270 {lab=NSUP}
N 120 -60 160 -60 {lab=Vo}
N 120 0 120 10 {lab=Vo}
N -70 0 -70 10 {lab=AA1}
N -220 -230 -150 -230 {lab=PSUP_LV}
N -220 350 30 350 {lab=NSUP}
N -220 240 -10 240 {lab=V_ibias_n}
N 30 180 30 210 {lab=#net1}
N 30 100 30 120 {lab=AA2}
N 160 -60 180 -60 {lab=Vo}
C {symbols/pfet_06v0.sym} -50 -140 0 1 {name=M9
L=0.4u
W=16u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 100 -140 0 0 {name=M10
L=0.4u
W=16u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} -220 -230 0 0 {name=p5 lab=PSUP_LV
}
C {ipin.sym} -220 350 0 0 {name=p20 lab=NSUP
}
C {lab_pin.sym} 30 40 0 0 {name=p24 sig_type=std_logic lab=NSUP}
C {symbols/nfet_06v0_nvt.sym} 140 40 0 1 {name=M11
L=0.5u
W=100u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_06v0_nvt.sym} -90 40 0 0 {name=M12
L=0.5u
W=100u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -70 -60 0 0 {name=p25 sig_type=std_logic lab=AA1}
C {lab_pin.sym} -70 100 0 0 {name=p26 sig_type=std_logic lab=AA2}
C {ipin.sym} 180 40 0 1 {name=p32 lab=V+

}
C {ipin.sym} -130 40 0 0 {name=p33 lab=V-

}
C {ipin.sym} -220 240 0 0 {name=p1 lab=V_ibias_n
}
C {symbols/nfet_03v3.sym} 10 240 0 0 {name=M1
L=8u
W=2u
nf=1
m=70
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {ammeter.sym} 30 150 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ipin.sym} -220 200 0 0 {name=p3 lab=V_ibias_p
}
C {noconn.sym} -220 200 0 1 {name=l1}
C {opin.sym} 180 -60 0 0 {name=p23 lab=Vo}
