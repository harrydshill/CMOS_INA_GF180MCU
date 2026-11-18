v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -70 0 -30 {lab=TAP_7+}
N 0 -170 0 -130 {lab=TAP_6+}
N 0 -270 0 -230 {lab=TAP_5+}
N 0 30 0 70 {lab=TAP_7-}
N -20 -750 0 -750 {lab=IN+}
N 0 -750 0 -730 {lab=IN+}
N 0 730 0 750 {lab=IN-}
N -20 750 0 750 {lab=IN-}
N 0 -470 0 -430 {lab=TAP_3+}
N 0 -570 0 -530 {lab=TAP_2+}
N 0 -670 0 -630 {lab=TAP_1+}
N 0 -370 0 -330 {lab=TAP_4+}
N 0 -50 260 -50 {lab=TAP_7+}
N 260 -330 390 -330 {lab=TAP_7+}
N -0 -150 240 -150 {lab=TAP_6+}
N 240 -350 390 -350 {lab=TAP_6+}
N 0 -250 220 -250 {lab=TAP_5+}
N 220 -370 390 -370 {lab=TAP_5+}
N 200 -390 390 -390 {lab=TAP_4+}
N -0 -350 200 -350 {lab=TAP_4+}
N 0 -450 200 -450 {lab=TAP_3+}
N 200 -410 390 -410 {lab=TAP_3+}
N 200 -450 200 -410 {lab=TAP_3+}
N 200 -390 200 -350 {lab=TAP_4+}
N 220 -370 220 -250 {lab=TAP_5+}
N 240 -350 240 -150 {lab=TAP_6+}
N 260 -330 260 -50 {lab=TAP_7+}
N 0 -550 220 -550 {lab=TAP_2+}
N 220 -550 220 -430 {lab=TAP_2+}
N 220 -430 390 -430 {lab=TAP_2+}
N 0 -650 240 -650 {lab=TAP_1+}
N 240 -650 240 -450 {lab=TAP_1+}
N 240 -450 390 -450 {lab=TAP_1+}
N -0 -750 260 -750 {lab=IN+}
N 260 -750 260 -470 {lab=IN+}
N 260 -470 390 -470 {lab=IN+}
N 470 -400 510 -400 {lab=OUT+}
N 0 50 260 50 {lab=TAP_7-}
N 260 330 390 330 {lab=TAP_7-}
N 0 150 240 150 {lab=TAP_6-}
N 240 350 390 350 {lab=TAP_6-}
N 0 250 220 250 {lab=TAP_5-}
N 220 370 390 370 {lab=TAP_5-}
N 200 390 390 390 {lab=TAP_4-}
N 0 350 200 350 {lab=TAP_4-}
N 0 450 200 450 {lab=TAP_3-}
N 200 410 390 410 {lab=TAP_3-}
N 200 410 200 450 {lab=TAP_3-}
N 200 350 200 390 {lab=TAP_4-}
N 220 250 220 370 {lab=TAP_5-}
N 240 150 240 350 {lab=TAP_6-}
N 260 50 260 330 {lab=TAP_7-}
N 0 550 220 550 {lab=TAP_2-}
N 220 430 220 550 {lab=TAP_2-}
N 220 430 390 430 {lab=TAP_2-}
N 0 650 240 650 {lab=TAP_1-}
N 240 450 240 650 {lab=TAP_1-}
N 240 450 390 450 {lab=TAP_1-}
N 0 750 260 750 {lab=IN-}
N 260 470 260 750 {lab=IN-}
N 260 470 390 470 {lab=IN-}
N 470 400 510 400 {lab=OUT-}
N 0 130 0 170 {lab=TAP_6-}
N 0 230 0 270 {lab=TAP_5-}
N -20 750 0 750 {lab=IN-}
N 0 730 0 750 {lab=IN-}
N 0 430 0 470 {lab=TAP_3-}
N 0 530 0 570 {lab=TAP_2-}
N 0 630 0 670 {lab=TAP_1-}
N 0 330 0 370 {lab=TAP_4-}
C {iopin.sym} -20 -750 0 1 {name=p1 lab=IN+}
C {iopin.sym} -20 750 0 1 {name=p2 lab=IN-}
C {iopin.sym} 510 400 0 0 {name=p3 lab=OUT-}
C {iopin.sym} 510 -400 0 0 {name=p4 lab=OUT+}
C {ipin.sym} -460 -60 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -460 -40 0 0 {name=p7 lab=NSUP}
C {lab_wire.sym} -460 -40 0 1 {name=p11 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -460 -60 0 1 {name=p5 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 -200 0 0 {name=p14 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 -100 0 0 {name=p30 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 0 0 0 {name=p31 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_1k.sym} 0 -100 0 0 {name=R2
W=1e-6
L=3.491e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 -200 0 0 {name=R4
W=1e-6
L=10.82e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {lab_wire.sym} -20 -300 0 0 {name=p27 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_1k.sym} 0 -300 0 0 {name=R9
W=1e-6
L=34.19e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 0 0 0 {name=R3
W=1e-6
L=2.162e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {ipin.sym} -460 50 0 0 {name=p8 lab=CONF1}
C {lab_wire.sym} -460 50 0 1 {name=p15 sig_type=std_logic lab=CONF1}
C {ipin.sym} -460 30 0 0 {name=p10 lab=CONF0}
C {lab_wire.sym} -460 30 0 1 {name=p17 sig_type=std_logic lab=CONF0}
C {ipin.sym} -460 70 0 0 {name=p9 lab=CONF2}
C {lab_wire.sym} -460 70 0 1 {name=p29 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -20 -600 0 0 {name=p12 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 -500 0 0 {name=p13 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 -400 0 0 {name=p16 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_1k.sym} 0 -500 0 0 {name=R1
W=1e-6
L=349.1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 -600 0 0 {name=R5
W=1e-6
L=1082e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {lab_wire.sym} -20 -700 0 0 {name=p18 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_1k.sym} 0 -700 0 0 {name=R8
W=1e-6
L=3419e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 -400 0 0 {name=R10
W=1e-6
L=108.2e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {lab_wire.sym} 390 -240 0 0 {name=p24 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} 390 -260 0 0 {name=p25 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} 390 -220 0 0 {name=p26 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} 390 -540 0 0 {name=p28 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 390 -560 0 0 {name=p33 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 390 240 2 1 {name=p35 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} 390 260 2 1 {name=p36 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} 390 220 2 1 {name=p37 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} 390 540 2 1 {name=p38 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 390 560 2 1 {name=p39 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 0 -650 0 0 {name=p40 sig_type=std_logic lab=TAP_1+}
C {lab_wire.sym} 0 -550 0 0 {name=p41 sig_type=std_logic lab=TAP_2+}
C {lab_wire.sym} 0 -450 0 0 {name=p42 sig_type=std_logic lab=TAP_3+}
C {lab_wire.sym} 0 -350 0 0 {name=p43 sig_type=std_logic lab=TAP_4+}
C {lab_wire.sym} 0 -250 0 0 {name=p44 sig_type=std_logic lab=TAP_5+}
C {lab_wire.sym} 0 -150 0 0 {name=p45 sig_type=std_logic lab=TAP_6+}
C {lab_wire.sym} 0 -50 0 0 {name=p46 sig_type=std_logic lab=TAP_7+}
C {lab_wire.sym} 0 50 0 0 {name=p47 sig_type=std_logic lab=TAP_7-
}
C {blocks/mux_3/mux_3.sym} 430 -400 0 0 {name=x1}
C {blocks/mux_3/mux_3.sym} 430 400 2 1 {name=x2}
C {lab_wire.sym} -20 200 0 0 {name=p19 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 100 0 0 {name=p20 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 300 0 0 {name=p21 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 600 0 0 {name=p22 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 500 0 0 {name=p23 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 400 0 0 {name=p32 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -20 700 0 0 {name=p34 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 0 650 0 0 {name=p48 sig_type=std_logic lab=TAP_1-}
C {lab_wire.sym} 0 550 0 0 {name=p49 sig_type=std_logic lab=TAP_2-}
C {lab_wire.sym} 0 450 0 0 {name=p50 sig_type=std_logic lab=TAP_3-}
C {lab_wire.sym} 0 350 0 0 {name=p51 sig_type=std_logic lab=TAP_4-}
C {lab_wire.sym} 0 250 0 0 {name=p52 sig_type=std_logic lab=TAP_5-}
C {lab_wire.sym} 0 150 0 0 {name=p53 sig_type=std_logic lab=TAP_6-
}
C {symbols/ppolyf_u_1k.sym} 0 100 2 1 {name=R6
W=1e-6
L=3.491e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 200 2 1 {name=R7
W=1e-6
L=10.82e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 300 2 1 {name=R11
W=1e-6
L=34.19e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 500 2 1 {name=R12
W=1e-6
L=349.1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 600 2 1 {name=R13
W=1e-6
L=1082e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 700 2 1 {name=R14
W=1e-6
L=3419e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} 0 400 2 1 {name=R15
W=1e-6
L=108.2e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
