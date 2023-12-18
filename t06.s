main.main STEXT size=620 args=0x0 locals=0xa8 funcid=0x0 align=0x0
	0x0000 00000 (t06.go:9)	TEXT	main.main(SB), ABIInternal, $168-0
	0x0000 00000 (t06.go:9)	LEAQ	-40(SP), R12
	0x0005 00005 (t06.go:9)	CMPQ	R12, 16(R14)
	0x0009 00009 (t06.go:9)	PCDATA	$0, $-2
	0x0009 00009 (t06.go:9)	JLS	610
	0x000f 00015 (t06.go:9)	PCDATA	$0, $-1
	0x000f 00015 (t06.go:9)	SUBQ	$168, SP
	0x0016 00022 (t06.go:9)	MOVQ	BP, 160(SP)
	0x001e 00030 (t06.go:9)	LEAQ	160(SP), BP
	0x0026 00038 (t06.go:9)	FUNCDATA	$0, gclocals·J5F+7Qw7O7ve2QcWC7DpeQ==(SB)
	0x0026 00038 (t06.go:9)	FUNCDATA	$1, gclocals·kv7/8ZPlivJEbQhYaHbgMQ==(SB)
	0x0026 00038 (t06.go:9)	FUNCDATA	$2, main.main.stkobj(SB)
	0x0026 00038 (t06.go:10)	PCDATA	$1, $0
	0x0026 00038 (t06.go:10)	CALL	time.Now(SB)
	0x002b 00043 (t06.go:10)	MOVQ	AX, time.t+136(SP)
	0x0033 00051 (t06.go:10)	MOVQ	BX, time.t+144(SP)
	0x003b 00059 (t06.go:10)	MOVQ	CX, time.t+152(SP)
	0x0043 00067 (<unknown line number>)	NOP
	0x0043 00067 (<unknown line number>)	NOP
	0x0043 00067 (<unknown line number>)	NOP
	0x0043 00067 ($GOROOT/src/time/time.go:171)	MOVQ	time.t+136(SP), AX
	0x004b 00075 ($GOROOT/src/time/time.go:171)	BTQ	$63, AX
	0x0050 00080 ($GOROOT/src/time/time.go:171)	JCC	108
	0x0052 00082 ($GOROOT/src/time/time.go:172)	MOVQ	AX, CX
	0x0055 00085 ($GOROOT/src/time/time.go:172)	SHLQ	$1, AX
	0x0058 00088 ($GOROOT/src/time/time.go:172)	SHRQ	$31, AX
	0x005c 00092 ($GOROOT/src/time/time.go:172)	MOVQ	$59453308800, DX
	0x0066 00102 ($GOROOT/src/time/time.go:172)	LEAQ	(AX)(DX*1), BX
	0x006a 00106 ($GOROOT/src/time/time.go:178)	JMP	111
	0x006c 00108 ($GOROOT/src/time/time.go:166)	MOVQ	AX, CX
	0x006f 00111 ($GOROOT/src/time/time.go:1187)	PCDATA	$1, $-1
	0x006f 00111 (<unknown line number>)	NOP
	0x006f 00111 (t06.go:11)	MOVUPS	X15, main..autotmp_44+120(SP)
	0x0075 00117 ($GOROOT/src/time/time.go:1187)	IMUL3Q	$1000000, BX, DX
	0x007c 00124 ($GOROOT/src/time/time.go:166)	ANDL	$1073741823, CX
	0x0082 00130 ($GOROOT/src/time/time.go:1187)	MOVLQSX	CX, CX
	0x0085 00133 ($GOROOT/src/time/time.go:1187)	MOVQ	$4722366482869645214, AX
	0x008f 00143 ($GOROOT/src/time/time.go:1187)	MOVQ	DX, BX
	0x0092 00146 ($GOROOT/src/time/time.go:1187)	IMULQ	CX
	0x0095 00149 ($GOROOT/src/time/time.go:1187)	SARQ	$8, DX
	0x0099 00153 ($GOROOT/src/time/time.go:1187)	SARQ	$63, CX
	0x009d 00157 ($GOROOT/src/time/time.go:1187)	SUBQ	CX, DX
	0x00a0 00160 ($GOROOT/src/time/time.go:1187)	LEAQ	(BX)(DX*1), CX
	0x00a4 00164 ($GOROOT/src/time/time.go:1187)	MOVQ	$-62135596800000000, DX
	0x00ae 00174 ($GOROOT/src/time/time.go:1187)	LEAQ	(DX)(CX*1), AX
	0x00b2 00178 ($GOROOT/src/time/time.go:1187)	MOVQ	AX, main.~R0+48(SP)
	0x00b7 00183 (t06.go:11)	PCDATA	$1, $1
	0x00b7 00183 (t06.go:11)	CALL	runtime.convT64(SB)
	0x00bc 00188 (t06.go:11)	LEAQ	type.int64(SB), CX
	0x00c3 00195 (t06.go:11)	MOVQ	CX, main..autotmp_44+120(SP)
	0x00c8 00200 (t06.go:11)	MOVQ	AX, main..autotmp_44+128(SP)
	0x00d0 00208 (<unknown line number>)	NOP
	0x00d0 00208 ($GOROOT/src/fmt/print.go:294)	MOVQ	os.Stdout(SB), BX
	0x00d7 00215 ($GOROOT/src/fmt/print.go:294)	LEAQ	go.itab.*os.File,io.Writer(SB), AX
	0x00de 00222 ($GOROOT/src/fmt/print.go:294)	LEAQ	main..autotmp_44+120(SP), CX
	0x00e3 00227 ($GOROOT/src/fmt/print.go:294)	MOVL	$1, DI
	0x00e8 00232 ($GOROOT/src/fmt/print.go:294)	MOVQ	DI, SI
	0x00eb 00235 ($GOROOT/src/fmt/print.go:294)	PCDATA	$1, $0
	0x00eb 00235 ($GOROOT/src/fmt/print.go:294)	CALL	fmt.Fprintln(SB)
	0x00f0 00240 (t06.go:12)	XCHGL	AX, AX
	0x00f1 00241 ($GOROOT/src/math/rand/rand.go:303)	MOVQ	math/rand.globalRand(SB), AX
	0x00f8 00248 ($GOROOT/src/math/rand/rand.go:303)	MOVQ	main.~R0+48(SP), BX
	0x00fd 00253 ($GOROOT/src/math/rand/rand.go:303)	NOP
	0x0100 00256 ($GOROOT/src/math/rand/rand.go:303)	CALL	math/rand.(*Rand).Seed(SB)
	0x0105 00261 (t06.go:13)	XCHGL	AX, AX
	0x0106 00262 ($GOROOT/src/math/rand/rand.go:332)	MOVQ	math/rand.globalRand(SB), AX
	0x010d 00269 ($GOROOT/src/math/rand/rand.go:332)	MOVL	$10, BX
	0x0112 00274 ($GOROOT/src/math/rand/rand.go:332)	CALL	math/rand.(*Rand).Int31n(SB)
	0x0117 00279 ($GOROOT/src/math/rand/rand.go:332)	MOVL	AX, main.~R0+44(SP)
	0x011b 00283 ($GOROOT/src/math/rand/rand.go:332)	NOP
	0x0120 00288 (t06.go:15)	CALL	runtime.printlock(SB)
	0x0125 00293 (t06.go:15)	XORL	AX, AX
	0x0127 00295 (t06.go:15)	CALL	runtime.printpointer(SB)
	0x012c 00300 (t06.go:15)	CALL	runtime.printnl(SB)
	0x0131 00305 (t06.go:15)	CALL	runtime.printunlock(SB)
	0x0136 00310 (t06.go:17)	MOVL	main.~R0+44(SP), CX
	0x013a 00314 (t06.go:17)	NOP
	0x0140 00320 (t06.go:17)	TESTL	CX, CX
	0x0142 00322 (t06.go:17)	JEQ	470
	0x0148 00328 (t06.go:19)	CMPL	CX, $1
	0x014b 00331 (t06.go:19)	JEQ	406
	0x014d 00333 (t06.go:21)	CMPL	CX, $2
	0x0150 00336 (t06.go:21)	JNE	532
	0x0156 00342 (t06.go:22)	MOVUPS	X15, main..autotmp_52+72(SP)
	0x015c 00348 (t06.go:22)	LEAQ	type.string(SB), DX
	0x0163 00355 (t06.go:22)	MOVQ	DX, main..autotmp_52+72(SP)
	0x0168 00360 (t06.go:22)	LEAQ	main..stmp_2(SB), R8
	0x016f 00367 (t06.go:22)	MOVQ	R8, main..autotmp_52+80(SP)
	0x0174 00372 (<unknown line number>)	NOP
	0x0174 00372 ($GOROOT/src/fmt/print.go:252)	MOVQ	os.Stdout(SB), BX
	0x017b 00379 ($GOROOT/src/fmt/print.go:252)	LEAQ	go.itab.*os.File,io.Writer(SB), AX
	0x0182 00386 ($GOROOT/src/fmt/print.go:252)	LEAQ	main..autotmp_52+72(SP), CX
	0x0187 00391 ($GOROOT/src/fmt/print.go:252)	MOVL	$1, DI
	0x018c 00396 ($GOROOT/src/fmt/print.go:252)	MOVQ	DI, SI
	0x018f 00399 ($GOROOT/src/fmt/print.go:252)	CALL	fmt.Fprint(SB)
	0x0194 00404 (t06.go:22)	JMP	532
	0x0196 00406 (t06.go:20)	MOVUPS	X15, main..autotmp_50+88(SP)
	0x019c 00412 (t06.go:20)	LEAQ	type.string(SB), DX
	0x01a3 00419 (t06.go:20)	MOVQ	DX, main..autotmp_50+88(SP)
	0x01a8 00424 (t06.go:20)	LEAQ	main..stmp_1(SB), R8
	0x01af 00431 (t06.go:20)	MOVQ	R8, main..autotmp_50+96(SP)
	0x01b4 00436 (<unknown line number>)	NOP
	0x01b4 00436 ($GOROOT/src/fmt/print.go:252)	MOVQ	os.Stdout(SB), BX
	0x01bb 00443 ($GOROOT/src/fmt/print.go:252)	LEAQ	go.itab.*os.File,io.Writer(SB), AX
	0x01c2 00450 ($GOROOT/src/fmt/print.go:252)	LEAQ	main..autotmp_50+88(SP), CX
	0x01c7 00455 ($GOROOT/src/fmt/print.go:252)	MOVL	$1, DI
	0x01cc 00460 ($GOROOT/src/fmt/print.go:252)	MOVQ	DI, SI
	0x01cf 00463 ($GOROOT/src/fmt/print.go:252)	CALL	fmt.Fprint(SB)
	0x01d4 00468 (t06.go:20)	JMP	532
	0x01d6 00470 (t06.go:18)	MOVUPS	X15, main..autotmp_48+104(SP)
	0x01dc 00476 (t06.go:18)	LEAQ	type.string(SB), DX
	0x01e3 00483 (t06.go:18)	MOVQ	DX, main..autotmp_48+104(SP)
	0x01e8 00488 (t06.go:18)	LEAQ	main..stmp_0(SB), R8
	0x01ef 00495 (t06.go:18)	MOVQ	R8, main..autotmp_48+112(SP)
	0x01f4 00500 (<unknown line number>)	NOP
	0x01f4 00500 ($GOROOT/src/fmt/print.go:252)	MOVQ	os.Stdout(SB), BX
	0x01fb 00507 ($GOROOT/src/fmt/print.go:252)	LEAQ	go.itab.*os.File,io.Writer(SB), AX
	0x0202 00514 ($GOROOT/src/fmt/print.go:252)	LEAQ	main..autotmp_48+104(SP), CX
	0x0207 00519 ($GOROOT/src/fmt/print.go:252)	MOVL	$1, DI
	0x020c 00524 ($GOROOT/src/fmt/print.go:252)	MOVQ	DI, SI
	0x020f 00527 ($GOROOT/src/fmt/print.go:252)	CALL	fmt.Fprint(SB)
	0x0214 00532 (t06.go:25)	MOVUPS	X15, main..autotmp_54+56(SP)
	0x021a 00538 (t06.go:25)	LEAQ	type.string(SB), DX
	0x0221 00545 (t06.go:25)	MOVQ	DX, main..autotmp_54+56(SP)
	0x0226 00550 (t06.go:25)	LEAQ	main..stmp_3(SB), DX
	0x022d 00557 (t06.go:25)	MOVQ	DX, main..autotmp_54+64(SP)
	0x0232 00562 (<unknown line number>)	NOP
	0x0232 00562 ($GOROOT/src/fmt/print.go:294)	MOVQ	os.Stdout(SB), BX
	0x0239 00569 ($GOROOT/src/fmt/print.go:294)	LEAQ	go.itab.*os.File,io.Writer(SB), AX
	0x0240 00576 ($GOROOT/src/fmt/print.go:294)	LEAQ	main..autotmp_54+56(SP), CX
	0x0245 00581 ($GOROOT/src/fmt/print.go:294)	MOVL	$1, DI
	0x024a 00586 ($GOROOT/src/fmt/print.go:294)	MOVQ	DI, SI
	0x024d 00589 ($GOROOT/src/fmt/print.go:294)	CALL	fmt.Fprintln(SB)
	0x0252 00594 (t06.go:26)	MOVQ	160(SP), BP
	0x025a 00602 (t06.go:26)	ADDQ	$168, SP
	0x0261 00609 (t06.go:26)	RET
	0x0262 00610 (t06.go:26)	NOP
	0x0262 00610 (t06.go:9)	PCDATA	$1, $-1
	0x0262 00610 (t06.go:9)	PCDATA	$0, $-2
	0x0262 00610 (t06.go:9)	CALL	runtime.morestack_noctxt(SB)
	0x0267 00615 (t06.go:9)	PCDATA	$0, $-1
	0x0267 00615 (t06.go:9)	JMP	0
	0x0000 4c 8d 64 24 d8 4d 3b 66 10 0f 86 53 02 00 00 48  L.d$.M;f...S...H
	0x0010 81 ec a8 00 00 00 48 89 ac 24 a0 00 00 00 48 8d  ......H..$....H.
	0x0020 ac 24 a0 00 00 00 e8 00 00 00 00 48 89 84 24 88  .$.........H..$.
	0x0030 00 00 00 48 89 9c 24 90 00 00 00 48 89 8c 24 98  ...H..$....H..$.
	0x0040 00 00 00 48 8b 84 24 88 00 00 00 48 0f ba e0 3f  ...H..$....H...?
	0x0050 73 1a 48 89 c1 48 d1 e0 48 c1 e8 1f 48 ba 80 7f  s.H..H..H...H...
	0x0060 b1 d7 0d 00 00 00 48 8d 1c 10 eb 03 48 89 c1 44  ......H.....H..D
	0x0070 0f 11 7c 24 78 48 69 d3 40 42 0f 00 81 e1 ff ff  ..|$xHi.@B......
	0x0080 ff 3f 48 63 c9 48 b8 9e ef a7 c6 4b 37 89 41 48  .?Hc.H.....K7.AH
	0x0090 89 d3 48 f7 e9 48 c1 fa 08 48 c1 f9 3f 48 29 ca  ..H..H...H..?H).
	0x00a0 48 8d 0c 13 48 ba 00 40 d4 00 01 40 23 ff 48 8d  H...H..@...@#.H.
	0x00b0 04 0a 48 89 44 24 30 e8 00 00 00 00 48 8d 0d 00  ..H.D$0.....H...
	0x00c0 00 00 00 48 89 4c 24 78 48 89 84 24 80 00 00 00  ...H.L$xH..$....
	0x00d0 48 8b 1d 00 00 00 00 48 8d 05 00 00 00 00 48 8d  H......H......H.
	0x00e0 4c 24 78 bf 01 00 00 00 48 89 fe e8 00 00 00 00  L$x.....H.......
	0x00f0 90 48 8b 05 00 00 00 00 48 8b 5c 24 30 0f 1f 00  .H......H.\$0...
	0x0100 e8 00 00 00 00 90 48 8b 05 00 00 00 00 bb 0a 00  ......H.........
	0x0110 00 00 e8 00 00 00 00 89 44 24 2c 0f 1f 44 00 00  ........D$,..D..
	0x0120 e8 00 00 00 00 31 c0 e8 00 00 00 00 e8 00 00 00  .....1..........
	0x0130 00 e8 00 00 00 00 8b 4c 24 2c 66 0f 1f 44 00 00  .......L$,f..D..
	0x0140 85 c9 0f 84 8e 00 00 00 83 f9 01 74 49 83 f9 02  ...........tI...
	0x0150 0f 85 be 00 00 00 44 0f 11 7c 24 48 48 8d 15 00  ......D..|$HH...
	0x0160 00 00 00 48 89 54 24 48 4c 8d 05 00 00 00 00 4c  ...H.T$HL......L
	0x0170 89 44 24 50 48 8b 1d 00 00 00 00 48 8d 05 00 00  .D$PH......H....
	0x0180 00 00 48 8d 4c 24 48 bf 01 00 00 00 48 89 fe e8  ..H.L$H.....H...
	0x0190 00 00 00 00 eb 7e 44 0f 11 7c 24 58 48 8d 15 00  .....~D..|$XH...
	0x01a0 00 00 00 48 89 54 24 58 4c 8d 05 00 00 00 00 4c  ...H.T$XL......L
	0x01b0 89 44 24 60 48 8b 1d 00 00 00 00 48 8d 05 00 00  .D$`H......H....
	0x01c0 00 00 48 8d 4c 24 58 bf 01 00 00 00 48 89 fe e8  ..H.L$X.....H...
	0x01d0 00 00 00 00 eb 3e 44 0f 11 7c 24 68 48 8d 15 00  .....>D..|$hH...
	0x01e0 00 00 00 48 89 54 24 68 4c 8d 05 00 00 00 00 4c  ...H.T$hL......L
	0x01f0 89 44 24 70 48 8b 1d 00 00 00 00 48 8d 05 00 00  .D$pH......H....
	0x0200 00 00 48 8d 4c 24 68 bf 01 00 00 00 48 89 fe e8  ..H.L$h.....H...
	0x0210 00 00 00 00 44 0f 11 7c 24 38 48 8d 15 00 00 00  ....D..|$8H.....
	0x0220 00 48 89 54 24 38 48 8d 15 00 00 00 00 48 89 54  .H.T$8H......H.T
	0x0230 24 40 48 8b 1d 00 00 00 00 48 8d 05 00 00 00 00  $@H......H......
	0x0240 48 8d 4c 24 38 bf 01 00 00 00 48 89 fe e8 00 00  H.L$8.....H.....
	0x0250 00 00 48 8b ac 24 a0 00 00 00 48 81 c4 a8 00 00  ..H..$....H.....
	0x0260 00 c3 e8 00 00 00 00 e9 94 fd ff ff              ............
	rel 3+0 t=23 type.int64+0
	rel 3+0 t=23 type.*os.File+0
	rel 3+0 t=23 type.string+0
	rel 3+0 t=23 type.*os.File+0
	rel 3+0 t=23 type.string+0
	rel 3+0 t=23 type.*os.File+0
	rel 3+0 t=23 type.string+0
	rel 3+0 t=23 type.*os.File+0
	rel 3+0 t=23 type.string+0
	rel 3+0 t=23 type.*os.File+0
	rel 39+4 t=7 time.Now+0
	rel 184+4 t=7 runtime.convT64+0
	rel 191+4 t=14 type.int64+0
	rel 211+4 t=14 os.Stdout+0
	rel 218+4 t=14 go.itab.*os.File,io.Writer+0
	rel 236+4 t=7 fmt.Fprintln+0
	rel 244+4 t=14 math/rand.globalRand+0
	rel 257+4 t=7 math/rand.(*Rand).Seed+0
	rel 265+4 t=14 math/rand.globalRand+0
	rel 275+4 t=7 math/rand.(*Rand).Int31n+0
	rel 289+4 t=7 runtime.printlock+0
	rel 296+4 t=7 runtime.printpointer+0
	rel 301+4 t=7 runtime.printnl+0
	rel 306+4 t=7 runtime.printunlock+0
	rel 351+4 t=14 type.string+0
	rel 363+4 t=14 main..stmp_2+0
	rel 375+4 t=14 os.Stdout+0
	rel 382+4 t=14 go.itab.*os.File,io.Writer+0
	rel 400+4 t=7 fmt.Fprint+0
	rel 415+4 t=14 type.string+0
	rel 427+4 t=14 main..stmp_1+0
	rel 439+4 t=14 os.Stdout+0
	rel 446+4 t=14 go.itab.*os.File,io.Writer+0
	rel 464+4 t=7 fmt.Fprint+0
	rel 479+4 t=14 type.string+0
	rel 491+4 t=14 main..stmp_0+0
	rel 503+4 t=14 os.Stdout+0
	rel 510+4 t=14 go.itab.*os.File,io.Writer+0
	rel 528+4 t=7 fmt.Fprint+0
	rel 541+4 t=14 type.string+0
	rel 553+4 t=14 main..stmp_3+0
	rel 565+4 t=14 os.Stdout+0
	rel 572+4 t=14 go.itab.*os.File,io.Writer+0
	rel 590+4 t=7 fmt.Fprintln+0
	rel 611+4 t=7 runtime.morestack_noctxt+0
go.cuinfo.producer.<unlinkable> SDWARFCUINFO dupok size=0
	0x0000 72 65 67 61 62 69                                regabi
go.cuinfo.packagename.main SDWARFCUINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go.info.time.Time.UnixMicro$abstract SDWARFABSFCN dupok size=32
	0x0000 05 74 69 6d 65 2e 54 69 6d 65 2e 55 6e 69 78 4d  .time.Time.UnixM
	0x0010 69 63 72 6f 00 01 01 13 74 00 00 00 00 00 00 00  icro....t.......
	rel 0+0 t=22 type.int64+0
	rel 0+0 t=22 type.time.Time+0
	rel 27+4 t=31 go.info.time.Time+0
go.info.time.(*Time).unixSec$abstract SDWARFABSFCN dupok size=33
	0x0000 05 74 69 6d 65 2e 28 2a 54 69 6d 65 29 2e 75 6e  .time.(*Time).un
	0x0010 69 78 53 65 63 00 01 01 13 74 00 00 00 00 00 00  ixSec....t......
	0x0020 00                                               .
	rel 0+0 t=22 type.*time.Time+0
	rel 0+0 t=22 type.int64+0
	rel 28+4 t=31 go.info.*time.Time+0
go.info.time.(*Time).sec$abstract SDWARFABSFCN dupok size=29
	0x0000 05 74 69 6d 65 2e 28 2a 54 69 6d 65 29 2e 73 65  .time.(*Time).se
	0x0010 63 00 01 01 13 74 00 00 00 00 00 00 00           c....t.......
	rel 0+0 t=22 type.*time.Time+0
	rel 0+0 t=22 type.int64+0
	rel 24+4 t=31 go.info.*time.Time+0
go.info.time.(*Time).nsec$abstract SDWARFABSFCN dupok size=30
	0x0000 05 74 69 6d 65 2e 28 2a 54 69 6d 65 29 2e 6e 73  .time.(*Time).ns
	0x0010 65 63 00 01 01 13 74 00 00 00 00 00 00 00        ec....t.......
	rel 0+0 t=22 type.*time.Time+0
	rel 0+0 t=22 type.int32+0
	rel 25+4 t=31 go.info.*time.Time+0
go.info.fmt.Println$abstract SDWARFABSFCN dupok size=42
	0x0000 05 66 6d 74 2e 50 72 69 6e 74 6c 6e 00 01 01 13  .fmt.Println....
	0x0010 61 00 00 00 00 00 00 13 6e 00 01 00 00 00 00 13  a.......n.......
	0x0020 65 72 72 00 01 00 00 00 00 00                    err.......
	rel 0+0 t=22 type.[]interface {}+0
	rel 0+0 t=22 type.error+0
	rel 0+0 t=22 type.int+0
	rel 19+4 t=31 go.info.[]interface {}+0
	rel 27+4 t=31 go.info.int+0
	rel 37+4 t=31 go.info.error+0
go.info.math/rand.Seed$abstract SDWARFABSFCN dupok size=30
	0x0000 05 6d 61 74 68 2f 72 61 6e 64 2e 53 65 65 64 00  .math/rand.Seed.
	0x0010 01 01 13 73 65 65 64 00 00 00 00 00 00 00        ...seed.......
	rel 0+0 t=22 type.int64+0
	rel 25+4 t=31 go.info.int64+0
go.info.math/rand.Int31n$abstract SDWARFABSFCN dupok size=29
	0x0000 05 6d 61 74 68 2f 72 61 6e 64 2e 49 6e 74 33 31  .math/rand.Int31
	0x0010 6e 00 01 01 13 6e 00 00 00 00 00 00 00           n....n.......
	rel 0+0 t=22 type.int32+0
	rel 24+4 t=31 go.info.int32+0
go.info.fmt.Print$abstract SDWARFABSFCN dupok size=40
	0x0000 05 66 6d 74 2e 50 72 69 6e 74 00 01 01 13 61 00  .fmt.Print....a.
	0x0010 00 00 00 00 00 13 6e 00 01 00 00 00 00 13 65 72  ......n.......er
	0x0020 72 00 01 00 00 00 00 00                          r.......
	rel 0+0 t=22 type.[]interface {}+0
	rel 0+0 t=22 type.error+0
	rel 0+0 t=22 type.int+0
	rel 17+4 t=31 go.info.[]interface {}+0
	rel 25+4 t=31 go.info.int+0
	rel 35+4 t=31 go.info.error+0
main..inittask SNOPTRDATA size=48
	0x0000 00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
	rel 32+8 t=1 math/rand..inittask+0
	rel 40+8 t=1 time..inittask+0
go.string."zero..." SRODATA dupok size=7
	0x0000 7a 65 72 6f 2e 2e 2e                             zero...
go.string."one..." SRODATA dupok size=6
	0x0000 6f 6e 65 2e 2e 2e                                one...
go.string."two..." SRODATA dupok size=6
	0x0000 74 77 6f 2e 2e 2e                                two...
go.string."ok" SRODATA dupok size=2
	0x0000 6f 6b                                            ok
go.itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 5a 22 ee 60 00 00 00 00 00 00 00 00 00 00 00 00  Z".`............
	rel 0+8 t=1 type.io.Writer+0
	rel 8+8 t=1 type.*os.File+0
	rel 24+8 t=-32767 os.(*File).Write+0
