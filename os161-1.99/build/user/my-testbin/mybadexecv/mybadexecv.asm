
../../../build/user/my-testbin/mybadexecv/mybadexecv:     file format elf32-tradbigmips

Disassembly of section .text:

00400000 <__start>:
  400000:	3c1c1001 	lui	gp,0x1001
  400004:	279c8000 	addiu	gp,gp,-32768
  400008:	2408fff8 	li	t0,-8
  40000c:	03a8e824 	and	sp,sp,t0
  400010:	27bdfff0 	addiu	sp,sp,-16
  400014:	3c011000 	lui	at,0x1000
  400018:	ac250014 	sw	a1,20(at)
  40001c:	0c1000a4 	jal	400290 <main>
  400020:	00000000 	nop
  400024:	00408021 	move	s0,v0
  400028:	0c10013d 	jal	4004f4 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c100153 	jal	40054c <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <finderror>:
  400050:	2402ffff 	li	v0,-1
  400054:	10820002 	beq	a0,v0,400060 <finderror+0x10>
  400058:	00000000 	nop
  40005c:	00002821 	move	a1,zero
  400060:	03e00008 	jr	ra
  400064:	00a01021 	move	v0,a1

00400068 <exec_common_fork>:
  400068:	27bdffe0 	addiu	sp,sp,-32
  40006c:	afbf0018 	sw	ra,24(sp)
  400070:	0c10014d 	jal	400534 <fork>
  400074:	00000000 	nop
  400078:	04400025 	bltz	v0,400110 <exec_common_fork+0xa8>
  40007c:	3c040040 	lui	a0,0x40
  400080:	14400005 	bnez	v0,400098 <exec_common_fork+0x30>
  400084:	00402021 	move	a0,v0
  400088:	8fbf0018 	lw	ra,24(sp)
  40008c:	00000000 	nop
  400090:	03e00008 	jr	ra
  400094:	27bd0020 	addiu	sp,sp,32
  400098:	27a50010 	addiu	a1,sp,16
  40009c:	0c100155 	jal	400554 <waitpid>
  4000a0:	00003021 	move	a2,zero
  4000a4:	2403ffff 	li	v1,-1
  4000a8:	10430014 	beq	v0,v1,4000fc <exec_common_fork+0x94>
  4000ac:	00000000 	nop
  4000b0:	8fa50010 	lw	a1,16(sp)
  4000b4:	3c040040 	lui	a0,0x40
  4000b8:	0c10010f 	jal	40043c <printf>
  4000bc:	24841cac 	addiu	a0,a0,7340
  4000c0:	8fa30010 	lw	v1,16(sp)
  4000c4:	00000000 	nop
  4000c8:	30620003 	andi	v0,v1,0x3
  4000cc:	14400004 	bnez	v0,4000e0 <exec_common_fork+0x78>
  4000d0:	00031883 	sra	v1,v1,0x2
  4000d4:	2402006b 	li	v0,107
  4000d8:	10620004 	beq	v1,v0,4000ec <exec_common_fork+0x84>
  4000dc:	00000000 	nop
  4000e0:	3c040040 	lui	a0,0x40
  4000e4:	0c10026a 	jal	4009a8 <warnx>
  4000e8:	24841cb8 	addiu	a0,a0,7352
  4000ec:	8fbf0018 	lw	ra,24(sp)
  4000f0:	24020001 	li	v0,1
  4000f4:	03e00008 	jr	ra
  4000f8:	27bd0020 	addiu	sp,sp,32
  4000fc:	3c040040 	lui	a0,0x40
  400100:	0c10027b 	jal	4009ec <warn>
  400104:	24841c94 	addiu	a0,a0,7316
  400108:	08100022 	j	400088 <exec_common_fork+0x20>
  40010c:	2402ffff 	li	v0,-1
  400110:	0c10027b 	jal	4009ec <warn>
  400114:	24841c80 	addiu	a0,a0,7296
  400118:	08100022 	j	400088 <exec_common_fork+0x20>
  40011c:	2402ffff 	li	v0,-1

00400120 <report_test2>:
  400120:	27bdffe0 	addiu	sp,sp,-32
  400124:	afb10014 	sw	s1,20(sp)
  400128:	afb00010 	sw	s0,16(sp)
  40012c:	afbf0018 	sw	ra,24(sp)
  400130:	00c08021 	move	s0,a2
  400134:	0c100014 	jal	400050 <finderror>
  400138:	00e08821 	move	s1,a3
  40013c:	3c040040 	lui	a0,0x40
  400140:	00401821 	move	v1,v0
  400144:	8fa60030 	lw	a2,48(sp)
  400148:	10500012 	beq	v0,s0,400194 <report_test2+0x74>
  40014c:	24841ce0 	addiu	a0,a0,7392
  400150:	2442ffff 	addiu	v0,v0,-1
  400154:	1071000f 	beq	v1,s1,400194 <report_test2+0x74>
  400158:	2c420002 	sltiu	v0,v0,2
  40015c:	3c040040 	lui	a0,0x40
  400160:	24841cec 	addiu	a0,a0,7404
  400164:	1440000c 	bnez	v0,400198 <report_test2+0x78>
  400168:	00c02821 	move	a1,a2
  40016c:	3c021000 	lui	v0,0x1000
  400170:	ac430010 	sw	v1,16(v0)
  400174:	3c040040 	lui	a0,0x40
  400178:	8fbf0018 	lw	ra,24(sp)
  40017c:	8fb10014 	lw	s1,20(sp)
  400180:	8fb00010 	lw	s0,16(sp)
  400184:	24841d08 	addiu	a0,a0,7432
  400188:	00c02821 	move	a1,a2
  40018c:	0810027b 	j	4009ec <warn>
  400190:	27bd0020 	addiu	sp,sp,32
  400194:	00c02821 	move	a1,a2
  400198:	8fbf0018 	lw	ra,24(sp)
  40019c:	8fb10014 	lw	s1,20(sp)
  4001a0:	8fb00010 	lw	s0,16(sp)
  4001a4:	0810026a 	j	4009a8 <warnx>
  4001a8:	27bd0020 	addiu	sp,sp,32

004001ac <report_test>:
  4001ac:	27bdffe0 	addiu	sp,sp,-32
  4001b0:	afb10014 	sw	s1,20(sp)
  4001b4:	afb00010 	sw	s0,16(sp)
  4001b8:	00e08821 	move	s1,a3
  4001bc:	afbf0018 	sw	ra,24(sp)
  4001c0:	0c100014 	jal	400050 <finderror>
  4001c4:	00c08021 	move	s0,a2
  4001c8:	00401821 	move	v1,v0
  4001cc:	3c040040 	lui	a0,0x40
  4001d0:	2442ffff 	addiu	v0,v0,-1
  4001d4:	24841ce0 	addiu	a0,a0,7392
  4001d8:	02202821 	move	a1,s1
  4001dc:	1070000e 	beq	v1,s0,400218 <report_test+0x6c>
  4001e0:	2c420002 	sltiu	v0,v0,2
  4001e4:	3c040040 	lui	a0,0x40
  4001e8:	1440000b 	bnez	v0,400218 <report_test+0x6c>
  4001ec:	24841cec 	addiu	a0,a0,7404
  4001f0:	3c021000 	lui	v0,0x1000
  4001f4:	ac430010 	sw	v1,16(v0)
  4001f8:	3c040040 	lui	a0,0x40
  4001fc:	02202821 	move	a1,s1
  400200:	8fbf0018 	lw	ra,24(sp)
  400204:	8fb10014 	lw	s1,20(sp)
  400208:	8fb00010 	lw	s0,16(sp)
  40020c:	24841d08 	addiu	a0,a0,7432
  400210:	0810027b 	j	4009ec <warn>
  400214:	27bd0020 	addiu	sp,sp,32
  400218:	8fbf0018 	lw	ra,24(sp)
  40021c:	8fb10014 	lw	s1,20(sp)
  400220:	8fb00010 	lw	s0,16(sp)
  400224:	0810026a 	j	4009a8 <warnx>
  400228:	27bd0020 	addiu	sp,sp,32

0040022c <exec_badargs>:
  40022c:	27bdffe0 	addiu	sp,sp,-32
  400230:	afb10014 	sw	s1,20(sp)
  400234:	afb00010 	sw	s0,16(sp)
  400238:	afbf0018 	sw	ra,24(sp)
  40023c:	00808021 	move	s0,a0
  400240:	0c10001a 	jal	400068 <exec_common_fork>
  400244:	00a08821 	move	s1,a1
  400248:	10400006 	beqz	v0,400264 <exec_badargs+0x38>
  40024c:	3c040040 	lui	a0,0x40
  400250:	8fbf0018 	lw	ra,24(sp)
  400254:	8fb10014 	lw	s1,20(sp)
  400258:	8fb00010 	lw	s0,16(sp)
  40025c:	03e00008 	jr	ra
  400260:	27bd0020 	addiu	sp,sp,32
  400264:	24841d14 	addiu	a0,a0,7444
  400268:	0c100151 	jal	400544 <execv>
  40026c:	02002821 	move	a1,s0
  400270:	3c031000 	lui	v1,0x1000
  400274:	8c650010 	lw	a1,16(v1)
  400278:	00402021 	move	a0,v0
  40027c:	02203821 	move	a3,s1
  400280:	0c10006b 	jal	4001ac <report_test>
  400284:	24060006 	li	a2,6
  400288:	0c10013d 	jal	4004f4 <exit>
  40028c:	2404006b 	li	a0,107

00400290 <main>:
  400290:	27bdffc8 	addiu	sp,sp,-56
  400294:	3c020040 	lui	v0,0x40
  400298:	afb00030 	sw	s0,48(sp)
  40029c:	24501d20 	addiu	s0,v0,7456
  4002a0:	afbf0034 	sw	ra,52(sp)
  4002a4:	afb00018 	sw	s0,24(sp)
  4002a8:	0c10001a 	jal	400068 <exec_common_fork>
  4002ac:	afa0001c 	sw	zero,28(sp)
  4002b0:	1040001e 	beqz	v0,40032c <main+0x9c>
  4002b4:	00002021 	move	a0,zero
  4002b8:	afb00018 	sw	s0,24(sp)
  4002bc:	0c10001a 	jal	400068 <exec_common_fork>
  4002c0:	afa0001c 	sw	zero,28(sp)
  4002c4:	10400024 	beqz	v0,400358 <main+0xc8>
  4002c8:	3c100040 	lui	s0,0x40
  4002cc:	3c050040 	lui	a1,0x40
  4002d0:	24a51c08 	addiu	a1,a1,7176
  4002d4:	0c10008b 	jal	40022c <exec_badargs>
  4002d8:	00002021 	move	a0,zero
  4002dc:	3c048000 	lui	a0,0x8000
  4002e0:	0c10008b 	jal	40022c <exec_badargs>
  4002e4:	26051c2c 	addiu	a1,s0,7212
  4002e8:	3c048000 	lui	a0,0x8000
  4002ec:	0c10008b 	jal	40022c <exec_badargs>
  4002f0:	26051c2c 	addiu	a1,s0,7212
  4002f4:	3c048000 	lui	a0,0x8000
  4002f8:	0c10008b 	jal	40022c <exec_badargs>
  4002fc:	26051c2c 	addiu	a1,s0,7212
  400300:	26051c2c 	addiu	a1,s0,7212
  400304:	0c10008b 	jal	40022c <exec_badargs>
  400308:	3c048000 	lui	a0,0x8000
  40030c:	0c10001a 	jal	400068 <exec_common_fork>
  400310:	00000000 	nop
  400314:	1040001f 	beqz	v0,400394 <main+0x104>
  400318:	00001021 	move	v0,zero
  40031c:	8fbf0034 	lw	ra,52(sp)
  400320:	8fb00030 	lw	s0,48(sp)
  400324:	03e00008 	jr	ra
  400328:	27bd0038 	addiu	sp,sp,56
  40032c:	0c100151 	jal	400544 <execv>
  400330:	27a50018 	addiu	a1,sp,24
  400334:	3c031000 	lui	v1,0x1000
  400338:	8c650010 	lw	a1,16(v1)
  40033c:	3c070040 	lui	a3,0x40
  400340:	00402021 	move	a0,v0
  400344:	24e71d24 	addiu	a3,a3,7460
  400348:	0c10006b 	jal	4001ac <report_test>
  40034c:	24060006 	li	a2,6
  400350:	0c10013d 	jal	4004f4 <exit>
  400354:	2404006b 	li	a0,107
  400358:	3c040040 	lui	a0,0x40
  40035c:	24841e78 	addiu	a0,a0,7800
  400360:	0c100151 	jal	400544 <execv>
  400364:	27a50018 	addiu	a1,sp,24
  400368:	3c031000 	lui	v1,0x1000
  40036c:	00402021 	move	a0,v0
  400370:	8c650010 	lw	a1,16(v1)
  400374:	3c020040 	lui	v0,0x40
  400378:	24421bf0 	addiu	v0,v0,7152
  40037c:	24060008 	li	a2,8
  400380:	24070012 	li	a3,18
  400384:	0c100048 	jal	400120 <report_test2>
  400388:	afa20010 	sw	v0,16(sp)
  40038c:	0c10013d 	jal	4004f4 <exit>
  400390:	2404006b 	li	a0,107
  400394:	3c040040 	lui	a0,0x40
  400398:	24841d14 	addiu	a0,a0,7444
  40039c:	0c100151 	jal	400544 <execv>
  4003a0:	27a50020 	addiu	a1,sp,32
  4003a4:	3c031000 	lui	v1,0x1000
  4003a8:	8c650010 	lw	a1,16(v1)
  4003ac:	3c070040 	lui	a3,0x40
  4003b0:	00402021 	move	a0,v0
  4003b4:	24e71c58 	addiu	a3,a3,7256
  4003b8:	0c10006b 	jal	4001ac <report_test>
  4003bc:	24060006 	li	a2,6
  4003c0:	0c10013d 	jal	4004f4 <exit>
  4003c4:	2404006b 	li	a0,107
	...

