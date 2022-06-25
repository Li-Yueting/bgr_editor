v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 370 -590 370 -580 { lab=Rin}
N 370 -610 400 -610 { lab=Rin}
N 370 -610 370 -590 { lab=Rin}
N 370 -520 370 -490 { lab=#net1}
N 310 -550 350 -550 { lab=VGND}
N 310 -550 310 -460 { lab=VGND}
N 310 -460 350 -460 { lab=VGND}
N 280 -500 310 -500 { lab=VGND}
N 520 -610 520 -580 { lab=Rout}
N 520 -610 550 -610 { lab=Rout}
N 370 -490 520 -490 { lab=#net1}
N 520 -520 520 -490 { lab=#net1}
N 500 -550 500 -460 { lab=VGND}
N 350 -460 500 -460 { lab=VGND}
C {xschem_sky130/sky130_fd_pr/res_xhigh_po.sym} 370 -550 0 0 {name=R1
W=2.85
L=7.88
model=res_xhigh_po
spiceprefix=X
mult=1}
C {xschem_sky130/sky130_fd_pr/res_xhigh_po.sym} 520 -550 0 0 {name=R2
W=2.85
L=7.88
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/iopin.sym} 390 -610 0 0 {name=p1 lab=Rin}
C {devices/iopin.sym} 540 -610 0 0 {name=p2 lab=Rout}
C {devices/iopin.sym} 220 -580 0 0 {name=p3 lab=VPWR
}
C {devices/iopin.sym} 290 -500 2 0 {name=p4 lab=VGND}
C {devices/iopin.sym} 290 -430 2 0 {name=p5 lab=VSUBS}
