v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -270 -260 260 -260 {}
L 4 -270 -370 -270 -260 {}
L 4 -270 -370 260 -370 {}
L 4 260 -370 260 -260 {}
L 4 -250 390 180 390 {}
L 4 -250 280 -250 390 {}
L 4 -250 280 180 280 {}
L 4 180 280 180 390 {}
L 4 220 170 220 190 {}
L 4 220 170 240 170 {}
L 4 220 170 280 240 {}
L 4 -270 -230 -270 -120 {}
L 4 -270 -230 260 -230 {}
L 4 260 -230 260 -120 {}
L 4 -50 -50 260 -50 {}
L 4 260 -50 260 70 {}
L 4 -270 -120 260 -120 {}
L 4 -50 70 260 70 {}
L 4 -50 -50 -50 70 {}
T {diff pair common 
centroid please} 240 230 0 0 0.2 0.2 {}
T {matched} -20 260 0 0 0.2 0.2 {}
T {matched} 90 -390 0 0 0.2 0.2 {}
T {matched} 90 -250 0 0 0.2 0.2 {}
T {matched} 90 -70 0 0 0.2 0.2 {}
N 110 200 200 200 {lab=AA5}
N -70 -410 10 -410 {lab=PSUP}
N -140 450 110 450 {lab=NSUP}
N 10 170 10 200 {lab=AA5}
N 200 170 200 200 {lab=AA5}
N 240 140 260 140 {lab=V-}
N -50 140 -30 140 {lab=V+}
N 10 -410 10 -320 {lab=PSUP}
N 10 -410 200 -410 {lab=PSUP}
N 200 -410 200 -320 {lab=PSUP}
N 10 140 200 140 {lab=NSUP}
N 10 200 110 200 {lab=AA5}
N 50 -320 70 -320 {lab=vb1}
N 200 -160 200 -20 {lab=Vo-}
N -300 -410 -100 -410 {lab=PSUP}
N -300 450 -170 450 {lab=NSUP}
N -130 340 70 340 {lab=mirror}
N 110 370 110 430 {lab=NSUP}
N 110 430 110 450 {lab=NSUP}
N -200 340 -200 450 {lab=NSUP}
N -140 290 -140 340 {lab=mirror}
N -200 230 -140 230 {lab=mirror}
N -200 290 -200 310 {lab=mirror}
N -200 260 -200 290 {lab=mirror}
N 110 340 110 370 {lab=NSUP}
N -200 150 -200 260 {lab=mirror}
N -140 230 -140 290 {lab=mirror}
N 110 200 110 310 {lab=AA5}
N 70 -320 160 -320 {lab=vb1}
N -140 -320 -120 -320 {lab=vb1}
N -200 -410 -200 -320 {lab=PSUP}
N -160 -320 -140 -320 {lab=vb1}
N -140 -320 -140 -270 {lab=vb1}
N -200 -290 -200 -270 {lab=vb1}
N -200 -270 -140 -270 {lab=vb1}
N -170 450 -140 450 {lab=NSUP}
N -160 340 -130 340 {lab=mirror}
N -100 -410 -70 -410 {lab=PSUP}
N 10 -270 10 -180 {lab=AA1}
N 200 -290 200 -200 {lab=AA2}
N 50 -180 70 -180 {lab=vb2}
N 70 -180 160 -180 {lab=vb2}
N -140 -180 -120 -180 {lab=vb2}
N -200 -270 -200 -180 {lab=vb1}
N -160 -180 -140 -180 {lab=vb2}
N -140 -180 -140 -130 {lab=vb2}
N 200 -200 200 -180 {lab=AA2}
N 10 -290 10 -270 {lab=AA1}
N 10 -150 10 -140 {lab=Vo+}
N -200 -150 -200 -100 {lab=vb2}
N 10 -140 10 -20 {lab=Vo+}
N 200 30 200 90 {lab=AA4}
N 50 10 70 10 {lab=vb2}
N 70 10 160 10 {lab=vb2}
N 10 40 10 50 {lab=AA3}
N 10 50 10 100 {lab=AA3}
N 10 10 10 40 {lab=AA3}
N 200 10 200 30 {lab=AA4}
N 200 90 200 110 {lab=AA4}
N 10 100 10 110 {lab=AA3}
N -200 -100 -200 -40 {lab=vb2}
N -200 -130 -140 -130 {lab=vb2}
N -10 -90 10 -90 {lab=Vo+}
N 200 -90 220 -90 {lab=Vo-}
N -200 -40 -200 90 {lab=vb2}
C {symbols/pfet_06v0.sym} 30 -320 0 1 {name=M5
L=4u
W=2u
nf=4
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 180 -320 0 0 {name=M6
L=4u
W=2u
nf=4
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {noconn.sym} -300 390 0 1 {name=l1}
C {noconn.sym} -300 420 0 1 {name=l2}
C {ipin.sym} -300 -410 0 0 {name=p8 lab=PSUP
}
C {ipin.sym} -300 450 0 0 {name=p2 lab=NSUP
}
C {ipin.sym} -300 390 0 0 {name=p5 lab=N_EN

}
C {ipin.sym} -300 420 0 0 {name=p7 lab=EN
}
C {ipin.sym} -50 140 0 0 {name=p1 lab=V+

}
C {ipin.sym} 260 140 0 1 {name=p3 lab=V-

}
C {opin.sym} 220 -90 0 0 {name=p4 lab=Vo-}
C {lab_pin.sym} 110 140 0 0 {name=p6 sig_type=std_logic lab=NSUP}
C {symbols/nfet_06v0_nvt.sym} 220 140 0 1 {name=M1
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
C {lab_pin.sym} 10 -280 0 0 {name=p9 sig_type=std_logic lab=AA1}
C {symbols/nfet_06v0_nvt.sym} -180 340 0 1 {name=M4
L=4u
W=2u
nf=2
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {lab_pin.sym} -140 310 2 0 {name=p12 sig_type=std_logic lab=mirror
}
C {isource.sym} -200 120 0 0 {name=I0 value=1u
}
C {symbols/nfet_06v0_nvt.sym} 90 340 0 0 {name=M7
L=4u
W=2u
nf=4
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {lab_pin.sym} 80 -320 2 0 {name=p11 sig_type=std_logic lab=vb1
}
C {lab_pin.sym} -120 -320 0 1 {name=p14 sig_type=std_logic lab=vb1
}
C {symbols/pfet_06v0.sym} -180 -320 0 1 {name=M3
L=4u
W=2u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 30 -180 0 1 {name=M8
L=4u
W=2u
nf=4
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 180 -180 0 0 {name=M9
L=4u
W=2u
nf=4
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {lab_pin.sym} 80 -180 2 0 {name=p15 sig_type=std_logic lab=vb2
}
C {lab_pin.sym} -120 -180 0 1 {name=p16 sig_type=std_logic lab=vb2}
C {symbols/pfet_06v0.sym} -180 -180 0 1 {name=M10
L=4u
W=2u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {lab_pin.sym} 200 -280 0 0 {name=p17 sig_type=std_logic lab=AA2}
C {lab_pin.sym} 10 50 0 0 {name=p19 sig_type=std_logic lab=AA3}
C {lab_pin.sym} 80 10 2 0 {name=p20 sig_type=std_logic lab=vb2
}
C {lab_pin.sym} 200 50 0 0 {name=p22 sig_type=std_logic lab=AA4}
C {symbols/nfet_06v0_nvt.sym} -10 140 0 0 {name=M2
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
C {symbols/nfet_06v0_nvt.sym} 30 10 0 1 {name=M11
L=4u
W=2u
nf=4
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0_nvt.sym} 180 10 0 0 {name=M12
L=4u
W=2u
nf=4
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {lab_pin.sym} 110 240 0 0 {name=p10 sig_type=std_logic lab=AA5}
C {opin.sym} -10 -90 0 1 {name=p23 lab=Vo+}
