v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -220 -40 -170 -40 {
lab=g}
N -130 -110 -130 -70 {
lab=d}
N -130 -110 -30 -110 {
lab=d}
N -220 20 -220 30 {
lab=GND}
N -130 -10 -130 10 {
lab=GND}
N -30 -50 -30 -40 {
lab=GND}
N -130 -40 -60 -40 {
lab=GND}
N -60 -40 -60 0 {
lab=GND}
N -130 0 -60 0 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -150 -40 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -220 -10 0 0 {name=Vgs value=0}
C {devices/vsource.sym} -30 -80 0 0 {name=Vds value=0}
C {devices/gnd.sym} -220 30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -130 10 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -30 -40 0 0 {name=l3 lab=GND}
C {devices/code.sym} 90 -130 0 0 {name=TT only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"
spice_ignore=false}
C {devices/code.sym} 90 20 0 0 {name=ngspice only_toplevel=true
value="
.dc Vds 0 1.8 1m Vgs 0 2 0.5
.save all
"}
C {devices/lab_pin.sym} -30 -110 0 1 {name=p1 sig_type=std_logic lab=d}
C {devices/lab_pin.sym} -220 -40 0 0 {name=p2 sig_type=std_logic lab=g}
