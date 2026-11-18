v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -160 70 -160 90 {lab=bottom}
N -180 -80 -160 -80 {lab=top}
N -180 90 -160 90 {lab=bottom}
N -160 -80 -160 -70 {lab=top}
N -160 -10 -160 10 {lab=center}
N -160 0 -140 0 {lab=center}
C {iopin.sym} -180 -80 0 1 {name=p1 lab=top}
C {iopin.sym} -140 0 0 0 {name=p2 lab=center}
C {iopin.sym} -180 90 0 1 {name=p3 lab=bottom}
C {lab_wire.sym} -180 -40 0 0 {name=p10 sig_type=std_logic lab=PSUP_LV}
C {ipin.sym} -560 -50 0 0 {name=p6 lab=PSUP_LV}
C {ipin.sym} -560 -30 0 0 {name=p7 lab=NSUP}
C {lab_wire.sym} -560 -30 0 1 {name=p12 sig_type=std_logic lab=NSUP}
C {lab_wire.sym} -560 -50 0 1 {name=p13 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -180 40 0 0 {name=p59 sig_type=std_logic lab=PSUP_LV}
C {symbols/ppolyf_u_1k.sym} -160 40 0 0 {name=R14
W=1e-6
L=50e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {symbols/ppolyf_u_1k.sym} -160 -40 0 0 {name=R15
W=1e-6
L=450e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