main..stmp_0 SRODATA static size=16
	0x0000 00 00 00 00 00 00 00 00 07 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."zero..."+0
main..stmp_1 SRODATA static size=16
	0x0000 00 00 00 00 00 00 00 00 06 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."one..."+0
main..stmp_2 SRODATA static size=16
	0x0000 00 00 00 00 00 00 00 00 06 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."two..."+0
main..stmp_3 SRODATA static size=16
	0x0000 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."ok"+0
runtime.nilinterequal·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.nilinterequal+0
runtime.memequal64·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 runtime.memequal64+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*interface {}- SRODATA dupok size=15
	0x0000 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d     ..*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 3b fc f8 8f 08 08 08 36 00 00 00 00 00 00 00 00  ;......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 39 7a 09 0f 02 08 08 14 00 00 00 00 00 00 00 00  9z..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=-32763 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=17
	0x0000 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20 7b  ..*[]interface {
	0x0010 7d                                               }
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 9d 9c 0e 59 08 08 08 36 00 00 00 00 00 00 00 00  ...Y...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 76 de 99 0d 02 08 08 17 00 00 00 00 00 00 00 00  v...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=-32763 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
type..namedata.*[1]interface {}- SRODATA dupok size=18
	0x0000 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65 20  ..*[1]interface 
	0x0010 7b 7d                                            {}
