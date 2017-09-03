*version 9.1 350840755
u 76
U? 7
DSTM? 3
? 7
@libraries
@analysis
.TRAN 1 0 0 0
+0 0
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
pageloc 1 0 4915 
@status
c 109:11:11:02:11:22;1260493882
n 0 110:00:30:03:07:33;1264817253 e 
s 2832 110:00:30:15:41:55;1264862515 e 
*page 1 0 970 720 iA
@ports
port 8 GLOBAL 460 180 u
a 0 xr 3 0 20 8 hcn 100 LABEL=SONDA_9
port 9 GLOBAL 460 250 u
a 0 xr 3 0 20 8 hcn 100 LABEL=SONDA_10
port 11 GLOBAL 460 400 u
a 0 xr 3 0 20 8 hcn 100 LABEL=SONDA_12
port 10 GLOBAL 460 320 u
a 0 xr 3 0 20 8 hcn 100 LABEL=SONDA_11
@parts
part 2 7404 120 150 h
a 0 sp 11 0 40 40 hln 100 PART=7404
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NE_3
a 0 xp 9 0 28 8 hln 100 REFDES=NE_3A
part 3 7404 180 190 h
a 0 sp 11 0 40 40 hln 100 PART=7404
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NE_4
a 0 xp 9 0 28 8 hln 100 REFDES=NE_4A
part 5 7408 350 240 h
a 0 sp 11 0 40 50 hln 100 PART=7408
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=I_6
a 0 xp 9 0 40 0 hln 100 REFDES=I_6A
part 7 7408 350 390 h
a 0 sp 11 0 40 50 hln 100 PART=7408
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=I_8
a 0 xp 9 0 40 0 hln 100 REFDES=I_8A
part 4 7408 350 170 h
a 0 sp 11 0 40 50 hln 100 PART=7408
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=I_5
a 0 xp 9 0 40 0 hln 100 REFDES=I_5A
part 6 7408 350 310 h
a 0 sp 11 0 40 50 hln 100 PART=7408
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=I_7
a 0 xp 9 0 40 0 hln 100 REFDES=I_7A
part 60 DigClock 90 150 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=IZVOR_1
a 1 xp 9 0 0 -2 hln 100 REFDES=IZVOR_1
a 0 u 0 0 0 20 hln 100 ONTIME=10uS
a 0 u 0 0 0 30 hln 100 OFFTIME=10uS
part 61 DigClock 90 190 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=IZVOR_2
a 1 xp 9 0 0 -2 hln 100 REFDES=IZVOR_2
a 0 u 0 0 0 20 hln 100 ONTIME=20uS
a 0 u 0 0 0 30 hln 100 OFFTIME=20uS
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 65 nodeMarker 450 180 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 67 nodeMarker 450 250 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 70 nodeMarker 450 400 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=4
part 72 nodeMarker 90 150 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=5
part 69 nodeMarker 450 320 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=SONDA_11
a 0 a 0 0 4 22 hlb 100 LABEL=3
part 73 nodeMarker 90 190 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=NE_3A:A
a 0 a 0 0 4 22 hlb 100 LABEL=6
@conn
w 27
a 0 up 0:33 0 0 0 hln 100 LVL=
s 350 190 320 190 26
s 320 190 230 190 30
a 0 up 33 0 275 189 hct 100 LVL=
s 320 190 320 260 28
s 320 260 350 260 31
w 62
a 0 up 0:33 0 0 0 hln 100 LVL=
s 260 150 260 170 22
s 170 150 260 150 20
s 260 170 300 170 35
s 300 330 350 330 36
s 300 170 350 170 64
s 300 170 300 330 33
a 0 up 33 0 302 250 hlt 100 LVL=
w 13
a 0 up 0:33 0 0 0 hln 100 LVL=
s 420 180 450 180 12
a 0 up 33 0 435 179 hct 100 LVL=
s 450 180 460 180 66
w 15
a 0 up 0:33 0 0 0 hln 100 LVL=
s 420 250 450 250 14
a 0 up 33 0 435 249 hct 100 LVL=
s 450 250 460 250 68
w 19
a 0 up 0:33 0 0 0 hln 100 LVL=
s 420 400 450 400 18
a 0 up 33 0 435 399 hct 100 LVL=
s 450 400 460 400 71
w 17
a 0 up 0:33 0 0 0 hln 100 LVL=
s 420 320 450 320 16
a 0 up 33 0 435 319 hct 100 LVL=
s 450 320 460 320 74
w 40
a 0 up 0:33 0 0 0 hln 100 LVL=
s 120 150 110 150 39
s 110 150 90 150 43
s 110 410 350 410 44
s 110 240 110 410 48
s 350 240 110 240 46
a 0 up 33 0 230 239 hct 100 LVL=
s 110 150 110 240 75
w 52
a 0 up 0:33 0 0 0 hln 100 LVL=
s 350 310 160 310 51
s 180 190 160 190 49
s 160 190 90 190 55
s 160 310 160 190 53
s 160 310 160 390 56
s 160 390 350 390 58
a 0 up 33 0 255 389 hct 100 LVL=
@junction
j 420 250
+ p 5 Y
+ w 15
j 460 250
+ s 9
+ w 15
j 420 320
+ p 6 Y
+ w 17
j 460 320
+ s 10
+ w 17
j 420 400
+ p 7 Y
+ w 19
j 460 400
+ s 11
+ w 19
j 460 180
+ s 8
+ w 13
j 170 150
+ p 2 Y
+ w 62
j 230 190
+ p 3 Y
+ w 27
j 320 190
+ w 27
+ w 27
j 350 260
+ p 5 B
+ w 27
j 420 180
+ p 4 Y
+ w 13
j 350 190
+ p 4 B
+ w 27
j 120 150
+ p 2 A
+ w 40
j 110 150
+ w 40
+ w 40
j 350 410
+ p 7 B
+ w 40
j 350 240
+ p 5 A
+ w 40
j 110 240
+ w 40
+ w 40
j 350 310
+ p 6 A
+ w 52
j 180 190
+ p 3 A
+ w 52
j 160 190
+ w 52
+ w 52
j 160 310
+ w 52
+ w 52
j 350 390
+ p 7 A
+ w 52
j 90 190
+ p 61 1
+ w 52
j 350 170
+ p 4 A
+ w 62
j 350 330
+ p 6 B
+ w 62
j 300 170
+ w 62
+ w 62
j 450 180
+ p 65 pin1
+ w 13
j 450 250
+ p 67 pin1
+ w 15
j 450 400
+ p 70 pin1
+ w 19
j 90 150
+ p 72 pin1
+ w 40
j 450 320
+ p 69 pin1
+ w 17
j 90 150
+ p 60 1
+ w 40
j 90 150
+ p 72 pin1
+ p 60 1
j 90 190
+ p 73 pin1
+ p 61 1
j 90 190
+ p 73 pin1
+ w 52
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
t 38 t 5 100 75 180 90 0 17
Test primer br. 2