004003d0 <vprintf>:
  4003d0:	00803021 	move	a2,a0
  4003d4:	3c040040 	lui	a0,0x40
  4003d8:	00a03821 	move	a3,a1
  4003dc:	248403e8 	addiu	a0,a0,1000
  4003e0:	08100345 	j	400d14 <__vprintf>
  4003e4:	00002821 	move	a1,zero

004003e8 <__printf_send>:
  4003e8:	27bdffe0 	addiu	sp,sp,-32
  4003ec:	afb20018 	sw	s2,24(sp)
  4003f0:	afb10014 	sw	s1,20(sp)
  4003f4:	afbf001c 	sw	ra,28(sp)
  4003f8:	afb00010 	sw	s0,16(sp)
  4003fc:	00c09021 	move	s2,a2
  400400:	10c00008 	beqz	a2,400424 <__printf_send+0x3c>
  400404:	00a08821 	move	s1,a1
  400408:	00008021 	move	s0,zero
  40040c:	02301021 	addu	v0,s1,s0
  400410:	80440000 	lb	a0,0(v0)
  400414:	0c10011c 	jal	400470 <putchar>
  400418:	26100001 	addiu	s0,s0,1
  40041c:	1650fffc 	bne	s2,s0,400410 <__printf_send+0x28>
  400420:	02301021 	addu	v0,s1,s0
  400424:	8fbf001c 	lw	ra,28(sp)
  400428:	8fb20018 	lw	s2,24(sp)
  40042c:	8fb10014 	lw	s1,20(sp)
  400430:	8fb00010 	lw	s0,16(sp)
  400434:	03e00008 	jr	ra
  400438:	27bd0020 	addiu	sp,sp,32

0040043c <printf>:
  40043c:	27bdffe0 	addiu	sp,sp,-32
  400440:	27a20024 	addiu	v0,sp,36
  400444:	afa50024 	sw	a1,36(sp)
  400448:	00402821 	move	a1,v0
  40044c:	afbf0018 	sw	ra,24(sp)
  400450:	afa60028 	sw	a2,40(sp)
  400454:	afa7002c 	sw	a3,44(sp)
  400458:	0c1000f4 	jal	4003d0 <vprintf>
  40045c:	afa20010 	sw	v0,16(sp)
  400460:	8fbf0018 	lw	ra,24(sp)
  400464:	00000000 	nop
  400468:	03e00008 	jr	ra
  40046c:	27bd0020 	addiu	sp,sp,32

00400470 <putchar>:
  400470:	27bdffe0 	addiu	sp,sp,-32
  400474:	afb00018 	sw	s0,24(sp)
  400478:	27a50010 	addiu	a1,sp,16
  40047c:	00808021 	move	s0,a0
  400480:	24060001 	li	a2,1
  400484:	24040001 	li	a0,1
  400488:	afbf001c 	sw	ra,28(sp)
  40048c:	0c100193 	jal	40064c <write>
  400490:	a3b00010 	sb	s0,16(sp)
  400494:	18400005 	blez	v0,4004ac <putchar+0x3c>
  400498:	02001021 	move	v0,s0
  40049c:	8fbf001c 	lw	ra,28(sp)
  4004a0:	8fb00018 	lw	s0,24(sp)
  4004a4:	03e00008 	jr	ra
  4004a8:	27bd0020 	addiu	sp,sp,32
  4004ac:	2410ffff 	li	s0,-1
  4004b0:	02001021 	move	v0,s0
  4004b4:	8fbf001c 	lw	ra,28(sp)
  4004b8:	8fb00018 	lw	s0,24(sp)
  4004bc:	03e00008 	jr	ra
  4004c0:	27bd0020 	addiu	sp,sp,32
	...

004004d0 <__exit_hack>:
  4004d0:	27bdfff8 	addiu	sp,sp,-8
  4004d4:	24020001 	li	v0,1
  4004d8:	afa20000 	sw	v0,0(sp)
  4004dc:	8fa20000 	lw	v0,0(sp)
  4004e0:	00000000 	nop
  4004e4:	1440fffd 	bnez	v0,4004dc <__exit_hack+0xc>
  4004e8:	00000000 	nop
  4004ec:	03e00008 	jr	ra
  4004f0:	27bd0008 	addiu	sp,sp,8

004004f4 <exit>:
  4004f4:	27bdffe8 	addiu	sp,sp,-24
  4004f8:	afbf0010 	sw	ra,16(sp)
  4004fc:	0c100153 	jal	40054c <_exit>
  400500:	00000000 	nop
	...

00400510 <__syscall>:
  400510:	0000000c 	syscall
  400514:	10e00005 	beqz	a3,40052c <__syscall+0x1c>
  400518:	00000000 	nop
  40051c:	3c011000 	lui	at,0x1000
  400520:	ac220010 	sw	v0,16(at)
  400524:	2403ffff 	li	v1,-1
  400528:	2402ffff 	li	v0,-1
  40052c:	03e00008 	jr	ra
  400530:	00000000 	nop

00400534 <fork>:
  400534:	08100144 	j	400510 <__syscall>
  400538:	24020000 	li	v0,0

0040053c <vfork>:
  40053c:	08100144 	j	400510 <__syscall>
  400540:	24020001 	li	v0,1

00400544 <execv>:
  400544:	08100144 	j	400510 <__syscall>
  400548:	24020002 	li	v0,2

0040054c <_exit>:
  40054c:	08100144 	j	400510 <__syscall>
  400550:	24020003 	li	v0,3

00400554 <waitpid>:
  400554:	08100144 	j	400510 <__syscall>
  400558:	24020004 	li	v0,4

0040055c <getpid>:
  40055c:	08100144 	j	400510 <__syscall>
  400560:	24020005 	li	v0,5

00400564 <getppid>:
  400564:	08100144 	j	400510 <__syscall>
  400568:	24020006 	li	v0,6

0040056c <sbrk>:
  40056c:	08100144 	j	400510 <__syscall>
  400570:	24020007 	li	v0,7

00400574 <mmap>:
  400574:	08100144 	j	400510 <__syscall>
  400578:	24020008 	li	v0,8

0040057c <munmap>:
  40057c:	08100144 	j	400510 <__syscall>
  400580:	24020009 	li	v0,9

00400584 <mprotect>:
  400584:	08100144 	j	400510 <__syscall>
  400588:	2402000a 	li	v0,10

0040058c <umask>:
  40058c:	08100144 	j	400510 <__syscall>
  400590:	24020011 	li	v0,17

00400594 <issetugid>:
  400594:	08100144 	j	400510 <__syscall>
  400598:	24020012 	li	v0,18

0040059c <getresuid>:
  40059c:	08100144 	j	400510 <__syscall>
  4005a0:	24020013 	li	v0,19

004005a4 <setresuid>:
  4005a4:	08100144 	j	400510 <__syscall>
  4005a8:	24020014 	li	v0,20

004005ac <getresgid>:
  4005ac:	08100144 	j	400510 <__syscall>
  4005b0:	24020015 	li	v0,21

004005b4 <setresgid>:
  4005b4:	08100144 	j	400510 <__syscall>
  4005b8:	24020016 	li	v0,22

004005bc <getgroups>:
  4005bc:	08100144 	j	400510 <__syscall>
  4005c0:	24020017 	li	v0,23

004005c4 <setgroups>:
  4005c4:	08100144 	j	400510 <__syscall>
  4005c8:	24020018 	li	v0,24

004005cc <__getlogin>:
  4005cc:	08100144 	j	400510 <__syscall>
  4005d0:	24020019 	li	v0,25

004005d4 <__setlogin>:
  4005d4:	08100144 	j	400510 <__syscall>
  4005d8:	2402001a 	li	v0,26

004005dc <kill>:
  4005dc:	08100144 	j	400510 <__syscall>
  4005e0:	2402001b 	li	v0,27

004005e4 <sigaction>:
  4005e4:	08100144 	j	400510 <__syscall>
  4005e8:	2402001c 	li	v0,28

004005ec <sigpending>:
  4005ec:	08100144 	j	400510 <__syscall>
  4005f0:	2402001d 	li	v0,29

004005f4 <sigprocmask>:
  4005f4:	08100144 	j	400510 <__syscall>
  4005f8:	2402001e 	li	v0,30

004005fc <sigsuspend>:
  4005fc:	08100144 	j	400510 <__syscall>
  400600:	2402001f 	li	v0,31

00400604 <sigreturn>:
  400604:	08100144 	j	400510 <__syscall>
  400608:	24020020 	li	v0,32

0040060c <open>:
  40060c:	08100144 	j	400510 <__syscall>
  400610:	2402002d 	li	v0,45

00400614 <pipe>:
  400614:	08100144 	j	400510 <__syscall>
  400618:	2402002e 	li	v0,46

0040061c <dup>:
  40061c:	08100144 	j	400510 <__syscall>
  400620:	2402002f 	li	v0,47

00400624 <dup2>:
  400624:	08100144 	j	400510 <__syscall>
  400628:	24020030 	li	v0,48

0040062c <close>:
  40062c:	08100144 	j	400510 <__syscall>
  400630:	24020031 	li	v0,49

00400634 <read>:
  400634:	08100144 	j	400510 <__syscall>
  400638:	24020032 	li	v0,50

0040063c <pread>:
  40063c:	08100144 	j	400510 <__syscall>
  400640:	24020033 	li	v0,51

00400644 <getdirentry>:
  400644:	08100144 	j	400510 <__syscall>
  400648:	24020036 	li	v0,54

0040064c <write>:
  40064c:	08100144 	j	400510 <__syscall>
  400650:	24020037 	li	v0,55

00400654 <pwrite>:
  400654:	08100144 	j	400510 <__syscall>
  400658:	24020038 	li	v0,56

0040065c <lseek>:
  40065c:	08100144 	j	400510 <__syscall>
  400660:	2402003b 	li	v0,59

00400664 <flock>:
  400664:	08100144 	j	400510 <__syscall>
  400668:	2402003c 	li	v0,60

0040066c <ftruncate>:
  40066c:	08100144 	j	400510 <__syscall>
  400670:	2402003d 	li	v0,61

00400674 <fsync>:
  400674:	08100144 	j	400510 <__syscall>
  400678:	2402003e 	li	v0,62

0040067c <fcntl>:
  40067c:	08100144 	j	400510 <__syscall>
  400680:	2402003f 	li	v0,63

00400684 <ioctl>:
  400684:	08100144 	j	400510 <__syscall>
  400688:	24020040 	li	v0,64

0040068c <select>:
  40068c:	08100144 	j	400510 <__syscall>
  400690:	24020041 	li	v0,65

00400694 <poll>:
  400694:	08100144 	j	400510 <__syscall>
  400698:	24020042 	li	v0,66

0040069c <link>:
  40069c:	08100144 	j	400510 <__syscall>
  4006a0:	24020043 	li	v0,67

004006a4 <remove>:
  4006a4:	08100144 	j	400510 <__syscall>
  4006a8:	24020044 	li	v0,68

004006ac <mkdir>:
  4006ac:	08100144 	j	400510 <__syscall>
  4006b0:	24020045 	li	v0,69

004006b4 <rmdir>:
  4006b4:	08100144 	j	400510 <__syscall>
  4006b8:	24020046 	li	v0,70

