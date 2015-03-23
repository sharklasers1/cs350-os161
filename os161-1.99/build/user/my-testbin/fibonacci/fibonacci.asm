
../../../build/user/my-testbin/fibonacci/fibonacci:     file format elf32-tradbigmips

Disassembly of section .text:

00400000 <__start>:
  400000:	3c1c1001 	lui	gp,0x1001
  400004:	279c8010 	addiu	gp,gp,-32752
  400008:	2408fff8 	li	t0,-8
  40000c:	03a8e824 	and	sp,sp,t0
  400010:	27bdfff0 	addiu	sp,sp,-16
  400014:	3c011000 	lui	at,0x1000
  400018:	ac250024 	sw	a1,36(at)
  40001c:	0c100051 	jal	400144 <main>
  400020:	00000000 	nop
  400024:	00408021 	move	s0,v0
  400028:	0c100175 	jal	4005d4 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c1001a3 	jal	40068c <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <spawn_fib_call>:
  400050:	27bdffb0 	addiu	sp,sp,-80
  400054:	27a30028 	addiu	v1,sp,40
  400058:	3c060040 	lui	a2,0x40
  40005c:	3c020040 	lui	v0,0x40
  400060:	00803821 	move	a3,a0
  400064:	afb00048 	sw	s0,72(sp)
  400068:	00602021 	move	a0,v1
  40006c:	24c618dc 	addiu	a2,a2,6364
  400070:	24050020 	li	a1,32
  400074:	244218d0 	addiu	v0,v0,6352
  400078:	3c101000 	lui	s0,0x1000
  40007c:	afbf004c 	sw	ra,76(sp)
  400080:	afa30020 	sw	v1,32(sp)
  400084:	afa2001c 	sw	v0,28(sp)
  400088:	0c1000cc 	jal	400330 <snprintf>
  40008c:	afa00024 	sw	zero,36(sp)
  400090:	8e050000 	lw	a1,0(s0)
  400094:	8fa6001c 	lw	a2,28(sp)
  400098:	8fa70020 	lw	a3,32(sp)
  40009c:	8fa20024 	lw	v0,36(sp)
  4000a0:	3c040040 	lui	a0,0x40
  4000a4:	248418e0 	addiu	a0,a0,6368
  4000a8:	0c1000f3 	jal	4003cc <printf>
  4000ac:	afa20010 	sw	v0,16(sp)
  4000b0:	0c10019d 	jal	400674 <fork>
  4000b4:	00000000 	nop
  4000b8:	00402021 	move	a0,v0
  4000bc:	2402ffff 	li	v0,-1
  4000c0:	10820017 	beq	a0,v0,400120 <spawn_fib_call+0xd0>
  4000c4:	00000000 	nop
  4000c8:	1080000c 	beqz	a0,4000fc <spawn_fib_call+0xac>
  4000cc:	27a50018 	addiu	a1,sp,24
  4000d0:	0c1001a5 	jal	400694 <waitpid>
  4000d4:	00003021 	move	a2,zero
  4000d8:	04400016 	bltz	v0,400134 <spawn_fib_call+0xe4>
  4000dc:	3c040040 	lui	a0,0x40
  4000e0:	8fa20018 	lw	v0,24(sp)
  4000e4:	00000000 	nop
  4000e8:	00021083 	sra	v0,v0,0x2
  4000ec:	8fbf004c 	lw	ra,76(sp)
  4000f0:	8fb00048 	lw	s0,72(sp)
  4000f4:	03e00008 	jr	ra
  4000f8:	27bd0050 	addiu	sp,sp,80
  4000fc:	8e040000 	lw	a0,0(s0)
  400100:	0c1001a1 	jal	400684 <execv>
  400104:	27a5001c 	addiu	a1,sp,28
  400108:	3c040040 	lui	a0,0x40
  40010c:	24841914 	addiu	a0,a0,6420
  400110:	0c1000f3 	jal	4003cc <printf>
  400114:	00402821 	move	a1,v0
  400118:	0c1001a3 	jal	40068c <_exit>
  40011c:	2404fffc 	li	a0,-4
  400120:	3c040040 	lui	a0,0x40
  400124:	0c100118 	jal	400460 <puts>
  400128:	24841908 	addiu	a0,a0,6408
  40012c:	0c1001a3 	jal	40068c <_exit>
  400130:	2404fffd 	li	a0,-3
  400134:	0c100118 	jal	400460 <puts>
  400138:	24841924 	addiu	a0,a0,6436
  40013c:	0810003b 	j	4000ec <spawn_fib_call+0x9c>
  400140:	2402fffa 	li	v0,-6

00400144 <main>:
  400144:	27bdffd8 	addiu	sp,sp,-40
  400148:	24020002 	li	v0,2
  40014c:	afb20018 	sw	s2,24(sp)
  400150:	afb00010 	sw	s0,16(sp)
  400154:	afbf0020 	sw	ra,32(sp)
  400158:	afb3001c 	sw	s3,28(sp)
  40015c:	afb10014 	sw	s1,20(sp)
  400160:	00809021 	move	s2,a0
  400164:	1482001e 	bne	a0,v0,4001e0 <main+0x9c>
  400168:	00a08021 	move	s0,a1
  40016c:	8ca40004 	lw	a0,4(a1)
  400170:	0c100124 	jal	400490 <atoi>
  400174:	00000000 	nop
  400178:	04400030 	bltz	v0,40023c <main+0xf8>
  40017c:	00408821 	move	s1,v0
  400180:	2c420002 	sltiu	v0,v0,2
  400184:	1440000b 	bnez	v0,4001b4 <main+0x70>
  400188:	3c040040 	lui	a0,0x40
  40018c:	0c100014 	jal	400050 <spawn_fib_call>
  400190:	2624ffff 	addiu	a0,s1,-1
  400194:	18400027 	blez	v0,400234 <main+0xf0>
  400198:	00408021 	move	s0,v0
  40019c:	0c100014 	jal	400050 <spawn_fib_call>
  4001a0:	2624fffe 	addiu	a0,s1,-2
  4001a4:	1c40001e 	bgtz	v0,400220 <main+0xdc>
  4001a8:	02028021 	addu	s0,s0,v0
  4001ac:	0c1001a3 	jal	40068c <_exit>
  4001b0:	00402021 	move	a0,v0
  4001b4:	24841984 	addiu	a0,a0,6532
  4001b8:	0c1000f3 	jal	4003cc <printf>
  4001bc:	02202821 	move	a1,s1
  4001c0:	24020001 	li	v0,1
  4001c4:	8fbf0020 	lw	ra,32(sp)
  4001c8:	8fb3001c 	lw	s3,28(sp)
  4001cc:	8fb20018 	lw	s2,24(sp)
  4001d0:	8fb10014 	lw	s1,20(sp)
  4001d4:	8fb00010 	lw	s0,16(sp)
  4001d8:	03e00008 	jr	ra
  4001dc:	27bd0028 	addiu	sp,sp,40
  4001e0:	3c040040 	lui	a0,0x40
  4001e4:	8ca50000 	lw	a1,0(a1)
  4001e8:	0c1000f3 	jal	4003cc <printf>
  4001ec:	24841934 	addiu	a0,a0,6452
  4001f0:	1a400009 	blez	s2,400218 <main+0xd4>
  4001f4:	00008821 	move	s1,zero
  4001f8:	3c130040 	lui	s3,0x40
  4001fc:	8e060000 	lw	a2,0(s0)
  400200:	02202821 	move	a1,s1
  400204:	26641964 	addiu	a0,s3,6500
  400208:	0c1000f3 	jal	4003cc <printf>
  40020c:	26310001 	addiu	s1,s1,1
  400210:	1651fffa 	bne	s2,s1,4001fc <main+0xb8>
  400214:	26100004 	addiu	s0,s0,4
  400218:	08100071 	j	4001c4 <main+0x80>
  40021c:	2402ffff 	li	v0,-1
  400220:	3c040040 	lui	a0,0x40
  400224:	24841994 	addiu	a0,a0,6548
  400228:	02202821 	move	a1,s1
  40022c:	0c1000f3 	jal	4003cc <printf>
  400230:	02003021 	move	a2,s0
  400234:	0c1001a3 	jal	40068c <_exit>
  400238:	02002021 	move	a0,s0
  40023c:	3c040040 	lui	a0,0x40
  400240:	0c100118 	jal	400460 <puts>
  400244:	24841974 	addiu	a0,a0,6516
  400248:	08100071 	j	4001c4 <main+0x80>
  40024c:	2402fffe 	li	v0,-2

00400250 <__snprintf_send>:
  400250:	10c00012 	beqz	a2,40029c <__snprintf_send+0x4c>
  400254:	00004021 	move	t0,zero
  400258:	8c870008 	lw	a3,8(a0)
  40025c:	8c820004 	lw	v0,4(a0)
  400260:	00a81821 	addu	v1,a1,t0
  400264:	00e2102b 	sltu	v0,a3,v0
  400268:	1040000a 	beqz	v0,400294 <__snprintf_send+0x44>
  40026c:	25080001 	addiu	t0,t0,1
  400270:	8c820000 	lw	v0,0(a0)
  400274:	90630000 	lbu	v1,0(v1)
  400278:	00471021 	addu	v0,v0,a3
  40027c:	a0430000 	sb	v1,0(v0)
  400280:	8c870008 	lw	a3,8(a0)
  400284:	00000000 	nop
  400288:	24e20001 	addiu	v0,a3,1
  40028c:	00403821 	move	a3,v0
  400290:	ac820008 	sw	v0,8(a0)
  400294:	14c8fff1 	bne	a2,t0,40025c <__snprintf_send+0xc>
  400298:	00000000 	nop
  40029c:	03e00008 	jr	ra
  4002a0:	00000000 	nop

004002a4 <vsnprintf>:
  4002a4:	27bdffd8 	addiu	sp,sp,-40
  4002a8:	afb00020 	sw	s0,32(sp)
  4002ac:	00a01021 	move	v0,a1
  4002b0:	00808021 	move	s0,a0
  4002b4:	3c040040 	lui	a0,0x40
  4002b8:	24a3ffff 	addiu	v1,a1,-1
  4002bc:	afbf0024 	sw	ra,36(sp)
  4002c0:	24840250 	addiu	a0,a0,592
  4002c4:	27a50010 	addiu	a1,sp,16
  4002c8:	1440000c 	bnez	v0,4002fc <vsnprintf+0x58>
  4002cc:	afb00010 	sw	s0,16(sp)
  4002d0:	3c040040 	lui	a0,0x40
  4002d4:	24840250 	addiu	a0,a0,592
  4002d8:	afa00014 	sw	zero,20(sp)
  4002dc:	0c100309 	jal	400c24 <__vprintf>
  4002e0:	afa00018 	sw	zero,24(sp)
  4002e4:	00401821 	move	v1,v0
  4002e8:	8fbf0024 	lw	ra,36(sp)
  4002ec:	8fb00020 	lw	s0,32(sp)
  4002f0:	00601021 	move	v0,v1
  4002f4:	03e00008 	jr	ra
  4002f8:	27bd0028 	addiu	sp,sp,40
  4002fc:	afa30014 	sw	v1,20(sp)
  400300:	0c100309 	jal	400c24 <__vprintf>
  400304:	afa00018 	sw	zero,24(sp)
  400308:	00401821 	move	v1,v0
  40030c:	8fa20018 	lw	v0,24(sp)
  400310:	00000000 	nop
  400314:	02021021 	addu	v0,s0,v0
  400318:	a0400000 	sb	zero,0(v0)
  40031c:	8fbf0024 	lw	ra,36(sp)
  400320:	8fb00020 	lw	s0,32(sp)
  400324:	00601021 	move	v0,v1
  400328:	03e00008 	jr	ra
  40032c:	27bd0028 	addiu	sp,sp,40

