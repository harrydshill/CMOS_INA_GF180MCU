v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 -360 -530 360 -430 {}
B 4 -660 -690 360 -590 {}
B 4 -200 -180 200 -60 {}
N -340 -730 -140 -730 {lab=PSUP}
N -740 -730 -340 -730 {lab=PSUP}
N -750 0 -630 0 {lab=NSUP}
N -750 -730 -740 -730 {lab=PSUP}
N -310 -480 -120 -480 {lab=NSUP}
N -310 -560 -310 -510 {lab=#net1}
N -310 -560 -120 -560 {lab=#net1}
N -120 -560 -120 -510 {lab=#net1}
N -120 -80 -120 -0 {lab=NSUP}
N -310 -0 -120 0 {lab=NSUP}
N -120 -110 -120 -80 {lab=NSUP}
N -180 -110 -160 -110 {lab=Vo-}
N -180 -160 -180 -110 {lab=Vo-}
N -180 -160 -120 -160 {lab=Vo-}
N -120 -150 -120 -140 {lab=Vo-}
N -120 -160 -120 -150 {lab=Vo-}
N -120 -350 -120 -160 {lab=Vo-}
N -210 -620 -210 -560 {lab=#net1}
N -210 -730 -210 -680 {lab=PSUP}
N -120 -450 -120 -350 {lab=Vo-}
N 120 -480 310 -480 {lab=NSUP}
N 120 -560 120 -510 {lab=#net2}
N 120 -560 310 -560 {lab=#net2}
N 310 -560 310 -510 {lab=#net2}
N 120 -80 120 0 {lab=NSUP}
N 120 -110 120 -80 {lab=NSUP}
N 160 -110 180 -110 {lab=Vo+}
N 180 -160 180 -110 {lab=Vo+}
N 120 -160 180 -160 {lab=Vo+}
N 120 -160 120 -140 {lab=Vo+}
N 120 -350 120 -160 {lab=Vo+}
N 220 -620 220 -560 {lab=#net2}
N 220 -730 220 -680 {lab=PSUP}
N 120 -450 120 -350 {lab=Vo+}
N -310 -450 -310 -400 {lab=Vo+}
N 310 -450 310 -400 {lab=Vo-}
N -310 -400 -310 -360 {lab=Vo+}
N -310 -360 -80 -360 {lab=Vo+}
N 310 -400 310 -360 {lab=Vo-}
N 100 -360 310 -360 {lab=Vo-}
N 80 -360 100 -360 {lab=Vo-}
N -80 -360 -60 -360 {lab=Vo+}
N -60 -360 60 -240 {lab=Vo+}
N 60 -360 80 -360 {lab=Vo-}
N -60 -240 60 -360 {lab=Vo-}
N -120 -240 -60 -240 {lab=Vo-}
N 60 -240 120 -240 {lab=Vo+}
N -630 -0 -310 0 {lab=NSUP}
N -120 0 120 -0 {lab=NSUP}
N -210 -670 -210 -650 {lab=#net3}
N 220 -680 220 -650 {lab=PSUP}
N -630 -670 -630 -650 {lab=#net4}
N -630 -620 -630 -450 {lab=vb1}
N -630 -730 -630 -680 {lab=PSUP}
N -630 -390 -630 -0 {lab=NSUP}
N -590 -650 -570 -650 {lab=vb1}
N -270 -650 -250 -650 {lab=vb1}
N 160 -650 180 -650 {lab=vb1}
N -140 -730 220 -730 {lab=PSUP}
N -80 -480 -60 -480 {lab=Vp+}
N -370 -480 -350 -480 {lab=Vp-}
N 350 -480 370 -480 {lab=Vn+}
N 60 -480 80 -480 {lab=Vn-}
N 120 -240 150 -240 {lab=Vo+}
N -150 -240 -120 -240 {lab=Vo-}
N -580 -650 -580 -580 {lab=vb1}
N -630 -580 -580 -580 {lab=vb1}
C {noconn.sym} -750 -60 0 1 {name=l1}
C {noconn.sym} -750 -30 0 1 {name=l2}
C {ipin.sym} -750 -730 0 0 {name=p19 lab=PSUP
}
C {ipin.sym} -750 0 0 0 {name=p20 lab=NSUP
}
C {ipin.sym} -750 -60 0 0 {name=p21 lab=N_EN

}
C {ipin.sym} -750 -30 0 0 {name=p22 lab=EN
}
C {ipin.sym} -750 -90 0 0 {name=p9 lab=IBIAS


}
C {isource.sym} -630 -420 0 0 {name=I0 value=1u}
C {symbols/pfet_06v0.sym} -330 -480 0 0 {name=M9
L=2u
W=4u
nf=5
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} -100 -480 0 1 {name=M1
L=2u
W=4u
nf=5
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {lab_pin.sym} -210 -480 0 0 {name=p6 sig_type=std_logic lab=NSUP}
C {symbols/pfet_06v0.sym} -230 -650 0 0 {name=M2
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
model=pfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0_nvt.sym} -140 -110 0 0 {name=M3
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
C {symbols/pfet_06v0.sym} 100 -480 0 0 {name=M4
L=2u
W=4u
nf=5
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 330 -480 0 1 {name=M5
L=2u
W=4u
nf=5
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {lab_pin.sym} 220 -480 0 0 {name=p1 sig_type=std_logic lab=NSUP}
C {symbols/pfet_06v0.sym} 200 -650 0 0 {name=M6
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
model=pfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0_nvt.sym} 140 -110 0 1 {name=M8
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
C {symbols/pfet_06v0.sym} -610 -650 0 1 {name=M7
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
C {lab_pin.sym} -570 -650 0 1 {name=p8 sig_type=std_logic lab=vb1}
C {lab_pin.sym} -270 -650 0 0 {name=p16 sig_type=std_logic lab=vb1}
C {lab_pin.sym} 160 -650 0 0 {name=p17 sig_type=std_logic lab=vb1}
C {ipin.sym} -60 -480 0 1 {name=p23 lab=Vp+

}
C {ipin.sym} -370 -480 0 0 {name=p24 lab=Vp-

}
C {ipin.sym} 370 -480 0 1 {name=p25 lab=Vn+

}
C {ipin.sym} 60 -480 0 0 {name=p26 lab=Vn-

}
C {opin.sym} 150 -240 0 0 {name=p27 lab=Vo+}
C {opin.sym} -150 -240 0 1 {name=p2 lab=Vo-}
C {noconn.sym} -750 -90 0 1 {name=l3}