004006bc <mkfifo>:
  4006bc:	08100144 	j	400510 <__syscall>
  4006c0:	24020047 	li	v0,71

004006c4 <rename>:
  4006c4:	08100144 	j	400510 <__syscall>
  4006c8:	24020048 	li	v0,72

004006cc <access>:
  4006cc:	08100144 	j	400510 <__syscall>
  4006d0:	24020049 	li	v0,73

004006d4 <chdir>:
  4006d4:	08100144 	j	400510 <__syscall>
  4006d8:	2402004a 	li	v0,74

004006dc <fchdir>:
  4006dc:	08100144 	j	400510 <__syscall>
  4006e0:	2402004b 	li	v0,75

004006e4 <__getcwd>:
  4006e4:	08100144 	j	400510 <__syscall>
  4006e8:	2402004c 	li	v0,76

004006ec <symlink>:
  4006ec:	08100144 	j	400510 <__syscall>
  4006f0:	2402004d 	li	v0,77

004006f4 <readlink>:
  4006f4:	08100144 	j	400510 <__syscall>
  4006f8:	2402004e 	li	v0,78

004006fc <mount>:
  4006fc:	08100144 	j	400510 <__syscall>
  400700:	2402004f 	li	v0,79

00400704 <unmount>:
  400704:	08100144 	j	400510 <__syscall>
  400708:	24020050 	li	v0,80

0040070c <stat>:
  40070c:	08100144 	j	400510 <__syscall>
  400710:	24020051 	li	v0,81

00400714 <fstat>:
  400714:	08100144 	j	400510 <__syscall>
  400718:	24020052 	li	v0,82

0040071c <lstat>:
  40071c:	08100144 	j	400510 <__syscall>
  400720:	24020053 	li	v0,83

00400724 <utimes>:
  400724:	08100144 	j	400510 <__syscall>
  400728:	24020054 	li	v0,84

0040072c <futimes>:
  40072c:	08100144 	j	400510 <__syscall>
  400730:	24020055 	li	v0,85

00400734 <lutimes>:
  400734:	08100144 	j	400510 <__syscall>
  400738:	24020056 	li	v0,86

0040073c <chmod>:
  40073c:	08100144 	j	400510 <__syscall>
  400740:	24020057 	li	v0,87

00400744 <chown>:
  400744:	08100144 	j	400510 <__syscall>
  400748:	24020058 	li	v0,88

0040074c <fchmod>:
  40074c:	08100144 	j	400510 <__syscall>
  400750:	24020059 	li	v0,89

00400754 <fchown>:
  400754:	08100144 	j	400510 <__syscall>
  400758:	2402005a 	li	v0,90

0040075c <lchmod>:
  40075c:	08100144 	j	400510 <__syscall>
  400760:	2402005b 	li	v0,91

00400764 <lchown>:
  400764:	08100144 	j	400510 <__syscall>
  400768:	2402005c 	li	v0,92

0040076c <socket>:
  40076c:	08100144 	j	400510 <__syscall>
  400770:	24020062 	li	v0,98

00400774 <bind>:
  400774:	08100144 	j	400510 <__syscall>
  400778:	24020063 	li	v0,99

0040077c <connect>:
  40077c:	08100144 	j	400510 <__syscall>
  400780:	24020064 	li	v0,100

00400784 <listen>:
  400784:	08100144 	j	400510 <__syscall>
  400788:	24020065 	li	v0,101

0040078c <accept>:
  40078c:	08100144 	j	400510 <__syscall>
  400790:	24020066 	li	v0,102

00400794 <shutdown>:
  400794:	08100144 	j	400510 <__syscall>
  400798:	24020068 	li	v0,104

0040079c <getsockname>:
  40079c:	08100144 	j	400510 <__syscall>
  4007a0:	24020069 	li	v0,105

004007a4 <getpeername>:
  4007a4:	08100144 	j	400510 <__syscall>
  4007a8:	2402006a 	li	v0,106

004007ac <getsockopt>:
  4007ac:	08100144 	j	400510 <__syscall>
  4007b0:	2402006b 	li	v0,107

004007b4 <setsockopt>:
  4007b4:	08100144 	j	400510 <__syscall>
  4007b8:	2402006c 	li	v0,108

004007bc <__time>:
  4007bc:	08100144 	j	400510 <__syscall>
  4007c0:	24020071 	li	v0,113

004007c4 <__settime>:
  4007c4:	08100144 	j	400510 <__syscall>
  4007c8:	24020072 	li	v0,114

004007cc <nanosleep>:
  4007cc:	08100144 	j	400510 <__syscall>
  4007d0:	24020073 	li	v0,115

004007d4 <sync>:
  4007d4:	08100144 	j	400510 <__syscall>
  4007d8:	24020076 	li	v0,118

004007dc <reboot>:
  4007dc:	08100144 	j	400510 <__syscall>
  4007e0:	24020077 	li	v0,119
	...

004007f0 <__senderr>:
  4007f0:	08100193 	j	40064c <write>
  4007f4:	24040002 	li	a0,2

004007f8 <__senderrstr>:
  4007f8:	27bdffe8 	addiu	sp,sp,-24
  4007fc:	afbf0014 	sw	ra,20(sp)
  400800:	afb00010 	sw	s0,16(sp)
  400804:	0c1004b4 	jal	4012d0 <strlen>
  400808:	00808021 	move	s0,a0
  40080c:	00403021 	move	a2,v0
  400810:	02002821 	move	a1,s0
  400814:	8fbf0014 	lw	ra,20(sp)
  400818:	8fb00010 	lw	s0,16(sp)
  40081c:	00002021 	move	a0,zero
  400820:	081001fc 	j	4007f0 <__senderr>
  400824:	27bd0018 	addiu	sp,sp,24

00400828 <__printerr>:
  400828:	27bdffd8 	addiu	sp,sp,-40
  40082c:	afb40020 	sw	s4,32(sp)
  400830:	afb3001c 	sw	s3,28(sp)
  400834:	afb20018 	sw	s2,24(sp)
  400838:	afb10014 	sw	s1,20(sp)
  40083c:	afbf0024 	sw	ra,36(sp)
  400840:	afb00010 	sw	s0,16(sp)
  400844:	3c021000 	lui	v0,0x1000
  400848:	00809821 	move	s3,a0
  40084c:	8c440010 	lw	a0,16(v0)
  400850:	00a08821 	move	s1,a1
  400854:	0c1004a8 	jal	4012a0 <strerror>
  400858:	00c09021 	move	s2,a2
  40085c:	0040a021 	move	s4,v0
  400860:	3c021000 	lui	v0,0x1000
  400864:	8c420014 	lw	v0,20(v0)
  400868:	00000000 	nop
  40086c:	1040001f 	beqz	v0,4008ec <__printerr+0xc4>
  400870:	00000000 	nop
  400874:	8c420000 	lw	v0,0(v0)
  400878:	00000000 	nop
  40087c:	1040001b 	beqz	v0,4008ec <__printerr+0xc4>
  400880:	00402021 	move	a0,v0
  400884:	0c1001fe 	jal	4007f8 <__senderrstr>
  400888:	3c100040 	lui	s0,0x40
  40088c:	0c1001fe 	jal	4007f8 <__senderrstr>
  400890:	26041d48 	addiu	a0,s0,7496
  400894:	3c040040 	lui	a0,0x40
  400898:	248407f0 	addiu	a0,a0,2032
  40089c:	02203021 	move	a2,s1
  4008a0:	02403821 	move	a3,s2
  4008a4:	0c100345 	jal	400d14 <__vprintf>
  4008a8:	00002821 	move	a1,zero
  4008ac:	12600005 	beqz	s3,4008c4 <__printerr+0x9c>
  4008b0:	26041d48 	addiu	a0,s0,7496
  4008b4:	0c1001fe 	jal	4007f8 <__senderrstr>
  4008b8:	00000000 	nop
  4008bc:	0c1001fe 	jal	4007f8 <__senderrstr>
  4008c0:	02802021 	move	a0,s4
  4008c4:	3c040040 	lui	a0,0x40
  4008c8:	8fbf0024 	lw	ra,36(sp)
  4008cc:	8fb40020 	lw	s4,32(sp)
  4008d0:	8fb3001c 	lw	s3,28(sp)
  4008d4:	8fb20018 	lw	s2,24(sp)
  4008d8:	8fb10014 	lw	s1,20(sp)
  4008dc:	8fb00010 	lw	s0,16(sp)
  4008e0:	24841d4c 	addiu	a0,a0,7500
  4008e4:	081001fe 	j	4007f8 <__senderrstr>
  4008e8:	27bd0028 	addiu	sp,sp,40
  4008ec:	3c020040 	lui	v0,0x40
  4008f0:	08100221 	j	400884 <__printerr+0x5c>
  4008f4:	24441d30 	addiu	a0,v0,7472

004008f8 <verrx>:
  4008f8:	27bdffe8 	addiu	sp,sp,-24
  4008fc:	afb00010 	sw	s0,16(sp)
  400900:	00808021 	move	s0,a0
  400904:	afbf0014 	sw	ra,20(sp)
  400908:	0c10020a 	jal	400828 <__printerr>
  40090c:	00002021 	move	a0,zero
  400910:	0c10013d 	jal	4004f4 <exit>
  400914:	02002021 	move	a0,s0

00400918 <errx>:
  400918:	27bdffe0 	addiu	sp,sp,-32
  40091c:	27a20028 	addiu	v0,sp,40
  400920:	afa60028 	sw	a2,40(sp)
  400924:	00403021 	move	a2,v0
  400928:	afbf0018 	sw	ra,24(sp)
  40092c:	afa7002c 	sw	a3,44(sp)
  400930:	0c10023e 	jal	4008f8 <verrx>
  400934:	afa20010 	sw	v0,16(sp)
  400938:	8fbf0018 	lw	ra,24(sp)
  40093c:	00000000 	nop
  400940:	03e00008 	jr	ra
  400944:	27bd0020 	addiu	sp,sp,32

00400948 <verr>:
  400948:	27bdffe8 	addiu	sp,sp,-24
  40094c:	afb00010 	sw	s0,16(sp)
  400950:	00808021 	move	s0,a0
  400954:	afbf0014 	sw	ra,20(sp)
  400958:	0c10020a 	jal	400828 <__printerr>
  40095c:	24040001 	li	a0,1
  400960:	0c10013d 	jal	4004f4 <exit>
  400964:	02002021 	move	a0,s0

00400968 <err>:
  400968:	27bdffe0 	addiu	sp,sp,-32
  40096c:	27a20028 	addiu	v0,sp,40
  400970:	afa60028 	sw	a2,40(sp)
  400974:	00403021 	move	a2,v0
  400978:	afbf0018 	sw	ra,24(sp)
  40097c:	afa7002c 	sw	a3,44(sp)
  400980:	0c100252 	jal	400948 <verr>
  400984:	afa20010 	sw	v0,16(sp)
  400988:	8fbf0018 	lw	ra,24(sp)
  40098c:	00000000 	nop
  400990:	03e00008 	jr	ra
  400994:	27bd0020 	addiu	sp,sp,32

00400998 <vwarnx>:
  400998:	00a03021 	move	a2,a1
  40099c:	00802821 	move	a1,a0
  4009a0:	0810020a 	j	400828 <__printerr>
  4009a4:	00002021 	move	a0,zero

004009a8 <warnx>:
  4009a8:	27bdffe0 	addiu	sp,sp,-32
  4009ac:	27a20024 	addiu	v0,sp,36
  4009b0:	afa50024 	sw	a1,36(sp)
  4009b4:	00402821 	move	a1,v0
  4009b8:	afbf0018 	sw	ra,24(sp)
  4009bc:	afa60028 	sw	a2,40(sp)
  4009c0:	afa7002c 	sw	a3,44(sp)
  4009c4:	0c100266 	jal	400998 <vwarnx>
  4009c8:	afa20010 	sw	v0,16(sp)
  4009cc:	8fbf0018 	lw	ra,24(sp)
  4009d0:	00000000 	nop
  4009d4:	03e00008 	jr	ra
  4009d8:	27bd0020 	addiu	sp,sp,32

004009dc <vwarn>:
  4009dc:	00a03021 	move	a2,a1
  4009e0:	00802821 	move	a1,a0
  4009e4:	0810020a 	j	400828 <__printerr>
  4009e8:	24040001 	li	a0,1

