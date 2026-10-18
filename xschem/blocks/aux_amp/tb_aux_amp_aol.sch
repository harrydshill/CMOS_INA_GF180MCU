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
stability check } 10 140 0 0 0.2 0.2 {}
T {1u} -260 340 0 0 0.4 0.4 {}
N -450 -50 -430 -50 {lab=PSUP}
N -430 -50 -430 -30 {lab=PSUP}
N -450 50 -430 50 {lab=0}
N -430 30 -430 50 {lab=0}
N -430 50 -430 70 {lab=0}
N -240 90 -240 130 {lab=0}
N 70 -0 110 -0 {lab=VO}
N -240 -80 -160 -80 {lab=INP}
N -160 -60 -160 -20 {lab=INP}
N -160 -20 -70 -20 {lab=INP}
N -160 20 -70 20 {lab=INM}
N -240 20 -240 40 {lab=INM}
N -240 20 -160 20 {lab=INM}
N -240 0 -240 20 {lab=INM}
N -160 -80 -160 -60 {lab=INP}
N -240 -80 -240 -60 {lab=INP}
N 110 80 110 100 {lab=0}
N 110 0 110 20 {lab=VO}
N -350 400 -350 450 {lab=vb3}
N -410 400 -410 420 {lab=vb3}
N -370 450 -350 450 {lab=vb3}
N -410 400 -350 400 {lab=vb3}
N -350 300 -350 350 {lab=IBIAS}
N -410 300 -410 320 {lab=IBIAS}
N -370 350 -350 350 {lab=IBIAS}
N -410 300 -350 300 {lab=IBIAS}
N -410 380 -410 400 {lab=vb3}
N -410 480 -410 530 {lab=0}
N -410 450 -410 480 {lab=0}
N -410 200 -410 220 {lab=PSUP}
N -410 280 -410 300 {lab=IBIAS}
N -220 290 -220 320 {lab=PSUP}
N -220 240 -220 290 {lab=PSUP}
N -220 370 -160 370 {lab=vb1}
N -180 320 -160 320 {lab=vb1}
N -160 320 -160 370 {lab=vb1}
N -220 350 -220 370 {lab=vb1}
N -220 470 -160 470 {lab=vb2}
N -160 420 -160 470 {lab=vb2}
N -220 450 -220 470 {lab=vb2}
N -180 420 -160 420 {lab=vb2}
N -220 370 -220 390 {lab=vb1}
N -220 470 -220 520 {lab=vb2}
N -220 580 -220 600 {lab=0}
N -10 30 -10 70 {lab=0}
N -20 30 -20 60 {lab=vb3}
N -20 -60 -20 -30 {lab=vb1}
N -10 -70 -10 -30 {lab=PSUP}
N -70 -10 -40 -10 {lab=INP}
N -70 -20 -70 -10 {lab=INP}
N -70 10 -40 10 {lab=INM}
N -70 10 -70 20 {lab=INM}
N 20 0 70 -0 {lab=VO}
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

.param vcm=2.5
.param vdd=3.3

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0
"}
C {lab_wire.sym} -90 20 0 0 {name=p6 sig_type=std_logic lab=INM
}
C {lab_wire.sym} -90 -20 0 0 {name=p7 sig_type=std_logic lab=INP
}
C {vsource.sym} -240 -30 0 0 {name=VDM1 value="DC 0 AC 1" savecurrent=false}
C {lab_wire.sym} 100 0 0 1 {name=p4 sig_type=std_logic lab=VO
}
C {code_shown.sym} 220 190 0 0 {name=NGSPICE only_toplevel=true value="
.control
set units=degrees
save all
ac dec 100 1 1G

let vid = v(INP) - v(INM)
let aol = -v(VO) / vid
let gain_db = db(aol)
let phase_deg = cph(aol)

meas ac UGF when gain_db=0
meas ac phase_at_ugf find phase_deg at=UGF
let PM = 180 + phase_at_ugf
print PM

write tb_aux_amp_aol.raw frequency v(INP) v(INM) v(VO) aol gain_db phase_deg

.endc
"}
C {lab_wire.sym} -240 130 0 0 {name=p5 sig_type=std_logic lab=0
}
C {lab_pin.sym} 110 100 0 0 {name=p11 sig_type=std_logic lab=0}
C {capa.sym} 110 50 0 0 {name=C1
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"
}
C {lab_pin.sym} -350 400 2 0 {name=p29 sig_type=std_logic lab=vb3}
C {symbols/nfet_03v3.sym} -390 450 0 1 {name=M11
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
C {symbols/nfet_03v3.sym} -390 350 0 1 {name=M18
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
C {lab_pin.sym} -350 300 2 0 {name=p33 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} -410 350 0 0 {name=p32 sig_type=std_logic lab=0}
C {lab_wire.sym} -410 200 0 0 {name=p10 sig_type=std_logic lab=PSUP


}
C {isource.sym} -410 250 0 0 {name=I0 value=0.5u}
C {lab_wire.sym} -410 530 0 0 {name=p12 sig_type=std_logic lab=0
}
C {symbols/pfet_03v3.sym} -200 320 0 1 {name=M7
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
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -160 320 0 1 {name=p13 sig_type=std_logic lab=vb1}
C {lab_pin.sym} -160 420 2 0 {name=p14 sig_type=std_logic lab=vb2}
C {symbols/pfet_03v3.sym} -200 420 0 1 {name=M4
L=4u
W=4u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -220 420 2 1 {name=p46 sig_type=std_logic lab=PSUP}
C {lab_wire.sym} -220 240 0 0 {name=p15 sig_type=std_logic lab=PSUP


}
C {isource.sym} -220 550 0 0 {name=I1 value=1u}
C {lab_wire.sym} -220 600 0 0 {name=p16 sig_type=std_logic lab=0
}
C {lab_wire.sym} -10 -70 0 0 {name=p9 sig_type=std_logic lab=PSUP
}
C {lab_wire.sym} -10 70 0 1 {name=p17 sig_type=std_logic lab=0
}
C {blocks/aux_amp/aux_amp.sym} -10 70 0 0 {name=x2}
C {lab_pin.sym} -20 60 2 1 {name=p18 sig_type=std_logic lab=vb3}
C {lab_pin.sym} -20 -60 0 0 {name=p19 sig_type=std_logic lab=vb1}
