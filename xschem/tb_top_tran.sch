v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -810 30 -810 50 {lab=0}
N -810 50 -790 50 {lab=0}
N -810 -50 -810 -30 {lab=CONF1}
N -810 -50 -790 -50 {lab=CONF1}
N -600 -50 -600 -30 {lab=CONF0}
N -600 -50 -580 -50 {lab=CONF0}
N -600 30 -600 50 {lab=0}
N -600 50 -580 50 {lab=0}
N -1570 30 -1570 50 {lab=0}
N -1570 50 -1550 50 {lab=0}
N -1570 -50 -1570 -30 {lab=VCM}
N -1570 -50 -1550 -50 {lab=VCM}
N -1020 30 -1020 50 {lab=0}
N -1020 50 -1000 50 {lab=0}
N -1020 -50 -1020 -30 {lab=CONF2}
N -1020 -50 -1000 -50 {lab=CONF2}
N -1240 30 -1240 50 {lab=0}
N -1240 50 -1220 50 {lab=0}
N -1240 -50 -1240 -30 {lab=CONF3}
N -1240 -50 -1220 -50 {lab=CONF3}
N -1450 30 -1450 50 {lab=0}
N -1450 50 -1430 50 {lab=0}
N -1450 -50 -1450 -30 {lab=CONF4}
N -1450 -50 -1430 -50 {lab=CONF4}
N -270 -140 -270 -120 {lab=VCM}
N -290 -140 -270 -140 {lab=VCM}
N -230 -140 -230 -120 {lab=VCM}
N -270 -140 -230 -140 {lab=VCM}
N -230 -60 -230 -30 {lab=INM}
N -270 -60 -270 30 {lab=INP}
N -230 -30 -110 -30 {lab=INM}
N -270 30 -110 30 {lab=INP}
N 180 -30 200 -30 {lab=VOP}
N 180 30 200 30 {lab=VON}
N -1680 30 -1680 50 {lab=0}
N -1680 50 -1660 50 {lab=0}
N -1680 -50 -1680 -30 {lab=PSUP_LV}
N -1680 -50 -1660 -50 {lab=PSUP_LV}
C {top.sym} 40 0 0 0 {name=x1}
C {vsource.sym} -600 0 0 0 {name=VBIT0 value="PULSE(0 3.3 6.25u 1n 1n 6.25u 12.5u)" savecurrent=false}
C {vsource.sym} -810 0 0 0 {name=VBIT4 value="PULSE(0 3.3 12.5u 1n 1n 12.5u 25u)" savecurrent=false
}
C {vsource.sym} -1570 0 0 0 {name=VCM value="\{vdd/2\}" savecurrent=false}
C {lab_wire.sym} -1550 -50 0 1 {name=p1 sig_type=std_logic lab=VCM}
C {lab_wire.sym} -790 -50 0 1 {name=p2 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -580 -50 0 1 {name=p3 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -1550 50 0 1 {name=p4 sig_type=std_logic lab=0}
C {lab_wire.sym} -790 50 0 1 {name=p5 sig_type=std_logic lab=0}
C {lab_wire.sym} -580 50 0 1 {name=p6 sig_type=std_logic lab=0}
C {vsource.sym} -1020 0 0 0 {name=VBIT2 value="PULSE(0 3.3 25u 1n 1n 25u 50u)" savecurrent=false
}
C {lab_wire.sym} -1000 -50 0 1 {name=VBIT1 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -1000 50 0 1 {name=VBIT3 sig_type=std_logic lab=0}
C {vsource.sym} -1240 0 0 0 {name=VBIT5 value="PULSE(0 3.3 50u 1n 1n 50u 100u)" savecurrent=false
}
C {lab_wire.sym} -1220 -50 0 1 {name=p7 sig_type=std_logic lab=CONF3}
C {lab_wire.sym} -1220 50 0 1 {name=p8 sig_type=std_logic lab=0}
C {vsource.sym} -1450 0 0 0 {name=VBIT6 value="PULSE(0 3.3 100u 1n 1n 100u)" savecurrent=false
}
C {lab_wire.sym} -1430 -50 0 1 {name=VBIT7 sig_type=std_logic lab=CONF4}
C {lab_wire.sym} -1430 50 0 1 {name=VBIT8 sig_type=std_logic lab=0}
C {lab_wire.sym} -110 70 0 0 {name=VBIT9 sig_type=std_logic lab=CONF4}
C {lab_wire.sym} -110 90 0 0 {name=p9 sig_type=std_logic lab=CONF3}
C {lab_wire.sym} -110 110 0 0 {name=VBIT10 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -110 130 0 0 {name=p10 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -110 150 0 0 {name=p11 sig_type=std_logic lab=CONF0}
C {lab_pin.sym} -290 -140 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {vsource.sym} -230 -90 2 1 {name=VDM2 value="DC 0.05m AC 0.5" savecurrent=false}
C {vsource.sym} -270 -90 0 1 {name=VDM1 value="DC 0.05m AC 0.5" savecurrent=false}
C {lab_pin.sym} -270 30 0 0 {name=p12 sig_type=std_logic lab=INP}
C {lab_pin.sym} -230 -30 0 0 {name=p14 sig_type=std_logic lab=INM
}
C {lab_wire.sym} 0 200 0 1 {name=p15 sig_type=std_logic lab=0}
C {lab_wire.sym} -110 -70 0 0 {name=p16 sig_type=std_logic lab=0}
C {lab_wire.sym} -110 -90 0 0 {name=p17 sig_type=std_logic lab=0}
C {noconn.sym} -110 -130 0 0 {name=l1}
C {noconn.sym} -110 -150 0 0 {name=l2}
C {noconn.sym} -20 -200 1 0 {name=l3}
C {lab_wire.sym} 0 -200 0 1 {name=p18 sig_type=std_logic lab=PSUP_LV}
C {noconn.sym} 180 0 0 1 {name=l4}
C {lab_wire.sym} 200 -30 0 1 {name=p19 sig_type=std_logic lab=VOP}
C {lab_wire.sym} 200 30 0 1 {name=p20 sig_type=std_logic lab=VON}
C {code_shown.sym} 490 -340 0 0 {name=MODELS only_toplevel=true
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
C {code_shown.sym} 490 60 0 0 {name=NGSPICE only_toplevel=true value="
.control
save all
tran 10n 200u

let Vid = v(INP) - v(INM)
let Vo = v(Vop) - v(Von)
let gain = v(Vo) / v(Vid)

write tb_top_tran.raw gain
.endc
"}
C {vsource.sym} -1680 0 0 0 {name=VDD1 value="\{vdd\}" savecurrent=false}
C {lab_wire.sym} -1660 -50 0 1 {name=p21 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -1660 50 0 1 {name=p22 sig_type=std_logic lab=0}