00400330 <snprintf>:
  400330:	27bdffe0 	addiu	sp,sp,-32
  400334:	27a2002c 	addiu	v0,sp,44
  400338:	afa7002c 	sw	a3,44(sp)
  40033c:	00403821 	move	a3,v0
  400340:	afbf0018 	sw	ra,24(sp)
  400344:	0c1000a9 	jal	4002a4 <vsnprintf>
  400348:	afa20010 	sw	v0,16(sp)
  40034c:	8fbf0018 	lw	ra,24(sp)
  400350:	00000000 	nop
  400354:	03e00008 	jr	ra
  400358:	27bd0020 	addiu	sp,sp,32
  40035c:	00000000 	nop

00400360 <vprintf>:
  400360:	00803021 	move	a2,a0
  400364:	3c040040 	lui	a0,0x40
  400368:	00a03821 	move	a3,a1
  40036c:	24840378 	addiu	a0,a0,888
  400370:	08100309 	j	400c24 <__vprintf>
  400374:	00002821 	move	a1,zero

00400378 <__printf_send>:
  400378:	27bdffe0 	addiu	sp,sp,-32
  40037c:	afb20018 	sw	s2,24(sp)
  400380:	afb10014 	sw	s1,20(sp)
  400384:	afbf001c 	sw	ra,28(sp)
  400388:	afb00010 	sw	s0,16(sp)
  40038c:	00c09021 	move	s2,a2
  400390:	10c00008 	beqz	a2,4003b4 <__printf_send+0x3c>
  400394:	00a08821 	move	s1,a1
  400398:	00008021 	move	s0,zero
  40039c:	02301021 	addu	v0,s1,s0
  4003a0:	80440000 	lb	a0,0(v0)
  4003a4:	0c100100 	jal	400400 <putchar>
  4003a8:	26100001 	addiu	s0,s0,1
  4003ac:	1650fffc 	bne	s2,s0,4003a0 <__printf_send+0x28>
  4003b0:	02301021 	addu	v0,s1,s0
  4003b4:	8fbf001c 	lw	ra,28(sp)
  4003b8:	8fb20018 	lw	s2,24(sp)
  4003bc:	8fb10014 	lw	s1,20(sp)
  4003c0:	8fb00010 	lw	s0,16(sp)
  4003c4:	03e00008 	jr	ra
  4003c8:	27bd0020 	addiu	sp,sp,32

004003cc <printf>:
  4003cc:	27bdffe0 	addiu	sp,sp,-32
  4003d0:	27a20024 	addiu	v0,sp,36
  4003d4:	afa50024 	sw	a1,36(sp)
  4003d8:	00402821 	move	a1,v0
  4003dc:	afbf0018 	sw	ra,24(sp)
  4003e0:	afa60028 	sw	a2,40(sp)
  4003e4:	afa7002c 	sw	a3,44(sp)
  4003e8:	0c1000d8 	jal	400360 <vprintf>
  4003ec:	afa20010 	sw	v0,16(sp)
  4003f0:	8fbf0018 	lw	ra,24(sp)
  4003f4:	00000000 	nop
  4003f8:	03e00008 	jr	ra
  4003fc:	27bd0020 	addiu	sp,sp,32

00400400 <putchar>:
  400400:	27bdffe0 	addiu	sp,sp,-32
  400404:	afb00018 	sw	s0,24(sp)
  400408:	27a50010 	addiu	a1,sp,16
  40040c:	00808021 	move	s0,a0
  400410:	24060001 	li	a2,1
  400414:	24040001 	li	a0,1
  400418:	afbf001c 	sw	ra,28(sp)
  40041c:	0c1001e3 	jal	40078c <write>
  400420:	a3b00010 	sb	s0,16(sp)
  400424:	18400005 	blez	v0,40043c <putchar+0x3c>
  400428:	02001021 	move	v0,s0
  40042c:	8fbf001c 	lw	ra,28(sp)
  400430:	8fb00018 	lw	s0,24(sp)
  400434:	03e00008 	jr	ra
  400438:	27bd0020 	addiu	sp,sp,32
  40043c:	2410ffff 	li	s0,-1
  400440:	02001021 	move	v0,s0
  400444:	8fbf001c 	lw	ra,28(sp)
  400448:	8fb00018 	lw	s0,24(sp)
  40044c:	03e00008 	jr	ra
  400450:	27bd0020 	addiu	sp,sp,32
	...

00400460 <puts>:
  400460:	27bdffe8 	addiu	sp,sp,-24
  400464:	afbf0010 	sw	ra,16(sp)
  400468:	0c100454 	jal	401150 <__puts>
  40046c:	00000000 	nop
  400470:	0c100100 	jal	400400 <putchar>
  400474:	2404000a 	li	a0,10
  400478:	8fbf0010 	lw	ra,16(sp)
  40047c:	00001021 	move	v0,zero
  400480:	03e00008 	jr	ra
  400484:	27bd0018 	addiu	sp,sp,24
	...

00400490 <atoi>:
  400490:	27bdffd8 	addiu	sp,sp,-40
  400494:	afb00010 	sw	s0,16(sp)
  400498:	afbf0024 	sw	ra,36(sp)
  40049c:	afb40020 	sw	s4,32(sp)
  4004a0:	afb3001c 	sw	s3,28(sp)
  4004a4:	afb20018 	sw	s2,24(sp)
  4004a8:	afb10014 	sw	s1,20(sp)
  4004ac:	00808021 	move	s0,a0
  4004b0:	24020020 	li	v0,32
  4004b4:	24030009 	li	v1,9
  4004b8:	82050000 	lb	a1,0(s0)
  4004bc:	00000000 	nop
  4004c0:	10a20003 	beq	a1,v0,4004d0 <atoi+0x40>
  4004c4:	00000000 	nop
  4004c8:	14a30003 	bne	a1,v1,4004d8 <atoi+0x48>
  4004cc:	00000000 	nop
  4004d0:	0810012e 	j	4004b8 <atoi+0x28>
  4004d4:	26100001 	addiu	s0,s0,1
  4004d8:	2402002d 	li	v0,45
  4004dc:	10a2002c 	beq	a1,v0,400590 <atoi+0x100>
  4004e0:	2402002b 	li	v0,43
  4004e4:	10a20026 	beq	a1,v0,400580 <atoi+0xf0>
  4004e8:	00000000 	nop
  4004ec:	0000a021 	move	s4,zero
  4004f0:	10a0002b 	beqz	a1,4005a0 <atoi+0x110>
  4004f4:	3c130040 	lui	s3,0x40
  4004f8:	00008821 	move	s1,zero
  4004fc:	08100145 	j	400514 <atoi+0x84>
  400500:	26721860 	addiu	s2,s3,6240
  400504:	82050000 	lb	a1,0(s0)
  400508:	00000000 	nop
  40050c:	10a00009 	beqz	a1,400534 <atoi+0xa4>
  400510:	00838821 	addu	s1,a0,v1
  400514:	0c10017c 	jal	4005f0 <strchr>
  400518:	26641860 	addiu	a0,s3,6240
  40051c:	001120c0 	sll	a0,s1,0x3
  400520:	00111840 	sll	v1,s1,0x1
  400524:	00641821 	addu	v1,v1,a0
  400528:	26100001 	addiu	s0,s0,1
  40052c:	1440fff5 	bnez	v0,400504 <atoi+0x74>
  400530:	00522023 	subu	a0,v0,s2
  400534:	1280000a 	beqz	s4,400560 <atoi+0xd0>
  400538:	02201021 	move	v0,s1
  40053c:	00111023 	negu	v0,s1
  400540:	8fbf0024 	lw	ra,36(sp)
  400544:	8fb40020 	lw	s4,32(sp)
  400548:	8fb3001c 	lw	s3,28(sp)
  40054c:	8fb20018 	lw	s2,24(sp)
  400550:	8fb10014 	lw	s1,20(sp)
  400554:	8fb00010 	lw	s0,16(sp)
  400558:	03e00008 	jr	ra
  40055c:	27bd0028 	addiu	sp,sp,40
  400560:	8fbf0024 	lw	ra,36(sp)
  400564:	8fb40020 	lw	s4,32(sp)
  400568:	8fb3001c 	lw	s3,28(sp)
  40056c:	8fb20018 	lw	s2,24(sp)
  400570:	8fb10014 	lw	s1,20(sp)
  400574:	8fb00010 	lw	s0,16(sp)
  400578:	03e00008 	jr	ra
  40057c:	27bd0028 	addiu	sp,sp,40
  400580:	26100001 	addiu	s0,s0,1
  400584:	82050000 	lb	a1,0(s0)
  400588:	0810013c 	j	4004f0 <atoi+0x60>
  40058c:	0000a021 	move	s4,zero
  400590:	26100001 	addiu	s0,s0,1
  400594:	82050000 	lb	a1,0(s0)
  400598:	0810013c 	j	4004f0 <atoi+0x60>
  40059c:	24140001 	li	s4,1
  4005a0:	0810014d 	j	400534 <atoi+0xa4>
  4005a4:	00008821 	move	s1,zero
	...

004005b0 <__exit_hack>:
  4005b0:	27bdfff8 	addiu	sp,sp,-8
  4005b4:	24020001 	li	v0,1
  4005b8:	afa20000 	sw	v0,0(sp)
  4005bc:	8fa20000 	lw	v0,0(sp)
  4005c0:	00000000 	nop
  4005c4:	1440fffd 	bnez	v0,4005bc <__exit_hack+0xc>
  4005c8:	00000000 	nop
  4005cc:	03e00008 	jr	ra
  4005d0:	27bd0008 	addiu	sp,sp,8

004005d4 <exit>:
  4005d4:	27bdffe8 	addiu	sp,sp,-24
  4005d8:	afbf0010 	sw	ra,16(sp)
  4005dc:	0c1001a3 	jal	40068c <_exit>
  4005e0:	00000000 	nop
	...

004005f0 <strchr>:
  4005f0:	80830000 	lb	v1,0(a0)
  4005f4:	00052e00 	sll	a1,a1,0x18
  4005f8:	00801021 	move	v0,a0
  4005fc:	1060000c 	beqz	v1,400630 <strchr+0x40>
  400600:	00052e03 	sra	a1,a1,0x18
  400604:	14a30006 	bne	a1,v1,400620 <strchr+0x30>
  400608:	24420001 	addiu	v0,v0,1
  40060c:	03e00008 	jr	ra
  400610:	2442ffff 	addiu	v0,v0,-1
  400614:	10a3000c 	beq	a1,v1,400648 <strchr+0x58>
  400618:	00000000 	nop
  40061c:	24420001 	addiu	v0,v0,1
  400620:	80430000 	lb	v1,0(v0)
  400624:	00000000 	nop
  400628:	1460fffa 	bnez	v1,400614 <strchr+0x24>
  40062c:	00000000 	nop
  400630:	14a00003 	bnez	a1,400640 <strchr+0x50>
  400634:	00000000 	nop
  400638:	03e00008 	jr	ra
  40063c:	00000000 	nop
  400640:	03e00008 	jr	ra
  400644:	00001021 	move	v0,zero
  400648:	03e00008 	jr	ra
  40064c:	00000000 	nop

