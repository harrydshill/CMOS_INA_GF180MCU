v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {what is the expected bond 
wire inductance? - it is 
good practive to include 
it here with the expected
parasitic capacitance for 
stability check } 80 180 0 0 0.2 0.2 {}
N -100 310 -100 330 {lab=0}
N -100 230 -100 250 {lab=Von}
N -790 270 -770 270 {lab=0}
N -790 250 -790 270 {lab=0}
N -790 170 -790 190 {lab=PSUP_LV}
N -790 170 -770 170 {lab=PSUP_LV}
N -870 270 -850 270 {lab=0}
N -870 250 -870 270 {lab=0}
N -870 170 -870 190 {lab=VCM}
N -870 170 -850 170 {lab=VCM}
N -140 190 -100 190 {lab=Vop}
N -140 230 -100 230 {lab=Von}
N -40 310 -40 330 {lab=0}
N -40 230 -40 250 {lab=Vop}
N -40 190 -40 230 {lab=Vop}
N -100 190 -40 190 {lab=Vop}
N -470 210 -470 230 {lab=VCM}
N -490 210 -470 210 {lab=VCM}
N -470 190 -470 210 {lab=VCM}
N -470 110 -450 110 {lab=INP}
N -470 110 -470 130 {lab=INP}
N -470 310 -450 310 {lab=INM}
N -470 290 -470 310 {lab=INM}
N -230 100 -230 110 {lab=#net1}
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
C {lab_wire.sym} -100 230 0 1 {name=p4 sig_type=std_logic lab=Von
}
C {code_shown.sym} 220 190 0 0 {name=NGSPICE only_toplevel=true value="
.control
save all
dc VCM 0 3.3 10u
write tb_fdda_lv_incm.raw
.endc
"}
C {lab_pin.sym} -100 330 0 0 {name=p11 sig_type=std_logic lab=0}
C {capa.sym} -100 280 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {blocks/fdda_lv/fdda_lv.sym} -360 160 0 0 {name=x2}
C {lab_pin.sym} -490 210 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {noconn.sym} -230 100 0 0 {name=l3}
C {lab_pin.sym} -210 110 2 0 {name=p14 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -200 310 2 0 {name=p15 sig_type=std_logic lab=0}
C {noconn.sym} -240 310 3 0 {name=l4}
C {noconn.sym} -220 310 3 0 {name=l5}
C {vsource.sym} -790 220 0 0 {name=VDD value=\{vdd\} savecurrent=false}
C {lab_pin.sym} -770 270 2 0 {name=p16 sig_type=std_logic lab=0}
C {lab_pin.sym} -770 170 2 0 {name=p17 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -850 270 2 0 {name=p18 sig_type=std_logic lab=0}
C {lab_pin.sym} -850 170 2 0 {name=p19 sig_type=std_logic lab=VCM}
C {lab_wire.sym} -40 190 0 1 {name=p1 sig_type=std_logic lab=Vop
}
C {lab_pin.sym} -40 330 0 0 {name=p5 sig_type=std_logic lab=0}
C {capa.sym} -40 280 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {vsource.sym} -870 220 0 0 {name=VCM value=\{vdd/2\} savecurrent=false}
C {vsource.sym} -470 160 0 1 {name=VDM2 value=50m savecurrent=false}
C {vsource.sym} -470 260 0 1 {name=VDM1 value=50m savecurrent=false}
C {lab_pin.sym} -290 190 0 0 {name=p3 sig_type=std_logic lab=INP}
C {lab_pin.sym} -290 250 0 0 {name=p6 sig_type=std_logic lab=INM
}
C {lab_wire.sym} -290 170 0 0 {name=p2 sig_type=std_logic lab=Vop
}
C {lab_wire.sym} -290 230 0 0 {name=p7 sig_type=std_logic lab=Von
}
C {lab_pin.sym} -450 110 2 0 {name=p8 sig_type=std_logic lab=INP}
C {lab_pin.sym} -450 310 2 0 {name=p9 sig_type=std_logic lab=INM
}
C {noconn.sym} -250 110 0 0 {name=l1}