type.*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a8 0e 57 36 08 08 08 36 00 00 00 00 00 00 00 00  ..W6...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.memequal64·f+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 48+8 t=1 type.[1]interface {}+0
type.[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 6e 20 6a 3d 02 08 08 11 00 00 00 00 00 00 00 00  n j=............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.nilinterequal·f+0
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 44+4 t=-32763 type.*[1]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
runtime.gcbits.04 SRODATA dupok size=1
	0x0000 04                                               .
type..importpath.fmt. SRODATA dupok size=5
	0x0000 00 03 66 6d 74                                   ..fmt
type..importpath.math/rand. SRODATA dupok size=11
	0x0000 00 09 6d 61 74 68 2f 72 61 6e 64                 ..math/rand
type..importpath.time. SRODATA dupok size=6
	0x0000 00 04 74 69 6d 65                                ..time
gclocals·J5F+7Qw7O7ve2QcWC7DpeQ== SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·kv7/8ZPlivJEbQhYaHbgMQ== SRODATA dupok size=12
	0x0000 02 00 00 00 0d 00 00 00 00 00 00 02              ............
main.main.stkobj SRODATA static size=104
	0x0000 06 00 00 00 00 00 00 00 98 ff ff ff 10 00 00 00  ................
	0x0010 10 00 00 00 00 00 00 00 a8 ff ff ff 10 00 00 00  ................
	0x0020 10 00 00 00 00 00 00 00 b8 ff ff ff 10 00 00 00  ................
	0x0030 10 00 00 00 00 00 00 00 c8 ff ff ff 10 00 00 00  ................
	0x0040 10 00 00 00 00 00 00 00 d8 ff ff ff 10 00 00 00  ................
	0x0050 10 00 00 00 00 00 00 00 e8 ff ff ff 18 00 00 00  ................
	0x0060 18 00 00 00 00 00 00 00                          ........
	rel 20+4 t=5 runtime.gcbits.02+0
	rel 36+4 t=5 runtime.gcbits.02+0
	rel 52+4 t=5 runtime.gcbits.02+0
	rel 68+4 t=5 runtime.gcbits.02+0
	rel 84+4 t=5 runtime.gcbits.02+0
	rel 100+4 t=5 runtime.gcbits.04+0