004009ec <warn>:
  4009ec:	27bdffe0 	addiu	sp,sp,-32
  4009f0:	27a20024 	addiu	v0,sp,36
  4009f4:	afa50024 	sw	a1,36(sp)
  4009f8:	00402821 	move	a1,v0
  4009fc:	afbf0018 	sw	ra,24(sp)
  400a00:	afa60028 	sw	a2,40(sp)
  400a04:	afa7002c 	sw	a3,44(sp)
  400a08:	0c100277 	jal	4009dc <vwarn>
  400a0c:	afa20010 	sw	v0,16(sp)
  400a10:	8fbf0018 	lw	ra,24(sp)
  400a14:	00000000 	nop
  400a18:	03e00008 	jr	ra
  400a1c:	27bd0020 	addiu	sp,sp,32

00400a20 <__pf_print>:
  400a20:	27bdffe0 	addiu	sp,sp,-32
  400a24:	afbf0018 	sw	ra,24(sp)
  400a28:	afb10014 	sw	s1,20(sp)
  400a2c:	afb00010 	sw	s0,16(sp)
  400a30:	8c830000 	lw	v1,0(a0)
  400a34:	00808021 	move	s0,a0
  400a38:	8c840004 	lw	a0,4(a0)
  400a3c:	0060f809 	jalr	v1
  400a40:	00c08821 	move	s1,a2
  400a44:	8e02000c 	lw	v0,12(s0)
  400a48:	00000000 	nop
  400a4c:	00511021 	addu	v0,v0,s1
  400a50:	ae02000c 	sw	v0,12(s0)
  400a54:	8fbf0018 	lw	ra,24(sp)
  400a58:	8fb10014 	lw	s1,20(sp)
  400a5c:	8fb00010 	lw	s0,16(sp)
  400a60:	03e00008 	jr	ra
  400a64:	27bd0020 	addiu	sp,sp,32

00400a68 <__pf_endfield>:
  400a68:	24020020 	li	v0,32
  400a6c:	ac82002c 	sw	v0,44(a0)
  400a70:	00001821 	move	v1,zero
  400a74:	00001021 	move	v0,zero
  400a78:	ac800038 	sw	zero,56(a0)
  400a7c:	ac800010 	sw	zero,16(a0)
  400a80:	ac800014 	sw	zero,20(a0)
  400a84:	ac83001c 	sw	v1,28(a0)
  400a88:	ac820018 	sw	v0,24(a0)
  400a8c:	ac800020 	sw	zero,32(a0)
  400a90:	ac800024 	sw	zero,36(a0)
  400a94:	ac800028 	sw	zero,40(a0)
  400a98:	ac800030 	sw	zero,48(a0)
  400a9c:	03e00008 	jr	ra
  400aa0:	ac800034 	sw	zero,52(a0)

00400aa4 <__pf_fill>:
  400aa4:	27bdffd0 	addiu	sp,sp,-48
  400aa8:	afb30024 	sw	s3,36(sp)
  400aac:	afb20020 	sw	s2,32(sp)
  400ab0:	afbf0028 	sw	ra,40(sp)
  400ab4:	afb1001c 	sw	s1,28(sp)
  400ab8:	afb00018 	sw	s0,24(sp)
  400abc:	00809821 	move	s3,a0
  400ac0:	8c82002c 	lw	v0,44(a0)
  400ac4:	18a0000b 	blez	a1,400af4 <__pf_fill+0x50>
  400ac8:	00a09021 	move	s2,a1
  400acc:	a3a20010 	sb	v0,16(sp)
  400ad0:	00008021 	move	s0,zero
  400ad4:	27b10010 	addiu	s1,sp,16
  400ad8:	26100001 	addiu	s0,s0,1
  400adc:	02602021 	move	a0,s3
  400ae0:	02202821 	move	a1,s1
  400ae4:	0c100288 	jal	400a20 <__pf_print>
  400ae8:	24060001 	li	a2,1
  400aec:	1650fffb 	bne	s2,s0,400adc <__pf_fill+0x38>
  400af0:	26100001 	addiu	s0,s0,1
  400af4:	8fbf0028 	lw	ra,40(sp)
  400af8:	8fb30024 	lw	s3,36(sp)
  400afc:	8fb20020 	lw	s2,32(sp)
  400b00:	8fb1001c 	lw	s1,28(sp)
  400b04:	8fb00018 	lw	s0,24(sp)
  400b08:	03e00008 	jr	ra
  400b0c:	27bd0030 	addiu	sp,sp,48

00400b10 <__pf_printstuff>:
  400b10:	27bdffd0 	addiu	sp,sp,-48
  400b14:	afbf0028 	sw	ra,40(sp)
  400b18:	afb50024 	sw	s5,36(sp)
  400b1c:	afb40020 	sw	s4,32(sp)
  400b20:	afb3001c 	sw	s3,28(sp)
  400b24:	afb20018 	sw	s2,24(sp)
  400b28:	00c09821 	move	s3,a2
  400b2c:	afb10014 	sw	s1,20(sp)
  400b30:	afb00010 	sw	s0,16(sp)
  400b34:	00808821 	move	s1,a0
  400b38:	00a02021 	move	a0,a1
  400b3c:	00a0a021 	move	s4,a1
  400b40:	0c1004b4 	jal	4012d0 <strlen>
  400b44:	00e0a821 	move	s5,a3
  400b48:	02602021 	move	a0,s3
  400b4c:	0c1004b4 	jal	4012d0 <strlen>
  400b50:	00409021 	move	s2,v0
  400b54:	02a02021 	move	a0,s5
  400b58:	0c1004b4 	jal	4012d0 <strlen>
  400b5c:	02428021 	addu	s0,s2,v0
  400b60:	8e230024 	lw	v1,36(s1)
  400b64:	02022821 	addu	a1,s0,v0
  400b68:	00a3102a 	slt	v0,a1,v1
  400b6c:	10400040 	beqz	v0,400c70 <__pf_printstuff+0x160>
  400b70:	00658023 	subu	s0,v1,a1
  400b74:	1a000056 	blez	s0,400cd0 <__pf_printstuff+0x1c0>
  400b78:	02403021 	move	a2,s2
  400b7c:	8e220028 	lw	v0,40(s1)
  400b80:	00000000 	nop
  400b84:	10400028 	beqz	v0,400c28 <__pf_printstuff+0x118>
  400b88:	24020030 	li	v0,48
  400b8c:	0c1004b4 	jal	4012d0 <strlen>
  400b90:	02802021 	move	a0,s4
  400b94:	00403021 	move	a2,v0
  400b98:	02802821 	move	a1,s4
  400b9c:	0c100288 	jal	400a20 <__pf_print>
  400ba0:	02202021 	move	a0,s1
  400ba4:	0c1004b4 	jal	4012d0 <strlen>
  400ba8:	02602021 	move	a0,s3
  400bac:	00403021 	move	a2,v0
  400bb0:	02202021 	move	a0,s1
  400bb4:	0c100288 	jal	400a20 <__pf_print>
  400bb8:	02602821 	move	a1,s3
  400bbc:	8e220028 	lw	v0,40(s1)
  400bc0:	00000000 	nop
  400bc4:	14400005 	bnez	v0,400bdc <__pf_printstuff+0xcc>
  400bc8:	24020030 	li	v0,48
  400bcc:	8e23002c 	lw	v1,44(s1)
  400bd0:	00000000 	nop
  400bd4:	1062004b 	beq	v1,v0,400d04 <__pf_printstuff+0x1f4>
  400bd8:	02202021 	move	a0,s1
  400bdc:	0c1004b4 	jal	4012d0 <strlen>
  400be0:	02a02021 	move	a0,s5
  400be4:	00403021 	move	a2,v0
  400be8:	02202021 	move	a0,s1
  400bec:	0c100288 	jal	400a20 <__pf_print>
  400bf0:	02a02821 	move	a1,s5
  400bf4:	8e220028 	lw	v0,40(s1)
  400bf8:	00000000 	nop
  400bfc:	14400012 	bnez	v0,400c48 <__pf_printstuff+0x138>
  400c00:	02202021 	move	a0,s1
  400c04:	8fbf0028 	lw	ra,40(sp)
  400c08:	8fb50024 	lw	s5,36(sp)
  400c0c:	8fb40020 	lw	s4,32(sp)
  400c10:	8fb3001c 	lw	s3,28(sp)
  400c14:	8fb20018 	lw	s2,24(sp)
  400c18:	8fb10014 	lw	s1,20(sp)
  400c1c:	8fb00010 	lw	s0,16(sp)
  400c20:	03e00008 	jr	ra
  400c24:	27bd0030 	addiu	sp,sp,48
  400c28:	8e23002c 	lw	v1,44(s1)
  400c2c:	00000000 	nop
  400c30:	1062ffd6 	beq	v1,v0,400b8c <__pf_printstuff+0x7c>
  400c34:	02202021 	move	a0,s1
  400c38:	0c1002a9 	jal	400aa4 <__pf_fill>
  400c3c:	02002821 	move	a1,s0
  400c40:	081002e3 	j	400b8c <__pf_printstuff+0x7c>
  400c44:	00000000 	nop
  400c48:	02002821 	move	a1,s0
  400c4c:	8fbf0028 	lw	ra,40(sp)
  400c50:	8fb50024 	lw	s5,36(sp)
  400c54:	8fb40020 	lw	s4,32(sp)
  400c58:	8fb3001c 	lw	s3,28(sp)
  400c5c:	8fb20018 	lw	s2,24(sp)
  400c60:	8fb10014 	lw	s1,20(sp)
  400c64:	8fb00010 	lw	s0,16(sp)
  400c68:	081002a9 	j	400aa4 <__pf_fill>
  400c6c:	27bd0030 	addiu	sp,sp,48
  400c70:	02802821 	move	a1,s4
  400c74:	02403021 	move	a2,s2
  400c78:	0c100288 	jal	400a20 <__pf_print>
  400c7c:	02202021 	move	a0,s1
  400c80:	0c1004b4 	jal	4012d0 <strlen>
  400c84:	02602021 	move	a0,s3
  400c88:	00403021 	move	a2,v0
  400c8c:	02202021 	move	a0,s1
  400c90:	0c100288 	jal	400a20 <__pf_print>
  400c94:	02602821 	move	a1,s3
  400c98:	0c1004b4 	jal	4012d0 <strlen>
  400c9c:	02a02021 	move	a0,s5
  400ca0:	02202021 	move	a0,s1
  400ca4:	02a02821 	move	a1,s5
  400ca8:	8fbf0028 	lw	ra,40(sp)
  400cac:	8fb50024 	lw	s5,36(sp)
  400cb0:	8fb40020 	lw	s4,32(sp)
  400cb4:	8fb3001c 	lw	s3,28(sp)
  400cb8:	8fb20018 	lw	s2,24(sp)
  400cbc:	8fb10014 	lw	s1,20(sp)
  400cc0:	8fb00010 	lw	s0,16(sp)
  400cc4:	00403021 	move	a2,v0
  400cc8:	08100288 	j	400a20 <__pf_print>
  400ccc:	27bd0030 	addiu	sp,sp,48
  400cd0:	02802821 	move	a1,s4
  400cd4:	0c100288 	jal	400a20 <__pf_print>
  400cd8:	02202021 	move	a0,s1
  400cdc:	0c1004b4 	jal	4012d0 <strlen>
  400ce0:	02602021 	move	a0,s3
  400ce4:	00403021 	move	a2,v0
  400ce8:	02202021 	move	a0,s1
  400cec:	0c100288 	jal	400a20 <__pf_print>
  400cf0:	02602821 	move	a1,s3
  400cf4:	0c1004b4 	jal	4012d0 <strlen>
  400cf8:	02a02021 	move	a0,s5
  400cfc:	08100329 	j	400ca4 <__pf_printstuff+0x194>
  400d00:	02202021 	move	a0,s1
  400d04:	0c1002a9 	jal	400aa4 <__pf_fill>
  400d08:	02002821 	move	a1,s0
  400d0c:	081002f7 	j	400bdc <__pf_printstuff+0xcc>
  400d10:	00000000 	nop