00400650 <__syscall>:
  400650:	0000000c 	syscall
  400654:	10e00005 	beqz	a3,40066c <__syscall+0x1c>
  400658:	00000000 	nop
  40065c:	3c011000 	lui	at,0x1000
  400660:	ac220020 	sw	v0,32(at)
  400664:	2403ffff 	li	v1,-1
  400668:	2402ffff 	li	v0,-1
  40066c:	03e00008 	jr	ra
  400670:	00000000 	nop

00400674 <fork>:
  400674:	08100194 	j	400650 <__syscall>
  400678:	24020000 	li	v0,0

0040067c <vfork>:
  40067c:	08100194 	j	400650 <__syscall>
  400680:	24020001 	li	v0,1

00400684 <execv>:
  400684:	08100194 	j	400650 <__syscall>
  400688:	24020002 	li	v0,2

0040068c <_exit>:
  40068c:	08100194 	j	400650 <__syscall>
  400690:	24020003 	li	v0,3

00400694 <waitpid>:
  400694:	08100194 	j	400650 <__syscall>
  400698:	24020004 	li	v0,4

0040069c <getpid>:
  40069c:	08100194 	j	400650 <__syscall>
  4006a0:	24020005 	li	v0,5

004006a4 <getppid>:
  4006a4:	08100194 	j	400650 <__syscall>
  4006a8:	24020006 	li	v0,6

004006ac <sbrk>:
  4006ac:	08100194 	j	400650 <__syscall>
  4006b0:	24020007 	li	v0,7

004006b4 <mmap>:
  4006b4:	08100194 	j	400650 <__syscall>
  4006b8:	24020008 	li	v0,8

004006bc <munmap>:
  4006bc:	08100194 	j	400650 <__syscall>
  4006c0:	24020009 	li	v0,9

004006c4 <mprotect>:
  4006c4:	08100194 	j	400650 <__syscall>
  4006c8:	2402000a 	li	v0,10

004006cc <umask>:
  4006cc:	08100194 	j	400650 <__syscall>
  4006d0:	24020011 	li	v0,17

004006d4 <issetugid>:
  4006d4:	08100194 	j	400650 <__syscall>
  4006d8:	24020012 	li	v0,18

004006dc <getresuid>:
  4006dc:	08100194 	j	400650 <__syscall>
  4006e0:	24020013 	li	v0,19

004006e4 <setresuid>:
  4006e4:	08100194 	j	400650 <__syscall>
  4006e8:	24020014 	li	v0,20

004006ec <getresgid>:
  4006ec:	08100194 	j	400650 <__syscall>
  4006f0:	24020015 	li	v0,21

004006f4 <setresgid>:
  4006f4:	08100194 	j	400650 <__syscall>
  4006f8:	24020016 	li	v0,22

004006fc <getgroups>:
  4006fc:	08100194 	j	400650 <__syscall>
  400700:	24020017 	li	v0,23

00400704 <setgroups>:
  400704:	08100194 	j	400650 <__syscall>
  400708:	24020018 	li	v0,24

0040070c <__getlogin>:
  40070c:	08100194 	j	400650 <__syscall>
  400710:	24020019 	li	v0,25

00400714 <__setlogin>:
  400714:	08100194 	j	400650 <__syscall>
  400718:	2402001a 	li	v0,26

0040071c <kill>:
  40071c:	08100194 	j	400650 <__syscall>
  400720:	2402001b 	li	v0,27

00400724 <sigaction>:
  400724:	08100194 	j	400650 <__syscall>
  400728:	2402001c 	li	v0,28

0040072c <sigpending>:
  40072c:	08100194 	j	400650 <__syscall>
  400730:	2402001d 	li	v0,29

00400734 <sigprocmask>:
  400734:	08100194 	j	400650 <__syscall>
  400738:	2402001e 	li	v0,30

0040073c <sigsuspend>:
  40073c:	08100194 	j	400650 <__syscall>
  400740:	2402001f 	li	v0,31

00400744 <sigreturn>:
  400744:	08100194 	j	400650 <__syscall>
  400748:	24020020 	li	v0,32

0040074c <open>:
  40074c:	08100194 	j	400650 <__syscall>
  400750:	2402002d 	li	v0,45

00400754 <pipe>:
  400754:	08100194 	j	400650 <__syscall>
  400758:	2402002e 	li	v0,46

0040075c <dup>:
  40075c:	08100194 	j	400650 <__syscall>
  400760:	2402002f 	li	v0,47

00400764 <dup2>:
  400764:	08100194 	j	400650 <__syscall>
  400768:	24020030 	li	v0,48

0040076c <close>:
  40076c:	08100194 	j	400650 <__syscall>
  400770:	24020031 	li	v0,49

00400774 <read>:
  400774:	08100194 	j	400650 <__syscall>
  400778:	24020032 	li	v0,50

0040077c <pread>:
  40077c:	08100194 	j	400650 <__syscall>
  400780:	24020033 	li	v0,51

00400784 <getdirentry>:
  400784:	08100194 	j	400650 <__syscall>
  400788:	24020036 	li	v0,54

0040078c <write>:
  40078c:	08100194 	j	400650 <__syscall>
  400790:	24020037 	li	v0,55

00400794 <pwrite>:
  400794:	08100194 	j	400650 <__syscall>
  400798:	24020038 	li	v0,56

0040079c <lseek>:
  40079c:	08100194 	j	400650 <__syscall>
  4007a0:	2402003b 	li	v0,59

004007a4 <flock>:
  4007a4:	08100194 	j	400650 <__syscall>
  4007a8:	2402003c 	li	v0,60

004007ac <ftruncate>:
  4007ac:	08100194 	j	400650 <__syscall>
  4007b0:	2402003d 	li	v0,61

004007b4 <fsync>:
  4007b4:	08100194 	j	400650 <__syscall>
  4007b8:	2402003e 	li	v0,62

004007bc <fcntl>:
  4007bc:	08100194 	j	400650 <__syscall>
  4007c0:	2402003f 	li	v0,63

004007c4 <ioctl>:
  4007c4:	08100194 	j	400650 <__syscall>
  4007c8:	24020040 	li	v0,64

004007cc <select>:
  4007cc:	08100194 	j	400650 <__syscall>
  4007d0:	24020041 	li	v0,65

004007d4 <poll>:
  4007d4:	08100194 	j	400650 <__syscall>
  4007d8:	24020042 	li	v0,66

004007dc <link>:
  4007dc:	08100194 	j	400650 <__syscall>
  4007e0:	24020043 	li	v0,67

004007e4 <remove>:
  4007e4:	08100194 	j	400650 <__syscall>
  4007e8:	24020044 	li	v0,68

004007ec <mkdir>:
  4007ec:	08100194 	j	400650 <__syscall>
  4007f0:	24020045 	li	v0,69

004007f4 <rmdir>:
  4007f4:	08100194 	j	400650 <__syscall>
  4007f8:	24020046 	li	v0,70

004007fc <mkfifo>:
  4007fc:	08100194 	j	400650 <__syscall>
  400800:	24020047 	li	v0,71

00400804 <rename>:
  400804:	08100194 	j	400650 <__syscall>
  400808:	24020048 	li	v0,72

0040080c <access>:
  40080c:	08100194 	j	400650 <__syscall>
  400810:	24020049 	li	v0,73

00400814 <chdir>:
  400814:	08100194 	j	400650 <__syscall>
  400818:	2402004a 	li	v0,74

0040081c <fchdir>:
  40081c:	08100194 	j	400650 <__syscall>
  400820:	2402004b 	li	v0,75

00400824 <__getcwd>:
  400824:	08100194 	j	400650 <__syscall>
  400828:	2402004c 	li	v0,76

0040082c <symlink>:
  40082c:	08100194 	j	400650 <__syscall>
  400830:	2402004d 	li	v0,77

00400834 <readlink>:
  400834:	08100194 	j	400650 <__syscall>
  400838:	2402004e 	li	v0,78

0040083c <mount>:
  40083c:	08100194 	j	400650 <__syscall>
  400840:	2402004f 	li	v0,79

00400844 <unmount>:
  400844:	08100194 	j	400650 <__syscall>
  400848:	24020050 	li	v0,80

0040084c <stat>:
  40084c:	08100194 	j	400650 <__syscall>
  400850:	24020051 	li	v0,81

00400854 <fstat>:
  400854:	08100194 	j	400650 <__syscall>
  400858:	24020052 	li	v0,82

0040085c <lstat>:
  40085c:	08100194 	j	400650 <__syscall>
  400860:	24020053 	li	v0,83

00400864 <utimes>:
  400864:	08100194 	j	400650 <__syscall>
  400868:	24020054 	li	v0,84

0040086c <futimes>:
  40086c:	08100194 	j	400650 <__syscall>
  400870:	24020055 	li	v0,85

00400874 <lutimes>:
  400874:	08100194 	j	400650 <__syscall>
  400878:	24020056 	li	v0,86

0040087c <chmod>:
  40087c:	08100194 	j	400650 <__syscall>
  400880:	24020057 	li	v0,87

00400884 <chown>:
  400884:	08100194 	j	400650 <__syscall>
  400888:	24020058 	li	v0,88

0040088c <fchmod>:
  40088c:	08100194 	j	400650 <__syscall>
  400890:	24020059 	li	v0,89

00400894 <fchown>:
  400894:	08100194 	j	400650 <__syscall>
  400898:	2402005a 	li	v0,90

0040089c <lchmod>:
  40089c:	08100194 	j	400650 <__syscall>
  4008a0:	2402005b 	li	v0,91

004008a4 <lchown>:
  4008a4:	08100194 	j	400650 <__syscall>
  4008a8:	2402005c 	li	v0,92

004008ac <socket>:
  4008ac:	08100194 	j	400650 <__syscall>
  4008b0:	24020062 	li	v0,98

004008b4 <bind>:
  4008b4:	08100194 	j	400650 <__syscall>
  4008b8:	24020063 	li	v0,99

004008bc <connect>:
  4008bc:	08100194 	j	400650 <__syscall>
  4008c0:	24020064 	li	v0,100

004008c4 <listen>:
  4008c4:	08100194 	j	400650 <__syscall>
  4008c8:	24020065 	li	v0,101

004008cc <accept>:
  4008cc:	08100194 	j	400650 <__syscall>
  4008d0:	24020066 	li	v0,102

004008d4 <shutdown>:
  4008d4:	08100194 	j	400650 <__syscall>
  4008d8:	24020068 	li	v0,104

004008dc <getsockname>:
  4008dc:	08100194 	j	400650 <__syscall>
  4008e0:	24020069 	li	v0,105

004008e4 <getpeername>:
  4008e4:	08100194 	j	400650 <__syscall>
  4008e8:	2402006a 	li	v0,106

004008ec <getsockopt>:
  4008ec:	08100194 	j	400650 <__syscall>
  4008f0:	2402006b 	li	v0,107

004008f4 <setsockopt>:
  4008f4:	08100194 	j	400650 <__syscall>
  4008f8:	2402006c 	li	v0,108

004008fc <__time>:
  4008fc:	08100194 	j	400650 <__syscall>
  400900:	24020071 	li	v0,113

00400904 <__settime>:
  400904:	08100194 	j	400650 <__syscall>
  400908:	24020072 	li	v0,114

0040090c <nanosleep>:
  40090c:	08100194 	j	400650 <__syscall>
  400910:	24020073 	li	v0,115

00400914 <sync>:
  400914:	08100194 	j	400650 <__syscall>
  400918:	24020076 	li	v0,118

0040091c <reboot>:
  40091c:	08100194 	j	400650 <__syscall>
  400920:	24020077 	li	v0,119
	...

