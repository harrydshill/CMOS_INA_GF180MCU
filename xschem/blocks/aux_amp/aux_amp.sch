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
L 4 140 70 140 90 {}
L 4 140 70 160 70 {}
L 4 140 70 200 140 {}
T {diff pair common 
centroid please} 160 130 0 0 0.2 0.2 {}
T {matched} -100 160 0 0 0.2 0.2 {}
T {matched} 10 -210 0 0 0.2 0.2 {}
T {2u} 400 180 0 0 0.4 0.4 {}
T {1u} 40 180 0 0 0.4 0.4 {}
N 30 100 120 100 {lab=AA2}
N -150 -230 -70 -230 {lab=PSUP_LV}
N -70 70 -70 100 {lab=AA2}
N 120 70 120 100 {lab=AA2}
N 160 40 180 40 {lab=V+}
N -130 40 -110 40 {lab=V-}
N -70 -90 -70 0 {lab=AA1
}
N 120 -50 120 0 {lab=AA3}
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
N 120 -110 120 -50 {lab=AA3}
N 30 270 30 330 {lab=NSUP}
N 30 330 30 350 {lab=NSUP}
N 30 240 30 270 {lab=NSUP}
N 390 270 390 330 {lab=NSUP}
N 390 240 390 270 {lab=NSUP}
N 330 240 350 240 {lab=Vibias}
N 30 350 340 350 {lab=NSUP}
N 390 330 390 350 {lab=NSUP}
N 340 350 390 350 {lab=NSUP}
N 390 -230 390 -170 {lab=PSUP_LV}
N 120 -230 390 -230 {lab=PSUP_LV}
N 390 -170 390 -140 {lab=PSUP_LV}
N 390 40 420 40 {lab=Vo}
N 160 -60 240 -60 {lab=AA3}
N 250 -140 320 -140 {lab=AA3}
N 290 -60 290 -40 {lab=#net1}
N 240 -140 250 -140 {lab=AA3}
N 120 -60 160 -60 {lab=AA3}
N 240 -140 240 -90 {lab=AA3}
N 240 -90 240 -60 {lab=AA3}
N 290 -140 290 -120 {lab=AA3}
N 290 20 290 40 {lab=Vo}
N 330 40 390 40 {lab=Vo}
N 120 0 120 10 {lab=AA3}
N -70 0 -70 10 {lab=AA1}
N 300 40 330 40 {lab=Vo}
N 320 -140 350 -140 {lab=AA3}
N 290 40 300 40 {lab=Vo}
N 390 -110 390 -100 {lab=Vo}
N -220 -230 -150 -230 {lab=PSUP_LV}
N -220 350 30 350 {lab=NSUP}
N -220 240 -10 240 {lab=Vibias}
N 30 180 30 210 {lab=#net2}
N 30 100 30 120 {lab=AA2}
N 390 180 390 210 {lab=#net3}
N 390 100 390 120 {lab=Vo}
N 390 -100 390 100 {lab=Vo}
C {symbols/pfet_06v0.sym} -50 -140 0 1 {name=M9
L=2u
W=8u
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
C {symbols/pfet_06v0.sym} 100 -140 0 0 {name=M10
L=2u
W=8u
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
C {ipin.sym} -220 -230 0 0 {name=p5 lab=PSUP_LV
}
C {ipin.sym} -220 350 0 0 {name=p20 lab=NSUP
}
C {opin.sym} 420 40 0 0 {name=p23 lab=Vo}
C {lab_pin.sym} 30 40 0 0 {name=p24 sig_type=std_logic lab=NSUP}
C {symbols/nfet_06v0_nvt.sym} 140 40 0 1 {name=M11
L=2u
W=8u
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
C {symbols/nfet_06v0_nvt.sym} -90 40 0 0 {name=M12
L=2u
W=8u
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
C {lab_pin.sym} -70 -80 0 0 {name=p25 sig_type=std_logic lab=AA1}
C {lab_pin.sym} -70 100 0 0 {name=p26 sig_type=std_logic lab=AA2}
C {symbols/pfet_06v0.sym} 370 -140 0 0 {name=M15
L=4u
W=4u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 240 -140 0 0 {name=p30 sig_type=std_logic lab=AA3
}
C {lab_pin.sym} 270 -10 0 0 {name=p31 sig_type=std_logic lab=PSUP_LV
}
C {ipin.sym} 180 40 0 1 {name=p32 lab=V+

}
C {ipin.sym} -130 40 0 0 {name=p33 lab=V-

}
C {gf180mcu_fd_pr/cap_mim_2f0fF.sym} 290 -90 0 0 {name=C4
W=8e-6
L=8e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1
}
C {ipin.sym} -220 240 0 0 {name=p1 lab=Vibias
}
C {lab_pin.sym} -30 240 0 0 {name=p2 sig_type=std_logic lab=Vibias
}
C {lab_pin.sym} 330 240 0 0 {name=p3 sig_type=std_logic lab=Vibias
}
C {symbols/ppolyf_u_1k.sym} 290 -10 0 0 {name=R2
W=1e-6
L=24e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/nfet_03v3.sym} 10 240 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 370 240 0 0 {name=M2
L=8u
W=2u
nf=1
m=8
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
C {ammeter.sym} 390 150 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
