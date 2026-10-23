v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {ESD} -280 -40 0 0 0.2 0.2 {}
N 80 -20 270 -20 {lab=VO+}
N 80 20 270 20 {lab=VO-}
N -270 -180 120 -180 {lab=VO+}
N 120 -180 120 -20 {lab=VO+}
N 120 20 120 180 {lab=VO-}
N -270 180 120 180 {lab=VO-}
N 10 -120 10 -100 {lab=PSUP_LV}
N 10 -120 50 -120 {lab=PSUP_LV}
N 210 -200 250 -200 {lab=NSUP}
N 210 -180 250 -180 {lab=EN}
N 210 -160 250 -160 {lab=N_EN}
N -10 -120 -10 -100 {lab=IBIAS}
N 210 -140 250 -140 {lab=IBIAS}
N -50 -120 -10 -120 {lab=IBIAS}
N 210 -220 250 -220 {lab=PSUP_LV}
N -460 -170 -460 -140 {lab=VO+}
N -460 -180 -460 -170 {lab=VO+}
N -460 140 -460 180 {lab=VO-}
N -80 0 -70 0 {lab=VOCM}
N -390 -180 -270 -180 {lab=VO+}
N -390 180 -270 180 {lab=VO-}
N -460 180 -390 180 {lab=VO-}
N -460 -180 -390 -180 {lab=VO+}
N -240 30 -170 30 {lab=#net1}
N -170 -20 -170 30 {lab=#net1}
N -170 -20 -150 -20 {lab=#net1}
N -320 30 -300 30 {lab=IN+}
N -150 -20 -70 -20 {lab=#net1}
N -170 -40 -70 -40 {lab=#net2}
N -170 -90 -170 -40 {lab=#net2}
N -240 -90 -170 -90 {lab=#net2}
N -320 -90 -300 -90 {lab=IN-}
N -80 40 -70 40 {lab=R+}
N -100 -0 -80 -0 {lab=VOCM}
C {opin.sym} 270 -20 0 0 {name=p1 lab=VO+
}
C {opin.sym} 270 20 0 0 {name=p2 lab=VO-}
C {lab_wire.sym} 10 100 0 1 {name=p5 sig_type=std_logic lab=NSUP}
C {ipin.sym} 250 -200 2 0 {name=p9 lab=NSUP}
C {lab_wire.sym} 230 -200 0 0 {name=p10 sig_type=std_logic lab=NSUP}
C {ipin.sym} 250 -180 2 0 {name=p11 lab=EN}
C {lab_wire.sym} 230 -180 0 0 {name=p12 sig_type=std_logic lab=EN}
C {ipin.sym} 250 -160 2 0 {name=p13 lab=N_EN}
C {lab_wire.sym} 230 -160 0 0 {name=p14 sig_type=std_logic lab=N_EN}
C {ipin.sym} 250 -140 2 0 {name=p17 lab=IBIAS}
C {lab_wire.sym} 230 -140 0 0 {name=p18 sig_type=std_logic lab=IBIAS}
C {lab_wire.sym} -50 -120 0 0 {name=p19 sig_type=std_logic lab=IBIAS}
C {ipin.sym} 250 -220 2 0 {name=p21 lab=PSUP_LV}
C {lab_wire.sym} 230 -220 0 0 {name=p22 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -560 -80 0 0 {name=p23 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -560 -60 0 0 {name=p24 sig_type=std_logic lab=NSUP}
C {ipin.sym} -560 60 0 0 {name=p25 lab=GAIN0}
C {ipin.sym} -560 80 0 0 {name=p27 lab=GAIN1}
C {ipin.sym} -100 0 0 0 {name=p34 lab=VOCM
}
C {lab_wire.sym} 50 -120 0 1 {name=p7 sig_type=std_logic lab=PSUP_LV}
C {noconn.sym} -30 -100 0 0 {name=l2}
C {blocks/fdda_lv/fdda_lv.sym} -140 -50 0 0 {name=x1}
C {lab_wire.sym} -400 -40 0 0 {name=p6 sig_type=std_logic lab=R+}
C {lab_wire.sym} -400 40 0 0 {name=p8 sig_type=std_logic lab=R-}
C {lab_wire.sym} -70 20 0 1 {name=p20 sig_type=std_logic lab=R-}
C {lab_wire.sym} -70 40 0 1 {name=p29 sig_type=std_logic lab=R+}
C {blocks/INA_gain_fb/INA_gain_fb.sym} -460 0 0 0 {name=x2}
C {lab_pin.sym} -270 -70 2 0 {name=p56 sig_type=std_logic lab=PSUP_LV
L=100e-6}
C {symbols/ppolyf_u_1k.sym} -270 -90 1 1 {name=R2
W=1e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {ipin.sym} -320 -90 0 0 {name=p4 lab=IN-}
C {lab_pin.sym} -270 10 0 1 {name=p15 sig_type=std_logic lab=PSUP_LV
L=100e-6}
C {symbols/ppolyf_u_1k.sym} -270 30 1 0 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1
}
C {ipin.sym} -320 30 0 0 {name=p3 lab=IN+}
