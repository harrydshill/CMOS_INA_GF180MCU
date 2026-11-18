v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -830 30 -830 50 {lab=0}
N -830 50 -810 50 {lab=0}
N -830 -50 -830 -30 {lab=PSUP_LV}
N -830 -50 -810 -50 {lab=PSUP_LV}
N -730 30 -730 50 {lab=0}
N -730 50 -710 50 {lab=0}
N -730 -50 -730 -30 {lab=ACP}
N -730 -50 -710 -50 {lab=ACP}
N -730 50 -730 70 {lab=0}
N -730 130 -730 150 {lab=ACN}
N -730 150 -710 150 {lab=ACN}
N -710 310 -710 330 {lab=0}
N -710 330 -690 330 {lab=0}
N -710 230 -710 250 {lab=CONF1}
N -710 230 -690 230 {lab=CONF1}
N -520 230 -520 250 {lab=CONF0}
N -520 230 -500 230 {lab=CONF0}
N -520 310 -520 330 {lab=0}
N -520 330 -500 330 {lab=0}
N -910 310 -910 330 {lab=0}
N -910 330 -890 330 {lab=0}
N -910 230 -910 250 {lab=CONF2}
N -910 230 -890 230 {lab=CONF2}
C {vsource.sym} -830 0 0 0 {name=VDD value="\{vdd\}" savecurrent=false}
C {lab_wire.sym} -810 -50 0 1 {name=p1 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -810 50 0 1 {name=p4 sig_type=std_logic lab=0}
C {lab_wire.sym} -100 -80 0 0 {name=p10 sig_type=std_logic lab=PSUP_LV}
C {lab_wire.sym} -100 -60 0 0 {name=p11 sig_type=std_logic lab=0}
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

.param cbit0=0
.param cbit1=3.3
.param cbit2=0

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0
"}
C {code_shown.sym} 320 170 0 0 {name=NGSPICE only_toplevel=true value="
.control
set units=degrees
save all
ac dec 100 1 1G

let vout=V(outp)-V(outn)
let out_ph = cph(vout)
let out_db = db(vout)

write tb_INA_gain_fb_ac.raw out_db out_ph
.endc
"}
C {blocks/INA_gain_fb/INA_gain_fb.sym} 0 0 0 0 {name=x1}
C {lab_wire.sym} 0 -140 0 1 {name=p2 sig_type=std_logic lab=ACP}
C {lab_wire.sym} 60 -40 0 1 {name=p5 sig_type=std_logic lab=outp}
C {lab_wire.sym} 60 40 0 1 {name=p6 sig_type=std_logic lab=outn}
C {vsource.sym} -730 0 0 0 {name=VDD1 value="DC 1.65 AC 0.5" savecurrent=false}
C {lab_wire.sym} -710 -50 0 1 {name=p12 sig_type=std_logic lab=ACP}
C {lab_wire.sym} -710 50 0 1 {name=p13 sig_type=std_logic lab=0}
C {vsource.sym} -730 100 0 0 {name=VDD2 value="DC -1.65 AC 0.5" savecurrent=false}
C {lab_wire.sym} -710 150 2 0 {name=p17 sig_type=std_logic lab=ACN}
C {lab_wire.sym} 0 140 2 0 {name=p3 sig_type=std_logic lab=ACN}
C {lab_wire.sym} -690 230 0 1 {name=p21 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -500 230 0 1 {name=p28 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -690 330 0 1 {name=p29 sig_type=std_logic lab=0}
C {lab_wire.sym} -500 330 0 1 {name=p30 sig_type=std_logic lab=0}
C {vsource.sym} -710 280 0 0 {name=CBIT1 value="\{cbit1 * 3.3\}" savecurrent=false
}
C {vsource.sym} -520 280 0 0 {name=CBIT0 value="\{cbit0 * 3.3\}" savecurrent=false
}
C {lab_wire.sym} -890 230 0 1 {name=p14 sig_type=std_logic lab=CONF2}
C {lab_wire.sym} -890 330 0 1 {name=p19 sig_type=std_logic lab=0}
C {vsource.sym} -910 280 0 0 {name=CBIT2 value="\{cbit2 * 3.3\}" savecurrent=false
}
C {lab_wire.sym} -100 60 0 0 {name=p8 sig_type=std_logic lab=CONF0}
C {lab_wire.sym} -100 80 0 0 {name=p7 sig_type=std_logic lab=CONF1}
C {lab_wire.sym} -100 100 0 0 {name=p9 sig_type=std_logic lab=CONF2}