00400d14 <__vprintf>:
  400d14:	27bdff68 	addiu	sp,sp,-152
  400d18:	afbe0090 	sw	s8,144(sp)
  400d1c:	27be0030 	addiu	s8,sp,48
  400d20:	afb10074 	sw	s1,116(sp)
  400d24:	afa40030 	sw	a0,48(sp)
  400d28:	00c08821 	move	s1,a2
  400d2c:	03c02021 	move	a0,s8
  400d30:	afb00070 	sw	s0,112(sp)
  400d34:	afbf0094 	sw	ra,148(sp)
  400d38:	afb7008c 	sw	s7,140(sp)
  400d3c:	afb60088 	sw	s6,136(sp)
  400d40:	afb50084 	sw	s5,132(sp)
  400d44:	afb40080 	sw	s4,128(sp)
  400d48:	afb3007c 	sw	s3,124(sp)
  400d4c:	afb20078 	sw	s2,120(sp)
  400d50:	afa50034 	sw	a1,52(sp)
  400d54:	afa70038 	sw	a3,56(sp)
  400d58:	0c10029a 	jal	400a68 <__pf_endfield>
  400d5c:	afa0003c 	sw	zero,60(sp)
  400d60:	82300000 	lb	s0,0(s1)
  400d64:	00000000 	nop
  400d68:	12000017 	beqz	s0,400dc8 <__vprintf+0xb4>
  400d6c:	0220a021 	move	s4,s1
  400d70:	08100366 	j	400d98 <__vprintf+0x84>
  400d74:	00000000 	nop
  400d78:	27a50010 	addiu	a1,sp,16
  400d7c:	24060001 	li	a2,1
  400d80:	0c100288 	jal	400a20 <__pf_print>
  400d84:	a3b00010 	sb	s0,16(sp)
  400d88:	82900001 	lb	s0,1(s4)
  400d8c:	00000000 	nop
  400d90:	1200000d 	beqz	s0,400dc8 <__vprintf+0xb4>
  400d94:	26940001 	addiu	s4,s4,1
  400d98:	8fa20040 	lw	v0,64(sp)
  400d9c:	00000000 	nop
  400da0:	14400016 	bnez	v0,400dfc <__vprintf+0xe8>
  400da4:	24020025 	li	v0,37
  400da8:	1602fff3 	bne	s0,v0,400d78 <__vprintf+0x64>
  400dac:	03c02021 	move	a0,s8
  400db0:	24020001 	li	v0,1
  400db4:	afa20040 	sw	v0,64(sp)
  400db8:	82900001 	lb	s0,1(s4)
  400dbc:	00000000 	nop
  400dc0:	1600fff5 	bnez	s0,400d98 <__vprintf+0x84>
  400dc4:	26940001 	addiu	s4,s4,1
  400dc8:	8fa2003c 	lw	v0,60(sp)
  400dcc:	8fbf0094 	lw	ra,148(sp)
  400dd0:	8fbe0090 	lw	s8,144(sp)
  400dd4:	8fb7008c 	lw	s7,140(sp)
  400dd8:	8fb60088 	lw	s6,136(sp)
  400ddc:	8fb50084 	lw	s5,132(sp)
  400de0:	8fb40080 	lw	s4,128(sp)
  400de4:	8fb3007c 	lw	s3,124(sp)
  400de8:	8fb20078 	lw	s2,120(sp)
  400dec:	8fb10074 	lw	s1,116(sp)
  400df0:	8fb00070 	lw	s0,112(sp)
  400df4:	03e00008 	jr	ra
  400df8:	27bd0098 	addiu	sp,sp,152
  400dfc:	3c040040 	lui	a0,0x40
  400e00:	24841d5c 	addiu	a0,a0,7516
  400e04:	0c100490 	jal	401240 <strchr>
  400e08:	02002821 	move	a1,s0
  400e0c:	10400031 	beqz	v0,400ed4 <__vprintf+0x1c0>
  400e10:	24020030 	li	v0,48
  400e14:	1202001d 	beq	s0,v0,400e8c <__vprintf+0x178>
  400e18:	2a020031 	slti	v0,s0,49
  400e1c:	10400013 	beqz	v0,400e6c <__vprintf+0x158>
  400e20:	2402006c 	li	v0,108
  400e24:	24020023 	li	v0,35
  400e28:	12020027 	beq	s0,v0,400ec8 <__vprintf+0x1b4>
  400e2c:	2402002d 	li	v0,45
  400e30:	1202004a 	beq	s0,v0,400f5c <__vprintf+0x248>
  400e34:	24020001 	li	v0,1
  400e38:	2602ffcf 	addiu	v0,s0,-49
  400e3c:	2c420009 	sltiu	v0,v0,9
  400e40:	1040001a 	beqz	v0,400eac <__vprintf+0x198>
  400e44:	3c040040 	lui	a0,0x40
  400e48:	8fa20054 	lw	v0,84(sp)
  400e4c:	00000000 	nop
  400e50:	000218c0 	sll	v1,v0,0x3
  400e54:	00021040 	sll	v0,v0,0x1
  400e58:	00431021 	addu	v0,v0,v1
  400e5c:	02021021 	addu	v0,s0,v0
  400e60:	2442ffd0 	addiu	v0,v0,-48
  400e64:	08100362 	j	400d88 <__vprintf+0x74>
  400e68:	afa20054 	sw	v0,84(sp)
  400e6c:	1602fff3 	bne	s0,v0,400e3c <__vprintf+0x128>
  400e70:	2602ffcf 	addiu	v0,s0,-49
  400e74:	8fa20044 	lw	v0,68(sp)
  400e78:	24030001 	li	v1,1
  400e7c:	10430039 	beq	v0,v1,400f64 <__vprintf+0x250>
  400e80:	24020002 	li	v0,2
  400e84:	08100362 	j	400d88 <__vprintf+0x74>
  400e88:	afa30044 	sw	v1,68(sp)
  400e8c:	8fa20054 	lw	v0,84(sp)
  400e90:	00000000 	nop
  400e94:	1840008c 	blez	v0,4010c8 <__vprintf+0x3b4>
  400e98:	000218c0 	sll	v1,v0,0x3
  400e9c:	00021040 	sll	v0,v0,0x1
  400ea0:	00431021 	addu	v0,v0,v1
  400ea4:	08100362 	j	400d88 <__vprintf+0x74>
  400ea8:	afa20054 	sw	v0,84(sp)
  400eac:	3c060040 	lui	a2,0x40
  400eb0:	24841d6c 	addiu	a0,a0,7532
  400eb4:	24c61d94 	addiu	a2,a2,7572
  400eb8:	0c1004d8 	jal	401360 <__bad_assert>
  400ebc:	240500dc 	li	a1,220
  400ec0:	08100392 	j	400e48 <__vprintf+0x134>
  400ec4:	00000000 	nop
  400ec8:	24020001 	li	v0,1
  400ecc:	08100362 	j	400d88 <__vprintf+0x74>
  400ed0:	afa20068 	sw	v0,104(sp)
  400ed4:	3c040040 	lui	a0,0x40
  400ed8:	24841da8 	addiu	a0,a0,7592
  400edc:	0c100490 	jal	401240 <strchr>
  400ee0:	02002821 	move	a1,s0
  400ee4:	10400091 	beqz	v0,40112c <__vprintf+0x418>
  400ee8:	24020070 	li	v0,112
  400eec:	1202001f 	beq	s0,v0,400f6c <__vprintf+0x258>
  400ef0:	24020064 	li	v0,100
  400ef4:	1202009e 	beq	s0,v0,401170 <__vprintf+0x45c>
  400ef8:	24020001 	li	v0,1
  400efc:	8fa30044 	lw	v1,68(sp)
  400f00:	00000000 	nop
  400f04:	10620003 	beq	v1,v0,400f14 <__vprintf+0x200>
  400f08:	00000000 	nop
  400f0c:	14600074 	bnez	v1,4010e0 <__vprintf+0x3cc>
  400f10:	24020002 	li	v0,2
  400f14:	8fa20038 	lw	v0,56(sp)
  400f18:	afa00048 	sw	zero,72(sp)
  400f1c:	8c430000 	lw	v1,0(v0)
  400f20:	24420004 	addiu	v0,v0,4
  400f24:	afa20038 	sw	v0,56(sp)
  400f28:	afa3004c 	sw	v1,76(sp)
  400f2c:	2602ff9c 	addiu	v0,s0,-100
  400f30:	304200ff 	andi	v0,v0,0xff
  400f34:	2c430015 	sltiu	v1,v0,21
  400f38:	10600015 	beqz	v1,400f90 <__vprintf+0x27c>
  400f3c:	3c030040 	lui	v1,0x40
  400f40:	00021080 	sll	v0,v0,0x2
  400f44:	24631a80 	addiu	v1,v1,6784
  400f48:	00431021 	addu	v0,v0,v1
  400f4c:	8c440000 	lw	a0,0(v0)
  400f50:	00000000 	nop
  400f54:	00800008 	jr	a0
  400f58:	00000000 	nop
  400f5c:	08100362 	j	400d88 <__vprintf+0x74>
  400f60:	afa20058 	sw	v0,88(sp)
  400f64:	08100362 	j	400d88 <__vprintf+0x74>
  400f68:	afa20044 	sw	v0,68(sp)
  400f6c:	8fa20038 	lw	v0,56(sp)
  400f70:	afa00048 	sw	zero,72(sp)
  400f74:	24430004 	addiu	v1,v0,4
  400f78:	afa30038 	sw	v1,56(sp)
  400f7c:	8c440000 	lw	a0,0(v0)
  400f80:	00000000 	nop
  400f84:	afa4004c 	sw	a0,76(sp)
  400f88:	24020010 	li	v0,16
  400f8c:	afa20060 	sw	v0,96(sp)
  400f90:	8fa20068 	lw	v0,104(sp)
  400f94:	00000000 	nop
  400f98:	1440004d 	bnez	v0,4010d0 <__vprintf+0x3bc>
  400f9c:	24020001 	li	v0,1
  400fa0:	24020070 	li	v0,112
  400fa4:	1202004a 	beq	s0,v0,4010d0 <__vprintf+0x3bc>
  400fa8:	24020001 	li	v0,1
  400fac:	8fb60060 	lw	s6,96(sp)
  400fb0:	3c020040 	lui	v0,0x40
  400fb4:	8fb1004c 	lw	s1,76(sp)
  400fb8:	8fb00048 	lw	s0,72(sp)
  400fbc:	a3a00029 	sb	zero,41(sp)
  400fc0:	24571db0 	addiu	s7,v0,7600
  400fc4:	27b50028 	addiu	s5,sp,40
  400fc8:	02c09821 	move	s3,s6
  400fcc:	001697c3 	sra	s2,s6,0x1f
  400fd0:	02202821 	move	a1,s1
  400fd4:	02002021 	move	a0,s0
  400fd8:	02603821 	move	a3,s3
  400fdc:	0c1004cc 	jal	401330 <__umoddi3>
  400fe0:	02403021 	move	a2,s2
  400fe4:	02e31821 	addu	v1,s7,v1
  400fe8:	90620000 	lbu	v0,0(v1)
  400fec:	02202821 	move	a1,s1
  400ff0:	02002021 	move	a0,s0
  400ff4:	02603821 	move	a3,s3
  400ff8:	02403021 	move	a2,s2
  400ffc:	0c1004c4 	jal	401310 <__udivdi3>
  401000:	a2a20000 	sb	v0,0(s5)
  401004:	00408021 	move	s0,v0
  401008:	02031025 	or	v0,s0,v1
  40100c:	00608821 	move	s1,v1
  401010:	1440ffef 	bnez	v0,400fd0 <__vprintf+0x2bc>
  401014:	26b5ffff 	addiu	s5,s5,-1
  401018:	8fa20064 	lw	v0,100(sp)
  40101c:	00000000 	nop
  401020:	10400006 	beqz	v0,40103c <__vprintf+0x328>
  401024:	3c020040 	lui	v0,0x40
  401028:	24020010 	li	v0,16
  40102c:	12c2005e 	beq	s6,v0,4011a8 <__vprintf+0x494>
  401030:	24020008 	li	v0,8
  401034:	12c20037 	beq	s6,v0,401114 <__vprintf+0x400>
  401038:	3c020040 	lui	v0,0x40
  40103c:	24461e78 	addiu	a2,v0,7800
  401040:	8fa20050 	lw	v0,80(sp)
  401044:	00000000 	nop
  401048:	10400023 	beqz	v0,4010d8 <__vprintf+0x3c4>
  40104c:	3c020040 	lui	v0,0x40
  401050:	3c020040 	lui	v0,0x40
  401054:	24451d50 	addiu	a1,v0,7504
  401058:	03c02021 	move	a0,s8
  40105c:	0c1002c4 	jal	400b10 <__pf_printstuff>
  401060:	26a70001 	addiu	a3,s5,1
  401064:	0c10029a 	jal	400a68 <__pf_endfield>
  401068:	03c02021 	move	a0,s8
  40106c:	08100362 	j	400d88 <__vprintf+0x74>
  401070:	00000000 	nop
  401074:	8fa20038 	lw	v0,56(sp)
  401078:	2403fff8 	li	v1,-8
  40107c:	24420007 	addiu	v0,v0,7
  401080:	00431024 	and	v0,v0,v1
  401084:	8c470004 	lw	a3,4(v0)
  401088:	8c460000 	lw	a2,0(v0)
  40108c:	24420008 	addiu	v0,v0,8
  401090:	afa20038 	sw	v0,56(sp)
  401094:	04c10040 	bgez	a2,401198 <__vprintf+0x484>
  401098:	2402000a 	li	v0,10
  40109c:	00071823 	negu	v1,a3
  4010a0:	0003282b 	sltu	a1,zero,v1
  4010a4:	00061023 	negu	v0,a2
  4010a8:	00451023 	subu	v0,v0,a1
  4010ac:	2404ffff 	li	a0,-1
  4010b0:	afa40050 	sw	a0,80(sp)
  4010b4:	afa3004c 	sw	v1,76(sp)
  4010b8:	afa20048 	sw	v0,72(sp)
  4010bc:	2402000a 	li	v0,10
  4010c0:	081003e4 	j	400f90 <__vprintf+0x27c>
  4010c4:	afa20060 	sw	v0,96(sp)
  4010c8:	08100362 	j	400d88 <__vprintf+0x74>
  4010cc:	afb0005c 	sw	s0,92(sp)
  4010d0:	081003eb 	j	400fac <__vprintf+0x298>
  4010d4:	afa20064 	sw	v0,100(sp)
  4010d8:	08100416 	j	401058 <__vprintf+0x344>
  4010dc:	24451e78 	addiu	a1,v0,7800
  4010e0:	1462ff93 	bne	v1,v0,400f30 <__vprintf+0x21c>
  4010e4:	2602ff9c 	addiu	v0,s0,-100
  4010e8:	8fa20038 	lw	v0,56(sp)
  4010ec:	2403fff8 	li	v1,-8
  4010f0:	24420007 	addiu	v0,v0,7
  4010f4:	00431024 	and	v0,v0,v1
  4010f8:	8c450004 	lw	a1,4(v0)
  4010fc:	8c440000 	lw	a0,0(v0)
  401100:	24420008 	addiu	v0,v0,8
  401104:	afa20038 	sw	v0,56(sp)
  401108:	afa5004c 	sw	a1,76(sp)
  40110c:	081003cb 	j	400f2c <__vprintf+0x218>
  401110:	afa40048 	sw	a0,72(sp)
  401114:	3c020040 	lui	v0,0x40
  401118:	08100410 	j	401040 <__vprintf+0x32c>
  40111c:	24461dc8 	addiu	a2,v0,7624
  401120:	24020008 	li	v0,8
  401124:	081003e4 	j	400f90 <__vprintf+0x27c>
  401128:	afa20060 	sw	v0,96(sp)
  40112c:	24020073 	li	v0,115
  401130:	12020028 	beq	s0,v0,4011d4 <__vprintf+0x4c0>
  401134:	24020063 	li	v0,99
  401138:	12020037 	beq	s0,v0,401218 <__vprintf+0x504>
  40113c:	00000000 	nop
  401140:	a3b00011 	sb	s0,17(sp)
  401144:	3c050040 	lui	a1,0x40
  401148:	24a51e78 	addiu	a1,a1,7800
  40114c:	03c02021 	move	a0,s8
  401150:	00a03021 	move	a2,a1
  401154:	27a70011 	addiu	a3,sp,17
  401158:	0c1002c4 	jal	400b10 <__pf_printstuff>
  40115c:	a3a00012 	sb	zero,18(sp)
  401160:	0c10029a 	jal	400a68 <__pf_endfield>
  401164:	03c02021 	move	a0,s8
  401168:	08100362 	j	400d88 <__vprintf+0x74>
  40116c:	00000000 	nop
  401170:	8fa30044 	lw	v1,68(sp)
  401174:	00000000 	nop
  401178:	1062000e 	beq	v1,v0,4011b4 <__vprintf+0x4a0>
  40117c:	00000000 	nop
  401180:	1060000c 	beqz	v1,4011b4 <__vprintf+0x4a0>
  401184:	24020002 	li	v0,2
  401188:	1062ffba 	beq	v1,v0,401074 <__vprintf+0x360>
  40118c:	00003821 	move	a3,zero
  401190:	00003021 	move	a2,zero
  401194:	2402000a 	li	v0,10
  401198:	afa7004c 	sw	a3,76(sp)
  40119c:	afa60048 	sw	a2,72(sp)
  4011a0:	081003e4 	j	400f90 <__vprintf+0x27c>
  4011a4:	afa20060 	sw	v0,96(sp)
  4011a8:	3c020040 	lui	v0,0x40
  4011ac:	08100410 	j	401040 <__vprintf+0x32c>
  4011b0:	24461dc4 	addiu	a2,v0,7620
  4011b4:	8fa20038 	lw	v0,56(sp)
  4011b8:	00000000 	nop
  4011bc:	8c430000 	lw	v1,0(v0)
  4011c0:	24420004 	addiu	v0,v0,4
  4011c4:	00603821 	move	a3,v1
  4011c8:	000337c3 	sra	a2,v1,0x1f
  4011cc:	08100425 	j	401094 <__vprintf+0x380>
  4011d0:	afa20038 	sw	v0,56(sp)
  4011d4:	8fa30038 	lw	v1,56(sp)
  4011d8:	00000000 	nop
  4011dc:	8c670000 	lw	a3,0(v1)
  4011e0:	00000000 	nop
  4011e4:	10e00013 	beqz	a3,401234 <__vprintf+0x520>
  4011e8:	3c020040 	lui	v0,0x40
  4011ec:	3c050040 	lui	a1,0x40
  4011f0:	24a51e78 	addiu	a1,a1,7800
  4011f4:	24620004 	addiu	v0,v1,4
  4011f8:	03c02021 	move	a0,s8
  4011fc:	00a03021 	move	a2,a1
  401200:	0c1002c4 	jal	400b10 <__pf_printstuff>
  401204:	afa20038 	sw	v0,56(sp)
  401208:	0c10029a 	jal	400a68 <__pf_endfield>
  40120c:	03c02021 	move	a0,s8
  401210:	08100362 	j	400d88 <__vprintf+0x74>
  401214:	00000000 	nop
  401218:	8fa20038 	lw	v0,56(sp)
  40121c:	00000000 	nop
  401220:	8c430000 	lw	v1,0(v0)
  401224:	24420004 	addiu	v0,v0,4
  401228:	afa20038 	sw	v0,56(sp)
  40122c:	08100451 	j	401144 <__vprintf+0x430>
  401230:	a3a30011 	sb	v1,17(sp)
  401234:	0810047b 	j	4011ec <__vprintf+0x4d8>
  401238:	24471d54 	addiu	a3,v0,7508
  40123c:	00000000 	nop

