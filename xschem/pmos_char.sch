v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -60 80 -60 {
lab=#net1}
N 20 -120 120 -120 {
lab=g}
N 120 -60 180 -60 {
lab=g}
N 120 -120 120 -90 {
lab=g}
N 220 -120 220 -110 {
lab=g}
N 180 -120 220 -120 {
lab=g}
N 120 -120 180 -120 {
lab=g}
N 120 -20 220 -20 {
lab=#net2}
N 220 -50 220 -20 {
lab=#net2}
N 120 -30 120 -20 {
lab=#net2}
N 180 -100 180 -60 {
lab=g}
N 120 -100 180 -100 {
lab=g}
N 270 -120 270 -110 {
lab=g}
N 220 -120 270 -120 {
lab=g}
N 270 -50 270 -40 {
lab=GND}
C {devices/vsource.sym} 20 -90 0 0 {name=Vgs value=0}
C {sky130_fd_pr/pfet_01v8.sym} 100 -60 0 0 {name=M1
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
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 220 -80 0 0 {name=Vds value=0}
C {devices/code.sym} 310 -120 0 0 {name=TT only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt"
spice_ignore=false}
C {devices/code.sym} 310 50 0 0 {name=ngspice only_toplevel=true
value="
.dc Vds 0 1.8 1m Vgs 0 5 0.5
.save all
"}
C {devices/lab_pin.sym} 20 -120 0 0 {name=p1 sig_type=std_logic lab=g}
C {devices/vsource.sym} 270 -80 0 0 {name=Vds1 value=5}
C {devices/gnd.sym} 270 -40 0 0 {name=l2 lab=GND}
