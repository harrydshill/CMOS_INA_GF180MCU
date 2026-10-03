v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -80 -20 230 -20 {}
L 4 -80 -130 -80 -20 {}
L 4 -80 -130 230 -130 {}
L 4 230 -130 230 -20 {}
L 4 -250 350 530 350 {}
L 4 -250 240 -250 350 {}
L 4 -250 240 530 240 {}
L 4 530 240 530 350 {}
L 4 190 130 190 150 {}
L 4 190 130 210 130 {}
L 4 190 130 250 200 {}
T {diff pair common 
centroid please} 210 190 0 0 0.2 0.2 {}
T {matched} -50 220 0 0 0.2 0.2 {}
T {matched} 60 -150 0 0 0.2 0.2 {}
T {problems:
> need to swap to real mimcaps -
there will be little change in 
performance from this
>need to check where the Isource
is actually coming from in the real
design
>complete set of sims over corners
>enable swtiches not implemented} -490 -30 0 0 0.2 0.2 {}
N 80 160 170 160 {lab=AA2}
N -100 -170 -20 -170 {lab=PSUP}
N -170 410 80 410 {lab=NSUP}
N -20 130 -20 160 {lab=AA2}
N 170 130 170 160 {lab=AA2}
N 210 100 230 100 {lab=#net1}
N -80 100 -60 100 {lab=V-}
N -20 -30 -20 60 {lab=AA1
}
N 170 10 170 60 {lab=AA3}
N 40 -80 130 -80 {lab=AA1}
N -20 -170 -20 -80 {lab=PSUP}
N -20 -170 170 -170 {lab=PSUP}
N 170 -170 170 -80 {lab=PSUP}
N -20 -30 40 -30 {lab=AA1}
N 40 -80 40 -30 {lab=AA1}
N -20 100 170 100 {lab=NSUP}
N -20 160 80 160 {lab=AA2}
N -20 -60 -20 -30 {lab=AA1}
N 20 -80 40 -80 {lab=AA1}
N 170 -50 170 10 {lab=AA3}
N -300 -170 -100 -170 {lab=PSUP}
N -300 410 -170 410 {lab=NSUP}
N -160 300 40 300 {lab=mirror}
N 80 330 80 390 {lab=NSUP}
N 80 390 80 410 {lab=NSUP}
N -200 300 -200 410 {lab=NSUP}
N -140 250 -140 300 {lab=mirror}
N -200 190 -140 190 {lab=mirror}
N -200 250 -200 270 {lab=mirror}
N -200 220 -200 250 {lab=mirror}
N 80 300 80 330 {lab=NSUP}
N 440 330 440 390 {lab=NSUP}
N 440 300 440 330 {lab=NSUP}
N 380 300 400 300 {lab=mirror}
N 80 410 390 410 {lab=NSUP}
N 440 390 440 410 {lab=NSUP}
N 390 410 440 410 {lab=NSUP}
N 440 -170 440 -110 {lab=PSUP}
N 170 -170 440 -170 {lab=PSUP}
N 440 -110 440 -80 {lab=PSUP}
N 440 -40 440 270 {lab=Vo}
N 440 -50 440 -40 {lab=Vo}
N 440 100 470 100 {lab=Vo}
N 210 0 290 0 {lab=AA3}
N 300 -80 370 -80 {lab=AA3}
N -200 110 -200 220 {lab=mirror}
N -140 190 -140 250 {lab=mirror}
N 350 0 350 20 {lab=#net2}
N -200 30 -200 50 {lab=PSUP}
N -200 30 -200 50 {lab=PSUP}
N 290 -80 300 -80 {lab=AA3}
N 170 0 210 0 {lab=AA3}
N 290 -80 290 -30 {lab=AA3}
N 290 -30 290 0 {lab=AA3}
N 350 -80 350 -60 {lab=AA3}
N 350 80 350 100 {lab=Vo}
N 380 100 440 100 {lab=Vo}
N 170 60 170 70 {lab=AA3}
N -20 60 -20 70 {lab=AA1}
N 80 160 80 270 {lab=AA2}
N 350 100 380 100 {lab=Vo}
N 370 -80 400 -80 {lab=AA3}
C {symbols/pfet_06v0.sym} 0 -80 0 1 {name=M5
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
C {symbols/pfet_06v0.sym} 150 -80 0 0 {name=M6
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
C {noconn.sym} -300 350 0 1 {name=l1}
C {noconn.sym} -300 380 0 1 {name=l2}
C {ipin.sym} -300 -170 0 0 {name=p8 lab=PSUP
}
C {ipin.sym} -300 410 0 0 {name=p2 lab=NSUP
}
C {ipin.sym} -300 350 0 0 {name=p5 lab=N_EN

}
C {ipin.sym} -300 380 0 0 {name=p7 lab=EN
}
C {opin.sym} 470 100 0 0 {name=p4 lab=Vo}
C {lab_pin.sym} 80 100 0 0 {name=p6 sig_type=std_logic lab=NSUP}
C {symbols/nfet_06v0_nvt.sym} 190 100 0 1 {name=M1
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
C {symbols/nfet_06v0_nvt.sym} -40 100 0 0 {name=M2
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
C {lab_pin.sym} -20 -20 0 0 {name=p9 sig_type=std_logic lab=AA1}
C {lab_pin.sym} -20 160 0 0 {name=p10 sig_type=std_logic lab=AA2}
C {capa.sym} 350 -30 2 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"
}
C {symbols/nfet_06v0_nvt.sym} -180 300 0 1 {name=M4
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
C {lab_pin.sym} -140 270 2 0 {name=p12 sig_type=std_logic lab=mirror
}
C {isource.sym} -200 80 0 0 {name=I0 value=1u
}
C {lab_pin.sym} -200 30 0 0 {name=p13 sig_type=std_logic lab=PSUP}
C {symbols/nfet_06v0_nvt.sym} 60 300 0 0 {name=M7
L=4u
W=2u
nf=4
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
C {lab_pin.sym} 380 300 0 0 {name=p14 sig_type=std_logic lab=mirror
}
C {symbols/pfet_06v0.sym} 420 -80 0 0 {name=M3
L=2u
W=4u
nf=4
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
C {lab_pin.sym} 290 -80 0 0 {name=p15 sig_type=std_logic lab=AA3
}
C {symbols/nfet_06v0_nvt.sym} 420 300 0 0 {name=M8
L=4u
W=2u
nf=4
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
C {symbols/ppolyf_u_3k.sym} 350 50 2 1 {name=R1
W=1e-6
L=8e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_pin.sym} 330 50 0 0 {name=p11 sig_type=std_logic lab=NSUP}
C {ipin.sym} 230 100 0 1 {name=p1 lab=V+

}
C {ipin.sym} -80 100 0 0 {name=p3 lab=V-

}
