v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 10 -0 {}
T {vdd needs to become a variable to sweep
} -420.0000000000007 -120.0000000000001 0 0 0.2 0.2 {}
N -40 -70 -40 -30 {lab=PSUP}
N -40 30 -40 70 {lab=0}
N -320 -50 -300 -50 {lab=PSUP}
N -300 -50 -300 -30 {lab=PSUP}
N -320 50 -300 50 {lab=0}
N -300 30 -300 50 {lab=0}
N -190 90 -190 130 {lab=0}
N -190 -10 -190 -0 {lab=INP}
N -190 -0 -190 20 {lab=INP}
N -190 20 -190 40 {lab=INP}
N -10 0 10 0 {lab=OUT}
N -190 -10 -70 -10 {lab=INP}
N -190 10 -70 10 {lab=INP}
N -240 300 -240 350 {lab=vb3}
N -300 300 -300 320 {lab=vb3}
N -260 350 -240 350 {lab=vb3}
N -300 300 -240 300 {lab=vb3}
N -240 200 -240 250 {lab=IBIAS}
N -300 200 -300 220 {lab=IBIAS}
N -260 250 -240 250 {lab=IBIAS}
N -300 200 -240 200 {lab=IBIAS}
N -300 280 -300 300 {lab=vb3}
N -300 380 -300 430 {lab=0}
N -300 350 -300 380 {lab=0}
N -300 100 -300 120 {lab=PSUP}
N -300 180 -300 200 {lab=IBIAS}
N -50 30 -50 60 {lab=vb3}
C {lab_wire.sym} -40 -70 0 0 {name=p1 sig_type=std_logic lab=PSUP
}
C {lab_wire.sym} -320 -50 0 0 {name=p2 sig_type=std_logic lab=PSUP


}
C {lab_wire.sym} -320 50 0 0 {name=p3 sig_type=std_logic lab=0
}
C {lab_wire.sym} -40 70 0 1 {name=p4 sig_type=std_logic lab=0
}
C {lab_wire.sym} -190 130 0 0 {name=p5 sig_type=std_logic lab=0
}
C {vsource.sym} -300 0 0 0 {name=VDD value=\{vdd\} savecurrent=false}
C {vsource.sym} -190 70 0 0 {name=VCM value=\{vcm\} savecurrent=false}
C {code_shown.sym} 240 200 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
op
show all
write tb_aux_amp_dc.raw
.endc
"}
C {blocks/aux_amp/aux_amp.sym} -40 70 0 0 {name=x1}
C {lab_wire.sym} -190 0 0 0 {name=p7 sig_type=std_logic lab=INP
}
C {lab_wire.sym} 10 0 0 1 {name=p6 sig_type=std_logic lab=OUT
}
C {code_shown.sym} 230 -220 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice

.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice bjt_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim

.temp 25

.param vcm=1.65
.param vdd=3.3

* Deterministic PVT: disable random global/mismatch variation.
.param sw_stat_global=0
.param sw_stat_mismatch=0

"}
C {lab_pin.sym} -240 300 2 0 {name=p29 sig_type=std_logic lab=vb3}
C {symbols/nfet_03v3.sym} -280 350 0 1 {name=M11
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
C {symbols/nfet_03v3.sym} -280 250 0 1 {name=M18
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
C {lab_pin.sym} -240 200 2 0 {name=p33 sig_type=std_logic lab=IBIAS}
C {lab_pin.sym} -300 250 0 0 {name=p32 sig_type=std_logic lab=0}
C {lab_wire.sym} -300 100 0 0 {name=p9 sig_type=std_logic lab=PSUP


}
C {isource.sym} -300 150 0 0 {name=I0 value=1u}
C {lab_wire.sym} -300 430 0 0 {name=p10 sig_type=std_logic lab=0
}
C {lab_pin.sym} -50 60 2 1 {name=p12 sig_type=std_logic lab=vb3}
