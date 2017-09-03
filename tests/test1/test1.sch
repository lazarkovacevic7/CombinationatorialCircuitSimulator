*version 9.1 856282671
u 105
U? 8
DSTM? 2
? 3
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 1us
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 4122 
@status
n 0 110:00:30:03:05:52;1264817152 e 
s 2832 110:00:30:03:05:57;1264817157 e 
c 108:10:26:17:54:31;1227718471
*page 1 0 970 720 iA
@ports
port 6 GLOBAL 550 200 u
a 0 xr 3 0 20 8 hcn 100 LABEL=SONDA_8
@parts
part 10 DigClock 90 160 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=IZVOR_1
a 1 xp 9 0 0 -2 hln 100 REFDES=IZVOR_1
a 0 u 0 0 0 20 hln 100 ONTIME=0.25us
a 0 u 0 0 0 30 hln 100 OFFTIME=0.25us
part 9 7404 130 160 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=NE_2
a 0 xp 9 0 28 8 hln 100 REFDES=NE_2A
a 0 sp 11 0 40 40 hln 100 PART=7404
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 1 u 0 0 0 0 hcn 100 MNTYMXDLY=2
part 7 7404 280 110 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=NE_3
a 0 xp 9 0 28 8 hln 100 REFDES=NE_3A
a 0 sp 11 0 40 40 hln 100 PART=7404
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 1 u 0 0 0 0 hcn 100 MNTYMXDLY=2
part 8 7404 280 240 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=NE_4
a 0 xp 9 0 28 8 hln 100 REFDES=NE_4A
a 0 sp 11 0 40 40 hln 100 PART=7404
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 1 u 0 0 0 0 hcn 100 MNTYMXDLY=2
part 3 7408 370 130 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=I_5
a 0 xp 9 0 38 -4 hln 100 REFDES=I_5A
a 0 sp 11 0 40 50 hln 100 PART=7408
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 1 u 0 0 0 0 hcn 100 MNTYMXDLY=2
part 4 7408 370 260 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=I_6
a 0 xp 9 0 42 -4 hln 100 REFDES=I_6A
a 0 sp 11 0 40 50 hln 100 PART=7408
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 1 u 0 0 0 0 hcn 100 MNTYMXDLY=2
part 5 7432 460 190 h
a 0 xp 9 0 40 -4 hln 100 REFDES=ILI_7A
a 0 sp 11 0 40 50 hln 100 PART=7432
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=ILI_7
a 1 u 0 0 0 0 hcn 100 MNTYMXDLY=2
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 101 nodeMarker 550 200 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 102 nodeMarker 90 160 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
@conn
w 12
a 0 up 0:33 0 0 0 hln 100 LVL=
s 180 160 190 160 11
s 190 160 190 110 13
s 190 160 190 280 53
s 190 110 280 110 15
s 190 280 370 280 55
a 0 up 33 0 280 279 hct 100 LVL=
w 24
a 0 up 0:33 0 0 0 hln 100 LVL=
s 330 110 350 110 23
s 350 110 350 130 25
s 350 130 370 130 27
a 0 up 33 0 360 129 hct 100 LVL=
w 18
a 0 up 0:33 0 0 0 hln 100 LVL=
s 350 260 370 260 21
s 330 240 350 240 17
s 350 240 350 260 19
a 0 up 33 0 352 250 hlt 100 LVL=
w 34
a 0 up 0:33 0 0 0 hln 100 LVL=
s 440 270 440 210 33
a 0 up 33 0 442 240 hlt 100 LVL=
s 440 210 460 210 35
w 30
a 0 up 0:33 0 0 0 hln 100 LVL=
s 440 140 440 190 29
a 0 up 33 0 442 165 hlt 100 LVL=
s 440 190 460 190 31
w 63
a 0 up 0:33 0 0 0 hln 100 LVL=
s 550 200 530 200 99
a 0 up 33 0 540 199 hct 100 LVL=
w 81
a 0 up 0:33 0 0 0 hln 100 LVL=
s 120 160 120 190 46
s 90 160 120 160 37
s 120 160 130 160 48
s 370 190 370 150 51
s 120 190 250 190 59
a 0 up 33 0 185 189 hct 100 LVL=
s 250 190 370 190 92
s 250 190 250 240 57
s 250 240 280 240 60
@junction
j 180 160
+ p 9 Y
+ w 12
j 130 160
+ p 9 A
+ w 81
j 120 160
+ w 81
+ w 81
j 190 160
+ w 12
+ w 12
j 280 110
+ p 7 A
+ w 12
j 370 280
+ p 4 B
+ w 12
j 330 110
+ p 7 Y
+ w 24
j 370 130
+ p 3 A
+ w 24
j 440 140
+ p 3 Y
+ w 30
j 440 270
+ p 4 Y
+ w 34
j 370 260
+ p 4 A
+ w 18
j 330 240
+ p 8 Y
+ w 18
j 370 150
+ p 3 B
+ w 81
j 250 190
+ w 81
+ w 81
j 280 240
+ p 8 A
+ w 81
j 550 200
+ s 6
+ w 63
j 550 200
+ p 101 pin1
+ s 6
j 550 200
+ p 101 pin1
+ w 63
j 90 160
+ p 102 pin1
+ w 81
j 460 210
+ p 5 B
+ w 34
j 460 190
+ p 5 A
+ w 30
j 530 200
+ p 5 Y
+ w 63
j 90 160
+ p 10 1
+ w 81
j 90 160
+ p 102 pin1
+ p 10 1
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
t 103 t 5 40 66 100 90 0 13
Test primer 1
t 104 t 5 30 166 90 200 0 19
Izvor signala takta
