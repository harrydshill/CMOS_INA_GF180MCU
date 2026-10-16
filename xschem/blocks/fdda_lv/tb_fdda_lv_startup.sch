v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {1u} -390 -60 0 0 0.4 0.4 {}
N 0 310 0 330 {lab=0}
N 0 230 0 250 {lab=Von}
N -790 270 -770 270 {lab=0}
N -790 250 -790 270 {lab=0}
N -790 170 -790 190 {lab=PSUP_LV}
N -790 170 -770 170 {lab=PSUP_LV}
N -870 270 -850 270 {lab=0}
N -870 250 -870 270 {lab=0}
N -870 170 -870 190 {lab=VCM}
N -870 170 -850 170 {lab=VCM}
N -140 190 0 190 {lab=Vop}
N -140 230 0 230 {lab=Von}
N 60 310 60 330 {lab=0}
N 60 230 60 250 {lab=Vop}
N 60 190 60 230 {lab=Vop}
N 0 190 60 190 {lab=Vop}
N -470 210 -470 230 {lab=VCM}
N -490 210 -470 210 {lab=VCM}
N -470 190 -470 210 {lab=VCM}
N -470 110 -450 110 {lab=INP}
N -470 110 -470 130 {lab=INP}
N -470 310 -450 310 {lab=INM}
N -470 290 -470 310 {lab=INM}
N -350 -110 -350 -80 {lab=PSUP_LV}
N -350 -30 -290 -30 {lab=g}
N -310 -80 -290 -80 {lab=g}
N -290 -80 -290 -30 {lab=g}
N -350 -50 -350 -30 {lab=g}
N -350 -30 -350 -10 {lab=g}
N -230 -110 -230 -80 {lab=PSUP_LV}
N -290 -80 -270 -80 {lab=g}
N -230 -50 -230 -30 {lab=#net1}
N -230 -30 -230 -10 {lab=#net1}
N -350 -130 -230 -130 {lab=PSUP_LV}
N -350 50 -350 80 {lab=0}
N -230 -130 -230 -110 {lab=PSUP_LV}
N -350 -130 -350 -110 {lab=PSUP_LV}
N -230 10 -230 20 {lab=#net1}
N -230 -10 -230 10 {lab=#net1}
N -230 20 -230 110 {lab=#net1}
N -690 430 -670 430 {lab=0}
N -690 410 -690 430 {lab=0}
N -690 330 -690 350 {lab=N_EN}
N -690 330 -670 330 {lab=N_EN}
N -870 430 -850 430 {lab=0}
N -870 410 -870 430 {lab=0}
N -870 330 -870 350 {lab=EN}
N -870 330 -850 330 {lab=EN}
N -210 10 -190 10 {lab=PSUP_LV}
N -210 10 -210 30 {lab=PSUP_LV}
N -210 90 -210 110 {lab=#net2}
N 120 230 120 250 {lab=Vop}
N 60 230 120 230 {lab=Vop}
N 60 330 120 330 {lab=0}
N 120 310 120 330 {lab=0}
N -60 230 -60 250 {lab=Von}
N -60 330 0 330 {lab=0}
N -60 310 -60 330 {lab=0}
C {code_shown.sym} 220 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim

.temp 25

.param vdd=3.3

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0
"}
C {lab_wire.sym} 0 230 0 1 {name=p4 sig_type=std_logic lab=Von
}
C {code_shown.sym} 220 190 0 0 {name=NGSPICE only_toplevel=true value="
.control
save all
tran 10n 1000u
write tb_fdda_lv_startup.raw
.endc
"}
C {lab_pin.sym} 0 330 0 1 {name=p11 sig_type=std_logic lab=0}
C {capa.sym} 0 280 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {blocks/fdda_lv/fdda_lv.sym} -360 160 0 0 {name=x2}
C {lab_pin.sym} -490 210 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {lab_pin.sym} -190 10 2 0 {name=p14 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -200 310 2 0 {name=p15 sig_type=std_logic lab=0}
C {vsource.sym} -790 220 0 0 {name=VDD value="PULSE(0 3.3 100u 100u 100u 600u)" savecurrent=false}
C {lab_pin.sym} -770 270 2 0 {name=p16 sig_type=std_logic lab=0}
C {lab_pin.sym} -770 170 2 0 {name=p17 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -850 270 2 0 {name=p18 sig_type=std_logic lab=0}
C {lab_pin.sym} -850 170 2 0 {name=p19 sig_type=std_logic lab=VCM}
C {lab_wire.sym} 60 190 0 1 {name=p1 sig_type=std_logic lab=Vop
}
C {lab_pin.sym} 60 330 0 0 {name=p5 sig_type=std_logic lab=0}
C {capa.sym} 60 280 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {vsource.sym} -870 220 0 0 {name=VCM value=\{vdd/2\} savecurrent=false}
C {vsource.sym} -470 160 0 1 {name=VDM2 value=0.5 savecurrent=false}
C {vsource.sym} -470 260 0 1 {name=VDM1 value=0.5 savecurrent=false}
C {lab_pin.sym} -290 190 0 0 {name=p3 sig_type=std_logic lab=INP}
C {lab_pin.sym} -290 250 0 0 {name=p6 sig_type=std_logic lab=INM
}
C {lab_wire.sym} -290 170 0 0 {name=p2 sig_type=std_logic lab=Vop
}
C {lab_wire.sym} -290 230 2 1 {name=p7 sig_type=std_logic lab=Von
}
C {lab_pin.sym} -450 110 2 0 {name=p8 sig_type=std_logic lab=INP}
C {lab_pin.sym} -450 310 2 0 {name=p9 sig_type=std_logic lab=INM
}
C {noconn.sym} -250 110 0 0 {name=l1}
C {symbols/pfet_03v3.sym} -330 -80 0 1 {name=M7
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -250 -80 0 0 {name=M1
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
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -230 -130 2 0 {name=p10 sig_type=std_logic lab=PSUP_LV}
C {isource.sym} -350 20 0 0 {name=I1 value=1u}
C {lab_pin.sym} -350 80 2 0 {name=p22 sig_type=std_logic lab=0}
C {lab_pin.sym} -290 -40 2 0 {name=p23 sig_type=std_logic lab=g}
C {lab_pin.sym} -290 210 0 0 {name=p12 sig_type=std_logic lab=VCM}
C {lab_pin.sym} -670 430 2 0 {name=p24 sig_type=std_logic lab=0}
C {lab_pin.sym} -850 430 2 0 {name=p26 sig_type=std_logic lab=0}
C {vsource.sym} -870 380 0 0 {name=VCM1 value="PULSE(3.3 0 300u 1n 1n 100u)" savecurrent=false}
C {lab_pin.sym} -240 310 1 1 {name=p20 sig_type=std_logic lab=EN
}
C {lab_pin.sym} -220 310 1 1 {name=p21 sig_type=std_logic lab=N_EN
}
C {lab_pin.sym} -850 330 2 0 {name=p25 sig_type=std_logic lab=EN
}
C {lab_pin.sym} -670 330 0 1 {name=p27 sig_type=std_logic lab=N_EN
}
C {vsource.sym} -690 380 0 0 {name=VDD2 value="PULSE(0 3.3 300u 1n 1n 100u)" savecurrent=false}
C {ammeter.sym} -210 60 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {res.sym} 120 280 0 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {res.sym} -60 280 0 1 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
