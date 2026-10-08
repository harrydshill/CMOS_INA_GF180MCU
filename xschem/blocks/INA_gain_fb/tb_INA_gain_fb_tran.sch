v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -590 30 -590 50 {lab=0}
N -590 50 -570 50 {lab=0}
N -590 -50 -590 -30 {lab=CONF1}
N -590 -50 -570 -50 {lab=CONF1}
N -380 -50 -380 -30 {lab=CONF0}
N -380 -50 -360 -50 {lab=CONF0}
N -380 30 -380 50 {lab=0}
N -380 50 -360 50 {lab=0}
N -780 30 -780 50 {lab=0}
N -780 50 -760 50 {lab=0}
N -780 -50 -780 -30 {lab=PSUP_LV}
N -780 -50 -760 -50 {lab=PSUP_LV}
N 200 -60 200 -40 {lab=Rtop}
N 60 40 200 40 {lab=Rtop}
N 200 -40 200 40 {lab=Rtop}
N 60 -40 140 -40 {lab=0}
C {vsource.sym} -380 0 0 0 {name=VLSB value="PULSE(0 3.3 50u 1n 1n 50u 100u 2)" savecurrent=false}
C {vsource.sym} -590 0 0 0 {name=VMSB value="PULSE(0 3.3 100u 1n 1n 100u)" savecurrent=false
}
C {vsource.sym} -780 0 0 0 {name=VDD value="\{vdd\}" savecurrent=false}
C {lab_wire.sym} -760 -50 0 1 {name=p1 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -570 -50 0 1 {name=p2 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -360 -50 0 1 {name=p3 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -760 50 0 1 {name=p4 sig_type=std_logic lab=0}
C {lab_wire.sym} -570 50 0 1 {name=p5 sig_type=std_logic lab=0}
C {lab_wire.sym} -360 50 0 1 {name=p6 sig_type=std_logic lab=0}
C {lab_wire.sym} -100 60 0 0 {name=p7 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -100 80 0 0 {name=p8 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -100 -80 0 0 {name=p10 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -100 -60 0 0 {name=p11 sig_type=std_logic lab=0}
C {noconn.sym} 0 140 3 0 {name=l1}
C {noconn.sym} 0 -140 1 0 {name=l2}
C {code_shown.sym} 320 -290 0 0 {name=MODELS only_toplevel=true
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
C {code_shown.sym} 320 110 0 0 {name=NGSPICE only_toplevel=true value="
.control
save all
tran 10n 200u

let R=(2000000 * V(Rtop))/(3.3 - V(Rtop))

write tb_INA_gain_fb_tran.raw R V(rtop)
.endc
"}
C {res.sym} 200 -90 0 0 {name=R1
value=2Meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 200 -120 0 0 {name=p12 sig_type=std_logic lab=PSUP_LV}
C {spice_probe.sym} 200 -40 0 0 {name=p13 attrs=""}
C {lab_wire.sym} 100 40 0 1 {name=p14 sig_type=std_logic lab=Rtop}
C {lab_wire.sym} 100 -40 0 1 {name=p9 sig_type=std_logic lab=0}
C {blocks/INA_gain_fb/INA_gain_fb.sym} 0 0 0 0 {name=x1}
