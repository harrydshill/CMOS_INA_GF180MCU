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
L 4 -300 290 480 290 {}
L 4 -300 180 -300 290 {}
L 4 -300 180 480 180 {}
L 4 480 180 480 290 {}
L 4 140 70 140 90 {}
L 4 140 70 160 70 {}
L 4 140 70 200 140 {}
T {diff pair common 
centroid please} 160 130 0 0 0.2 0.2 {}
T {matched} -100 160 0 0 0.2 0.2 {}
T {matched} 10 -210 0 0 0.2 0.2 {}
T {problems:
> need to swap to real mimcaps -
there will be little change in 
performance from this
>need to check where the Isource
is actually coming from in the real
design
>complete set of sims over corners
>enable swtiches not implemented} -540 -90 0 0 0.2 0.2 {}
N 30 100 120 100 {lab=AA2}
N -150 -230 -70 -230 {lab=PSUP}
N -220 350 30 350 {lab=NSUP}
N -70 70 -70 100 {lab=AA2}
N 120 70 120 100 {lab=AA2}
N 160 40 180 40 {lab=#net1}
N -130 40 -110 40 {lab=V-}
N -70 -90 -70 0 {lab=AA1
}
N 120 -50 120 0 {lab=AA3}
N -10 -140 80 -140 {lab=AA1}
N -70 -230 -70 -140 {lab=PSUP}
N -70 -230 120 -230 {lab=PSUP}
N 120 -230 120 -140 {lab=PSUP}
N -70 -90 -10 -90 {lab=AA1}
N -10 -140 -10 -90 {lab=AA1}
N -70 40 120 40 {lab=NSUP}
N -70 100 30 100 {lab=AA2}
N -70 -120 -70 -90 {lab=AA1}
N -30 -140 -10 -140 {lab=AA1}
N 120 -110 120 -50 {lab=AA3}
N -350 -230 -150 -230 {lab=PSUP}
N -350 350 -220 350 {lab=NSUP}
N -210 240 -10 240 {lab=mirror}
N 30 270 30 330 {lab=NSUP}
N 30 330 30 350 {lab=NSUP}
N -250 240 -250 350 {lab=NSUP}
N -190 190 -190 240 {lab=mirror}
N -250 130 -190 130 {lab=mirror}
N -250 190 -250 210 {lab=mirror}
N -250 160 -250 190 {lab=mirror}
N 30 240 30 270 {lab=NSUP}
N 390 270 390 330 {lab=NSUP}
N 390 240 390 270 {lab=NSUP}
N 330 240 350 240 {lab=mirror}
N 30 350 340 350 {lab=NSUP}
N 390 330 390 350 {lab=NSUP}
N 340 350 390 350 {lab=NSUP}
N 390 -230 390 -170 {lab=PSUP}
N 120 -230 390 -230 {lab=PSUP}
N 390 -170 390 -140 {lab=PSUP}
N 390 -100 390 210 {lab=Vo}
N 390 -110 390 -100 {lab=Vo}
N 390 40 420 40 {lab=Vo}
N 160 -60 240 -60 {lab=AA3}
N 250 -140 320 -140 {lab=AA3}
N -250 50 -250 160 {lab=mirror}
N -190 130 -190 190 {lab=mirror}
N 300 -60 300 -40 {lab=#net2}
N -250 -30 -250 -10 {lab=PSUP}
N -250 -30 -250 -10 {lab=PSUP}
N 240 -140 250 -140 {lab=AA3}
N 120 -60 160 -60 {lab=AA3}
N 240 -140 240 -90 {lab=AA3}
N 240 -90 240 -60 {lab=AA3}
N 300 -140 300 -120 {lab=AA3}
N 300 20 300 40 {lab=Vo}
N 330 40 390 40 {lab=Vo}
N 120 0 120 10 {lab=AA3}
N -70 0 -70 10 {lab=AA1}
N 30 100 30 210 {lab=AA2}
N 300 40 330 40 {lab=Vo}
N 320 -140 350 -140 {lab=AA3}
C {symbols/pfet_06v0.sym} -50 -140 0 1 {name=M9
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
C {symbols/pfet_06v0.sym} 100 -140 0 0 {name=M10
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
C {noconn.sym} -350 290 0 1 {name=l1}
C {noconn.sym} -350 320 0 1 {name=l2}
C {ipin.sym} -350 -230 0 0 {name=p5 lab=PSUP
}
C {ipin.sym} -350 350 0 0 {name=p20 lab=NSUP
}
C {ipin.sym} -350 290 0 0 {name=p21 lab=N_EN

}
C {ipin.sym} -350 320 0 0 {name=p22 lab=EN
}
C {opin.sym} 420 40 0 0 {name=p23 lab=Vo}
C {lab_pin.sym} 30 40 0 0 {name=p24 sig_type=std_logic lab=NSUP}
C {symbols/nfet_06v0_nvt.sym} 140 40 0 1 {name=M11
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
C {symbols/nfet_06v0_nvt.sym} -90 40 0 0 {name=M12
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
C {lab_pin.sym} -70 -80 0 0 {name=p25 sig_type=std_logic lab=AA1}
C {lab_pin.sym} -70 100 0 0 {name=p26 sig_type=std_logic lab=AA2}
C {capa.sym} 300 -90 2 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"
}
C {symbols/nfet_06v0_nvt.sym} -230 240 0 1 {name=M13
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
C {lab_pin.sym} -190 210 2 0 {name=p27 sig_type=std_logic lab=mirror
}
C {isource.sym} -250 20 0 0 {name=I0 value=1u
}
C {lab_pin.sym} -250 -30 0 0 {name=p28 sig_type=std_logic lab=PSUP}
C {symbols/nfet_06v0_nvt.sym} 10 240 0 0 {name=M14
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
C {lab_pin.sym} 330 240 0 0 {name=p29 sig_type=std_logic lab=mirror
}
C {symbols/pfet_06v0.sym} 370 -140 0 0 {name=M15
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
C {lab_pin.sym} 240 -140 0 0 {name=p30 sig_type=std_logic lab=AA3
}
C {symbols/nfet_06v0_nvt.sym} 370 240 0 0 {name=M16
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
C {symbols/ppolyf_u_3k.sym} 300 -10 2 1 {name=R1
W=1e-6
L=8e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_pin.sym} 280 -10 0 0 {name=p31 sig_type=std_logic lab=NSUP}
C {ipin.sym} 180 40 0 1 {name=p32 lab=V+

}
C {ipin.sym} -130 40 0 0 {name=p33 lab=V-

}