00400930 <__pf_print>:
  400930:	27bdffe0 	addiu	sp,sp,-32
  400934:	afbf0018 	sw	ra,24(sp)
  400938:	afb10014 	sw	s1,20(sp)
  40093c:	afb00010 	sw	s0,16(sp)
  400940:	8c830000 	lw	v1,0(a0)
  400944:	00808021 	move	s0,a0
  400948:	8c840004 	lw	a0,4(a0)
  40094c:	0060f809 	jalr	v1
  400950:	00c08821 	move	s1,a2
  400954:	8e02000c 	lw	v0,12(s0)
  400958:	00000000 	nop
  40095c:	00511021 	addu	v0,v0,s1
  400960:	ae02000c 	sw	v0,12(s0)
  400964:	8fbf0018 	lw	ra,24(sp)
  400968:	8fb10014 	lw	s1,20(sp)
  40096c:	8fb00010 	lw	s0,16(sp)
  400970:	03e00008 	jr	ra
  400974:	27bd0020 	addiu	sp,sp,32

00400978 <__pf_endfield>:
  400978:	24020020 	li	v0,32
  40097c:	ac82002c 	sw	v0,44(a0)
  400980:	00001821 	move	v1,zero
  400984:	00001021 	move	v0,zero
  400988:	ac800038 	sw	zero,56(a0)
  40098c:	ac800010 	sw	zero,16(a0)
  400990:	ac800014 	sw	zero,20(a0)
  400994:	ac83001c 	sw	v1,28(a0)
  400998:	ac820018 	sw	v0,24(a0)
  40099c:	ac800020 	sw	zero,32(a0)
  4009a0:	ac800024 	sw	zero,36(a0)
  4009a4:	ac800028 	sw	zero,40(a0)
  4009a8:	ac800030 	sw	zero,48(a0)
  4009ac:	03e00008 	jr	ra
  4009b0:	ac800034 	sw	zero,52(a0)

004009b4 <__pf_fill>:
  4009b4:	27bdffd0 	addiu	sp,sp,-48
  4009b8:	afb30024 	sw	s3,36(sp)
  4009bc:	afb20020 	sw	s2,32(sp)
  4009c0:	afbf0028 	sw	ra,40(sp)
  4009c4:	afb1001c 	sw	s1,28(sp)
  4009c8:	afb00018 	sw	s0,24(sp)
  4009cc:	00809821 	move	s3,a0
  4009d0:	8c82002c 	lw	v0,44(a0)
  4009d4:	18a0000b 	blez	a1,400a04 <__pf_fill+0x50>
  4009d8:	00a09021 	move	s2,a1
  4009dc:	a3a20010 	sb	v0,16(sp)
  4009e0:	00008021 	move	s0,zero
  4009e4:	27b10010 	addiu	s1,sp,16
  4009e8:	26100001 	addiu	s0,s0,1
  4009ec:	02602021 	move	a0,s3
  4009f0:	02202821 	move	a1,s1
  4009f4:	0c10024c 	jal	400930 <__pf_print>
  4009f8:	24060001 	li	a2,1
  4009fc:	1650fffb 	bne	s2,s0,4009ec <__pf_fill+0x38>
  400a00:	26100001 	addiu	s0,s0,1
  400a04:	8fbf0028 	lw	ra,40(sp)
  400a08:	8fb30024 	lw	s3,36(sp)
  400a0c:	8fb20020 	lw	s2,32(sp)
  400a10:	8fb1001c 	lw	s1,28(sp)
  400a14:	8fb00018 	lw	s0,24(sp)
  400a18:	03e00008 	jr	ra
  400a1c:	27bd0030 	addiu	sp,sp,48

00400a20 <__pf_printstuff>:
  400a20:	27bdffd0 	addiu	sp,sp,-48
  400a24:	afbf0028 	sw	ra,40(sp)
  400a28:	afb50024 	sw	s5,36(sp)
  400a2c:	afb40020 	sw	s4,32(sp)
  400a30:	afb3001c 	sw	s3,28(sp)
  400a34:	afb20018 	sw	s2,24(sp)
  400a38:	00c09821 	move	s3,a2
  400a3c:	afb10014 	sw	s1,20(sp)
  400a40:	afb00010 	sw	s0,16(sp)
  400a44:	00808821 	move	s1,a0
  400a48:	00a02021 	move	a0,a1
  400a4c:	00a0a021 	move	s4,a1
  400a50:	0c100470 	jal	4011c0 <strlen>
  400a54:	00e0a821 	move	s5,a3
  400a58:	02602021 	move	a0,s3
  400a5c:	0c100470 	jal	4011c0 <strlen>
  400a60:	00409021 	move	s2,v0
  400a64:	02a02021 	move	a0,s5
  400a68:	0c100470 	jal	4011c0 <strlen>
  400a6c:	02428021 	addu	s0,s2,v0
  400a70:	8e230024 	lw	v1,36(s1)
  400a74:	02022821 	addu	a1,s0,v0
  400a78:	00a3102a 	slt	v0,a1,v1
  400a7c:	10400040 	beqz	v0,400b80 <__pf_printstuff+0x160>
  400a80:	00658023 	subu	s0,v1,a1
  400a84:	1a000056 	blez	s0,400be0 <__pf_printstuff+0x1c0>
  400a88:	02403021 	move	a2,s2
  400a8c:	8e220028 	lw	v0,40(s1)
  400a90:	00000000 	nop
  400a94:	10400028 	beqz	v0,400b38 <__pf_printstuff+0x118>
  400a98:	24020030 	li	v0,48
  400a9c:	0c100470 	jal	4011c0 <strlen>
  400aa0:	02802021 	move	a0,s4
  400aa4:	00403021 	move	a2,v0
  400aa8:	02802821 	move	a1,s4
  400aac:	0c10024c 	jal	400930 <__pf_print>
  400ab0:	02202021 	move	a0,s1
  400ab4:	0c100470 	jal	4011c0 <strlen>
  400ab8:	02602021 	move	a0,s3
  400abc:	00403021 	move	a2,v0
  400ac0:	02202021 	move	a0,s1
  400ac4:	0c10024c 	jal	400930 <__pf_print>
  400ac8:	02602821 	move	a1,s3
  400acc:	8e220028 	lw	v0,40(s1)
  400ad0:	00000000 	nop
  400ad4:	14400005 	bnez	v0,400aec <__pf_printstuff+0xcc>
  400ad8:	24020030 	li	v0,48
  400adc:	8e23002c 	lw	v1,44(s1)
  400ae0:	00000000 	nop
  400ae4:	1062004b 	beq	v1,v0,400c14 <__pf_printstuff+0x1f4>
  400ae8:	02202021 	move	a0,s1
  400aec:	0c100470 	jal	4011c0 <strlen>
  400af0:	02a02021 	move	a0,s5
  400af4:	00403021 	move	a2,v0
  400af8:	02202021 	move	a0,s1
  400afc:	0c10024c 	jal	400930 <__pf_print>
  400b00:	02a02821 	move	a1,s5
  400b04:	8e220028 	lw	v0,40(s1)
  400b08:	00000000 	nop
  400b0c:	14400012 	bnez	v0,400b58 <__pf_printstuff+0x138>
  400b10:	02202021 	move	a0,s1
  400b14:	8fbf0028 	lw	ra,40(sp)
  400b18:	8fb50024 	lw	s5,36(sp)
  400b1c:	8fb40020 	lw	s4,32(sp)
  400b20:	8fb3001c 	lw	s3,28(sp)
  400b24:	8fb20018 	lw	s2,24(sp)
  400b28:	8fb10014 	lw	s1,20(sp)
  400b2c:	8fb00010 	lw	s0,16(sp)
  400b30:	03e00008 	jr	ra
  400b34:	27bd0030 	addiu	sp,sp,48
  400b38:	8e23002c 	lw	v1,44(s1)
  400b3c:	00000000 	nop
  400b40:	1062ffd6 	beq	v1,v0,400a9c <__pf_printstuff+0x7c>
  400b44:	02202021 	move	a0,s1
  400b48:	0c10026d 	jal	4009b4 <__pf_fill>
  400b4c:	02002821 	move	a1,s0
  400b50:	081002a7 	j	400a9c <__pf_printstuff+0x7c>
  400b54:	00000000 	nop
  400b58:	02002821 	move	a1,s0
  400b5c:	8fbf0028 	lw	ra,40(sp)
  400b60:	8fb50024 	lw	s5,36(sp)
  400b64:	8fb40020 	lw	s4,32(sp)
  400b68:	8fb3001c 	lw	s3,28(sp)
  400b6c:	8fb20018 	lw	s2,24(sp)
  400b70:	8fb10014 	lw	s1,20(sp)
  400b74:	8fb00010 	lw	s0,16(sp)
  400b78:	0810026d 	j	4009b4 <__pf_fill>
  400b7c:	27bd0030 	addiu	sp,sp,48
  400b80:	02802821 	move	a1,s4
  400b84:	02403021 	move	a2,s2
  400b88:	0c10024c 	jal	400930 <__pf_print>
  400b8c:	02202021 	move	a0,s1
  400b90:	0c100470 	jal	4011c0 <strlen>
  400b94:	02602021 	move	a0,s3
  400b98:	00403021 	move	a2,v0
  400b9c:	02202021 	move	a0,s1
  400ba0:	0c10024c 	jal	400930 <__pf_print>
  400ba4:	02602821 	move	a1,s3
  400ba8:	0c100470 	jal	4011c0 <strlen>
  400bac:	02a02021 	move	a0,s5
  400bb0:	02202021 	move	a0,s1
  400bb4:	02a02821 	move	a1,s5
  400bb8:	8fbf0028 	lw	ra,40(sp)
  400bbc:	8fb50024 	lw	s5,36(sp)
  400bc0:	8fb40020 	lw	s4,32(sp)
  400bc4:	8fb3001c 	lw	s3,28(sp)
  400bc8:	8fb20018 	lw	s2,24(sp)
  400bcc:	8fb10014 	lw	s1,20(sp)
  400bd0:	8fb00010 	lw	s0,16(sp)
  400bd4:	00403021 	move	a2,v0
  400bd8:	0810024c 	j	400930 <__pf_print>
  400bdc:	27bd0030 	addiu	sp,sp,48
  400be0:	02802821 	move	a1,s4
  400be4:	0c10024c 	jal	400930 <__pf_print>
  400be8:	02202021 	move	a0,s1
  400bec:	0c100470 	jal	4011c0 <strlen>
  400bf0:	02602021 	move	a0,s3
  400bf4:	00403021 	move	a2,v0
  400bf8:	02202021 	move	a0,s1
  400bfc:	0c10024c 	jal	400930 <__pf_print>
  400c00:	02602821 	move	a1,s3
  400c04:	0c100470 	jal	4011c0 <strlen>
  400c08:	02a02021 	move	a0,s5
  400c0c:	081002ed 	j	400bb4 <__pf_printstuff+0x194>
  400c10:	02202021 	move	a0,s1
  400c14:	0c10026d 	jal	4009b4 <__pf_fill>
  400c18:	02002821 	move	a1,s0
  400c1c:	081002bb 	j	400aec <__pf_printstuff+0xcc>
  400c20:	00000000 	nop