00401240 <strchr>:
  401240:	80830000 	lb	v1,0(a0)
  401244:	00052e00 	sll	a1,a1,0x18
  401248:	00801021 	move	v0,a0
  40124c:	1060000c 	beqz	v1,401280 <strchr+0x40>
  401250:	00052e03 	sra	a1,a1,0x18
  401254:	14a30006 	bne	a1,v1,401270 <strchr+0x30>
  401258:	24420001 	addiu	v0,v0,1
  40125c:	03e00008 	jr	ra
  401260:	2442ffff 	addiu	v0,v0,-1
  401264:	10a3000c 	beq	a1,v1,401298 <strchr+0x58>
  401268:	00000000 	nop
  40126c:	24420001 	addiu	v0,v0,1
  401270:	80430000 	lb	v1,0(v0)
  401274:	00000000 	nop
  401278:	1460fffa 	bnez	v1,401264 <strchr+0x24>
  40127c:	00000000 	nop
  401280:	14a00003 	bnez	a1,401290 <strchr+0x50>
  401284:	00000000 	nop
  401288:	03e00008 	jr	ra
  40128c:	00000000 	nop
  401290:	03e00008 	jr	ra
  401294:	00001021 	move	v0,zero
  401298:	03e00008 	jr	ra
  40129c:	00000000 	nop

004012a0 <strerror>:
  4012a0:	3c020040 	lui	v0,0x40
  4012a4:	00042880 	sll	a1,a0,0x2
  4012a8:	24421ae0 	addiu	v0,v0,6880
  4012ac:	3c030040 	lui	v1,0x40
  4012b0:	2c840041 	sltiu	a0,a0,65
  4012b4:	00a22821 	addu	a1,a1,v0
  4012b8:	10800002 	beqz	a0,4012c4 <strerror+0x24>
  4012bc:	24621dcc 	addiu	v0,v1,7628
  4012c0:	8ca20000 	lw	v0,0(a1)
  4012c4:	03e00008 	jr	ra
  4012c8:	00000000 	nop
  4012cc:	00000000 	nop

004012d0 <strlen>:
  4012d0:	80820000 	lb	v0,0(a0)
  4012d4:	00000000 	nop
  4012d8:	1040000a 	beqz	v0,401304 <strlen+0x34>
  4012dc:	00002821 	move	a1,zero
  4012e0:	24a50001 	addiu	a1,a1,1
  4012e4:	00851021 	addu	v0,a0,a1
  4012e8:	80430000 	lb	v1,0(v0)
  4012ec:	00000000 	nop
  4012f0:	1460fffc 	bnez	v1,4012e4 <strlen+0x14>
  4012f4:	24a50001 	addiu	a1,a1,1
  4012f8:	24a5ffff 	addiu	a1,a1,-1
  4012fc:	03e00008 	jr	ra
  401300:	00a01021 	move	v0,a1
  401304:	03e00008 	jr	ra
  401308:	00a01021 	move	v0,a1
  40130c:	00000000 	nop

00401310 <__udivdi3>:
  401310:	27bdffe0 	addiu	sp,sp,-32
  401314:	afbf0018 	sw	ra,24(sp)
  401318:	0c100553 	jal	40154c <__qdivrem>
  40131c:	afa00010 	sw	zero,16(sp)
  401320:	8fbf0018 	lw	ra,24(sp)
  401324:	00000000 	nop
  401328:	03e00008 	jr	ra
  40132c:	27bd0020 	addiu	sp,sp,32

00401330 <__umoddi3>:
  401330:	27bdffd8 	addiu	sp,sp,-40
  401334:	27a20018 	addiu	v0,sp,24
  401338:	afbf0020 	sw	ra,32(sp)
  40133c:	0c100553 	jal	40154c <__qdivrem>
  401340:	afa20010 	sw	v0,16(sp)
  401344:	8fa3001c 	lw	v1,28(sp)
  401348:	8fa20018 	lw	v0,24(sp)
  40134c:	8fbf0020 	lw	ra,32(sp)
  401350:	00000000 	nop
  401354:	03e00008 	jr	ra
  401358:	27bd0028 	addiu	sp,sp,40
  40135c:	00000000 	nop

00401360 <__bad_assert>:
  401360:	27bdfee0 	addiu	sp,sp,-288
  401364:	00c03821 	move	a3,a2
  401368:	afb00118 	sw	s0,280(sp)
  40136c:	3c060040 	lui	a2,0x40
  401370:	27b00018 	addiu	s0,sp,24
  401374:	24c623d0 	addiu	a2,a2,9168
  401378:	afa40010 	sw	a0,16(sp)
  40137c:	afa50014 	sw	a1,20(sp)
  401380:	02002021 	move	a0,s0
  401384:	afbf011c 	sw	ra,284(sp)
  401388:	0c100524 	jal	401490 <snprintf>
  40138c:	24050100 	li	a1,256
  401390:	0c1004b4 	jal	4012d0 <strlen>
  401394:	02002021 	move	a0,s0
  401398:	00403021 	move	a2,v0
  40139c:	02002821 	move	a1,s0
  4013a0:	0c100193 	jal	40064c <write>
  4013a4:	24040002 	li	a0,2
  4013a8:	0c100530 	jal	4014c0 <abort>
  4013ac:	00000000 	nop

004013b0 <__snprintf_send>:
  4013b0:	10c00012 	beqz	a2,4013fc <__snprintf_send+0x4c>
  4013b4:	00004021 	move	t0,zero
  4013b8:	8c870008 	lw	a3,8(a0)
  4013bc:	8c820004 	lw	v0,4(a0)
  4013c0:	00a81821 	addu	v1,a1,t0
  4013c4:	00e2102b 	sltu	v0,a3,v0
  4013c8:	1040000a 	beqz	v0,4013f4 <__snprintf_send+0x44>
  4013cc:	25080001 	addiu	t0,t0,1
  4013d0:	8c820000 	lw	v0,0(a0)
  4013d4:	90630000 	lbu	v1,0(v1)
  4013d8:	00471021 	addu	v0,v0,a3
  4013dc:	a0430000 	sb	v1,0(v0)
  4013e0:	8c870008 	lw	a3,8(a0)
  4013e4:	00000000 	nop
  4013e8:	24e20001 	addiu	v0,a3,1
  4013ec:	00403821 	move	a3,v0
  4013f0:	ac820008 	sw	v0,8(a0)
  4013f4:	14c8fff1 	bne	a2,t0,4013bc <__snprintf_send+0xc>
  4013f8:	00000000 	nop
  4013fc:	03e00008 	jr	ra
  401400:	00000000 	nop

