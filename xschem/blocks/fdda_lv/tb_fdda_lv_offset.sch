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
N -760 270 -740 270 {lab=0}
N -760 250 -760 270 {lab=0}
N -760 170 -760 190 {lab=PSUP_LV}
N -760 170 -740 170 {lab=PSUP_LV}
N -840 270 -820 270 {lab=0}
N -840 250 -840 270 {lab=0}
N -840 170 -840 190 {lab=VCM}
N -840 170 -820 170 {lab=VCM}
N -140 190 -100 190 {lab=Vop}
N -140 230 -100 230 {lab=Von}
N -40 310 -40 330 {lab=0}
N -40 230 -40 250 {lab=Vop}
N -40 190 -40 230 {lab=Vop}
N -100 190 -40 190 {lab=Vop}
N -440 190 -290 190 {lab=INP}
N -440 250 -290 250 {lab=INM}
N -600 220 -580 220 {lab=VCM}
N -580 190 -580 220 {lab=VCM}
N -580 220 -580 250 {lab=VCM}
N -480 190 -440 190 {lab=INP}
N -480 250 -440 250 {lab=INM}
N -580 190 -540 190 {lab=VCM}
N -580 250 -540 250 {lab=VCM}
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
.param sw_stat_global=1
.param sw_stat_mismatch=1
"}
C {lab_wire.sym} -100 230 0 1 {name=p4 sig_type=std_logic lab=Von
}
C {code_shown.sym} 220 190 0 0 {name=NGSPICE only_toplevel=true value="
.control
save all
dc vdiff -50m 50m 100u
meas dc v_offset when v(vop)=v(von)
write tb_fdda_lv_offset.raw
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
C {noconn.sym} -230 110 1 0 {name=l3}
C {lab_pin.sym} -210 110 2 0 {name=p14 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -200 310 2 0 {name=p15 sig_type=std_logic lab=0}
C {noconn.sym} -240 310 3 0 {name=l4}
C {noconn.sym} -220 310 3 0 {name=l5}
C {vsource.sym} -760 220 0 0 {name=VDD value=\{vdd\} savecurrent=false}
C {lab_pin.sym} -740 270 2 0 {name=p16 sig_type=std_logic lab=0}
C {lab_pin.sym} -740 170 2 0 {name=p17 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -820 270 2 0 {name=p18 sig_type=std_logic lab=0}
C {lab_pin.sym} -820 170 2 0 {name=p19 sig_type=std_logic lab=VCM}
C {lab_wire.sym} -40 190 0 1 {name=p1 sig_type=std_logic lab=Vop
}
C {lab_pin.sym} -40 330 0 0 {name=p5 sig_type=std_logic lab=0}
C {capa.sym} -40 280 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {vsource.sym} -840 220 0 0 {name=VCM value=\{vdd/2\} savecurrent=false}
C {lab_wire.sym} -290 170 0 0 {name=p2 sig_type=std_logic lab=Vop
}
C {lab_wire.sym} -290 230 0 0 {name=p7 sig_type=std_logic lab=Von
}
C {noconn.sym} -250 110 1 0 {name=l1}
C {lab_pin.sym} -600 220 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {lab_pin.sym} -440 190 3 1 {name=p8 sig_type=std_logic lab=INP}
C {lab_pin.sym} -440 250 3 0 {name=p9 sig_type=std_logic lab=INM
}
C {vsource.sym} -430 220 0 0 {name=VDIFF value="DC 0 AC 1" savecurrent=false}
C {res.sym} -510 190 3 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1}
C {res.sym} -510 250 1 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1}
