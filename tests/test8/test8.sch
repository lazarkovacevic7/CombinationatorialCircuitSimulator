*version 9.1 78582020
u 113
U? 10
DSTM? 5
? 6
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
pageloc 1 0 6632 
@status
c 109:11:12:14:09:47;1260623387
n 0 110:00:30:03:11:04;1264817464 e 
s 2832 110:00:30:03:11:07;1264817467 e 
*page 1 0 970 720 iA
@ports
port 87 GLOBAL 760 180 u
a 0 xr 3 0 20 8 hcn 100 LABEL=SONDA_13
port 88 GLOBAL 760 330 u
a 0 xr 3 0 20 8 hcn 100 LABEL=SONDA_14
@parts
part 3 7400 120 140 h
a 0 sp 11 0 40 50 hln 100 PART=7400
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NI_4
a 0 xp 9 0 40 0 hln 100 REFDES=NI_4A
part 2 7400 210 80 h
a 0 sp 11 0 40 50 hln 100 PART=7400
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NI_5
a 0 xp 9 0 40 0 hln 100 REFDES=NI_5A
part 4 7400 210 250 h
a 0 sp 11 0 40 50 hln 100 PART=7400
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NI_6
a 0 xp 9 0 40 0 hln 100 REFDES=NI_6A
part 5 7400 300 150 h
a 0 sp 11 0 40 50 hln 100 PART=7400
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NI_7
a 0 xp 9 0 40 0 hln 100 REFDES=NI_7A
part 6 7400 420 170 h
a 0 sp 11 0 40 50 hln 100 PART=7400
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NI_8
a 0 xp 9 0 40 0 hln 100 REFDES=NI_8A
part 7 7400 540 100 h
a 0 sp 11 0 40 50 hln 100 PART=7400
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NI_9
a 0 xp 9 0 40 0 hln 100 REFDES=NI_9A
part 8 7400 540 240 h
a 0 sp 11 0 40 50 hln 100 PART=7400
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NI_10
a 0 xp 9 0 40 0 hln 100 REFDES=NI_10A
part 9 7400 540 320 h
a 0 sp 11 0 40 50 hln 100 PART=7400
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NI_11
a 0 xp 9 0 40 0 hln 100 REFDES=NI_11A
part 10 7400 650 170 h
a 0 sp 11 0 40 50 hln 100 PART=7400
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=DIP14
a 0 s 0:13 0 0 0 hln 100 GATE=A
a 0 x 0:13 0 0 0 hln 100 PKGREF=NI_12
a 0 xp 9 0 40 0 hln 100 REFDES=NI_12A
part 11 DigClock 80 140 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=IZVOR_1
a 1 xp 9 0 0 -2 hln 100 REFDES=IZVOR_1
a 0 u 0 0 0 20 hln 100 ONTIME=50uS
a 0 u 0 0 0 30 hln 100 OFFTIME=50uS
part 12 DigClock 80 160 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=IZVOR_2
a 1 xp 9 0 0 -2 hln 100 REFDES=IZVOR_2
a 0 u 0 0 0 20 hln 100 ONTIME=25uS
a 0 u 0 0 0 30 hln 100 OFFTIME=25uS
part 106 STIM1 80 190 h
a 0 x 0:13 0 0 0 hln 100 PKGREF=IZVOR_3
a 0 xp 9 0 1 -2 hln 100 REFDES=IZVOR_3
a 0 u 0 0 0 90 hln 100 COMMAND2=20us 1
a 0 u 0 0 0 100 hln 100 COMMAND3=40us 0
part 1 titleblk 970 720 h
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
part 107 nodeMarker 760 180 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=1
part 108 nodeMarker 760 330 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=2
part 109 nodeMarker 80 140 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=3
part 110 nodeMarker 80 160 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=4
part 111 nodeMarker 80 190 h
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 s 0 0 0 0 hln 100 PROBEVAR=
a 0 a 0 0 4 22 hlb 100 LABEL=5
@conn
w 24
a 0 up 0:33 0 0 0 hln 100 LVL=
s 210 100 200 100 23
s 200 100 200 150 25
s 200 150 190 150 27
s 200 150 200 250 29
s 200 340 540 340 31
a 0 up 33 0 370 339 hct 100 LVL=
s 200 250 200 340 35
s 210 250 200 250 33
w 54
a 0 up 0:33 0 0 0 hln 100 LVL=
s 280 90 290 90 53
s 290 90 290 150 55
a 0 up 33 0 292 120 hlt 100 LVL=
s 290 150 300 150 57
w 60
a 0 up 0:33 0 0 0 hln 100 LVL=
s 300 170 290 170 59
s 290 170 290 260 61
a 0 up 33 0 292 215 hlt 100 LVL=
s 290 260 280 260 63
w 42
a 0 up 0:33 0 0 0 hln 100 LVL=
s 370 160 390 160 41
s 390 160 390 170 43
s 390 170 410 170 45
s 410 170 420 170 72
s 410 170 410 100 70
s 410 100 540 100 73
a 0 up 33 0 475 99 hct 100 LVL=
w 76
a 0 up 0:33 0 0 0 hln 100 LVL=
s 610 110 630 110 75
s 630 110 630 170 77
a 0 up 33 0 632 140 hlt 100 LVL=
s 630 170 650 170 79
w 82
a 0 up 0:33 0 0 0 hln 100 LVL=
s 650 190 630 190 81
s 630 190 630 250 83
a 0 up 33 0 632 220 hlt 100 LVL=
s 630 250 610 250 85
w 94
a 0 up 0:33 0 0 0 hln 100 LVL=
s 490 180 510 180 93
s 510 180 510 120 95
s 510 120 540 120 97
s 510 180 510 240 99
s 510 320 540 320 101
s 510 240 510 320 105
a 0 up 33 0 512 280 hlt 100 LVL=
s 540 240 510 240 103
w 92
a 0 up 0:33 0 0 0 hln 100 LVL=
s 720 180 760 180 91
a 0 up 33 0 740 179 hct 100 LVL=
w 90
a 0 up 0:33 0 0 0 hln 100 LVL=
s 760 330 610 330 89
a 0 up 33 0 685 329 hct 100 LVL=
w 15
a 0 up 0:33 0 0 0 hln 100 LVL=
s 120 140 100 140 14
s 100 140 80 140 20
s 100 140 100 80 18
s 100 80 210 80 21
a 0 up 33 0 155 79 hct 100 LVL=
w 17
a 0 up 0:33 0 0 0 hln 100 LVL=
s 80 160 100 160 16
s 100 160 120 160 38
s 100 160 100 270 36
s 100 270 210 270 39
a 0 up 33 0 155 269 hct 100 LVL=
w 48
a 0 up 0:33 0 0 0 hln 100 LVL=
s 80 190 410 190 51
a 0 up 33 0 245 189 hct 100 LVL=
s 410 190 420 190 67
s 410 190 410 260 65
s 410 260 540 260 68
@junction
j 120 140
+ p 3 A
+ w 15
j 80 140
+ p 11 1
+ w 15
j 80 160
+ p 12 1
+ w 17
j 120 160
+ p 3 B
+ w 17
j 100 140
+ w 15
+ w 15
j 210 80
+ p 2 A
+ w 15
j 210 100
+ p 2 B
+ w 24
j 190 150
+ p 3 Y
+ w 24
j 200 150
+ w 24
+ w 24
j 540 340
+ p 9 B
+ w 24
j 210 250
+ p 4 A
+ w 24
j 200 250
+ w 24
+ w 24
j 100 160
+ w 17
+ w 17
j 210 270
+ p 4 B
+ w 17
j 370 160
+ p 5 Y
+ w 42
j 420 170
+ p 6 A
+ w 42
j 420 190
+ p 6 B
+ w 48
j 280 90
+ p 2 Y
+ w 54
j 300 150
+ p 5 A
+ w 54
j 300 170
+ p 5 B
+ w 60
j 280 260
+ p 4 Y
+ w 60
j 410 190
+ w 48
+ w 48
j 540 260
+ p 8 B
+ w 48
j 410 170
+ w 42
+ w 42
j 540 100
+ p 7 A
+ w 42
j 610 110
+ p 7 Y
+ w 76
j 650 170
+ p 10 A
+ w 76
j 650 190
+ p 10 B
+ w 82
j 610 250
+ p 8 Y
+ w 82
j 610 330
+ p 9 Y
+ w 90
j 760 330
+ s 88
+ w 90
j 720 180
+ p 10 Y
+ w 92
j 760 180
+ s 87
+ w 92
j 490 180
+ p 6 Y
+ w 94
j 540 120
+ p 7 B
+ w 94
j 510 180
+ w 94
+ w 94
j 540 320
+ p 9 A
+ w 94
j 540 240
+ p 8 A
+ w 94
j 510 240
+ w 94
+ w 94
j 80 190
+ p 106 pin1
+ w 48
j 760 180
+ p 107 pin1
+ s 87
j 760 180
+ p 107 pin1
+ w 92
j 760 330
+ p 108 pin1
+ s 88
j 760 330
+ p 108 pin1
+ w 90
j 80 140
+ p 109 pin1
+ p 11 1
j 80 140
+ p 109 pin1
+ w 15
j 80 160
+ p 110 pin1
+ p 12 1
j 80 160
+ p 110 pin1
+ w 17
j 80 190
+ p 111 pin1
+ p 106 pin1
j 80 190
+ p 111 pin1
+ w 48
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
t 112 t 5 30 35 88 51 0 13
Test primer 8