00401404 <vsnprintf>:
  401404:	27bdffd8 	addiu	sp,sp,-40
  401408:	afb00020 	sw	s0,32(sp)
  40140c:	00a01021 	move	v0,a1
  401410:	00808021 	move	s0,a0
  401414:	3c040040 	lui	a0,0x40
  401418:	24a3ffff 	addiu	v1,a1,-1
  40141c:	afbf0024 	sw	ra,36(sp)
  401420:	248413b0 	addiu	a0,a0,5040
  401424:	27a50010 	addiu	a1,sp,16
  401428:	1440000c 	bnez	v0,40145c <vsnprintf+0x58>
  40142c:	afb00010 	sw	s0,16(sp)
  401430:	3c040040 	lui	a0,0x40
  401434:	248413b0 	addiu	a0,a0,5040
  401438:	afa00014 	sw	zero,20(sp)
  40143c:	0c100345 	jal	400d14 <__vprintf>
  401440:	afa00018 	sw	zero,24(sp)
  401444:	00401821 	move	v1,v0
  401448:	8fbf0024 	lw	ra,36(sp)
  40144c:	8fb00020 	lw	s0,32(sp)
  401450:	00601021 	move	v0,v1
  401454:	03e00008 	jr	ra
  401458:	27bd0028 	addiu	sp,sp,40
  40145c:	afa30014 	sw	v1,20(sp)
  401460:	0c100345 	jal	400d14 <__vprintf>
  401464:	afa00018 	sw	zero,24(sp)
  401468:	00401821 	move	v1,v0
  40146c:	8fa20018 	lw	v0,24(sp)
  401470:	00000000 	nop
  401474:	02021021 	addu	v0,s0,v0
  401478:	a0400000 	sb	zero,0(v0)
  40147c:	8fbf0024 	lw	ra,36(sp)
  401480:	8fb00020 	lw	s0,32(sp)
  401484:	00601021 	move	v0,v1
  401488:	03e00008 	jr	ra
  40148c:	27bd0028 	addiu	sp,sp,40

00401490 <snprintf>:
  401490:	27bdffe0 	addiu	sp,sp,-32
  401494:	27a2002c 	addiu	v0,sp,44
  401498:	afa7002c 	sw	a3,44(sp)
  40149c:	00403821 	move	a3,v0
  4014a0:	afbf0018 	sw	ra,24(sp)
  4014a4:	0c100501 	jal	401404 <vsnprintf>
  4014a8:	afa20010 	sw	v0,16(sp)
  4014ac:	8fbf0018 	lw	ra,24(sp)
  4014b0:	00000000 	nop
  4014b4:	03e00008 	jr	ra
  4014b8:	27bd0020 	addiu	sp,sp,32
  4014bc:	00000000 	nop

004014c0 <abort>:
  4014c0:	27bdffe8 	addiu	sp,sp,-24
  4014c4:	afbf0010 	sw	ra,16(sp)
  4014c8:	0c100153 	jal	40054c <_exit>
  4014cc:	240400ff 	li	a0,255

004014d0 <shl>:
  4014d0:	18a00016 	blez	a1,40152c <shl+0x5c>
  4014d4:	24020010 	li	v0,16
  4014d8:	00464823 	subu	t1,v0,a2
  4014dc:	00803821 	move	a3,a0
  4014e0:	00004021 	move	t0,zero
  4014e4:	8ce20000 	lw	v0,0(a3)
  4014e8:	8ce30004 	lw	v1,4(a3)
  4014ec:	00c21004 	sllv	v0,v0,a2
  4014f0:	3042ffff 	andi	v0,v0,0xffff
  4014f4:	01231806 	srlv	v1,v1,t1
  4014f8:	00431025 	or	v0,v0,v1
  4014fc:	25080001 	addiu	t0,t0,1
  401500:	ace20000 	sw	v0,0(a3)
  401504:	14a8fff7 	bne	a1,t0,4014e4 <shl+0x14>
  401508:	24e70004 	addiu	a3,a3,4
  40150c:	00051880 	sll	v1,a1,0x2
  401510:	00831821 	addu	v1,a0,v1
  401514:	8c620000 	lw	v0,0(v1)
  401518:	00000000 	nop
  40151c:	00c21004 	sllv	v0,v0,a2
  401520:	3042ffff 	andi	v0,v0,0xffff
  401524:	03e00008 	jr	ra
  401528:	ac620000 	sw	v0,0(v1)
  40152c:	00001821 	move	v1,zero
  401530:	00831821 	addu	v1,a0,v1
  401534:	8c620000 	lw	v0,0(v1)
  401538:	00000000 	nop
  40153c:	00c21004 	sllv	v0,v0,a2
  401540:	3042ffff 	andi	v0,v0,0xffff
  401544:	03e00008 	jr	ra
  401548:	ac620000 	sw	v0,0(v1)