00400c24 <__vprintf>:
  400c24:	27bdff68 	addiu	sp,sp,-152
  400c28:	afbe0090 	sw	s8,144(sp)
  400c2c:	27be0030 	addiu	s8,sp,48
  400c30:	afb10074 	sw	s1,116(sp)
  400c34:	afa40030 	sw	a0,48(sp)
  400c38:	00c08821 	move	s1,a2
  400c3c:	03c02021 	move	a0,s8
  400c40:	afb00070 	sw	s0,112(sp)
  400c44:	afbf0094 	sw	ra,148(sp)
  400c48:	afb7008c 	sw	s7,140(sp)
  400c4c:	afb60088 	sw	s6,136(sp)
  400c50:	afb50084 	sw	s5,132(sp)
  400c54:	afb40080 	sw	s4,128(sp)
  400c58:	afb3007c 	sw	s3,124(sp)
  400c5c:	afb20078 	sw	s2,120(sp)
  400c60:	afa50034 	sw	a1,52(sp)
  400c64:	afa70038 	sw	a3,56(sp)
  400c68:	0c10025e 	jal	400978 <__pf_endfield>
  400c6c:	afa0003c 	sw	zero,60(sp)
  400c70:	82300000 	lb	s0,0(s1)
  400c74:	00000000 	nop
  400c78:	12000017 	beqz	s0,400cd8 <__vprintf+0xb4>
  400c7c:	0220a021 	move	s4,s1
  400c80:	0810032a 	j	400ca8 <__vprintf+0x84>
  400c84:	00000000 	nop
  400c88:	27a50010 	addiu	a1,sp,16
  400c8c:	24060001 	li	a2,1
  400c90:	0c10024c 	jal	400930 <__pf_print>
  400c94:	a3b00010 	sb	s0,16(sp)
  400c98:	82900001 	lb	s0,1(s4)
  400c9c:	00000000 	nop
  400ca0:	1200000d 	beqz	s0,400cd8 <__vprintf+0xb4>
  400ca4:	26940001 	addiu	s4,s4,1
  400ca8:	8fa20040 	lw	v0,64(sp)
  400cac:	00000000 	nop
  400cb0:	14400016 	bnez	v0,400d0c <__vprintf+0xe8>
  400cb4:	24020025 	li	v0,37
  400cb8:	1602fff3 	bne	s0,v0,400c88 <__vprintf+0x64>
  400cbc:	03c02021 	move	a0,s8
  400cc0:	24020001 	li	v0,1
  400cc4:	afa20040 	sw	v0,64(sp)
  400cc8:	82900001 	lb	s0,1(s4)
  400ccc:	00000000 	nop
  400cd0:	1600fff5 	bnez	s0,400ca8 <__vprintf+0x84>
  400cd4:	26940001 	addiu	s4,s4,1
  400cd8:	8fa2003c 	lw	v0,60(sp)
  400cdc:	8fbf0094 	lw	ra,148(sp)
  400ce0:	8fbe0090 	lw	s8,144(sp)
  400ce4:	8fb7008c 	lw	s7,140(sp)
  400ce8:	8fb60088 	lw	s6,136(sp)
  400cec:	8fb50084 	lw	s5,132(sp)
  400cf0:	8fb40080 	lw	s4,128(sp)
  400cf4:	8fb3007c 	lw	s3,124(sp)
  400cf8:	8fb20078 	lw	s2,120(sp)
  400cfc:	8fb10074 	lw	s1,116(sp)
  400d00:	8fb00070 	lw	s0,112(sp)
  400d04:	03e00008 	jr	ra
  400d08:	27bd0098 	addiu	sp,sp,152
  400d0c:	3c040040 	lui	a0,0x40
  400d10:	248419c8 	addiu	a0,a0,6600
  400d14:	0c10017c 	jal	4005f0 <strchr>
  400d18:	02002821 	move	a1,s0
  400d1c:	10400031 	beqz	v0,400de4 <__vprintf+0x1c0>
  400d20:	24020030 	li	v0,48
  400d24:	1202001d 	beq	s0,v0,400d9c <__vprintf+0x178>
  400d28:	2a020031 	slti	v0,s0,49
  400d2c:	10400013 	beqz	v0,400d7c <__vprintf+0x158>
  400d30:	2402006c 	li	v0,108
  400d34:	24020023 	li	v0,35
  400d38:	12020027 	beq	s0,v0,400dd8 <__vprintf+0x1b4>
  400d3c:	2402002d 	li	v0,45
  400d40:	1202004a 	beq	s0,v0,400e6c <__vprintf+0x248>
  400d44:	24020001 	li	v0,1
  400d48:	2602ffcf 	addiu	v0,s0,-49
  400d4c:	2c420009 	sltiu	v0,v0,9
  400d50:	1040001a 	beqz	v0,400dbc <__vprintf+0x198>
  400d54:	3c040040 	lui	a0,0x40
  400d58:	8fa20054 	lw	v0,84(sp)
  400d5c:	00000000 	nop
  400d60:	000218c0 	sll	v1,v0,0x3
  400d64:	00021040 	sll	v0,v0,0x1
  400d68:	00431021 	addu	v0,v0,v1
  400d6c:	02021021 	addu	v0,s0,v0
  400d70:	2442ffd0 	addiu	v0,v0,-48
  400d74:	08100326 	j	400c98 <__vprintf+0x74>
  400d78:	afa20054 	sw	v0,84(sp)
  400d7c:	1602fff3 	bne	s0,v0,400d4c <__vprintf+0x128>
  400d80:	2602ffcf 	addiu	v0,s0,-49
  400d84:	8fa20044 	lw	v0,68(sp)
  400d88:	24030001 	li	v1,1
  400d8c:	10430039 	beq	v0,v1,400e74 <__vprintf+0x250>
  400d90:	24020002 	li	v0,2
  400d94:	08100326 	j	400c98 <__vprintf+0x74>
  400d98:	afa30044 	sw	v1,68(sp)
  400d9c:	8fa20054 	lw	v0,84(sp)
  400da0:	00000000 	nop
  400da4:	1840008c 	blez	v0,400fd8 <__vprintf+0x3b4>
  400da8:	000218c0 	sll	v1,v0,0x3
  400dac:	00021040 	sll	v0,v0,0x1
  400db0:	00431021 	addu	v0,v0,v1
  400db4:	08100326 	j	400c98 <__vprintf+0x74>
  400db8:	afa20054 	sw	v0,84(sp)
  400dbc:	3c060040 	lui	a2,0x40
  400dc0:	248419d8 	addiu	a0,a0,6616
  400dc4:	24c61a00 	addiu	a2,a2,6656
  400dc8:	0c100494 	jal	401250 <__bad_assert>
  400dcc:	240500dc 	li	a1,220
  400dd0:	08100356 	j	400d58 <__vprintf+0x134>
  400dd4:	00000000 	nop
  400dd8:	24020001 	li	v0,1
  400ddc:	08100326 	j	400c98 <__vprintf+0x74>
  400de0:	afa20068 	sw	v0,104(sp)
  400de4:	3c040040 	lui	a0,0x40
  400de8:	24841a14 	addiu	a0,a0,6676
  400dec:	0c10017c 	jal	4005f0 <strchr>
  400df0:	02002821 	move	a1,s0
  400df4:	10400091 	beqz	v0,40103c <__vprintf+0x418>
  400df8:	24020070 	li	v0,112
  400dfc:	1202001f 	beq	s0,v0,400e7c <__vprintf+0x258>
  400e00:	24020064 	li	v0,100
  400e04:	1202009e 	beq	s0,v0,401080 <__vprintf+0x45c>
  400e08:	24020001 	li	v0,1
  400e0c:	8fa30044 	lw	v1,68(sp)
  400e10:	00000000 	nop
  400e14:	10620003 	beq	v1,v0,400e24 <__vprintf+0x200>
  400e18:	00000000 	nop
  400e1c:	14600074 	bnez	v1,400ff0 <__vprintf+0x3cc>
  400e20:	24020002 	li	v0,2
  400e24:	8fa20038 	lw	v0,56(sp)
  400e28:	afa00048 	sw	zero,72(sp)
  400e2c:	8c430000 	lw	v1,0(v0)
  400e30:	24420004 	addiu	v0,v0,4
  400e34:	afa20038 	sw	v0,56(sp)
  400e38:	afa3004c 	sw	v1,76(sp)
  400e3c:	2602ff9c 	addiu	v0,s0,-100
  400e40:	304200ff 	andi	v0,v0,0xff
  400e44:	2c430015 	sltiu	v1,v0,21
  400e48:	10600015 	beqz	v1,400ea0 <__vprintf+0x27c>
  400e4c:	3c030040 	lui	v1,0x40
  400e50:	00021080 	sll	v0,v0,0x2
  400e54:	24631870 	addiu	v1,v1,6256
  400e58:	00431021 	addu	v0,v0,v1
  400e5c:	8c440000 	lw	a0,0(v0)
  400e60:	00000000 	nop
  400e64:	00800008 	jr	a0
  400e68:	00000000 	nop
  400e6c:	08100326 	j	400c98 <__vprintf+0x74>
  400e70:	afa20058 	sw	v0,88(sp)
  400e74:	08100326 	j	400c98 <__vprintf+0x74>
  400e78:	afa20044 	sw	v0,68(sp)
  400e7c:	8fa20038 	lw	v0,56(sp)
  400e80:	afa00048 	sw	zero,72(sp)
  400e84:	24430004 	addiu	v1,v0,4
  400e88:	afa30038 	sw	v1,56(sp)
  400e8c:	8c440000 	lw	a0,0(v0)
  400e90:	00000000 	nop
  400e94:	afa4004c 	sw	a0,76(sp)
  400e98:	24020010 	li	v0,16
  400e9c:	afa20060 	sw	v0,96(sp)
  400ea0:	8fa20068 	lw	v0,104(sp)
  400ea4:	00000000 	nop
  400ea8:	1440004d 	bnez	v0,400fe0 <__vprintf+0x3bc>
  400eac:	24020001 	li	v0,1
  400eb0:	24020070 	li	v0,112
  400eb4:	1202004a 	beq	s0,v0,400fe0 <__vprintf+0x3bc>
  400eb8:	24020001 	li	v0,1
  400ebc:	8fb60060 	lw	s6,96(sp)
  400ec0:	3c020040 	lui	v0,0x40
  400ec4:	8fb1004c 	lw	s1,76(sp)
  400ec8:	8fb00048 	lw	s0,72(sp)
  400ecc:	a3a00029 	sb	zero,41(sp)
  400ed0:	24571a1c 	addiu	s7,v0,6684
  400ed4:	27b50028 	addiu	s5,sp,40
  400ed8:	02c09821 	move	s3,s6
  400edc:	001697c3 	sra	s2,s6,0x1f
  400ee0:	02202821 	move	a1,s1
  400ee4:	02002021 	move	a0,s0
  400ee8:	02603821 	move	a3,s3
  400eec:	0c100488 	jal	401220 <__umoddi3>
  400ef0:	02403021 	move	a2,s2
  400ef4:	02e31821 	addu	v1,s7,v1
  400ef8:	90620000 	lbu	v0,0(v1)
  400efc:	02202821 	move	a1,s1
  400f00:	02002021 	move	a0,s0
  400f04:	02603821 	move	a3,s3
  400f08:	02403021 	move	a2,s2
  400f0c:	0c100480 	jal	401200 <__udivdi3>
  400f10:	a2a20000 	sb	v0,0(s5)
  400f14:	00408021 	move	s0,v0
  400f18:	02031025 	or	v0,s0,v1
  400f1c:	00608821 	move	s1,v1
  400f20:	1440ffef 	bnez	v0,400ee0 <__vprintf+0x2bc>
  400f24:	26b5ffff 	addiu	s5,s5,-1
  400f28:	8fa20064 	lw	v0,100(sp)
  400f2c:	00000000 	nop
  400f30:	10400006 	beqz	v0,400f4c <__vprintf+0x328>
  400f34:	3c020040 	lui	v0,0x40
  400f38:	24020010 	li	v0,16
  400f3c:	12c2005e 	beq	s6,v0,4010b8 <__vprintf+0x494>
  400f40:	24020008 	li	v0,8
  400f44:	12c20037 	beq	s6,v0,401024 <__vprintf+0x400>
  400f48:	3c020040 	lui	v0,0x40
  400f4c:	24461990 	addiu	a2,v0,6544
  400f50:	8fa20050 	lw	v0,80(sp)
  400f54:	00000000 	nop
  400f58:	10400023 	beqz	v0,400fe8 <__vprintf+0x3c4>
  400f5c:	3c020040 	lui	v0,0x40
  400f60:	3c020040 	lui	v0,0x40
  400f64:	244519bc 	addiu	a1,v0,6588
  400f68:	03c02021 	move	a0,s8
  400f6c:	0c100288 	jal	400a20 <__pf_printstuff>
  400f70:	26a70001 	addiu	a3,s5,1
  400f74:	0c10025e 	jal	400978 <__pf_endfield>
  400f78:	03c02021 	move	a0,s8
  400f7c:	08100326 	j	400c98 <__vprintf+0x74>
  400f80:	00000000 	nop
  400f84:	8fa20038 	lw	v0,56(sp)
  400f88:	2403fff8 	li	v1,-8
  400f8c:	24420007 	addiu	v0,v0,7
  400f90:	00431024 	and	v0,v0,v1
  400f94:	8c470004 	lw	a3,4(v0)
  400f98:	8c460000 	lw	a2,0(v0)
  400f9c:	24420008 	addiu	v0,v0,8
  400fa0:	afa20038 	sw	v0,56(sp)
  400fa4:	04c10040 	bgez	a2,4010a8 <__vprintf+0x484>
  400fa8:	2402000a 	li	v0,10
  400fac:	00071823 	negu	v1,a3
  400fb0:	0003282b 	sltu	a1,zero,v1
  400fb4:	00061023 	negu	v0,a2
  400fb8:	00451023 	subu	v0,v0,a1
  400fbc:	2404ffff 	li	a0,-1
  400fc0:	afa40050 	sw	a0,80(sp)
  400fc4:	afa3004c 	sw	v1,76(sp)
  400fc8:	afa20048 	sw	v0,72(sp)
  400fcc:	2402000a 	li	v0,10
  400fd0:	081003a8 	j	400ea0 <__vprintf+0x27c>
  400fd4:	afa20060 	sw	v0,96(sp)
  400fd8:	08100326 	j	400c98 <__vprintf+0x74>
  400fdc:	afb0005c 	sw	s0,92(sp)
  400fe0:	081003af 	j	400ebc <__vprintf+0x298>
  400fe4:	afa20064 	sw	v0,100(sp)
  400fe8:	081003da 	j	400f68 <__vprintf+0x344>
  400fec:	24451990 	addiu	a1,v0,6544
  400ff0:	1462ff93 	bne	v1,v0,400e40 <__vprintf+0x21c>
  400ff4:	2602ff9c 	addiu	v0,s0,-100
  400ff8:	8fa20038 	lw	v0,56(sp)
  400ffc:	2403fff8 	li	v1,-8
  401000:	24420007 	addiu	v0,v0,7
  401004:	00431024 	and	v0,v0,v1
  401008:	8c450004 	lw	a1,4(v0)
  40100c:	8c440000 	lw	a0,0(v0)
  401010:	24420008 	addiu	v0,v0,8
  401014:	afa20038 	sw	v0,56(sp)
  401018:	afa5004c 	sw	a1,76(sp)
  40101c:	0810038f 	j	400e3c <__vprintf+0x218>
  401020:	afa40048 	sw	a0,72(sp)
  401024:	3c020040 	lui	v0,0x40
  401028:	081003d4 	j	400f50 <__vprintf+0x32c>
  40102c:	24461980 	addiu	a2,v0,6528
  401030:	24020008 	li	v0,8
  401034:	081003a8 	j	400ea0 <__vprintf+0x27c>
  401038:	afa20060 	sw	v0,96(sp)
  40103c:	24020073 	li	v0,115
  401040:	12020028 	beq	s0,v0,4010e4 <__vprintf+0x4c0>
  401044:	24020063 	li	v0,99
  401048:	12020037 	beq	s0,v0,401128 <__vprintf+0x504>
  40104c:	00000000 	nop
  401050:	a3b00011 	sb	s0,17(sp)
  401054:	3c050040 	lui	a1,0x40
  401058:	24a51990 	addiu	a1,a1,6544
  40105c:	03c02021 	move	a0,s8
  401060:	00a03021 	move	a2,a1
  401064:	27a70011 	addiu	a3,sp,17
  401068:	0c100288 	jal	400a20 <__pf_printstuff>
  40106c:	a3a00012 	sb	zero,18(sp)
  401070:	0c10025e 	jal	400978 <__pf_endfield>
  401074:	03c02021 	move	a0,s8
  401078:	08100326 	j	400c98 <__vprintf+0x74>
  40107c:	00000000 	nop
  401080:	8fa30044 	lw	v1,68(sp)
  401084:	00000000 	nop
  401088:	1062000e 	beq	v1,v0,4010c4 <__vprintf+0x4a0>
  40108c:	00000000 	nop
  401090:	1060000c 	beqz	v1,4010c4 <__vprintf+0x4a0>
  401094:	24020002 	li	v0,2
  401098:	1062ffba 	beq	v1,v0,400f84 <__vprintf+0x360>
  40109c:	00003821 	move	a3,zero
  4010a0:	00003021 	move	a2,zero
  4010a4:	2402000a 	li	v0,10
  4010a8:	afa7004c 	sw	a3,76(sp)
  4010ac:	afa60048 	sw	a2,72(sp)
  4010b0:	081003a8 	j	400ea0 <__vprintf+0x27c>
  4010b4:	afa20060 	sw	v0,96(sp)
  4010b8:	3c020040 	lui	v0,0x40
  4010bc:	081003d4 	j	400f50 <__vprintf+0x32c>
  4010c0:	24461a30 	addiu	a2,v0,6704
  4010c4:	8fa20038 	lw	v0,56(sp)
  4010c8:	00000000 	nop
  4010cc:	8c430000 	lw	v1,0(v0)
  4010d0:	24420004 	addiu	v0,v0,4
  4010d4:	00603821 	move	a3,v1
  4010d8:	000337c3 	sra	a2,v1,0x1f
  4010dc:	081003e9 	j	400fa4 <__vprintf+0x380>
  4010e0:	afa20038 	sw	v0,56(sp)
  4010e4:	8fa30038 	lw	v1,56(sp)
  4010e8:	00000000 	nop
  4010ec:	8c670000 	lw	a3,0(v1)
  4010f0:	00000000 	nop
  4010f4:	10e00013 	beqz	a3,401144 <__vprintf+0x520>
  4010f8:	3c020040 	lui	v0,0x40
  4010fc:	3c050040 	lui	a1,0x40
  401100:	24a51990 	addiu	a1,a1,6544
  401104:	24620004 	addiu	v0,v1,4
  401108:	03c02021 	move	a0,s8
  40110c:	00a03021 	move	a2,a1
  401110:	0c100288 	jal	400a20 <__pf_printstuff>
  401114:	afa20038 	sw	v0,56(sp)
  401118:	0c10025e 	jal	400978 <__pf_endfield>
  40111c:	03c02021 	move	a0,s8
  401120:	08100326 	j	400c98 <__vprintf+0x74>
  401124:	00000000 	nop
  401128:	8fa20038 	lw	v0,56(sp)
  40112c:	00000000 	nop
  401130:	8c430000 	lw	v1,0(v0)
  401134:	24420004 	addiu	v0,v0,4
  401138:	afa20038 	sw	v0,56(sp)
  40113c:	08100415 	j	401054 <__vprintf+0x430>
  401140:	a3a30011 	sb	v1,17(sp)
  401144:	0810043f 	j	4010fc <__vprintf+0x4d8>
  401148:	244719c0 	addiu	a3,v0,6592
  40114c:	00000000 	nop

