v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {1u} -620 -620 0 0 0.4 0.4 {}
T {1u} -80 -620 0 0 0.4 0.4 {}
T {1u} 320 -620 0 0 0.4 0.4 {}
T {CMFB -->} 1250 -420 0 0 0.4 0.4 {}
T {2u} 570 -610 0 0 0.4 0.4 {}
T {2u} 740 -610 0 0 0.4 0.4 {}
T {gain boosting if time?
} 650 -260 0 0 0.2 0.2 {}
T {1u} 1430 -60 0 0 0.4 0.4 {}
T {cmfb mirrors sized different to all other mirrors!!
Vref set to Vdd - Vth, since we need to drive a second
Vth at the input of the diff pair, the Vcmfb will 
drive Vocm to Vdd - 2Vth, so approx 2.5V} 1160 -390 0 0 0.2 0.2 {}
T {FDFCDA} 200 -150 0 0 0.4 0.4 {}
T {gain boosting if time?
} -260 -400 0 0 0.2 0.2 {}
T {1u} 1660 -620 0 0 0.4 0.4 {}
T {1u} 1810 -620 0 0 0.4 0.4 {}
T {4u} 1130 -570 0 0 0.4 0.4 {}
T {4u} 1140 -310 0 0 0.4 0.4 {}
N -660 -730 -260 -730 {lab=PSUP}
N -670 -730 -660 -730 {lab=PSUP}
N -550 -680 -550 -650 {lab=PSUP}
N -550 -730 -550 -680 {lab=PSUP}
N -550 -600 -490 -600 {lab=vb1}
N -490 -150 -490 -100 {lab=vb3}
N -550 -150 -490 -150 {lab=vb3}
N -550 -150 -550 -130 {lab=vb3}
N -510 -100 -490 -100 {lab=vb3}
N -670 0 -230 0 {lab=NSUP}
N -550 -80 -550 0 {lab=NSUP}
N -120 -560 -120 -510 {lab=n1}
N 40 -560 40 -510 {lab=n1}
N -230 0 -40 0 {lab=NSUP}
N -40 -620 -40 -560 {lab=n1}
N -40 -730 -40 -680 {lab=PSUP}
N -120 -450 -120 -400 {lab=sum_n}
N -40 0 340 0 {lab=NSUP}
N 360 -680 360 -650 {lab=PSUP}
N -100 -650 -80 -650 {lab=vb1}
N 300 -650 320 -650 {lab=vb1}
N 80 -480 100 -480 {lab=Vp+}
N -180 -480 -160 -480 {lab=Vp-}
N 1350 -290 1370 -290 {lab=Vref}
N 360 -730 360 -680 {lab=PSUP}
N -40 -680 -40 -650 {lab=PSUP}
N -120 -480 30 -480 {lab=PSUP}
N -120 -560 30 -560 {lab=n1}
N 280 -560 280 -510 {lab=n2}
N 440 -560 440 -510 {lab=n2}
N 280 -560 440 -560 {lab=n2}
N 360 -620 360 -560 {lab=n2}
N 40 -450 40 -400 {lab=sum_p}
N 440 -450 440 -400 {lab=sum_p}
N 980 0 1550 0 {lab=NSUP}
N 220 -480 240 -480 {lab=Vn-}
N 480 -480 500 -480 {lab=Vn+}
N 30 -560 40 -560 {lab=n1}
N 30 -480 40 -480 {lab=PSUP}
N -120 -400 80 -260 {lab=sum_n}
N 80 -260 280 -400 {lab=sum_n}
N -120 -480 30 -480 {lab=PSUP}
N 280 -480 430 -480 {lab=PSUP}
N 280 -450 280 -400 {lab=sum_n}
N 40 -400 240 -260 {lab=sum_p}
N 240 -260 440 -400 {lab=sum_p}
N 430 -480 440 -480 {lab=PSUP}
N -510 -650 -490 -650 {lab=vb1}
N 340 0 730 0 {lab=NSUP}
N 650 -650 740 -650 {lab=Vcmfb}
N 610 -110 610 0 {lab=NSUP}
N 780 -110 780 0 {lab=NSUP}
N 650 -110 740 -110 {lab=vb3}
N 610 -450 610 -320 {lab=Vofc-}
N 610 -620 610 -510 {lab=n6}
N 610 -730 610 -650 {lab=PSUP}
N 780 -730 780 -650 {lab=PSUP}
N 780 -620 780 -510 {lab=n7}
N 780 -400 800 -400 {lab=Vofc+}
N 780 -450 780 -320 {lab=Vofc+}
N 610 -260 610 -140 {lab=sum_p}
N 780 -260 780 -140 {lab=sum_n}
N -490 -250 -490 -200 {lab=vb2}
N -550 -250 -490 -250 {lab=vb2}
N -510 -200 -490 -200 {lab=vb2}
N -550 -390 -550 -240 {lab=vb2}
N -490 -650 -490 -600 {lab=vb1}
N -550 -620 -550 -600 {lab=vb1}
N -550 -500 -490 -500 {lab=vb4}
N -490 -550 -490 -500 {lab=vb4}
N -550 -520 -550 -500 {lab=vb4}
N -510 -550 -490 -550 {lab=vb4}
N -550 -600 -550 -580 {lab=vb1}
N -550 -500 -550 -450 {lab=vb4}
N 680 -290 700 -290 {lab=vb2}
N 650 -290 680 -290 {lab=vb2}
N 700 -290 740 -290 {lab=vb2}
N 680 -480 700 -480 {lab=vb4}
N 650 -480 680 -480 {lab=vb4}
N 700 -480 740 -480 {lab=vb4}
N 80 -260 80 -210 {lab=sum_n}
N 240 -260 240 -170 {lab=sum_p}
N -550 -100 -550 -80 {lab=NSUP}
N -550 -240 -550 -230 {lab=vb2}
N -550 -170 -550 -150 {lab=vb3}
N -10 -730 1480 -730 {lab=PSUP}
N 80 -210 780 -210 {lab=sum_n}
N 240 -170 610 -170 {lab=sum_p}
N 1410 -260 1410 -230 {lab=n8}
N 1550 -260 1550 -230 {lab=n8}
N 1410 -440 1410 -350 {lab=Vcmfb
}
N 1550 -400 1550 -350 {lab=#net1}
N 1550 -460 1550 -400 {lab=#net1}
N 1480 -80 1480 -20 {lab=NSUP}
N 1480 -20 1480 0 {lab=NSUP}
N 1480 -110 1480 -80 {lab=NSUP}
N 1550 -330 1550 -320 {lab=#net1}
N 1410 -330 1410 -320 {lab=Vcmfb}
N 1420 -290 1540 -290 {lab=NSUP}
N 1420 -230 1540 -230 {lab=n8}
N 1450 -650 1460 -650 {lab=Vcmfb}
N 1410 -600 1460 -600 {lab=Vcmfb}
N 1500 -650 1510 -650 {lab=#net1}
N 1500 -600 1550 -600 {lab=#net1}
N 1460 -650 1470 -650 {lab=Vcmfb}
N 1470 -650 1470 -600 {lab=Vcmfb}
N 1460 -600 1470 -600 {lab=Vcmfb}
N 1490 -650 1500 -650 {lab=#net1}
N 1490 -650 1490 -600 {lab=#net1}
N 1490 -600 1500 -600 {lab=#net1}
N 1410 -290 1420 -290 {lab=NSUP}
N 1540 -290 1550 -290 {lab=NSUP}
N 1410 -230 1420 -230 {lab=n8}
N 1540 -230 1550 -230 {lab=n8}
N 1550 -610 1550 -460 {lab=#net1}
N 1410 -610 1410 -470 {lab=Vcmfb}
N 1410 -470 1410 -440 {lab=Vcmfb}
N 1550 -730 1550 -650 {lab=PSUP}
N 1410 -730 1410 -650 {lab=PSUP}
N 1410 -620 1410 -610 {lab=Vcmfb}
N 1550 -620 1550 -610 {lab=#net1}
N 1420 -110 1440 -110 {lab=vb3}
N 1410 -350 1410 -330 {lab=Vcmfb}
N 1550 -350 1550 -330 {lab=#net1}
N 1480 -230 1480 -140 {lab=n8}
N 1640 -110 1660 -110 {lab=Vofc-}
N 1640 -110 1660 -110 {lab=Vofc-}
N 1640 -650 1660 -650 {lab=vb1}
N 1640 -650 1660 -650 {lab=vb1}
N 1700 -620 1700 -140 {lab=n4}
N 1700 -80 1700 0 {lab=NSUP}
N 1700 -730 1700 -680 {lab=PSUP}
N 1860 -80 1860 0 {lab=NSUP}
N 1860 -730 1860 -680 {lab=PSUP}
N 1780 -480 1790 -480 {lab=Vcm}
N 1770 -480 1780 -480 {lab=Vcm}
N 1780 -480 1780 -460 {lab=Vcm}
N 1740 -500 1780 -500 {lab=NSUP}
N 1780 -500 1820 -500 {lab=NSUP}
N 1700 -480 1710 -480 {lab=n4}
N 1850 -480 1860 -480 {lab=n5}
N 1700 -680 1700 -650 {lab=PSUP}
N 1860 -680 1860 -650 {lab=PSUP}
N 1800 -650 1820 -650 {lab=vb1}
N 1800 -650 1820 -650 {lab=vb1}
N 1550 0 1860 0 {lab=NSUP}
N 1590 -290 1780 -290 {lab=Vcm}
N 1780 -460 1780 -290 {lab=Vcm}
N 1480 -730 1860 -730 {lab=PSUP}
N -430 -420 -430 -400 {lab=Vref}
N -430 -520 -430 -480 {lab=vb1}
N 730 0 980 0 {lab=NSUP}
N -260 -730 -10 -730 {lab=PSUP}
N 1080 -460 1080 -400 {lab=NSUP}
N 1080 -510 1080 -490 {lab=Vo-}
N 1080 -530 1080 -510 {lab=Vo-}
N 1080 -590 1080 -560 {lab=PSUP}
N 1080 -620 1080 -590 {lab=PSUP}
N 1020 -560 1040 -560 {lab=vb1}
N 1080 -510 1100 -510 {lab=Vo-}
N 960 -460 1040 -460 {lab=Vofc+}
N 870 -460 870 -400 {lab=Vofc+}
N 1080 -190 1080 -130 {lab=NSUP}
N 1080 -240 1080 -220 {lab=Vo+}
N 1080 -260 1080 -240 {lab=Vo+}
N 1080 -320 1080 -290 {lab=PSUP}
N 1080 -350 1080 -320 {lab=PSUP}
N 1020 -290 1040 -290 {lab=vb1}
N 1080 -240 1100 -240 {lab=Vo+}
N 870 -360 870 -190 {lab=Vofc-}
N 960 -190 1040 -190 {lab=Vofc-}
N 610 -360 680 -360 {lab=Vofc-}
N 800 -400 870 -400 {lab=Vofc+}
N 960 -240 980 -240 {lab=#net2}
N 1040 -240 1060 -240 {lab=Vo+}
N 680 -360 870 -360 {lab=Vofc-}
N 870 -190 960 -190 {lab=Vofc-}
N 870 -460 960 -460 {lab=Vofc+}
N 1060 -240 1080 -240 {lab=Vo+}
N 870 -240 900 -240 {lab=Vofc-}
N 960 -510 980 -510 {lab=#net3}
N 1040 -510 1060 -510 {lab=Vo-}
N 1060 -510 1080 -510 {lab=Vo-}
N 870 -510 900 -510 {lab=Vofc+}
N 870 -510 870 -460 {lab=Vofc+}
N -430 -600 -430 -520 {lab=vb1}
N 1860 -620 1860 -140 {lab=n5}
N -490 -600 -430 -600 {lab=vb1}
C {noconn.sym} -670 -60 0 1 {name=l1}
C {noconn.sym} -670 -30 0 1 {name=l2}
C {ipin.sym} -670 -730 0 0 {name=p19 lab=PSUP
}
C {ipin.sym} -670 0 0 0 {name=p20 lab=NSUP
}
C {ipin.sym} -670 -60 0 0 {name=p21 lab=N_EN

}
C {ipin.sym} -670 -30 0 0 {name=p22 lab=EN
}
C {ipin.sym} -670 -90 0 0 {name=p9 lab=IBIAS


}
C {isource.sym} -550 -420 0 0 {name=I0 value=1u}
C {symbols/pfet_06v0.sym} -530 -650 0 1 {name=M7
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
C {lab_pin.sym} -490 -650 0 1 {name=p8 sig_type=std_logic lab=vb1}
C {noconn.sym} -670 -90 0 1 {name=l3}
C {symbols/nfet_06v0_nvt.sym} -530 -100 0 1 {name=M16
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
C {lab_pin.sym} -490 -100 2 0 {name=p29 sig_type=std_logic lab=vb3}
C {symbols/pfet_06v0.sym} -140 -480 0 0 {name=M9
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
C {symbols/pfet_06v0.sym} 60 -480 0 1 {name=M1
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
C {lab_pin.sym} -70 -480 2 0 {name=p6 sig_type=std_logic lab=PSUP}
C {symbols/pfet_06v0.sym} -60 -650 0 0 {name=M2
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
C {symbols/pfet_06v0.sym} 340 -650 0 0 {name=M6
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
C {lab_pin.sym} -100 -650 0 0 {name=p16 sig_type=std_logic lab=vb1}
C {lab_pin.sym} 300 -650 0 0 {name=p17 sig_type=std_logic lab=vb1}
C {ipin.sym} 100 -480 0 1 {name=p23 lab=Vp+

}
C {ipin.sym} -180 -480 0 0 {name=p24 lab=Vp-

}
C {ipin.sym} 500 -480 0 1 {name=p25 lab=Vn+

}
C {ipin.sym} 220 -480 0 0 {name=p26 lab=Vn-

}
C {lab_pin.sym} 1350 -290 0 0 {name=p7 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 40 -560 2 0 {name=p11 sig_type=std_logic lab=n1}
C {lab_pin.sym} 440 -560 2 0 {name=p14 sig_type=std_logic lab=n2}
C {symbols/pfet_06v0.sym} 460 -480 0 1 {name=M24
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
C {lab_pin.sym} 330 -480 2 0 {name=p28 sig_type=std_logic lab=PSUP}
C {symbols/pfet_06v0.sym} 260 -480 0 0 {name=M13
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
C {symbols/pfet_06v0.sym} 630 -480 0 1 {name=M12
L=2u
W=4u
nf=5
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
C {symbols/pfet_06v0.sym} 760 -480 0 0 {name=M15
L=2u
W=4u
nf=5
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
C {lab_pin.sym} 610 -480 2 1 {name=p34 sig_type=std_logic lab=PSUP}
C {symbols/pfet_06v0.sym} 630 -650 0 1 {name=M19
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
model=pfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 760 -650 0 0 {name=M20
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
model=pfet_06v0
spiceprefix=X
}
C {lab_pin.sym} 780 -480 2 0 {name=p37 sig_type=std_logic lab=PSUP}
C {symbols/nfet_06v0_nvt.sym} 760 -110 0 0 {name=M26
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
C {lab_pin.sym} 720 -650 0 0 {name=p39 sig_type=std_logic lab=Vcmfb}
C {lab_pin.sym} 680 -110 2 0 {name=p38 sig_type=std_logic lab=vb3}
C {symbols/nfet_06v0_nvt.sym} 630 -110 0 1 {name=M27
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
C {symbols/nfet_06v0_nvt.sym} 760 -290 0 0 {name=M28
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
C {symbols/nfet_06v0_nvt.sym} 630 -290 0 1 {name=M29
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
C {lab_pin.sym} 400 -170 2 0 {name=p41 sig_type=std_logic lab=sum_p}
C {lab_pin.sym} 400 -210 2 0 {name=p43 sig_type=std_logic lab=sum_n}
C {symbols/nfet_06v0_nvt.sym} -530 -200 0 1 {name=M30
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
C {lab_pin.sym} -490 -200 2 0 {name=p44 sig_type=std_logic lab=vb2}
C {lab_pin.sym} -550 -200 2 1 {name=p45 sig_type=std_logic lab=NSUP}
C {symbols/pfet_06v0.sym} -530 -550 0 1 {name=M31
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
C {lab_pin.sym} 680 -290 2 0 {name=p47 sig_type=std_logic lab=vb2}
C {lab_pin.sym} -490 -550 2 0 {name=p48 sig_type=std_logic lab=vb4}
C {lab_pin.sym} 680 -480 2 0 {name=p49 sig_type=std_logic lab=vb4}
C {lab_pin.sym} 610 -290 2 1 {name=p50 sig_type=std_logic lab=NSUP}
C {lab_pin.sym} 780 -290 2 0 {name=p51 sig_type=std_logic lab=NSUP}
C {lab_pin.sym} -550 -550 2 1 {name=p18 sig_type=std_logic lab=PSUP}
C {symbols/pfet_06v0.sym} 1430 -650 0 1 {name=M3
L=8u
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
C {symbols/pfet_06v0.sym} 1530 -650 0 0 {name=M8
L=8u
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
C {lab_pin.sym} 1520 -290 0 0 {name=p52 sig_type=std_logic lab=NSUP}
C {symbols/nfet_06v0_nvt.sym} 1570 -290 0 1 {name=M21
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
C {symbols/nfet_06v0_nvt.sym} 1390 -290 0 0 {name=M25
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
C {lab_pin.sym} 1410 -590 0 0 {name=p1 sig_type=std_logic lab=Vcmfb}
C {lab_pin.sym} 1420 -110 0 0 {name=p12 sig_type=std_logic lab=vb3}
C {symbols/nfet_06v0_nvt.sym} 1460 -110 0 0 {name=M4
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
C {lab_pin.sym} 610 -560 2 0 {name=p35 sig_type=std_logic lab=n6}
C {lab_pin.sym} 780 -560 2 0 {name=p36 sig_type=std_logic lab=n7}
C {symbols/pfet_06v0.sym} 1840 -110 0 0 {name=M22
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
model=pfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 1680 -110 0 0 {name=M23
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
model=pfet_06v0
spiceprefix=X
}
C {symbols/ppolyf_u_3k.sym} 1740 -480 1 0 {name=R1
W=1e-6
L=1000e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 1820 -480 1 0 {name=R2
W=1e-6
L=1000e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_pin.sym} 1780 -290 0 1 {name=p46 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 1750 -500 0 1 {name=p53 sig_type=std_logic lab=NSUP}
C {lab_pin.sym} 1700 -560 2 0 {name=p54 sig_type=std_logic lab=n4}
C {lab_pin.sym} 1860 -560 2 0 {name=p55 sig_type=std_logic lab=n5}
C {symbols/pfet_06v0.sym} 1680 -650 0 0 {name=M5
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
C {symbols/pfet_06v0.sym} 1840 -650 0 0 {name=M17
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
C {lab_pin.sym} 1640 -650 0 0 {name=p57 sig_type=std_logic lab=vb1}
C {lab_pin.sym} 1800 -650 0 0 {name=p58 sig_type=std_logic lab=vb1}
C {lab_pin.sym} -430 -400 0 0 {name=p3 sig_type=std_logic lab=Vref}
C {res.sym} -430 -450 0 0 {name=R3
value=1
footprint=1206
device=resistor
m=1}
C {symbols/nfet_06v0_nvt.sym} 1060 -460 0 0 {name=M14
L=2u
W=4u
nf=5
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 1060 -560 0 0 {name=M10
L=4u
W=2u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {lab_pin.sym} 1080 -400 2 0 {name=p4 sig_type=std_logic lab=NSUP}
C {lab_pin.sym} 1080 -620 2 0 {name=p5 sig_type=std_logic lab=PSUP}
C {lab_pin.sym} 1020 -560 0 0 {name=p10 sig_type=std_logic lab=vb1}
C {lab_pin.sym} 780 -420 2 0 {name=p2 sig_type=std_logic lab=Vofc+}
C {lab_pin.sym} 610 -380 2 1 {name=p15 sig_type=std_logic lab=Vofc-}
C {symbols/nfet_06v0_nvt.sym} 1060 -190 0 0 {name=M11
L=2u
W=4u
nf=5
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 1060 -290 0 0 {name=M18
L=4u
W=2u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {lab_pin.sym} 1080 -130 2 0 {name=p30 sig_type=std_logic lab=NSUP}
C {lab_pin.sym} 1080 -350 2 0 {name=p31 sig_type=std_logic lab=PSUP}
C {capa.sym} 1010 -240 3 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"
}
C {symbols/ppolyf_u_3k.sym} 930 -240 3 1 {name=R4
W=1e-6
L=8e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_pin.sym} 930 -260 1 0 {name=p32 sig_type=std_logic lab=NSUP}
C {capa.sym} 1010 -510 3 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"
}
C {symbols/ppolyf_u_3k.sym} 930 -510 3 1 {name=R5
W=1e-6
L=8e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_pin.sym} 930 -530 1 0 {name=p33 sig_type=std_logic lab=NSUP}
C {lab_pin.sym} 1020 -290 0 0 {name=p59 sig_type=std_logic lab=vb1}
C {opin.sym} 1100 -510 0 0 {name=p27 lab=Vo-}
C {opin.sym} 1100 -240 0 0 {name=p13 lab=Vo+}
C {lab_pin.sym} 1480 -180 2 0 {name=p60 sig_type=std_logic lab=n8}
C {lab_pin.sym} 1640 -110 2 1 {name=p40 sig_type=std_logic lab=Vofc-}
C {lab_pin.sym} 1820 -110 2 1 {name=p42 sig_type=std_logic lab=Vofc+}
C {lab_pin.sym} 1700 -110 2 0 {name=p56 sig_type=std_logic lab=PSUP}
C {lab_pin.sym} 1860 -110 2 0 {name=p61 sig_type=std_logic lab=PSUP}
