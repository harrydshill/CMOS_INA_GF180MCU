v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 10 -0 {}
T {what is the expected bond 
wire inductance? - it is 
good practive to include 
it here with the expected
parasitic capacitance for 
stability check } 10 140 0 0 0.2 0.2 {}
N -450 -50 -430 -50 {lab=PSUP}
N -430 -50 -430 -30 {lab=PSUP}
N -450 50 -430 50 {lab=0}
N -430 30 -430 50 {lab=0}
N -240 90 -240 130 {lab=0}
N -10 -20 30 -20 {lab=VO}
N -240 -80 -160 -80 {lab=INP}
N -240 20 -240 40 {lab=INM}
N -240 20 -160 20 {lab=INM}
N -240 0 -240 20 {lab=INM}
N -240 -80 -240 -60 {lab=INP}
N 30 60 30 80 {lab=NSUP}
N 30 -20 30 0 {lab=VO}
N -40 10 -40 40 {lab=0}
N -40 -70 -40 -50 {lab=PSUP}
N -370 280 -370 330 {lab=vb3}
N -430 280 -430 300 {lab=vb3}
N -390 330 -370 330 {lab=vb3}
N -430 280 -370 280 {lab=vb3}
N -370 180 -370 230 {lab=IBIAS}
N -430 180 -430 200 {lab=IBIAS}
N -390 230 -370 230 {lab=IBIAS}
N -430 180 -370 180 {lab=IBIAS}
N -430 260 -430 280 {lab=vb3}
N -430 360 -430 410 {lab=0}
N -430 330 -430 360 {lab=0}
N -430 80 -430 100 {lab=PSUP}
N -430 160 -430 180 {lab=IBIAS}
N -160 -10 -160 20 {lab=INM}
N -160 -10 -70 -10 {lab=INM}
N -160 -30 -70 -30 {lab=INP}
N -160 -80 -160 -30 {lab=INP}
N -50 10 -50 40 {lab=vb3}
C {lab_wire.sym} -40 -70 0 0 {name=p1 sig_type=std_logic lab=PSUP
}
C {lab_wire.sym} -450 -50 0 0 {name=p2 sig_type=std_logic lab=PSUP


}
C {lab_wire.sym} -450 50 0 0 {name=p3 sig_type=std_logic lab=0
}
C {vsource.sym} -430 0 0 0 {name=VDD value=\{vdd\} savecurrent=false}
C {vsource.sym} -240 70 0 0 {name=VCM value=\{vcm\} savecurrent=false}
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

.param vcm=1.65
.param vdd=3.3

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0
"}
C {lab_wire.sym} -160 20 0 0 {name=p6 sig_type=std_logic lab=INM
}
C {lab_wire.sym} -160 -80 0 0 {name=p7 sig_type=std_logic lab=INP
}
C {vsource.sym} -240 -30 0 0 {name=VDM1 value="DC 0 AC 1" savecurrent=false}
C {lab_wire.sym} 20 -20 0 1 {name=p4 sig_type=std_logic lab=VO
}
C {blocks/aux_amp/aux_amp.sym} -40 50 0 0 {name=x1}
C {code_shown.sym} 220 190 0 0 {name=NGSPICE only_toplevel=true value="
.control
set units=degrees
save all
ac dec 100 1 100Meg

let vid = v(INP) - v(INM)
let aol = v(VO) / vid
let gain_db = db(aol)
let phase_deg = cph(aol)

meas ac UGF when gain_db=0
meas ac PM when phase_deg=UGF

write tb_aux_amp_aol.raw frequency v(INP) v(INM) v(VO) aol gain_db phase_deg

.endc
"}
C {lab_wire.sym} -240 130 0 0 {name=p5 sig_type=std_logic lab=0
}
C {lab_wire.sym} -40 40 0 1 {name=p8 sig_type=std_logic lab=0
}
C {lab_pin.sym} 30 80 0 0 {name=p11 sig_type=std_logic lab=NSUP}
C {capa.sym} 30 30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"
}
C {lab_pin.sym} -370 280 2 0 {name=p29 sig_type=std_logic lab=vb3}
C {symbols/nfet_03v3.sym} -410 330 0 1 {name=M11
L=8u
W=2u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -410 230 0 1 {name=M18
L=4u
W=4u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -370 180 2 0 {name=p33 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} -430 230 0 0 {name=p32 sig_type=std_logic lab=0}
C {lab_wire.sym} -430 80 0 0 {name=p9 sig_type=std_logic lab=PSUP


}
C {isource.sym} -430 130 0 0 {name=I0 value=1u}
C {lab_wire.sym} -430 410 0 0 {name=p10 sig_type=std_logic lab=0
}
C {lab_pin.sym} -50 40 2 1 {name=p12 sig_type=std_logic lab=vb3}