00401150 <__puts>:
  401150:	27bdffe0 	addiu	sp,sp,-32
  401154:	afb00010 	sw	s0,16(sp)
  401158:	afbf0018 	sw	ra,24(sp)
  40115c:	afb10014 	sw	s1,20(sp)
  401160:	00808021 	move	s0,a0
  401164:	80840000 	lb	a0,0(a0)
  401168:	00000000 	nop
  40116c:	1080000d 	beqz	a0,4011a4 <__puts+0x54>
  401170:	00008821 	move	s1,zero
  401174:	0c100100 	jal	400400 <putchar>
  401178:	26100001 	addiu	s0,s0,1
  40117c:	82040000 	lb	a0,0(s0)
  401180:	00000000 	nop
  401184:	1480fffb 	bnez	a0,401174 <__puts+0x24>
  401188:	26310001 	addiu	s1,s1,1
  40118c:	02201021 	move	v0,s1
  401190:	8fbf0018 	lw	ra,24(sp)
  401194:	8fb10014 	lw	s1,20(sp)
  401198:	8fb00010 	lw	s0,16(sp)
  40119c:	03e00008 	jr	ra
  4011a0:	27bd0020 	addiu	sp,sp,32
  4011a4:	02201021 	move	v0,s1
  4011a8:	8fbf0018 	lw	ra,24(sp)
  4011ac:	8fb10014 	lw	s1,20(sp)
  4011b0:	8fb00010 	lw	s0,16(sp)
  4011b4:	03e00008 	jr	ra
  4011b8:	27bd0020 	addiu	sp,sp,32
  4011bc:	00000000 	nop

004011c0 <strlen>:
  4011c0:	80820000 	lb	v0,0(a0)
  4011c4:	00000000 	nop
  4011c8:	1040000a 	beqz	v0,4011f4 <strlen+0x34>
  4011cc:	00002821 	move	a1,zero
  4011d0:	24a50001 	addiu	a1,a1,1
  4011d4:	00851021 	addu	v0,a0,a1
  4011d8:	80430000 	lb	v1,0(v0)
  4011dc:	00000000 	nop
  4011e0:	1460fffc 	bnez	v1,4011d4 <strlen+0x14>
  4011e4:	24a50001 	addiu	a1,a1,1
  4011e8:	24a5ffff 	addiu	a1,a1,-1
  4011ec:	03e00008 	jr	ra
  4011f0:	00a01021 	move	v0,a1
  4011f4:	03e00008 	jr	ra
  4011f8:	00a01021 	move	v0,a1
  4011fc:	00000000 	nop

00401200 <__udivdi3>:
  401200:	27bdffe0 	addiu	sp,sp,-32
  401204:	afbf0018 	sw	ra,24(sp)
  401208:	0c1004cb 	jal	40132c <__qdivrem>
  40120c:	afa00010 	sw	zero,16(sp)
  401210:	8fbf0018 	lw	ra,24(sp)
  401214:	00000000 	nop
  401218:	03e00008 	jr	ra
  40121c:	27bd0020 	addiu	sp,sp,32

00401220 <__umoddi3>:
  401220:	27bdffd8 	addiu	sp,sp,-40
  401224:	27a20018 	addiu	v0,sp,24
  401228:	afbf0020 	sw	ra,32(sp)
  40122c:	0c1004cb 	jal	40132c <__qdivrem>
  401230:	afa20010 	sw	v0,16(sp)
  401234:	8fa3001c 	lw	v1,28(sp)
  401238:	8fa20018 	lw	v0,24(sp)
  40123c:	8fbf0020 	lw	ra,32(sp)
  401240:	00000000 	nop
  401244:	03e00008 	jr	ra
  401248:	27bd0028 	addiu	sp,sp,40
  40124c:	00000000 	nop

