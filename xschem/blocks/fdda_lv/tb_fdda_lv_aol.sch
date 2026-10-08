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
N -810 360 -790 360 {lab=0}
N -810 340 -810 360 {lab=0}
N -810 260 -810 280 {lab=PSUP_LV}
N -810 260 -790 260 {lab=PSUP_LV}
N -890 360 -870 360 {lab=0}
N -890 340 -890 360 {lab=0}
N -890 260 -890 280 {lab=VCM}
N -890 260 -870 260 {lab=VCM}
N -40 310 -40 330 {lab=0}
N -40 230 -40 250 {lab=Vop}
N -440 190 -290 190 {lab=INP}
N -440 250 -290 250 {lab=INM}
N -600 220 -580 220 {lab=VCM}
N -580 190 -580 220 {lab=VCM}
N -580 220 -580 250 {lab=VCM}
N -480 190 -440 190 {lab=INP}
N -480 250 -440 250 {lab=INM}
N -580 190 -540 190 {lab=VCM}
N -580 250 -540 250 {lab=VCM}
N -140 190 -100 190 {lab=Vop}
N -140 230 -100 230 {lab=Von}
N -100 190 -40 190 {lab=Vop}
N -100 230 -100 250 {lab=Von}
N -40 190 -40 230 {lab=Vop}
C {code_shown.sym} 220 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim

.temp 27

.param vcm=1.8
.param vdd=3.3

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0
"}
C {lab_wire.sym} -100 230 0 1 {name=p4 sig_type=std_logic lab=Von
}
C {code_shown.sym} 220 190 0 0 {name=NGSPICE only_toplevel=true value="
.control
set units=degrees
save all
ac dec 100 1 1G

let Vid = v(INP) - v(INM)
let Vo = v(Vop) - v(Von)
let aol = v(Vo) / v(Vid)
let gain_db = db(aol)
let phase_deg = cph(aol)

meas ac UGF when gain_db=0
meas ac phase_margin find phase_deg when gain_db=0

*write tb_fdda_lv_aol.raw frequency v(Vop) v(Von) v(Vo) aol gain_db phase_deg
write tb_fdda_lv_aol.raw

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
C {lab_pin.sym} -290 230 0 0 {name=p9 sig_type=std_logic lab=VCM}
C {lab_pin.sym} -600 220 0 0 {name=p13 sig_type=std_logic lab=VCM}
C {noconn.sym} -230 110 1 0 {name=l3}
C {lab_pin.sym} -210 110 2 0 {name=p14 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -200 310 2 0 {name=p15 sig_type=std_logic lab=0}
C {noconn.sym} -240 310 3 0 {name=l4}
C {noconn.sym} -220 310 3 0 {name=l5}
C {vsource.sym} -810 310 0 0 {name=VDD value=\{vdd\} savecurrent=false}
C {lab_pin.sym} -790 360 2 0 {name=p16 sig_type=std_logic lab=0}
C {lab_pin.sym} -790 260 2 0 {name=p17 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} -870 360 2 0 {name=p18 sig_type=std_logic lab=0}
C {lab_pin.sym} -870 260 2 0 {name=p19 sig_type=std_logic lab=VCM}
C {lab_wire.sym} -40 190 0 1 {name=p1 sig_type=std_logic lab=Vop
}
C {lab_pin.sym} -40 330 0 0 {name=p5 sig_type=std_logic lab=0}
C {capa.sym} -40 280 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {vsource.sym} -890 310 0 0 {name=VCM value=\{vdd/2\} savecurrent=false}
C {lab_pin.sym} -290 170 0 0 {name=p2 sig_type=std_logic lab=VCM}
C {lab_pin.sym} -440 190 3 1 {name=p3 sig_type=std_logic lab=INP}
C {lab_pin.sym} -440 250 3 0 {name=p6 sig_type=std_logic lab=INM
}
C {noconn.sym} -250 110 1 0 {name=l1}
C {vsource.sym} -440 220 0 0 {name=VDM value="DC 0 AC 1" savecurrent=false}
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
