v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 120 60 120 80 {}
L 4 120 60 140 60 {}
L 4 120 60 180 130 {}
T {diff pair common 
centroid please} 140 120 0 0 0.2 0.2 {}
T {2u} 80 130 0 0 0.4 0.4 {}
N 10 90 100 90 {lab=n2}
N -170 -250 -90 -250 {lab=PSUP}
N -90 60 -90 90 {lab=n2}
N 100 60 100 90 {lab=n2}
N 140 30 160 30 {lab=V+}
N -150 30 -130 30 {lab=V-}
N -90 -100 -90 -10 {lab=Vo+
}
N 100 -60 100 -10 {lab=Vo-}
N -30 -150 60 -150 {lab=Vbias1}
N -90 -240 -90 -150 {lab=PSUP}
N -90 -250 100 -250 {lab=PSUP}
N 100 -240 100 -150 {lab=PSUP}
N -90 30 100 30 {lab=NSUP}
N -90 90 10 90 {lab=n2}
N -90 -130 -90 -100 {lab=Vo+}
N -50 -150 -30 -150 {lab=Vbias1}
N 100 -120 100 -60 {lab=Vo-}
N -370 -250 -170 -250 {lab=PSUP}
N -360 310 -230 310 {lab=NSUP}
N 100 -10 100 0 {lab=Vo-}
N -90 -10 -90 0 {lab=Vo+}
N -110 -70 -90 -70 {lab=Vo+}
N 100 -70 120 -70 {lab=Vo-}
N 10 250 10 310 {lab=NSUP}
N -230 310 10 310 {lab=NSUP}
N 10 180 10 220 {lab=NSUP}
N -360 -150 -320 -150 {lab=Vbias1}
N -260 -150 -240 -150 {lab=Vbias1}
N -240 -150 -220 -150 {lab=Vbias1}
N -90 -250 -90 -240 {lab=PSUP}
N 100 -250 100 -240 {lab=PSUP}
N 10 90 10 120 {lab=n2}
N 10 220 10 250 {lab=NSUP}
N -320 -150 -260 -150 {lab=Vbias1}
C {ipin.sym} -370 -250 0 0 {name=p16 lab=PSUP
}
C {ipin.sym} -360 310 0 0 {name=p17 lab=NSUP
}
C {ipin.sym} -360 280 0 0 {name=p18 lab=EN
}
C {opin.sym} 120 -70 0 0 {name=p19 lab=Vo-}
C {lab_pin.sym} 10 30 0 0 {name=p20 sig_type=std_logic lab=NSUP}
C {symbols/nfet_06v0_nvt.sym} 120 30 0 1 {name=M9
L=2u
W=4u
nf=5
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
C {symbols/nfet_06v0_nvt.sym} -110 30 0 0 {name=M10
L=2u
W=4u
nf=5
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
C {ipin.sym} 160 30 0 1 {name=p21 lab=V+

}
C {ipin.sym} -150 30 0 0 {name=p22 lab=V-

}
C {opin.sym} -110 -70 0 1 {name=p23 lab=Vo+}
C {symbols/pfet_06v0.sym} 80 -150 0 0 {name=M11
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
C {symbols/pfet_06v0.sym} -70 -150 0 1 {name=M12
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
C {lab_pin.sym} 10 150 0 1 {name=p24 sig_type=std_logic lab=NSUP}
C {lab_pin.sym} 10 -150 0 0 {name=p25 sig_type=std_logic lab=Vbias1}
C {ipin.sym} -360 -150 0 0 {name=p26 lab=Vbias1
}
C {symbols/nfet_06v0_nvt.sym} -10 150 0 0 {name=M15
L=4u
W=2u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {lab_pin.sym} -30 250 0 0 {name=p28 sig_type=std_logic lab=EN}
C {ipin.sym} -360 250 0 0 {name=p29 lab=Vbias2
}
C {lab_pin.sym} -30 150 0 0 {name=p30 sig_type=std_logic lab=Vbias2}
C {lab_pin.sym} -290 -120 0 0 {name=p31 sig_type=std_logic lab=EN}
C {lab_pin.sym} -30 -200 0 0 {name=p33 sig_type=std_logic lab=EN}
C {lab_pin.sym} -50 90 0 1 {name=p3 sig_type=std_logic lab=n2}