00401250 <__bad_assert>:
  401250:	27bdfee0 	addiu	sp,sp,-288
  401254:	00c03821 	move	a3,a2
  401258:	afb00118 	sw	s0,280(sp)
  40125c:	3c060040 	lui	a2,0x40
  401260:	27b00018 	addiu	s0,sp,24
  401264:	24c61a34 	addiu	a2,a2,6708
  401268:	afa40010 	sw	a0,16(sp)
  40126c:	afa50014 	sw	a1,20(sp)
  401270:	02002021 	move	a0,s0
  401274:	afbf011c 	sw	ra,284(sp)
  401278:	0c1000cc 	jal	400330 <snprintf>
  40127c:	24050100 	li	a1,256
  401280:	0c100470 	jal	4011c0 <strlen>
  401284:	02002021 	move	a0,s0
  401288:	00403021 	move	a2,v0
  40128c:	02002821 	move	a1,s0
  401290:	0c1001e3 	jal	40078c <write>
  401294:	24040002 	li	a0,2
  401298:	0c1004a8 	jal	4012a0 <abort>
  40129c:	00000000 	nop

004012a0 <abort>:
  4012a0:	27bdffe8 	addiu	sp,sp,-24
  4012a4:	afbf0010 	sw	ra,16(sp)
  4012a8:	0c1001a3 	jal	40068c <_exit>
  4012ac:	240400ff 	li	a0,255

004012b0 <shl>:
  4012b0:	18a00016 	blez	a1,40130c <shl+0x5c>
  4012b4:	24020010 	li	v0,16
  4012b8:	00464823 	subu	t1,v0,a2
  4012bc:	00803821 	move	a3,a0
  4012c0:	00004021 	move	t0,zero
  4012c4:	8ce20000 	lw	v0,0(a3)
  4012c8:	8ce30004 	lw	v1,4(a3)
  4012cc:	00c21004 	sllv	v0,v0,a2
  4012d0:	3042ffff 	andi	v0,v0,0xffff
  4012d4:	01231806 	srlv	v1,v1,t1
  4012d8:	00431025 	or	v0,v0,v1
  4012dc:	25080001 	addiu	t0,t0,1
  4012e0:	ace20000 	sw	v0,0(a3)
  4012e4:	14a8fff7 	bne	a1,t0,4012c4 <shl+0x14>
  4012e8:	24e70004 	addiu	a3,a3,4
  4012ec:	00051880 	sll	v1,a1,0x2
  4012f0:	00831821 	addu	v1,a0,v1
  4012f4:	8c620000 	lw	v0,0(v1)
  4012f8:	00000000 	nop
  4012fc:	00c21004 	sllv	v0,v0,a2
  401300:	3042ffff 	andi	v0,v0,0xffff
  401304:	03e00008 	jr	ra
  401308:	ac620000 	sw	v0,0(v1)
  40130c:	00001821 	move	v1,zero
  401310:	00831821 	addu	v1,a0,v1
  401314:	8c620000 	lw	v0,0(v1)
  401318:	00000000 	nop
  40131c:	00c21004 	sllv	v0,v0,a2
  401320:	3042ffff 	andi	v0,v0,0xffff
  401324:	03e00008 	jr	ra
  401328:	ac620000 	sw	v0,0(v1)

