v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 10 150 100 150 {lab=#net1}
N 10 150 10 180 {lab=#net1}
N 10 240 10 280 {lab=NSUP}
N -170 -170 -90 -170 {lab=PSUP}
N -170 280 10 280 {lab=NSUP}
N -90 120 -90 150 {lab=#net1}
N 100 120 100 150 {lab=#net1}
N 140 90 160 90 {lab=V-}
N -150 90 -130 90 {lab=V+}
N -90 -30 -90 60 {lab=#net2}
N 100 10 100 60 {lab=Vo}
N -30 -80 60 -80 {lab=#net2}
N -90 -170 -90 -80 {lab=PSUP}
N -90 -170 100 -170 {lab=PSUP}
N 100 -170 100 -80 {lab=PSUP}
N -90 -30 -30 -30 {lab=#net2}
N -30 -80 -30 -30 {lab=#net2}
N 100 10 160 10 {lab=Vo}
N -90 90 100 90 {lab=NSUP}
N -90 150 10 150 {lab=#net1}
N -90 -60 -90 -30 {lab=#net2}
N -50 -80 -30 -80 {lab=#net2}
N 100 -60 100 10 {lab=Vo}
C {symbols/pfet_06v0.sym} -70 -80 0 1 {name=M5
L=2u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 80 -80 0 0 {name=M6
L=2u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {isource.sym} 10 210 0 0 {name=I0 value=5u}
C {noconn.sym} -170 220 0 1 {name=l1}
C {noconn.sym} -170 250 0 1 {name=l2}
C {ipin.sym} -170 -170 0 0 {name=p8 lab=PSUP
}
C {ipin.sym} -170 280 0 0 {name=p2 lab=NSUP
}
C {ipin.sym} -170 220 0 0 {name=p5 lab=N_EN

}
C {ipin.sym} -170 250 0 0 {name=p7 lab=EN
}
C {ipin.sym} -150 90 0 0 {name=p1 lab=V+

}
C {ipin.sym} 160 90 0 1 {name=p3 lab=V-

}
C {opin.sym} 160 10 0 0 {name=p4 lab=Vo}
C {lab_pin.sym} 10 90 0 0 {name=p6 sig_type=std_logic lab=NSUP}
C {symbols/nfet_06v0_nvt.sym} 120 90 0 1 {name=M1
L=2u
W=2u
nf=1
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
C {symbols/nfet_06v0_nvt.sym} -110 90 0 0 {name=M2
L=2u
W=2u
nf=1
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
