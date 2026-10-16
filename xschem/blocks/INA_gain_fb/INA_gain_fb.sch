v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {1Meg} 450 -260 0 0 0.4 0.4 {}
T {1.8Meg} 460 -150 0 0 0.4 0.4 {}
T {180k} 460 -40 0 0 0.4 0.4 {}
T {18k} 460 60 0 0 0.4 0.4 {}
T {1.8k} 460 160 0 0 0.4 0.4 {}
N 320 -180 350 -180 {lab=OUT+}
N 320 -190 320 -170 {lab=OUT+}
N 320 -270 320 -260 {lab=IN+}
N 320 -280 320 -270 {lab=IN+}
N 320 -280 350 -280 {lab=IN+}
N 320 220 350 220 {lab=OUT-}
N 320 -170 320 -160 {lab=OUT+}
N 320 -200 320 -190 {lab=OUT+}
N 320 200 320 240 {lab=OUT-}
N 320 100 320 140 {lab=#net1}
N 320 0 320 40 {lab=#net2}
N 320 -100 320 -60 {lab=#net3}
N 180 -80 320 -80 {lab=#net3}
N 180 -90 180 -80 {lab=#net3}
N 180 -180 180 -170 {lab=OUT+}
N 180 -180 320 -180 {lab=OUT+}
N -140 120 320 120 {lab=#net1}
N -140 -90 -140 120 {lab=#net1}
N 20 -90 20 20 {lab=#net2}
N 20 20 320 20 {lab=#net2}
N -140 -180 180 -180 {lab=OUT+}
N -140 -180 -140 -170 {lab=OUT+}
N 20 -180 20 -170 {lab=OUT+}
N 320 300 320 330 {lab=IN-}
N 320 330 350 330 {lab=IN-}
N -470 -80 -420 -80 {lab=nC2}
N -470 0 -420 0 {lab=nC1}
N -470 80 -425 80 {lab=nC0}
N -425 80 -420 80 {lab=nC0}
C {iopin.sym} 350 -280 0 0 {name=p1 lab=IN+}
C {iopin.sym} 350 330 0 0 {name=p2 lab=IN-}
C {iopin.sym} 350 220 0 0 {name=p3 lab=OUT-}
C {iopin.sym} 350 -180 0 0 {name=p4 lab=OUT+}
C {ipin.sym} -1000 -50 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -1000 -30 0 0 {name=p7 lab=NSUP}
C {ipin.sym} -1000 50 0 0 {name=p8 lab=CONF0}
C {ipin.sym} -1000 30 0 0 {name=p9 lab=CONF1}
C {symbols/ppolyf_u_3k.sym} 320 -230 0 0 {name=R1
W=1e-6
L=333e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 320 -130 0 0 {name=R2
W=1e-6
L=600e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 320 270 0 0 {name=R3
W=1e-6
L=333e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_wire.sym} -1000 -30 0 1 {name=p11 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -1000 50 0 1 {name=p15 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -1000 30 0 1 {name=p16 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -320 80 0 1 {name=p18 sig_type=std_logic lab=C0}
C {lab_wire.sym} -1000 -50 0 1 {name=p5 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -320 0 0 1 {name=p22 sig_type=std_logic lab=C1}
C {lab_wire.sym} -320 -80 0 1 {name=p26 sig_type=std_logic lab=C2}
C {blocks/transmission_gate/transmission_gate.sym} 180 -130 1 0 {name=x1}
C {symbols/ppolyf_u_3k.sym} 320 -30 0 0 {name=R4
W=1e-6
L=60e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 320 70 0 0 {name=R5
W=1e-6
L=6e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 320 170 0 0 {name=R6
W=1e-6
L=0.6e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_wire.sym} 160 -150 0 0 {name=p33 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 200 -150 0 1 {name=p34 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 0 -150 0 0 {name=p35 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} 40 -150 0 1 {name=p36 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -160 -150 0 0 {name=p37 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -120 -150 0 1 {name=p38 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 160 -130 0 0 {name=p10 sig_type=std_logic lab=C0}
C {lab_wire.sym} 0 -130 0 0 {name=p17 sig_type=std_logic lab=C1}
C {lab_wire.sym} -160 -130 0 0 {name=p39 sig_type=std_logic lab=C2}
C {lab_wire.sym} 200 -130 0 1 {name=p40 sig_type=std_logic lab=nC0}
C {lab_wire.sym} 40 -130 0 1 {name=p41 sig_type=std_logic lab=nC1}
C {lab_wire.sym} -120 -130 0 1 {name=p42 sig_type=std_logic lab=nC2}
C {lab_wire.sym} -580 -60 0 0 {name=p43 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -580 -100 0 0 {name=p44 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -720 -40 0 1 {name=p46 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -580 -20 0 0 {name=p54 sig_type=std_logic lab=CONF1
}
C {lab_wire.sym} -580 20 0 0 {name=p55 sig_type=std_logic lab=nCONF0}
C {lab_wire.sym} -580 60 0 0 {name=p57 sig_type=std_logic lab=nCONF1}
C {lab_wire.sym} -580 100 0 0 {name=p58 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -520 -120 0 1 {name=p60 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -540 -120 0 0 {name=p61 sig_type=std_logic lab=NSUP}
C {noconn.sym} -540 120 3 0 {name=l1}
C {noconn.sym} -520 120 3 0 {name=l2}
C {lab_wire.sym} 300 -230 0 0 {name=p12 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 -130 0 0 {name=p13 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 -30 0 0 {name=p14 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 70 0 0 {name=p30 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 170 0 0 {name=p31 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} 300 270 0 0 {name=p32 sig_type=std_logic lab=PSUP_LV}
C {blocks/TG_loron/TG_loron.sym} -140 -130 1 0 {name=x7}
C {blocks/TG_loron/TG_loron.sym} 20 -130 1 0 {name=x2}
C {blocks/not/not.sym} -770 -40 0 0 {name=x3}
C {lab_wire.sym} -820 -40 0 0 {name=p62 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -720 40 0 1 {name=p45 sig_type=std_logic lab=nCONF1}
C {blocks/not/not.sym} -770 40 0 0 {name=x4}
C {lab_wire.sym} -820 40 0 0 {name=p47 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -760 -80 0 1 {name=p48 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -780 -80 0 0 {name=p50 sig_type=std_logic lab=NSUP}
C {blocks/nand_2/nand_2.sym} -530 -80 0 0 {name=x5}
C {blocks/nand_2/nand_2.sym} -530 0 0 0 {name=x6}
C {blocks/nand_2/nand_2.sym} -530 80 0 0 {name=x8}
C {lab_wire.sym} -470 80 0 1 {name=p51 sig_type=std_logic lab=nC0}
C {lab_wire.sym} -470 0 0 1 {name=p52 sig_type=std_logic lab=nC1}
C {lab_wire.sym} -470 -80 0 1 {name=p49 sig_type=std_logic lab=nC2}
C {noconn.sym} -780 80 3 0 {name=l3}
C {noconn.sym} -760 80 3 0 {name=l4}
C {blocks/not/not.sym} -370 -80 0 0 {name=x9}
C {blocks/not/not.sym} -370 0 0 0 {name=x10}
C {lab_wire.sym} -360 -120 0 1 {name=p64 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -380 -120 0 0 {name=p65 sig_type=std_logic lab=NSUP}
C {blocks/not/not.sym} -370 80 0 0 {name=x11}
C {noconn.sym} -380 120 3 0 {name=l7}
C {noconn.sym} -360 120 3 0 {name=l8}