0040132c <__qdivrem>:
  40132c:	27bdff80 	addiu	sp,sp,-128
  401330:	00c71025 	or	v0,a2,a3
  401334:	afb20060 	sw	s2,96(sp)
  401338:	afbf007c 	sw	ra,124(sp)
  40133c:	afbe0078 	sw	s8,120(sp)
  401340:	afb70074 	sw	s7,116(sp)
  401344:	afb60070 	sw	s6,112(sp)
  401348:	afb5006c 	sw	s5,108(sp)
  40134c:	afb40068 	sw	s4,104(sp)
  401350:	afb30064 	sw	s3,100(sp)
  401354:	afb1005c 	sw	s1,92(sp)
  401358:	afb00058 	sw	s0,88(sp)
  40135c:	00a04821 	move	t1,a1
  401360:	8fb20090 	lw	s2,144(sp)
  401364:	14400018 	bnez	v0,4013c8 <__qdivrem+0x9c>
  401368:	00804021 	move	t0,a0
  40136c:	3c031000 	lui	v1,0x1000
  401370:	8c640010 	lw	a0,16(v1)
  401374:	24020001 	li	v0,1
  401378:	14800002 	bnez	a0,401384 <__qdivrem+0x58>
  40137c:	0044001b 	divu	zero,v0,a0
  401380:	0007000d 	break	0x7
  401384:	00001012 	mflo	v0
  401388:	12400003 	beqz	s2,401398 <__qdivrem+0x6c>
  40138c:	00401821 	move	v1,v0
  401390:	ae450004 	sw	a1,4(s2)
  401394:	ae480000 	sw	t0,0(s2)
  401398:	8fbf007c 	lw	ra,124(sp)
  40139c:	8fbe0078 	lw	s8,120(sp)
  4013a0:	8fb70074 	lw	s7,116(sp)
  4013a4:	8fb60070 	lw	s6,112(sp)
  4013a8:	8fb5006c 	lw	s5,108(sp)
  4013ac:	8fb40068 	lw	s4,104(sp)
  4013b0:	8fb30064 	lw	s3,100(sp)
  4013b4:	8fb20060 	lw	s2,96(sp)
  4013b8:	8fb1005c 	lw	s1,92(sp)
  4013bc:	8fb00058 	lw	s0,88(sp)
  4013c0:	03e00008 	jr	ra
  4013c4:	27bd0080 	addiu	sp,sp,128
  4013c8:	0086102b 	sltu	v0,a0,a2
  4013cc:	10400008 	beqz	v0,4013f0 <__qdivrem+0xc4>
  4013d0:	00000000 	nop
  4013d4:	1240010c 	beqz	s2,401808 <__qdivrem+0x4dc>
  4013d8:	00000000 	nop
  4013dc:	00001821 	move	v1,zero
  4013e0:	00001021 	move	v0,zero
  4013e4:	ae490004 	sw	t1,4(s2)
  4013e8:	081004e6 	j	401398 <__qdivrem+0x6c>
  4013ec:	ae480000 	sw	t0,0(s2)
  4013f0:	10860046 	beq	a0,a2,40150c <__qdivrem+0x1e0>
  4013f4:	00a7102b 	sltu	v0,a1,a3
  4013f8:	00e08821 	move	s1,a3
  4013fc:	01001821 	move	v1,t0
  401400:	00c08021 	move	s0,a2
  401404:	30c7ffff 	andi	a3,a2,0xffff
  401408:	3108ffff 	andi	t0,t0,0xffff
  40140c:	312affff 	andi	t2,t1,0xffff
  401410:	3226ffff 	andi	a2,s1,0xffff
  401414:	00031c02 	srl	v1,v1,0x10
  401418:	00092c02 	srl	a1,t1,0x10
  40141c:	00101402 	srl	v0,s0,0x10
  401420:	00112402 	srl	a0,s1,0x10
  401424:	afa00010 	sw	zero,16(sp)
  401428:	afa30014 	sw	v1,20(sp)
  40142c:	afa80018 	sw	t0,24(sp)
  401430:	afa5001c 	sw	a1,28(sp)
  401434:	afaa0020 	sw	t2,32(sp)
  401438:	afa20028 	sw	v0,40(sp)
  40143c:	afa7002c 	sw	a3,44(sp)
  401440:	afa40030 	sw	a0,48(sp)
  401444:	144000f6 	bnez	v0,401820 <__qdivrem+0x4f4>
  401448:	afa60034 	sw	a2,52(sp)
  40144c:	14e00033 	bnez	a3,40151c <__qdivrem+0x1f0>
  401450:	27a20028 	addiu	v0,sp,40
  401454:	148000f7 	bnez	a0,401834 <__qdivrem+0x508>
  401458:	27a2002c 	addiu	v0,sp,44
  40145c:	14c00002 	bnez	a2,401468 <__qdivrem+0x13c>
  401460:	0066001b 	divu	zero,v1,a2
  401464:	0007000d 	break	0x7
  401468:	00001010 	mfhi	v0
  40146c:	00021400 	sll	v0,v0,0x10
  401470:	00481025 	or	v0,v0,t0
  401474:	00004812 	mflo	t1
	...
  401480:	14c00002 	bnez	a2,40148c <__qdivrem+0x160>
  401484:	0046001b 	divu	zero,v0,a2
  401488:	0007000d 	break	0x7
  40148c:	00001810 	mfhi	v1
  401490:	00031c00 	sll	v1,v1,0x10
  401494:	00651825 	or	v1,v1,a1
  401498:	00003812 	mflo	a3
	...
  4014a4:	14c00002 	bnez	a2,4014b0 <__qdivrem+0x184>
  4014a8:	0066001b 	divu	zero,v1,a2
  4014ac:	0007000d 	break	0x7
  4014b0:	00001010 	mfhi	v0
  4014b4:	00021400 	sll	v0,v0,0x10
  4014b8:	00001812 	mflo	v1
  4014bc:	12400008 	beqz	s2,4014e0 <__qdivrem+0x1b4>
  4014c0:	01422025 	or	a0,t2,v0
  4014c4:	14c00002 	bnez	a2,4014d0 <__qdivrem+0x1a4>
  4014c8:	0086001b 	divu	zero,a0,a2
  4014cc:	0007000d 	break	0x7
  4014d0:	ae400000 	sw	zero,0(s2)
  4014d4:	00001010 	mfhi	v0
  4014d8:	ae420004 	sw	v0,4(s2)
  4014dc:	00000000 	nop
  4014e0:	14c00002 	bnez	a2,4014ec <__qdivrem+0x1c0>
  4014e4:	0086001b 	divu	zero,a0,a2
  4014e8:	0007000d 	break	0x7
  4014ec:	00091400 	sll	v0,t1,0x10
  4014f0:	00031c00 	sll	v1,v1,0x10
  4014f4:	00e28025 	or	s0,a3,v0
  4014f8:	02001021 	move	v0,s0
  4014fc:	00002012 	mflo	a0
  401500:	00838825 	or	s1,a0,v1
  401504:	081004e6 	j	401398 <__qdivrem+0x6c>
  401508:	02201821 	move	v1,s1
  40150c:	1040ffbb 	beqz	v0,4013fc <__qdivrem+0xd0>
  401510:	00e08821 	move	s1,a3
  401514:	081004f5 	j	4013d4 <__qdivrem+0xa8>
  401518:	00000000 	nop
  40151c:	afa20050 	sw	v0,80(sp)
  401520:	24170003 	li	s7,3
  401524:	27be002c 	addiu	s8,sp,44
  401528:	8fa30014 	lw	v1,20(sp)
  40152c:	24020004 	li	v0,4
  401530:	146000c4 	bnez	v1,401844 <__qdivrem+0x518>
  401534:	00579823 	subu	s3,v0,s7
  401538:	08100551 	j	401544 <__qdivrem+0x218>
  40153c:	27b40014 	addiu	s4,sp,20
  401540:	0060a021 	move	s4,v1
  401544:	8e820004 	lw	v0,4(s4)
  401548:	2673ffff 	addiu	s3,s3,-1
  40154c:	1040fffc 	beqz	v0,401540 <__qdivrem+0x214>
  401550:	26830004 	addiu	v1,s4,4
  401554:	24020004 	li	v0,4
  401558:	00532023 	subu	a0,v0,s3
  40155c:	2483ffff 	addiu	v1,a0,-1
  401560:	046000bc 	bltz	v1,401854 <__qdivrem+0x528>
  401564:	00001821 	move	v1,zero
  401568:	27a60038 	addiu	a2,sp,56
  40156c:	00042880 	sll	a1,a0,0x2
  401570:	00c51021 	addu	v0,a2,a1
  401574:	2442fffc 	addiu	v0,v0,-4
  401578:	24630001 	addiu	v1,v1,1
  40157c:	ac400000 	sw	zero,0(v0)
  401580:	1464fffd 	bne	v1,a0,401578 <__qdivrem+0x24c>
  401584:	2442fffc 	addiu	v0,v0,-4
  401588:	8fcb0000 	lw	t3,0(s8)
  40158c:	34028000 	li	v0,0x8000
  401590:	0162102b 	sltu	v0,t3,v0
  401594:	00c5b021 	addu	s6,a2,a1
  401598:	104000ac 	beqz	v0,40184c <__qdivrem+0x520>
  40159c:	01601821 	move	v1,t3
  4015a0:	0000a821 	move	s5,zero
  4015a4:	34048000 	li	a0,0x8000
  4015a8:	00031840 	sll	v1,v1,0x1
  4015ac:	0064102b 	sltu	v0,v1,a0
  4015b0:	1440fffd 	bnez	v0,4015a8 <__qdivrem+0x27c>
  4015b4:	26b50001 	addiu	s5,s5,1
  4015b8:	1aa00009 	blez	s5,4015e0 <__qdivrem+0x2b4>
  4015bc:	02f32821 	addu	a1,s7,s3
  4015c0:	02a03021 	move	a2,s5
  4015c4:	0c1004ac 	jal	4012b0 <shl>
  4015c8:	02802021 	move	a0,s4
  4015cc:	03c02021 	move	a0,s8
  4015d0:	26e5ffff 	addiu	a1,s7,-1
  4015d4:	0c1004ac 	jal	4012b0 <shl>
  4015d8:	02a03021 	move	a2,s5
  4015dc:	8fcb0000 	lw	t3,0(s8)
  4015e0:	8fa20050 	lw	v0,80(sp)
  4015e4:	00177080 	sll	t6,s7,0x2
  4015e8:	8c580008 	lw	t8,8(v0)
  4015ec:	02c06821 	move	t5,s6
  4015f0:	02804821 	move	t1,s4
  4015f4:	028e6021 	addu	t4,s4,t6
  4015f8:	00007821 	move	t7,zero
  4015fc:	3416ffff 	li	s6,0xffff
  401600:	8d240000 	lw	a0,0(t1)
  401604:	8d230004 	lw	v1,4(t1)
  401608:	8d260008 	lw	a2,8(t1)
  40160c:	11640081 	beq	t3,a0,401814 <__qdivrem+0x4e8>
  401610:	00041400 	sll	v0,a0,0x10
  401614:	00621025 	or	v0,v1,v0
  401618:	15600002 	bnez	t3,401624 <__qdivrem+0x2f8>
  40161c:	004b001b 	divu	zero,v0,t3
  401620:	0007000d 	break	0x7
  401624:	00002810 	mfhi	a1
  401628:	00003812 	mflo	a3
	...
  401634:	00f80018 	mult	a3,t8
  401638:	00051400 	sll	v0,a1,0x10
  40163c:	00c21025 	or	v0,a2,v0
  401640:	00001812 	mflo	v1
  401644:	0043182b 	sltu	v1,v0,v1
  401648:	10600006 	beqz	v1,401664 <__qdivrem+0x338>
  40164c:	00000000 	nop
  401650:	24e7ffff 	addiu	a3,a3,-1
  401654:	00ab2821 	addu	a1,a1,t3
  401658:	02c5102b 	sltu	v0,s6,a1
  40165c:	1040fff6 	beqz	v0,401638 <__qdivrem+0x30c>
  401660:	00f80018 	mult	a3,t8
  401664:	1ae00017 	blez	s7,4016c4 <__qdivrem+0x398>
  401668:	00004021 	move	t0,zero
  40166c:	8fa20050 	lw	v0,80(sp)
  401670:	01802021 	move	a0,t4
  401674:	004e3021 	addu	a2,v0,t6
  401678:	02e02821 	move	a1,s7
  40167c:	3c0a0001 	lui	t2,0x1
  401680:	8cc20000 	lw	v0,0(a2)
  401684:	8c830000 	lw	v1,0(a0)
  401688:	00e20018 	mult	a3,v0
  40168c:	24a5ffff 	addiu	a1,a1,-1
  401690:	24c6fffc 	addiu	a2,a2,-4
  401694:	00001012 	mflo	v0
  401698:	00621823 	subu	v1,v1,v0
  40169c:	00681823 	subu	v1,v1,t0
  4016a0:	00031402 	srl	v0,v1,0x10
  4016a4:	01421023 	subu	v0,t2,v0
  4016a8:	3063ffff 	andi	v1,v1,0xffff
  4016ac:	ac830000 	sw	v1,0(a0)
  4016b0:	3048ffff 	andi	t0,v0,0xffff
  4016b4:	14a0fff2 	bnez	a1,401680 <__qdivrem+0x354>
  4016b8:	2484fffc 	addiu	a0,a0,-4
  4016bc:	8d240000 	lw	a0,0(t1)
  4016c0:	00000000 	nop
  4016c4:	00881023 	subu	v0,a0,t0
  4016c8:	3044ffff 	andi	a0,v0,0xffff
  4016cc:	00021c02 	srl	v1,v0,0x10
  4016d0:	10600018 	beqz	v1,401734 <__qdivrem+0x408>
  4016d4:	ad240000 	sw	a0,0(t1)
  4016d8:	1ae00012 	blez	s7,401724 <__qdivrem+0x3f8>
  4016dc:	00004021 	move	t0,zero
  4016e0:	8fa20050 	lw	v0,80(sp)
  4016e4:	01802021 	move	a0,t4
  4016e8:	004e3021 	addu	a2,v0,t6
  4016ec:	02e02821 	move	a1,s7
  4016f0:	8c820000 	lw	v0,0(a0)
  4016f4:	8cc30000 	lw	v1,0(a2)
  4016f8:	01021021 	addu	v0,t0,v0
  4016fc:	00431021 	addu	v0,v0,v1
  401700:	3043ffff 	andi	v1,v0,0xffff
  401704:	24a5ffff 	addiu	a1,a1,-1
  401708:	ac830000 	sw	v1,0(a0)
  40170c:	00024402 	srl	t0,v0,0x10
  401710:	2484fffc 	addiu	a0,a0,-4
  401714:	14a0fff6 	bnez	a1,4016f0 <__qdivrem+0x3c4>
  401718:	24c6fffc 	addiu	a2,a2,-4
  40171c:	8d240000 	lw	a0,0(t1)
  401720:	00000000 	nop
  401724:	01041021 	addu	v0,t0,a0
  401728:	3042ffff 	andi	v0,v0,0xffff
  40172c:	ad220000 	sw	v0,0(t1)
  401730:	24e7ffff 	addiu	a3,a3,-1
  401734:	25ef0001 	addiu	t7,t7,1
  401738:	026f102a 	slt	v0,s3,t7
  40173c:	ada70000 	sw	a3,0(t5)
  401740:	25290004 	addiu	t1,t1,4
  401744:	25ad0004 	addiu	t5,t5,4
  401748:	1040ffad 	beqz	v0,401600 <__qdivrem+0x2d4>
  40174c:	258c0004 	addiu	t4,t4,4
  401750:	12400022 	beqz	s2,4017dc <__qdivrem+0x4b0>
  401754:	00000000 	nop
  401758:	12a00016 	beqz	s5,4017b4 <__qdivrem+0x488>
  40175c:	02f32821 	addu	a1,s7,s3
  401760:	0265102a 	slt	v0,s3,a1
  401764:	10400011 	beqz	v0,4017ac <__qdivrem+0x480>
  401768:	00051080 	sll	v0,a1,0x2
  40176c:	00051880 	sll	v1,a1,0x2
  401770:	24020010 	li	v0,16
  401774:	00553823 	subu	a3,v0,s5
  401778:	02833021 	addu	a2,s4,v1
  40177c:	8cc2fffc 	lw	v0,-4(a2)
  401780:	8cc30000 	lw	v1,0(a2)
  401784:	00e21004 	sllv	v0,v0,a3
  401788:	02a31806 	srlv	v1,v1,s5
  40178c:	3042ffff 	andi	v0,v0,0xffff
  401790:	24a5ffff 	addiu	a1,a1,-1
  401794:	00621825 	or	v1,v1,v0
  401798:	0265202a 	slt	a0,s3,a1
  40179c:	acc30000 	sw	v1,0(a2)
  4017a0:	1480fff6 	bnez	a0,40177c <__qdivrem+0x450>
  4017a4:	24c6fffc 	addiu	a2,a2,-4
  4017a8:	00051080 	sll	v0,a1,0x2
  4017ac:	00541021 	addu	v0,v0,s4
  4017b0:	ac400000 	sw	zero,0(v0)
  4017b4:	8fa20014 	lw	v0,20(sp)
  4017b8:	8fa40018 	lw	a0,24(sp)
  4017bc:	00021400 	sll	v0,v0,0x10
  4017c0:	8fa3001c 	lw	v1,28(sp)
  4017c4:	00448025 	or	s0,v0,a0
  4017c8:	8fa20020 	lw	v0,32(sp)
  4017cc:	00031c00 	sll	v1,v1,0x10
  4017d0:	00628825 	or	s1,v1,v0
  4017d4:	ae510004 	sw	s1,4(s2)
  4017d8:	ae500000 	sw	s0,0(s2)
  4017dc:	8fa2003c 	lw	v0,60(sp)
  4017e0:	8fa40040 	lw	a0,64(sp)
  4017e4:	00021400 	sll	v0,v0,0x10
  4017e8:	8fa30044 	lw	v1,68(sp)
  4017ec:	00448025 	or	s0,v0,a0
  4017f0:	8fa20048 	lw	v0,72(sp)
  4017f4:	00031c00 	sll	v1,v1,0x10
  4017f8:	00628825 	or	s1,v1,v0
  4017fc:	02201821 	move	v1,s1
  401800:	081004e6 	j	401398 <__qdivrem+0x6c>
  401804:	02001021 	move	v0,s0
  401808:	00001821 	move	v1,zero
  40180c:	081004e6 	j	401398 <__qdivrem+0x6c>
  401810:	00001021 	move	v0,zero
  401814:	00602821 	move	a1,v1
  401818:	08100595 	j	401654 <__qdivrem+0x328>
  40181c:	3407ffff 	li	a3,0xffff
  401820:	27a20024 	addiu	v0,sp,36
  401824:	24170004 	li	s7,4
  401828:	27be0028 	addiu	s8,sp,40
  40182c:	0810054a 	j	401528 <__qdivrem+0x1fc>
  401830:	afa20050 	sw	v0,80(sp)
  401834:	24170002 	li	s7,2
  401838:	27be0030 	addiu	s8,sp,48
  40183c:	0810054a 	j	401528 <__qdivrem+0x1fc>
  401840:	afa20050 	sw	v0,80(sp)
  401844:	08100555 	j	401554 <__qdivrem+0x228>
  401848:	27b40010 	addiu	s4,sp,16
  40184c:	08100578 	j	4015e0 <__qdivrem+0x2b4>
  401850:	0000a821 	move	s5,zero
  401854:	00042880 	sll	a1,a0,0x2
  401858:	08100562 	j	401588 <__qdivrem+0x25c>
  40185c:	27a60038 	addiu	a2,sp,56
