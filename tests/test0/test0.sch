*version 9.1 2399808771
u 41
DSTM? 2
U? 3
? 13
@libraries
@analysis
.TRAN 1 0 0 0
+0 0ns
+1 100us
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
pageloc 1 0 2406 
@status
n 0 110:00:30:03:04:05;1264817045 e 
s 2832 110:00:30:03:04:09;1264817049 e 
c 107:10:13:21:19:37;1194985177
*page 1 0 970 720 iA
@ports
port 5 GLOBAL 380 140 u
a 0 xr 3 0 20 8 hcn 100 LABEL=SONDA_5
port 21 GLOBAL 380 90 u
a 0 xr 3 0 20 8 hcn 100 LABEL=SONDA_4
@parts
part 4 7404 290 140 h
a 0 sp 11 0 40 40 hln 100 PART=7404
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NE_3
a 0 xp 9 0 28 8 hln 100 REFDES=NE_3A
a 1 u 0 0 0 0 hcn 100 MNTYMXDLY=2
part 3 7404 190 140 h
a 0 sp 11 0 40 40 hln 100 PART=7404
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NE_2
a 0 xp 9 0 28 8 hln 100 REFDES=NE_2A
a 1 u 0 0 0 0 hcn 100 MNTYMXDLY=2
part 2 DigClock 150 140 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=IZVOR_1
a 1 xp 9 0 0 -2 hln 100 REFDES=IZVOR_1
a 0 u 0 0 0 20 hln 100 ONTIME=2uS
a 0 u 0 0 0 30 hln 100 OFFTIME=2us
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 37 nodeMarker 380 140 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=10
part 38 nodeMarker 380 90 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=11
part 39 nodeMarker 150 140 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=12
@conn
w 11
a 0 up 0:33 0 0 0 hln 100 LVL=
s 340 140 380 140 10
a 0 up 33 0 360 139 hct 100 LVL=
w 9
a 0 up 0:33 0 0 0 hln 100 LVL=
s 240 140 270 140 17
a 0 up 33 0 265 139 hct 100 LVL=
s 270 90 380 90 24
s 270 140 290 140 36
s 270 140 270 90 22
w 7
a 0 up 0:33 0 0 0 hln 100 LVL=
s 150 140 190 140 6
a 0 up 33 0 170 139 hct 100 LVL=
@junction
j 190 140
+ p 3 A
+ w 7
j 290 140
+ p 4 A
+ w 9
j 240 140
+ p 3 Y
+ w 9
j 340 140
+ p 4 Y
+ w 11
j 380 140
+ s 5
+ w 11
j 380 90
+ s 21
+ w 9
j 270 140
+ w 9
+ w 9
j 380 140
+ p 37 pin1
+ s 5
j 380 140
+ p 37 pin1
+ w 11
j 380 90
+ p 38 pin1
+ s 21
j 380 90
+ p 38 pin1
+ w 9
j 150 140
+ p 39 pin1
+ w 7
j 150 140
+ p 2 1
+ w 7
j 150 140
+ p 39 pin1
+ p 2 1
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
t 14 t 5 70 65 126 81 0 13
Test primer 0
t 40 t 5 90 146 140 180 0 19
Izvor signala takta
