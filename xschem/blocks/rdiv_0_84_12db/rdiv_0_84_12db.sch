v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -130 30 -130 {lab=OUT+}
N -0 -150 -0 -130 {lab=OUT+}
N 0 -220 0 -210 {lab=IN+}
N 0 -230 0 -220 {lab=IN+}
N -0 -230 30 -230 {lab=IN+}
N 0 50 30 50 {lab=IN-}
N -0 30 0 50 {lab=IN-}
N 0 20 0 30 {lab=IN-}
N 0 -70 -0 -40 {lab=OUT-}
N 0 -70 30 -70 {lab=OUT-}
C {iopin.sym} 30 -230 0 0 {name=p1 lab=IN+}
C {iopin.sym} 30 50 0 0 {name=p2 lab=IN-}
C {iopin.sym} 30 -70 0 0 {name=p3 lab=OUT-}
C {iopin.sym} 30 -130 0 0 {name=p4 lab=OUT+}
C {ipin.sym} -130 -180 0 0 {name=p5 lab=PSUP}
C {ipin.sym} -130 -140 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -130 -110 0 0 {name=p7 lab=NSUP}
C {ipin.sym} -140 -70 0 0 {name=p8 lab=CONF0}
C {ipin.sym} -140 -40 0 0 {name=p9 lab=CONF1}
C {ipin.sym} -140 -10 0 0 {name=p10 lab=CONF2}
C {symbols/ppolyf_u_3k.sym} 0 -180 0 0 {name=R1
W=1e-6
L=33e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 0 -100 0 0 {name=R2
W=1e-6
L=66e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 0 -10 0 0 {name=R3
W=1e-6
L=33e-6
model=ppolyf_u_3k
spiceprefix=X
m=1}
C {lab_wire.sym} -130 -110 0 1 {name=p11 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -20 -10 0 0 {name=p12 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -20 -100 0 0 {name=p13 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -20 -180 0 0 {name=p14 sig_type=std_logic lab=NSUP}
