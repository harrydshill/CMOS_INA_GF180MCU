v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 0 -60 0 {lab=0}
N -80 -20 -80 0 {lab=0}
N -80 -100 -80 -80 {lab=PSUP_LV}
N -80 -100 -60 -100 {lab=PSUP_LV}
N -160 0 -140 0 {lab=0}
N -160 -20 -160 0 {lab=0}
N -160 -100 -160 -80 {lab=VCM}
N -160 -100 -140 -100 {lab=VCM}
N 300 -130 340 -130 {lab=#net1}
N 300 -90 340 -90 {lab=#net2}
C {blocks/fdda_lv_buff/fdda_lv_buff.sym} 80 -160 0 0 {name=x1}
C {lab_pin.sym} 150 -90 0 0 {name=p1 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 150 -70 0 0 {name=p2 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 150 -130 0 0 {name=p3 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 150 -150 0 0 {name=p4 sig_type=std_logic lab=VCM}
C {noconn.sym} 210 -210 0 0 {name=l1}
C {noconn.sym} 190 -210 1 0 {name=l4}
C {lab_pin.sym} 230 -210 2 0 {name=p5 sig_type=std_logic lab=PSUP_LV}
C {lab_pin.sym} 240 -10 2 0 {name=p6 sig_type=std_logic lab=0}
C {noconn.sym} 200 -10 3 0 {name=l2}
C {noconn.sym} 220 -10 3 0 {name=l3}
C {vsource.sym} -80 -50 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} -60 0 2 0 {name=p7 sig_type=std_logic lab=0}
C {lab_pin.sym} -60 -100 2 0 {name=p8 sig_type=std_logic lab=PSUP_LV}
C {vsource.sym} -160 -50 0 0 {name=V2 value=1.8 savecurrent=false}
C {lab_pin.sym} -140 0 2 0 {name=p9 sig_type=std_logic lab=0}
C {lab_pin.sym} -140 -100 2 0 {name=p10 sig_type=std_logic lab=VCM}
C {code_shown.sym} 550 -50 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
op
show all
write tb_fdda_lv_buff_dc.raw
.endc
"}
C {code_shown.sym} 540 -470 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim

.temp 25

.param vcm=2.5
.param vdd=3.3

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0

"}
