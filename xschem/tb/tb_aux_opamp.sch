v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 140 -220 940 180 {flags=graph
y1=0.006544961
y2=0.046901286
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.8645626
x2=6.6544183
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
T {OFFSET} 40 -70 0 0 0.2 0.2 {}
T {EN} 40 200 0 0 0.2 0.2 {}
T {UGF/Aol} 40 490 0 0 0.2 0.2 {}
T {PSRR} 40 800 0 0 0.2 0.2 {}
N -110 60 -90 60 {lab=Vo1}
N 50 40 70 40 {lab=Vo1}
N 50 310 70 310 {lab=Vo2}
N -20 530 -20 550 {lab=PSUP}
N -20 510 -20 530 {lab=PSUP}
N -180 580 -90 580 {lab=#net1}
N -180 650 -180 690 {lab=#net2}
N -130 620 -90 620 {lab=#net2}
N -180 670 -130 670 {lab=#net2}
N -130 630 -130 670 {lab=#net2}
N -180 290 -90 290 {lab=#net3}
N -180 330 -90 330 {lab=#net3}
N -180 20 -90 20 {lab=#net4}
N -360 -110 -360 -90 {lab=PSUP_PSRR}
N -180 890 -90 890 {lab=#net5}
N -180 890 -180 960 {lab=#net5}
N -180 930 -90 930 {lab=#net5}
N -20 230 -20 260 {lab=PSUP}
N -360 70 -360 110 {lab=GND}
N -360 -10 -360 10 {lab=PSUP}
N -20 -50 -20 -10 {lab=PSUP}
N -20 820 -20 860 {lab=PSUP_PSRR}
N -180 20 -180 30 {lab=#net4}
N -180 290 -180 360 {lab=#net3}
N -130 620 -130 630 {lab=#net2}
N -180 580 -180 590 {lab=#net1}
N 50 600 70 600 {lab=Vo3}
N 50 910 70 910 {lab=Vo4}
N -360 -30 -360 -10 {lab=PSUP}
N -20 90 -20 120 {lab=GND}
N -20 360 -20 390 {lab=GND}
N -20 650 -20 680 {lab=GND}
N -20 650 -20 680 {lab=GND}
N -20 960 -20 990 {lab=GND}
N -20 960 -20 990 {lab=GND}
N -180 420 -180 450 {lab=GND}
N -180 90 -180 120 {lab=GND}
N -180 750 -180 780 {lab=GND}
N -180 750 -180 780 {lab=GND}
N -180 1020 -180 1050 {lab=GND}
N -180 1020 -180 1050 {lab=GND}
C {vsource.sym} -360 40 0 0 {name=V1 value=\{VDD\} savecurrent=false}
C {lab_wire.sym} -360 -0 0 0 {name=p1 sig_type=std_logic lab=PSUP}
C {lab_wire.sym} -20 -50 0 0 {name=p3 sig_type=std_logic lab=PSUP}
C {lab_wire.sym} -90 60 0 0 {name=p5 sig_type=std_logic lab=Vo1}
C {lab_wire.sym} 70 40 2 0 {name=p6 sig_type=std_logic lab=Vo1}
C {vsource.sym} -180 60 0 0 {name=V2 value=\{VDD/2\} savecurrent=false}
C {lab_wire.sym} 50 310 2 0 {name=p11 sig_type=std_logic lab=Vo2
}
C {vsource.sym} -180 390 0 0 {name=V3 value=\{VDD/2\} savecurrent=false}
C {lab_wire.sym} -20 510 0 0 {name=p10 sig_type=std_logic lab=PSUP}
C {vsource.sym} -180 720 0 0 {name=V4 value=\{VDD/2\} savecurrent=false}
C {vsource.sym} -180 620 0 0 {name=V5 value=AC 0 AC 1 savecurrent=false}
C {lab_wire.sym} -20 820 0 0 {name=p16 sig_type=std_logic lab=PSUP_PSRR}
C {vsource.sym} -180 990 0 0 {name=V6 value=\{VDD/2\} savecurrent=false}
C {lab_wire.sym} -360 -110 0 0 {name=p20 sig_type=std_logic lab=PSUP_PSRR}
C {vsource.sym} -360 -60 0 0 {name=V7 value=AC savecurrent=false}
C {lib/aux_amp.sym} -10 30 0 0 {name=x1}
C {lib/aux_amp.sym} -10 300 0 0 {name=x2}
C {lib/aux_amp.sym} -10 590 0 0 {name=x3}
C {lib/aux_amp.sym} -10 900 0 0 {name=x4}
C {noconn.sym} -90 90 0 0 {name=l3}
C {noconn.sym} -90 360 0 0 {name=l5}
C {noconn.sym} -90 650 0 0 {name=l7}
C {noconn.sym} -90 960 0 0 {name=l9}
C {lab_wire.sym} -20 230 0 0 {name=p8 sig_type=std_logic lab=PSUP}
C {noconn.sym} -90 80 0 0 {name=l2}
C {noconn.sym} -90 350 0 0 {name=l4}
C {noconn.sym} -90 640 0 0 {name=l10}
C {lab_wire.sym} 50 600 2 0 {name=p14 sig_type=std_logic lab=Vo3
}
C {lab_wire.sym} 50 910 2 0 {name=p18 sig_type=std_logic lab=Vo4
}
C {noconn.sym} -90 950 0 0 {name=l6}
C {devices/code_shown.sym} -840 190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {code_shown.sym} -840 370 0 0 {name=NGSPICE only_toplevel=true
value="
.param VDD=5
echo "1"
.control
echo "1"
save all
echo "1"
write /home/harry/Git/CMOS_INA_GF180MCU/xschem/results tb_aux_opamp.raw
echo "1"
.endc
"}
C {gnd.sym} -360 110 0 0 {name=l8 lab=GND}
C {gnd.sym} -20 120 0 0 {name=l11 lab=GND}
C {gnd.sym} -20 390 0 0 {name=l12 lab=GND}
C {gnd.sym} -20 680 0 0 {name=l14 lab=GND}
C {gnd.sym} -20 990 0 0 {name=l16 lab=GND}
C {gnd.sym} -180 450 0 0 {name=l17 lab=GND}
C {gnd.sym} -180 120 0 0 {name=l18 lab=GND}
C {gnd.sym} -180 780 0 0 {name=l20 lab=GND}
C {gnd.sym} -180 1050 0 0 {name=l22 lab=GND}
