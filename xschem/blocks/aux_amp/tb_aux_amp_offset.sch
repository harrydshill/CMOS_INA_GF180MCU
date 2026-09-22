v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 270 -690 1070 -290 {flags=graph
y1=-0.0038121209
y2=0.01910292
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.038771
x2=4.5748362
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
color=4
node="\\"Offset;Vo1 vcom -\\""}
P 4 1 10 -0 {}
T {vdd needs to become a variable to sweep
} -420.0000000000007 -120.0000000000001 0 0 0.2 0.2 {}
N -160 -20 -70 -20 {lab=VCOM}
N 0 -90 0 -50 {lab=PSUP}
N -0 50 0 90 {lab=NSUP}
N -320 -50 -300 -50 {lab=PSUP}
N -300 -50 -300 -30 {lab=PSUP}
N -320 50 -300 50 {lab=NSUP}
N -300 30 -300 50 {lab=NSUP}
N -300 50 -300 70 {lab=NSUP}
N -190 50 -190 90 {lab=NSUP}
N -190 -20 -160 -20 {lab=VCOM}
N -190 -20 -190 -0 {lab=VCOM}
C {gnd.sym} -300.0000000000007 70.0000000000002 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 0 -90 0 0 {name=p1 sig_type=std_logic lab=PSUP
}
C {lab_wire.sym} -320 -50 0 0 {name=p2 sig_type=std_logic lab=PSUP


}
C {lab_wire.sym} -320 50 0 0 {name=p3 sig_type=std_logic lab=NSUP
}
C {lab_wire.sym} 0 90 0 0 {name=p4 sig_type=std_logic lab=NSUP
}
C {lab_wire.sym} -190 90 0 0 {name=p5 sig_type=std_logic lab=NSUP
}
C {vsource.sym} -300 0 0 0 {name=VDD value=\{VDD\} savecurrent=false}
C {vsource.sym} -190 30 0 0 {name=VCM value=\{VDD/2\} savecurrent=false}
C {lab_wire.sym} 70 0 0 1 {name=p6 sig_type=std_logic lab=Vo1
}
C {lab_wire.sym} -70 20 0 0 {name=p7 sig_type=std_logic lab=Vo1
}
C {devices/code_shown.sym} 170 -140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {code_shown.sym} 160 30 0 0 {name=NGSPICE only_toplevel=true
value="
.param VDD=4
.control
save all
dc VDD 4 6 0.1
write 
.endc
"

"}
C {lab_wire.sym} -70 -20 0 0 {name=p8 sig_type=std_logic lab=VCOM}
C {noconn.sym} -70 50 0 0 {name=l1}
C {noconn.sym} -70 40 0 0 {name=l2}
C {blocks/aux_amp/aux_amp.sym} 10 -10 0 0 {name=x1}