0040154c <__qdivrem>:
  40154c:	27bdff80 	addiu	sp,sp,-128
  401550:	00c71025 	or	v0,a2,a3
  401554:	afb20060 	sw	s2,96(sp)
  401558:	afbf007c 	sw	ra,124(sp)
  40155c:	afbe0078 	sw	s8,120(sp)
  401560:	afb70074 	sw	s7,116(sp)
  401564:	afb60070 	sw	s6,112(sp)
  401568:	afb5006c 	sw	s5,108(sp)
  40156c:	afb40068 	sw	s4,104(sp)
  401570:	afb30064 	sw	s3,100(sp)
  401574:	afb1005c 	sw	s1,92(sp)
  401578:	afb00058 	sw	s0,88(sp)
  40157c:	00a04821 	move	t1,a1
  401580:	8fb20090 	lw	s2,144(sp)
  401584:	14400018 	bnez	v0,4015e8 <__qdivrem+0x9c>
  401588:	00804021 	move	t0,a0
  40158c:	3c031000 	lui	v1,0x1000
  401590:	8c640000 	lw	a0,0(v1)
  401594:	24020001 	li	v0,1
  401598:	14800002 	bnez	a0,4015a4 <__qdivrem+0x58>
  40159c:	0044001b 	divu	zero,v0,a0
  4015a0:	0007000d 	break	0x7
  4015a4:	00001012 	mflo	v0
  4015a8:	12400003 	beqz	s2,4015b8 <__qdivrem+0x6c>
  4015ac:	00401821 	move	v1,v0
  4015b0:	ae450004 	sw	a1,4(s2)
  4015b4:	ae480000 	sw	t0,0(s2)
  4015b8:	8fbf007c 	lw	ra,124(sp)
  4015bc:	8fbe0078 	lw	s8,120(sp)
  4015c0:	8fb70074 	lw	s7,116(sp)
  4015c4:	8fb60070 	lw	s6,112(sp)
  4015c8:	8fb5006c 	lw	s5,108(sp)
  4015cc:	8fb40068 	lw	s4,104(sp)
  4015d0:	8fb30064 	lw	s3,100(sp)
  4015d4:	8fb20060 	lw	s2,96(sp)
  4015d8:	8fb1005c 	lw	s1,92(sp)
  4015dc:	8fb00058 	lw	s0,88(sp)
  4015e0:	03e00008 	jr	ra
  4015e4:	27bd0080 	addiu	sp,sp,128
  4015e8:	0086102b 	sltu	v0,a0,a2
  4015ec:	10400008 	beqz	v0,401610 <__qdivrem+0xc4>
  4015f0:	00000000 	nop
  4015f4:	1240010c 	beqz	s2,401a28 <__qdivrem+0x4dc>
  4015f8:	00000000 	nop
  4015fc:	00001821 	move	v1,zero
  401600:	00001021 	move	v0,zero
  401604:	ae490004 	sw	t1,4(s2)
  401608:	0810056e 	j	4015b8 <__qdivrem+0x6c>
  40160c:	ae480000 	sw	t0,0(s2)
  401610:	10860046 	beq	a0,a2,40172c <__qdivrem+0x1e0>
  401614:	00a7102b 	sltu	v0,a1,a3
  401618:	00e08821 	move	s1,a3
  40161c:	01001821 	move	v1,t0
  401620:	00c08021 	move	s0,a2
  401624:	30c7ffff 	andi	a3,a2,0xffff
  401628:	3108ffff 	andi	t0,t0,0xffff
  40162c:	312affff 	andi	t2,t1,0xffff
  401630:	3226ffff 	andi	a2,s1,0xffff
  401634:	00031c02 	srl	v1,v1,0x10
  401638:	00092c02 	srl	a1,t1,0x10
  40163c:	00101402 	srl	v0,s0,0x10
  401640:	00112402 	srl	a0,s1,0x10
  401644:	afa00010 	sw	zero,16(sp)
  401648:	afa30014 	sw	v1,20(sp)
  40164c:	afa80018 	sw	t0,24(sp)
  401650:	afa5001c 	sw	a1,28(sp)
  401654:	afaa0020 	sw	t2,32(sp)
  401658:	afa20028 	sw	v0,40(sp)
  40165c:	afa7002c 	sw	a3,44(sp)
  401660:	afa40030 	sw	a0,48(sp)
  401664:	144000f6 	bnez	v0,401a40 <__qdivrem+0x4f4>
  401668:	afa60034 	sw	a2,52(sp)
  40166c:	14e00033 	bnez	a3,40173c <__qdivrem+0x1f0>
  401670:	27a20028 	addiu	v0,sp,40
  401674:	148000f7 	bnez	a0,401a54 <__qdivrem+0x508>
  401678:	27a2002c 	addiu	v0,sp,44
  40167c:	14c00002 	bnez	a2,401688 <__qdivrem+0x13c>
  401680:	0066001b 	divu	zero,v1,a2
  401684:	0007000d 	break	0x7
  401688:	00001010 	mfhi	v0
  40168c:	00021400 	sll	v0,v0,0x10
  401690:	00481025 	or	v0,v0,t0
  401694:	00004812 	mflo	t1
	...
  4016a0:	14c00002 	bnez	a2,4016ac <__qdivrem+0x160>
  4016a4:	0046001b 	divu	zero,v0,a2
  4016a8:	0007000d 	break	0x7
  4016ac:	00001810 	mfhi	v1
  4016b0:	00031c00 	sll	v1,v1,0x10
  4016b4:	00651825 	or	v1,v1,a1
  4016b8:	00003812 	mflo	a3
	...
  4016c4:	14c00002 	bnez	a2,4016d0 <__qdivrem+0x184>
  4016c8:	0066001b 	divu	zero,v1,a2
  4016cc:	0007000d 	break	0x7
  4016d0:	00001010 	mfhi	v0
  4016d4:	00021400 	sll	v0,v0,0x10
  4016d8:	00001812 	mflo	v1
  4016dc:	12400008 	beqz	s2,401700 <__qdivrem+0x1b4>
  4016e0:	01422025 	or	a0,t2,v0
  4016e4:	14c00002 	bnez	a2,4016f0 <__qdivrem+0x1a4>
  4016e8:	0086001b 	divu	zero,a0,a2
  4016ec:	0007000d 	break	0x7
  4016f0:	ae400000 	sw	zero,0(s2)
  4016f4:	00001010 	mfhi	v0
  4016f8:	ae420004 	sw	v0,4(s2)
  4016fc:	00000000 	nop
  401700:	14c00002 	bnez	a2,40170c <__qdivrem+0x1c0>
  401704:	0086001b 	divu	zero,a0,a2
  401708:	0007000d 	break	0x7
  40170c:	00091400 	sll	v0,t1,0x10
  401710:	00031c00 	sll	v1,v1,0x10
  401714:	00e28025 	or	s0,a3,v0
  401718:	02001021 	move	v0,s0
  40171c:	00002012 	mflo	a0
  401720:	00838825 	or	s1,a0,v1
  401724:	0810056e 	j	4015b8 <__qdivrem+0x6c>
  401728:	02201821 	move	v1,s1
  40172c:	1040ffbb 	beqz	v0,40161c <__qdivrem+0xd0>
  401730:	00e08821 	move	s1,a3
  401734:	0810057d 	j	4015f4 <__qdivrem+0xa8>
  401738:	00000000 	nop
  40173c:	afa20050 	sw	v0,80(sp)
  401740:	24170003 	li	s7,3
  401744:	27be002c 	addiu	s8,sp,44
  401748:	8fa30014 	lw	v1,20(sp)
  40174c:	24020004 	li	v0,4
  401750:	146000c4 	bnez	v1,401a64 <__qdivrem+0x518>
  401754:	00579823 	subu	s3,v0,s7
  401758:	081005d9 	j	401764 <__qdivrem+0x218>
  40175c:	27b40014 	addiu	s4,sp,20
  401760:	0060a021 	move	s4,v1
  401764:	8e820004 	lw	v0,4(s4)
  401768:	2673ffff 	addiu	s3,s3,-1
  40176c:	1040fffc 	beqz	v0,401760 <__qdivrem+0x214>
  401770:	26830004 	addiu	v1,s4,4
  401774:	24020004 	li	v0,4
  401778:	00532023 	subu	a0,v0,s3
  40177c:	2483ffff 	addiu	v1,a0,-1
  401780:	046000bc 	bltz	v1,401a74 <__qdivrem+0x528>
  401784:	00001821 	move	v1,zero
  401788:	27a60038 	addiu	a2,sp,56
  40178c:	00042880 	sll	a1,a0,0x2
  401790:	00c51021 	addu	v0,a2,a1
  401794:	2442fffc 	addiu	v0,v0,-4
  401798:	24630001 	addiu	v1,v1,1
  40179c:	ac400000 	sw	zero,0(v0)
  4017a0:	1464fffd 	bne	v1,a0,401798 <__qdivrem+0x24c>
  4017a4:	2442fffc 	addiu	v0,v0,-4
  4017a8:	8fcb0000 	lw	t3,0(s8)
  4017ac:	34028000 	li	v0,0x8000
  4017b0:	0162102b 	sltu	v0,t3,v0
  4017b4:	00c5b021 	addu	s6,a2,a1
  4017b8:	104000ac 	beqz	v0,401a6c <__qdivrem+0x520>
  4017bc:	01601821 	move	v1,t3
  4017c0:	0000a821 	move	s5,zero
  4017c4:	34048000 	li	a0,0x8000
  4017c8:	00031840 	sll	v1,v1,0x1
  4017cc:	0064102b 	sltu	v0,v1,a0
  4017d0:	1440fffd 	bnez	v0,4017c8 <__qdivrem+0x27c>
  4017d4:	26b50001 	addiu	s5,s5,1
  4017d8:	1aa00009 	blez	s5,401800 <__qdivrem+0x2b4>
  4017dc:	02f32821 	addu	a1,s7,s3
  4017e0:	02a03021 	move	a2,s5
  4017e4:	0c100534 	jal	4014d0 <shl>
  4017e8:	02802021 	move	a0,s4
  4017ec:	03c02021 	move	a0,s8
  4017f0:	26e5ffff 	addiu	a1,s7,-1
  4017f4:	0c100534 	jal	4014d0 <shl>
  4017f8:	02a03021 	move	a2,s5
  4017fc:	8fcb0000 	lw	t3,0(s8)
  401800:	8fa20050 	lw	v0,80(sp)
  401804:	00177080 	sll	t6,s7,0x2
  401808:	8c580008 	lw	t8,8(v0)
  40180c:	02c06821 	move	t5,s6
  401810:	02804821 	move	t1,s4
  401814:	028e6021 	addu	t4,s4,t6
  401818:	00007821 	move	t7,zero
  40181c:	3416ffff 	li	s6,0xffff
  401820:	8d240000 	lw	a0,0(t1)
  401824:	8d230004 	lw	v1,4(t1)
  401828:	8d260008 	lw	a2,8(t1)
  40182c:	11640081 	beq	t3,a0,401a34 <__qdivrem+0x4e8>
  401830:	00041400 	sll	v0,a0,0x10
  401834:	00621025 	or	v0,v1,v0
  401838:	15600002 	bnez	t3,401844 <__qdivrem+0x2f8>
  40183c:	004b001b 	divu	zero,v0,t3
  401840:	0007000d 	break	0x7
  401844:	00002810 	mfhi	a1
  401848:	00003812 	mflo	a3
	...
  401854:	00f80018 	mult	a3,t8
  401858:	00051400 	sll	v0,a1,0x10
  40185c:	00c21025 	or	v0,a2,v0
  401860:	00001812 	mflo	v1
  401864:	0043182b 	sltu	v1,v0,v1
  401868:	10600006 	beqz	v1,401884 <__qdivrem+0x338>
  40186c:	00000000 	nop
  401870:	24e7ffff 	addiu	a3,a3,-1
  401874:	00ab2821 	addu	a1,a1,t3
  401878:	02c5102b 	sltu	v0,s6,a1
  40187c:	1040fff6 	beqz	v0,401858 <__qdivrem+0x30c>
  401880:	00f80018 	mult	a3,t8
  401884:	1ae00017 	blez	s7,4018e4 <__qdivrem+0x398>
  401888:	00004021 	move	t0,zero
  40188c:	8fa20050 	lw	v0,80(sp)
  401890:	01802021 	move	a0,t4
  401894:	004e3021 	addu	a2,v0,t6
  401898:	02e02821 	move	a1,s7
  40189c:	3c0a0001 	lui	t2,0x1
  4018a0:	8cc20000 	lw	v0,0(a2)
  4018a4:	8c830000 	lw	v1,0(a0)
  4018a8:	00e20018 	mult	a3,v0
  4018ac:	24a5ffff 	addiu	a1,a1,-1
  4018b0:	24c6fffc 	addiu	a2,a2,-4
  4018b4:	00001012 	mflo	v0
  4018b8:	00621823 	subu	v1,v1,v0
  4018bc:	00681823 	subu	v1,v1,t0
  4018c0:	00031402 	srl	v0,v1,0x10
  4018c4:	01421023 	subu	v0,t2,v0
  4018c8:	3063ffff 	andi	v1,v1,0xffff
  4018cc:	ac830000 	sw	v1,0(a0)
  4018d0:	3048ffff 	andi	t0,v0,0xffff
  4018d4:	14a0fff2 	bnez	a1,4018a0 <__qdivrem+0x354>
  4018d8:	2484fffc 	addiu	a0,a0,-4
  4018dc:	8d240000 	lw	a0,0(t1)
  4018e0:	00000000 	nop
  4018e4:	00881023 	subu	v0,a0,t0
  4018e8:	3044ffff 	andi	a0,v0,0xffff
  4018ec:	00021c02 	srl	v1,v0,0x10
  4018f0:	10600018 	beqz	v1,401954 <__qdivrem+0x408>
  4018f4:	ad240000 	sw	a0,0(t1)
  4018f8:	1ae00012 	blez	s7,401944 <__qdivrem+0x3f8>
  4018fc:	00004021 	move	t0,zero
  401900:	8fa20050 	lw	v0,80(sp)
  401904:	01802021 	move	a0,t4
  401908:	004e3021 	addu	a2,v0,t6
  40190c:	02e02821 	move	a1,s7
  401910:	8c820000 	lw	v0,0(a0)
  401914:	8cc30000 	lw	v1,0(a2)
  401918:	01021021 	addu	v0,t0,v0
  40191c:	00431021 	addu	v0,v0,v1
  401920:	3043ffff 	andi	v1,v0,0xffff
  401924:	24a5ffff 	addiu	a1,a1,-1
  401928:	ac830000 	sw	v1,0(a0)
  40192c:	00024402 	srl	t0,v0,0x10
  401930:	2484fffc 	addiu	a0,a0,-4
  401934:	14a0fff6 	bnez	a1,401910 <__qdivrem+0x3c4>
  401938:	24c6fffc 	addiu	a2,a2,-4
  40193c:	8d240000 	lw	a0,0(t1)
  401940:	00000000 	nop
  401944:	01041021 	addu	v0,t0,a0
  401948:	3042ffff 	andi	v0,v0,0xffff
  40194c:	ad220000 	sw	v0,0(t1)
  401950:	24e7ffff 	addiu	a3,a3,-1
  401954:	25ef0001 	addiu	t7,t7,1
  401958:	026f102a 	slt	v0,s3,t7
  40195c:	ada70000 	sw	a3,0(t5)
  401960:	25290004 	addiu	t1,t1,4
  401964:	25ad0004 	addiu	t5,t5,4
  401968:	1040ffad 	beqz	v0,401820 <__qdivrem+0x2d4>
  40196c:	258c0004 	addiu	t4,t4,4
  401970:	12400022 	beqz	s2,4019fc <__qdivrem+0x4b0>
  401974:	00000000 	nop
  401978:	12a00016 	beqz	s5,4019d4 <__qdivrem+0x488>
  40197c:	02f32821 	addu	a1,s7,s3
  401980:	0265102a 	slt	v0,s3,a1
  401984:	10400011 	beqz	v0,4019cc <__qdivrem+0x480>
  401988:	00051080 	sll	v0,a1,0x2
  40198c:	00051880 	sll	v1,a1,0x2
  401990:	24020010 	li	v0,16
  401994:	00553823 	subu	a3,v0,s5
  401998:	02833021 	addu	a2,s4,v1
  40199c:	8cc2fffc 	lw	v0,-4(a2)
  4019a0:	8cc30000 	lw	v1,0(a2)
  4019a4:	00e21004 	sllv	v0,v0,a3
  4019a8:	02a31806 	srlv	v1,v1,s5
  4019ac:	3042ffff 	andi	v0,v0,0xffff
  4019b0:	24a5ffff 	addiu	a1,a1,-1
  4019b4:	00621825 	or	v1,v1,v0
  4019b8:	0265202a 	slt	a0,s3,a1
  4019bc:	acc30000 	sw	v1,0(a2)
  4019c0:	1480fff6 	bnez	a0,40199c <__qdivrem+0x450>
  4019c4:	24c6fffc 	addiu	a2,a2,-4
  4019c8:	00051080 	sll	v0,a1,0x2
  4019cc:	00541021 	addu	v0,v0,s4
  4019d0:	ac400000 	sw	zero,0(v0)
  4019d4:	8fa20014 	lw	v0,20(sp)
  4019d8:	8fa40018 	lw	a0,24(sp)
  4019dc:	00021400 	sll	v0,v0,0x10
  4019e0:	8fa3001c 	lw	v1,28(sp)
  4019e4:	00448025 	or	s0,v0,a0
  4019e8:	8fa20020 	lw	v0,32(sp)
  4019ec:	00031c00 	sll	v1,v1,0x10
  4019f0:	00628825 	or	s1,v1,v0
  4019f4:	ae510004 	sw	s1,4(s2)
  4019f8:	ae500000 	sw	s0,0(s2)
  4019fc:	8fa2003c 	lw	v0,60(sp)
  401a00:	8fa40040 	lw	a0,64(sp)
  401a04:	00021400 	sll	v0,v0,0x10
  401a08:	8fa30044 	lw	v1,68(sp)
  401a0c:	00448025 	or	s0,v0,a0
  401a10:	8fa20048 	lw	v0,72(sp)
  401a14:	00031c00 	sll	v1,v1,0x10
  401a18:	00628825 	or	s1,v1,v0
  401a1c:	02201821 	move	v1,s1
  401a20:	0810056e 	j	4015b8 <__qdivrem+0x6c>
  401a24:	02001021 	move	v0,s0
  401a28:	00001821 	move	v1,zero
  401a2c:	0810056e 	j	4015b8 <__qdivrem+0x6c>
  401a30:	00001021 	move	v0,zero
  401a34:	00602821 	move	a1,v1
  401a38:	0810061d 	j	401874 <__qdivrem+0x328>
  401a3c:	3407ffff 	li	a3,0xffff
  401a40:	27a20024 	addiu	v0,sp,36
  401a44:	24170004 	li	s7,4
  401a48:	27be0028 	addiu	s8,sp,40
  401a4c:	081005d2 	j	401748 <__qdivrem+0x1fc>
  401a50:	afa20050 	sw	v0,80(sp)
  401a54:	24170002 	li	s7,2
  401a58:	27be0030 	addiu	s8,sp,48
  401a5c:	081005d2 	j	401748 <__qdivrem+0x1fc>
  401a60:	afa20050 	sw	v0,80(sp)
  401a64:	081005dd 	j	401774 <__qdivrem+0x228>
  401a68:	27b40010 	addiu	s4,sp,16
  401a6c:	08100600 	j	401800 <__qdivrem+0x2b4>
  401a70:	0000a821 	move	s5,zero
  401a74:	00042880 	sll	a1,a0,0x2
  401a78:	081005ea 	j	4017a8 <__qdivrem+0x25c>
  401a7c:	27a60038 	addiu	a2,sp,56
