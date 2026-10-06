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
N -660 400 -640 400 {lab=0}
N -660 380 -660 400 {lab=0}
N -660 300 -660 320 {lab=PSUP_LV}
N -660 300 -640 300 {lab=PSUP_LV}
N -740 400 -720 400 {lab=0}
N -740 380 -740 400 {lab=0}
N -740 300 -740 320 {lab=VCM}
N -740 300 -720 300 {lab=VCM}
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
C {code_shown.sym} 220 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim

* .temp @TEMP@

.param vcm=2.5
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
tran 10n 200u
write tb_fdda_lv_buff_tran_slew.raw
.endc
"}
C {lab_pin.sym} -100 330 0 0 {name=p11 sig_type=std_logic lab=0}
C {capa.sym} -100 280 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {blocks/fdda_lv_buff/fdda_lv_buff.sym} -360 160 0 0 {name=x2}
C {lab_pin.sym} -490 210 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {noconn.sym} -230 110 1 0 {name=l3}
C {lab_pin.sym} -210 110 2 0 {name=p14 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -200 310 2 0 {name=p15 sig_type=std_logic lab=0}
C {noconn.sym} -240 310 3 0 {name=l4}
C {noconn.sym} -220 310 3 0 {name=l5}
C {vsource.sym} -660 350 0 0 {name=V1 value="PWL(0 0 1u 0 11u \{vdd\})" savecurrent=false}
C {lab_pin.sym} -640 400 2 0 {name=p16 sig_type=std_logic lab=0}
C {lab_pin.sym} -640 300 2 0 {name=p17 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -720 400 2 0 {name=p18 sig_type=std_logic lab=0}
C {lab_pin.sym} -720 300 2 0 {name=p19 sig_type=std_logic lab=VCM}
C {lab_wire.sym} -40 190 0 1 {name=p1 sig_type=std_logic lab=Vop
}
C {lab_pin.sym} -40 330 0 0 {name=p5 sig_type=std_logic lab=0}
C {capa.sym} -40 280 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {vsource.sym} -740 350 0 0 {name=VCM2 value=\{vcm\} savecurrent=false}
C {vsource.sym} -470 160 0 1 {name=VDM2 value="PULSE(0 1 10u 1n 1n 10u 20u)" savecurrent=false}
C {vsource.sym} -470 260 0 1 {name=VDM1 value="PULSE(0 1 10u 1n 1n 10u 20u)" savecurrent=false}
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
C {noconn.sym} -250 110 1 0 {name=l1}
