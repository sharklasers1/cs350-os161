
../../../build/user/my-testbin/mywidefork/mywidefork:     file format elf32-tradbigmips

Disassembly of section .text:

00400000 <__start>:
  400000:	3c1c1001 	lui	gp,0x1001
  400004:	279c8000 	addiu	gp,gp,-32768
  400008:	2408fff8 	li	t0,-8
  40000c:	03a8e824 	and	sp,sp,t0
  400010:	27bdfff0 	addiu	sp,sp,-16
  400014:	3c011000 	lui	at,0x1000
  400018:	ac250014 	sw	a1,20(at)
  40001c:	0c100057 	jal	40015c <main>
  400020:	00000000 	nop
  400024:	00408021 	move	s0,v0
  400028:	0c1000cd 	jal	400334 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c1000e3 	jal	40038c <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <dowait>:
  400050:	27bdffe0 	addiu	sp,sp,-32
  400054:	afb00018 	sw	s0,24(sp)
  400058:	00003021 	move	a2,zero
  40005c:	00a08021 	move	s0,a1
  400060:	afbf001c 	sw	ra,28(sp)
  400064:	0c1000e5 	jal	400394 <waitpid>
  400068:	27a50010 	addiu	a1,sp,16
  40006c:	3c040040 	lui	a0,0x40
  400070:	04400015 	bltz	v0,4000c8 <dowait+0x78>
  400074:	24841a30 	addiu	a0,a0,6704
  400078:	8fa20010 	lw	v0,16(sp)
  40007c:	00000000 	nop
  400080:	00021883 	sra	v1,v0,0x2
  400084:	30420003 	andi	v0,v0,0x3
  400088:	14400007 	bnez	v0,4000a8 <dowait+0x58>
  40008c:	24040078 	li	a0,120
  400090:	10700005 	beq	v1,s0,4000a8 <dowait+0x58>
  400094:	24640060 	addiu	a0,v1,96
  400098:	8fbf001c 	lw	ra,28(sp)
  40009c:	8fb00018 	lw	s0,24(sp)
  4000a0:	03e00008 	jr	ra
  4000a4:	27bd0020 	addiu	sp,sp,32
  4000a8:	0c1000ac 	jal	4002b0 <putchar>
  4000ac:	00000000 	nop
  4000b0:	0c1000ac 	jal	4002b0 <putchar>
  4000b4:	2404000a 	li	a0,10
  4000b8:	8fbf001c 	lw	ra,28(sp)
  4000bc:	8fb00018 	lw	s0,24(sp)
  4000c0:	03e00008 	jr	ra
  4000c4:	27bd0020 	addiu	sp,sp,32
  4000c8:	0c1001fa 	jal	4007e8 <warnx>
  4000cc:	00000000 	nop
  4000d0:	8fbf001c 	lw	ra,28(sp)
  4000d4:	8fb00018 	lw	s0,24(sp)
  4000d8:	03e00008 	jr	ra
  4000dc:	27bd0020 	addiu	sp,sp,32

004000e0 <dofork>:
  4000e0:	27bdffe0 	addiu	sp,sp,-32
  4000e4:	afb10014 	sw	s1,20(sp)
  4000e8:	afb00010 	sw	s0,16(sp)
  4000ec:	afbf0018 	sw	ra,24(sp)
  4000f0:	0c1000dd 	jal	400374 <fork>
  4000f4:	00808821 	move	s1,a0
  4000f8:	04400008 	bltz	v0,40011c <dofork+0x3c>
  4000fc:	00408021 	move	s0,v0
  400100:	10400010 	beqz	v0,400144 <dofork+0x64>
  400104:	02001021 	move	v0,s0
  400108:	8fbf0018 	lw	ra,24(sp)
  40010c:	8fb10014 	lw	s1,20(sp)
  400110:	8fb00010 	lw	s0,16(sp)
  400114:	03e00008 	jr	ra
  400118:	27bd0020 	addiu	sp,sp,32
  40011c:	3c040040 	lui	a0,0x40
  400120:	02202821 	move	a1,s1
  400124:	0c10009f 	jal	40027c <printf>
  400128:	24841a3c 	addiu	a0,a0,6716
  40012c:	02001021 	move	v0,s0
  400130:	8fbf0018 	lw	ra,24(sp)
  400134:	8fb10014 	lw	s1,20(sp)
  400138:	8fb00010 	lw	s0,16(sp)
  40013c:	03e00008 	jr	ra
  400140:	27bd0020 	addiu	sp,sp,32
  400144:	0c1000ac 	jal	4002b0 <putchar>
  400148:	26240040 	addiu	a0,s1,64
  40014c:	0c1000ac 	jal	4002b0 <putchar>
  400150:	2404000a 	li	a0,10
  400154:	0c1000e3 	jal	40038c <_exit>
  400158:	02202021 	move	a0,s1

0040015c <main>:
  40015c:	27bdffe0 	addiu	sp,sp,-32
  400160:	24040050 	li	a0,80
  400164:	afbf001c 	sw	ra,28(sp)
  400168:	afb20018 	sw	s2,24(sp)
  40016c:	afb10014 	sw	s1,20(sp)
  400170:	0c1000ac 	jal	4002b0 <putchar>
  400174:	afb00010 	sw	s0,16(sp)
  400178:	0c1000ac 	jal	4002b0 <putchar>
  40017c:	2404000a 	li	a0,10
  400180:	0c100038 	jal	4000e0 <dofork>
  400184:	24040001 	li	a0,1
  400188:	24040050 	li	a0,80
  40018c:	0c1000ac 	jal	4002b0 <putchar>
  400190:	00409021 	move	s2,v0
  400194:	0c1000ac 	jal	4002b0 <putchar>
  400198:	2404000a 	li	a0,10
  40019c:	0c100038 	jal	4000e0 <dofork>
  4001a0:	24040002 	li	a0,2
  4001a4:	24040050 	li	a0,80
  4001a8:	0c1000ac 	jal	4002b0 <putchar>
  4001ac:	00408821 	move	s1,v0
  4001b0:	0c1000ac 	jal	4002b0 <putchar>
  4001b4:	2404000a 	li	a0,10
  4001b8:	0c100038 	jal	4000e0 <dofork>
  4001bc:	24040003 	li	a0,3
  4001c0:	02402021 	move	a0,s2
  4001c4:	24050001 	li	a1,1
  4001c8:	0c100014 	jal	400050 <dowait>
  4001cc:	00408021 	move	s0,v0
  4001d0:	02202021 	move	a0,s1
  4001d4:	0c100014 	jal	400050 <dowait>
  4001d8:	24050002 	li	a1,2
  4001dc:	02002021 	move	a0,s0
  4001e0:	0c100014 	jal	400050 <dowait>
  4001e4:	24050003 	li	a1,3
  4001e8:	8fbf001c 	lw	ra,28(sp)
  4001ec:	8fb20018 	lw	s2,24(sp)
  4001f0:	8fb10014 	lw	s1,20(sp)
  4001f4:	8fb00010 	lw	s0,16(sp)
  4001f8:	00001021 	move	v0,zero
  4001fc:	03e00008 	jr	ra
  400200:	27bd0020 	addiu	sp,sp,32
	...

00400210 <vprintf>:
  400210:	00803021 	move	a2,a0
  400214:	3c040040 	lui	a0,0x40
  400218:	00a03821 	move	a3,a1
  40021c:	24840228 	addiu	a0,a0,552
  400220:	081002d5 	j	400b54 <__vprintf>
  400224:	00002821 	move	a1,zero

00400228 <__printf_send>:
  400228:	27bdffe0 	addiu	sp,sp,-32
  40022c:	afb20018 	sw	s2,24(sp)
  400230:	afb10014 	sw	s1,20(sp)
  400234:	afbf001c 	sw	ra,28(sp)
  400238:	afb00010 	sw	s0,16(sp)
  40023c:	00c09021 	move	s2,a2
  400240:	10c00008 	beqz	a2,400264 <__printf_send+0x3c>
  400244:	00a08821 	move	s1,a1
  400248:	00008021 	move	s0,zero
  40024c:	02301021 	addu	v0,s1,s0
  400250:	80440000 	lb	a0,0(v0)
  400254:	0c1000ac 	jal	4002b0 <putchar>
  400258:	26100001 	addiu	s0,s0,1
  40025c:	1650fffc 	bne	s2,s0,400250 <__printf_send+0x28>
  400260:	02301021 	addu	v0,s1,s0
  400264:	8fbf001c 	lw	ra,28(sp)
  400268:	8fb20018 	lw	s2,24(sp)
  40026c:	8fb10014 	lw	s1,20(sp)
  400270:	8fb00010 	lw	s0,16(sp)
  400274:	03e00008 	jr	ra
  400278:	27bd0020 	addiu	sp,sp,32

0040027c <printf>:
  40027c:	27bdffe0 	addiu	sp,sp,-32
  400280:	27a20024 	addiu	v0,sp,36
  400284:	afa50024 	sw	a1,36(sp)
  400288:	00402821 	move	a1,v0
  40028c:	afbf0018 	sw	ra,24(sp)
  400290:	afa60028 	sw	a2,40(sp)
  400294:	afa7002c 	sw	a3,44(sp)
  400298:	0c100084 	jal	400210 <vprintf>
  40029c:	afa20010 	sw	v0,16(sp)
  4002a0:	8fbf0018 	lw	ra,24(sp)
  4002a4:	00000000 	nop
  4002a8:	03e00008 	jr	ra
  4002ac:	27bd0020 	addiu	sp,sp,32

004002b0 <putchar>:
  4002b0:	27bdffe0 	addiu	sp,sp,-32
  4002b4:	afb00018 	sw	s0,24(sp)
  4002b8:	27a50010 	addiu	a1,sp,16
  4002bc:	00808021 	move	s0,a0
  4002c0:	24060001 	li	a2,1
  4002c4:	24040001 	li	a0,1
  4002c8:	afbf001c 	sw	ra,28(sp)
  4002cc:	0c100123 	jal	40048c <write>
  4002d0:	a3b00010 	sb	s0,16(sp)
  4002d4:	18400005 	blez	v0,4002ec <putchar+0x3c>
  4002d8:	02001021 	move	v0,s0
  4002dc:	8fbf001c 	lw	ra,28(sp)
  4002e0:	8fb00018 	lw	s0,24(sp)
  4002e4:	03e00008 	jr	ra
  4002e8:	27bd0020 	addiu	sp,sp,32
  4002ec:	2410ffff 	li	s0,-1
  4002f0:	02001021 	move	v0,s0
  4002f4:	8fbf001c 	lw	ra,28(sp)
  4002f8:	8fb00018 	lw	s0,24(sp)
  4002fc:	03e00008 	jr	ra
  400300:	27bd0020 	addiu	sp,sp,32
	...

00400310 <__exit_hack>:
  400310:	27bdfff8 	addiu	sp,sp,-8
  400314:	24020001 	li	v0,1
  400318:	afa20000 	sw	v0,0(sp)
  40031c:	8fa20000 	lw	v0,0(sp)
  400320:	00000000 	nop
  400324:	1440fffd 	bnez	v0,40031c <__exit_hack+0xc>
  400328:	00000000 	nop
  40032c:	03e00008 	jr	ra
  400330:	27bd0008 	addiu	sp,sp,8

00400334 <exit>:
  400334:	27bdffe8 	addiu	sp,sp,-24
  400338:	afbf0010 	sw	ra,16(sp)
  40033c:	0c1000e3 	jal	40038c <_exit>
  400340:	00000000 	nop
	...

00400350 <__syscall>:
  400350:	0000000c 	syscall
  400354:	10e00005 	beqz	a3,40036c <__syscall+0x1c>
  400358:	00000000 	nop
  40035c:	3c011000 	lui	at,0x1000
  400360:	ac220010 	sw	v0,16(at)
  400364:	2403ffff 	li	v1,-1
  400368:	2402ffff 	li	v0,-1
  40036c:	03e00008 	jr	ra
  400370:	00000000 	nop

00400374 <fork>:
  400374:	081000d4 	j	400350 <__syscall>
  400378:	24020000 	li	v0,0

0040037c <vfork>:
  40037c:	081000d4 	j	400350 <__syscall>
  400380:	24020001 	li	v0,1

00400384 <execv>:
  400384:	081000d4 	j	400350 <__syscall>
  400388:	24020002 	li	v0,2

0040038c <_exit>:
  40038c:	081000d4 	j	400350 <__syscall>
  400390:	24020003 	li	v0,3

00400394 <waitpid>:
  400394:	081000d4 	j	400350 <__syscall>
  400398:	24020004 	li	v0,4

0040039c <getpid>:
  40039c:	081000d4 	j	400350 <__syscall>
  4003a0:	24020005 	li	v0,5

004003a4 <getppid>:
  4003a4:	081000d4 	j	400350 <__syscall>
  4003a8:	24020006 	li	v0,6

004003ac <sbrk>:
  4003ac:	081000d4 	j	400350 <__syscall>
  4003b0:	24020007 	li	v0,7

004003b4 <mmap>:
  4003b4:	081000d4 	j	400350 <__syscall>
  4003b8:	24020008 	li	v0,8

004003bc <munmap>:
  4003bc:	081000d4 	j	400350 <__syscall>
  4003c0:	24020009 	li	v0,9

004003c4 <mprotect>:
  4003c4:	081000d4 	j	400350 <__syscall>
  4003c8:	2402000a 	li	v0,10

004003cc <umask>:
  4003cc:	081000d4 	j	400350 <__syscall>
  4003d0:	24020011 	li	v0,17

004003d4 <issetugid>:
  4003d4:	081000d4 	j	400350 <__syscall>
  4003d8:	24020012 	li	v0,18

004003dc <getresuid>:
  4003dc:	081000d4 	j	400350 <__syscall>
  4003e0:	24020013 	li	v0,19

004003e4 <setresuid>:
  4003e4:	081000d4 	j	400350 <__syscall>
  4003e8:	24020014 	li	v0,20

004003ec <getresgid>:
  4003ec:	081000d4 	j	400350 <__syscall>
  4003f0:	24020015 	li	v0,21

004003f4 <setresgid>:
  4003f4:	081000d4 	j	400350 <__syscall>
  4003f8:	24020016 	li	v0,22

004003fc <getgroups>:
  4003fc:	081000d4 	j	400350 <__syscall>
  400400:	24020017 	li	v0,23

00400404 <setgroups>:
  400404:	081000d4 	j	400350 <__syscall>
  400408:	24020018 	li	v0,24

0040040c <__getlogin>:
  40040c:	081000d4 	j	400350 <__syscall>
  400410:	24020019 	li	v0,25

00400414 <__setlogin>:
  400414:	081000d4 	j	400350 <__syscall>
  400418:	2402001a 	li	v0,26

0040041c <kill>:
  40041c:	081000d4 	j	400350 <__syscall>
  400420:	2402001b 	li	v0,27

00400424 <sigaction>:
  400424:	081000d4 	j	400350 <__syscall>
  400428:	2402001c 	li	v0,28

0040042c <sigpending>:
  40042c:	081000d4 	j	400350 <__syscall>
  400430:	2402001d 	li	v0,29

00400434 <sigprocmask>:
  400434:	081000d4 	j	400350 <__syscall>
  400438:	2402001e 	li	v0,30

0040043c <sigsuspend>:
  40043c:	081000d4 	j	400350 <__syscall>
  400440:	2402001f 	li	v0,31

00400444 <sigreturn>:
  400444:	081000d4 	j	400350 <__syscall>
  400448:	24020020 	li	v0,32

0040044c <open>:
  40044c:	081000d4 	j	400350 <__syscall>
  400450:	2402002d 	li	v0,45

00400454 <pipe>:
  400454:	081000d4 	j	400350 <__syscall>
  400458:	2402002e 	li	v0,46

0040045c <dup>:
  40045c:	081000d4 	j	400350 <__syscall>
  400460:	2402002f 	li	v0,47

00400464 <dup2>:
  400464:	081000d4 	j	400350 <__syscall>
  400468:	24020030 	li	v0,48

0040046c <close>:
  40046c:	081000d4 	j	400350 <__syscall>
  400470:	24020031 	li	v0,49

00400474 <read>:
  400474:	081000d4 	j	400350 <__syscall>
  400478:	24020032 	li	v0,50

0040047c <pread>:
  40047c:	081000d4 	j	400350 <__syscall>
  400480:	24020033 	li	v0,51

00400484 <getdirentry>:
  400484:	081000d4 	j	400350 <__syscall>
  400488:	24020036 	li	v0,54

0040048c <write>:
  40048c:	081000d4 	j	400350 <__syscall>
  400490:	24020037 	li	v0,55

00400494 <pwrite>:
  400494:	081000d4 	j	400350 <__syscall>
  400498:	24020038 	li	v0,56

0040049c <lseek>:
  40049c:	081000d4 	j	400350 <__syscall>
  4004a0:	2402003b 	li	v0,59

004004a4 <flock>:
  4004a4:	081000d4 	j	400350 <__syscall>
  4004a8:	2402003c 	li	v0,60

004004ac <ftruncate>:
  4004ac:	081000d4 	j	400350 <__syscall>
  4004b0:	2402003d 	li	v0,61

004004b4 <fsync>:
  4004b4:	081000d4 	j	400350 <__syscall>
  4004b8:	2402003e 	li	v0,62

004004bc <fcntl>:
  4004bc:	081000d4 	j	400350 <__syscall>
  4004c0:	2402003f 	li	v0,63

004004c4 <ioctl>:
  4004c4:	081000d4 	j	400350 <__syscall>
  4004c8:	24020040 	li	v0,64

004004cc <select>:
  4004cc:	081000d4 	j	400350 <__syscall>
  4004d0:	24020041 	li	v0,65

004004d4 <poll>:
  4004d4:	081000d4 	j	400350 <__syscall>
  4004d8:	24020042 	li	v0,66

004004dc <link>:
  4004dc:	081000d4 	j	400350 <__syscall>
  4004e0:	24020043 	li	v0,67

004004e4 <remove>:
  4004e4:	081000d4 	j	400350 <__syscall>
  4004e8:	24020044 	li	v0,68

004004ec <mkdir>:
  4004ec:	081000d4 	j	400350 <__syscall>
  4004f0:	24020045 	li	v0,69

004004f4 <rmdir>:
  4004f4:	081000d4 	j	400350 <__syscall>
  4004f8:	24020046 	li	v0,70

004004fc <mkfifo>:
  4004fc:	081000d4 	j	400350 <__syscall>
  400500:	24020047 	li	v0,71

00400504 <rename>:
  400504:	081000d4 	j	400350 <__syscall>
  400508:	24020048 	li	v0,72

0040050c <access>:
  40050c:	081000d4 	j	400350 <__syscall>
  400510:	24020049 	li	v0,73

00400514 <chdir>:
  400514:	081000d4 	j	400350 <__syscall>
  400518:	2402004a 	li	v0,74

0040051c <fchdir>:
  40051c:	081000d4 	j	400350 <__syscall>
  400520:	2402004b 	li	v0,75

00400524 <__getcwd>:
  400524:	081000d4 	j	400350 <__syscall>
  400528:	2402004c 	li	v0,76

0040052c <symlink>:
  40052c:	081000d4 	j	400350 <__syscall>
  400530:	2402004d 	li	v0,77

00400534 <readlink>:
  400534:	081000d4 	j	400350 <__syscall>
  400538:	2402004e 	li	v0,78

0040053c <mount>:
  40053c:	081000d4 	j	400350 <__syscall>
  400540:	2402004f 	li	v0,79

00400544 <unmount>:
  400544:	081000d4 	j	400350 <__syscall>
  400548:	24020050 	li	v0,80

0040054c <stat>:
  40054c:	081000d4 	j	400350 <__syscall>
  400550:	24020051 	li	v0,81

00400554 <fstat>:
  400554:	081000d4 	j	400350 <__syscall>
  400558:	24020052 	li	v0,82

0040055c <lstat>:
  40055c:	081000d4 	j	400350 <__syscall>
  400560:	24020053 	li	v0,83

00400564 <utimes>:
  400564:	081000d4 	j	400350 <__syscall>
  400568:	24020054 	li	v0,84

0040056c <futimes>:
  40056c:	081000d4 	j	400350 <__syscall>
  400570:	24020055 	li	v0,85

00400574 <lutimes>:
  400574:	081000d4 	j	400350 <__syscall>
  400578:	24020056 	li	v0,86

0040057c <chmod>:
  40057c:	081000d4 	j	400350 <__syscall>
  400580:	24020057 	li	v0,87

00400584 <chown>:
  400584:	081000d4 	j	400350 <__syscall>
  400588:	24020058 	li	v0,88

0040058c <fchmod>:
  40058c:	081000d4 	j	400350 <__syscall>
  400590:	24020059 	li	v0,89

00400594 <fchown>:
  400594:	081000d4 	j	400350 <__syscall>
  400598:	2402005a 	li	v0,90

0040059c <lchmod>:
  40059c:	081000d4 	j	400350 <__syscall>
  4005a0:	2402005b 	li	v0,91

004005a4 <lchown>:
  4005a4:	081000d4 	j	400350 <__syscall>
  4005a8:	2402005c 	li	v0,92

004005ac <socket>:
  4005ac:	081000d4 	j	400350 <__syscall>
  4005b0:	24020062 	li	v0,98

004005b4 <bind>:
  4005b4:	081000d4 	j	400350 <__syscall>
  4005b8:	24020063 	li	v0,99

004005bc <connect>:
  4005bc:	081000d4 	j	400350 <__syscall>
  4005c0:	24020064 	li	v0,100

004005c4 <listen>:
  4005c4:	081000d4 	j	400350 <__syscall>
  4005c8:	24020065 	li	v0,101

004005cc <accept>:
  4005cc:	081000d4 	j	400350 <__syscall>
  4005d0:	24020066 	li	v0,102

004005d4 <shutdown>:
  4005d4:	081000d4 	j	400350 <__syscall>
  4005d8:	24020068 	li	v0,104

004005dc <getsockname>:
  4005dc:	081000d4 	j	400350 <__syscall>
  4005e0:	24020069 	li	v0,105

004005e4 <getpeername>:
  4005e4:	081000d4 	j	400350 <__syscall>
  4005e8:	2402006a 	li	v0,106

004005ec <getsockopt>:
  4005ec:	081000d4 	j	400350 <__syscall>
  4005f0:	2402006b 	li	v0,107

004005f4 <setsockopt>:
  4005f4:	081000d4 	j	400350 <__syscall>
  4005f8:	2402006c 	li	v0,108

004005fc <__time>:
  4005fc:	081000d4 	j	400350 <__syscall>
  400600:	24020071 	li	v0,113

00400604 <__settime>:
  400604:	081000d4 	j	400350 <__syscall>
  400608:	24020072 	li	v0,114

0040060c <nanosleep>:
  40060c:	081000d4 	j	400350 <__syscall>
  400610:	24020073 	li	v0,115

00400614 <sync>:
  400614:	081000d4 	j	400350 <__syscall>
  400618:	24020076 	li	v0,118

0040061c <reboot>:
  40061c:	081000d4 	j	400350 <__syscall>
  400620:	24020077 	li	v0,119
	...

00400630 <__senderr>:
  400630:	08100123 	j	40048c <write>
  400634:	24040002 	li	a0,2

00400638 <__senderrstr>:
  400638:	27bdffe8 	addiu	sp,sp,-24
  40063c:	afbf0014 	sw	ra,20(sp)
  400640:	afb00010 	sw	s0,16(sp)
  400644:	0c100444 	jal	401110 <strlen>
  400648:	00808021 	move	s0,a0
  40064c:	00403021 	move	a2,v0
  400650:	02002821 	move	a1,s0
  400654:	8fbf0014 	lw	ra,20(sp)
  400658:	8fb00010 	lw	s0,16(sp)
  40065c:	00002021 	move	a0,zero
  400660:	0810018c 	j	400630 <__senderr>
  400664:	27bd0018 	addiu	sp,sp,24

00400668 <__printerr>:
  400668:	27bdffd8 	addiu	sp,sp,-40
  40066c:	afb40020 	sw	s4,32(sp)
  400670:	afb3001c 	sw	s3,28(sp)
  400674:	afb20018 	sw	s2,24(sp)
  400678:	afb10014 	sw	s1,20(sp)
  40067c:	afbf0024 	sw	ra,36(sp)
  400680:	afb00010 	sw	s0,16(sp)
  400684:	3c021000 	lui	v0,0x1000
  400688:	00809821 	move	s3,a0
  40068c:	8c440010 	lw	a0,16(v0)
  400690:	00a08821 	move	s1,a1
  400694:	0c100438 	jal	4010e0 <strerror>
  400698:	00c09021 	move	s2,a2
  40069c:	0040a021 	move	s4,v0
  4006a0:	3c021000 	lui	v0,0x1000
  4006a4:	8c420014 	lw	v0,20(v0)
  4006a8:	00000000 	nop
  4006ac:	1040001f 	beqz	v0,40072c <__printerr+0xc4>
  4006b0:	00000000 	nop
  4006b4:	8c420000 	lw	v0,0(v0)
  4006b8:	00000000 	nop
  4006bc:	1040001b 	beqz	v0,40072c <__printerr+0xc4>
  4006c0:	00402021 	move	a0,v0
  4006c4:	0c10018e 	jal	400638 <__senderrstr>
  4006c8:	3c100040 	lui	s0,0x40
  4006cc:	0c10018e 	jal	400638 <__senderrstr>
  4006d0:	26041a70 	addiu	a0,s0,6768
  4006d4:	3c040040 	lui	a0,0x40
  4006d8:	24840630 	addiu	a0,a0,1584
  4006dc:	02203021 	move	a2,s1
  4006e0:	02403821 	move	a3,s2
  4006e4:	0c1002d5 	jal	400b54 <__vprintf>
  4006e8:	00002821 	move	a1,zero
  4006ec:	12600005 	beqz	s3,400704 <__printerr+0x9c>
  4006f0:	26041a70 	addiu	a0,s0,6768
  4006f4:	0c10018e 	jal	400638 <__senderrstr>
  4006f8:	00000000 	nop
  4006fc:	0c10018e 	jal	400638 <__senderrstr>
  400700:	02802021 	move	a0,s4
  400704:	3c040040 	lui	a0,0x40
  400708:	8fbf0024 	lw	ra,36(sp)
  40070c:	8fb40020 	lw	s4,32(sp)
  400710:	8fb3001c 	lw	s3,28(sp)
  400714:	8fb20018 	lw	s2,24(sp)
  400718:	8fb10014 	lw	s1,20(sp)
  40071c:	8fb00010 	lw	s0,16(sp)
  400720:	24841a74 	addiu	a0,a0,6772
  400724:	0810018e 	j	400638 <__senderrstr>
  400728:	27bd0028 	addiu	sp,sp,40
  40072c:	3c020040 	lui	v0,0x40
  400730:	081001b1 	j	4006c4 <__printerr+0x5c>
  400734:	24441a58 	addiu	a0,v0,6744

00400738 <verrx>:
  400738:	27bdffe8 	addiu	sp,sp,-24
  40073c:	afb00010 	sw	s0,16(sp)
  400740:	00808021 	move	s0,a0
  400744:	afbf0014 	sw	ra,20(sp)
  400748:	0c10019a 	jal	400668 <__printerr>
  40074c:	00002021 	move	a0,zero
  400750:	0c1000cd 	jal	400334 <exit>
  400754:	02002021 	move	a0,s0

00400758 <errx>:
  400758:	27bdffe0 	addiu	sp,sp,-32
  40075c:	27a20028 	addiu	v0,sp,40
  400760:	afa60028 	sw	a2,40(sp)
  400764:	00403021 	move	a2,v0
  400768:	afbf0018 	sw	ra,24(sp)
  40076c:	afa7002c 	sw	a3,44(sp)
  400770:	0c1001ce 	jal	400738 <verrx>
  400774:	afa20010 	sw	v0,16(sp)
  400778:	8fbf0018 	lw	ra,24(sp)
  40077c:	00000000 	nop
  400780:	03e00008 	jr	ra
  400784:	27bd0020 	addiu	sp,sp,32

00400788 <verr>:
  400788:	27bdffe8 	addiu	sp,sp,-24
  40078c:	afb00010 	sw	s0,16(sp)
  400790:	00808021 	move	s0,a0
  400794:	afbf0014 	sw	ra,20(sp)
  400798:	0c10019a 	jal	400668 <__printerr>
  40079c:	24040001 	li	a0,1
  4007a0:	0c1000cd 	jal	400334 <exit>
  4007a4:	02002021 	move	a0,s0

004007a8 <err>:
  4007a8:	27bdffe0 	addiu	sp,sp,-32
  4007ac:	27a20028 	addiu	v0,sp,40
  4007b0:	afa60028 	sw	a2,40(sp)
  4007b4:	00403021 	move	a2,v0
  4007b8:	afbf0018 	sw	ra,24(sp)
  4007bc:	afa7002c 	sw	a3,44(sp)
  4007c0:	0c1001e2 	jal	400788 <verr>
  4007c4:	afa20010 	sw	v0,16(sp)
  4007c8:	8fbf0018 	lw	ra,24(sp)
  4007cc:	00000000 	nop
  4007d0:	03e00008 	jr	ra
  4007d4:	27bd0020 	addiu	sp,sp,32

004007d8 <vwarnx>:
  4007d8:	00a03021 	move	a2,a1
  4007dc:	00802821 	move	a1,a0
  4007e0:	0810019a 	j	400668 <__printerr>
  4007e4:	00002021 	move	a0,zero

004007e8 <warnx>:
  4007e8:	27bdffe0 	addiu	sp,sp,-32
  4007ec:	27a20024 	addiu	v0,sp,36
  4007f0:	afa50024 	sw	a1,36(sp)
  4007f4:	00402821 	move	a1,v0
  4007f8:	afbf0018 	sw	ra,24(sp)
  4007fc:	afa60028 	sw	a2,40(sp)
  400800:	afa7002c 	sw	a3,44(sp)
  400804:	0c1001f6 	jal	4007d8 <vwarnx>
  400808:	afa20010 	sw	v0,16(sp)
  40080c:	8fbf0018 	lw	ra,24(sp)
  400810:	00000000 	nop
  400814:	03e00008 	jr	ra
  400818:	27bd0020 	addiu	sp,sp,32

0040081c <vwarn>:
  40081c:	00a03021 	move	a2,a1
  400820:	00802821 	move	a1,a0
  400824:	0810019a 	j	400668 <__printerr>
  400828:	24040001 	li	a0,1

0040082c <warn>:
  40082c:	27bdffe0 	addiu	sp,sp,-32
  400830:	27a20024 	addiu	v0,sp,36
  400834:	afa50024 	sw	a1,36(sp)
  400838:	00402821 	move	a1,v0
  40083c:	afbf0018 	sw	ra,24(sp)
  400840:	afa60028 	sw	a2,40(sp)
  400844:	afa7002c 	sw	a3,44(sp)
  400848:	0c100207 	jal	40081c <vwarn>
  40084c:	afa20010 	sw	v0,16(sp)
  400850:	8fbf0018 	lw	ra,24(sp)
  400854:	00000000 	nop
  400858:	03e00008 	jr	ra
  40085c:	27bd0020 	addiu	sp,sp,32

00400860 <__pf_print>:
  400860:	27bdffe0 	addiu	sp,sp,-32
  400864:	afbf0018 	sw	ra,24(sp)
  400868:	afb10014 	sw	s1,20(sp)
  40086c:	afb00010 	sw	s0,16(sp)
  400870:	8c830000 	lw	v1,0(a0)
  400874:	00808021 	move	s0,a0
  400878:	8c840004 	lw	a0,4(a0)
  40087c:	0060f809 	jalr	v1
  400880:	00c08821 	move	s1,a2
  400884:	8e02000c 	lw	v0,12(s0)
  400888:	00000000 	nop
  40088c:	00511021 	addu	v0,v0,s1
  400890:	ae02000c 	sw	v0,12(s0)
  400894:	8fbf0018 	lw	ra,24(sp)
  400898:	8fb10014 	lw	s1,20(sp)
  40089c:	8fb00010 	lw	s0,16(sp)
  4008a0:	03e00008 	jr	ra
  4008a4:	27bd0020 	addiu	sp,sp,32

004008a8 <__pf_endfield>:
  4008a8:	24020020 	li	v0,32
  4008ac:	ac82002c 	sw	v0,44(a0)
  4008b0:	00001821 	move	v1,zero
  4008b4:	00001021 	move	v0,zero
  4008b8:	ac800038 	sw	zero,56(a0)
  4008bc:	ac800010 	sw	zero,16(a0)
  4008c0:	ac800014 	sw	zero,20(a0)
  4008c4:	ac83001c 	sw	v1,28(a0)
  4008c8:	ac820018 	sw	v0,24(a0)
  4008cc:	ac800020 	sw	zero,32(a0)
  4008d0:	ac800024 	sw	zero,36(a0)
  4008d4:	ac800028 	sw	zero,40(a0)
  4008d8:	ac800030 	sw	zero,48(a0)
  4008dc:	03e00008 	jr	ra
  4008e0:	ac800034 	sw	zero,52(a0)

004008e4 <__pf_fill>:
  4008e4:	27bdffd0 	addiu	sp,sp,-48
  4008e8:	afb30024 	sw	s3,36(sp)
  4008ec:	afb20020 	sw	s2,32(sp)
  4008f0:	afbf0028 	sw	ra,40(sp)
  4008f4:	afb1001c 	sw	s1,28(sp)
  4008f8:	afb00018 	sw	s0,24(sp)
  4008fc:	00809821 	move	s3,a0
  400900:	8c82002c 	lw	v0,44(a0)
  400904:	18a0000b 	blez	a1,400934 <__pf_fill+0x50>
  400908:	00a09021 	move	s2,a1
  40090c:	a3a20010 	sb	v0,16(sp)
  400910:	00008021 	move	s0,zero
  400914:	27b10010 	addiu	s1,sp,16
  400918:	26100001 	addiu	s0,s0,1
  40091c:	02602021 	move	a0,s3
  400920:	02202821 	move	a1,s1
  400924:	0c100218 	jal	400860 <__pf_print>
  400928:	24060001 	li	a2,1
  40092c:	1650fffb 	bne	s2,s0,40091c <__pf_fill+0x38>
  400930:	26100001 	addiu	s0,s0,1
  400934:	8fbf0028 	lw	ra,40(sp)
  400938:	8fb30024 	lw	s3,36(sp)
  40093c:	8fb20020 	lw	s2,32(sp)
  400940:	8fb1001c 	lw	s1,28(sp)
  400944:	8fb00018 	lw	s0,24(sp)
  400948:	03e00008 	jr	ra
  40094c:	27bd0030 	addiu	sp,sp,48

00400950 <__pf_printstuff>:
  400950:	27bdffd0 	addiu	sp,sp,-48
  400954:	afbf0028 	sw	ra,40(sp)
  400958:	afb50024 	sw	s5,36(sp)
  40095c:	afb40020 	sw	s4,32(sp)
  400960:	afb3001c 	sw	s3,28(sp)
  400964:	afb20018 	sw	s2,24(sp)
  400968:	00c09821 	move	s3,a2
  40096c:	afb10014 	sw	s1,20(sp)
  400970:	afb00010 	sw	s0,16(sp)
  400974:	00808821 	move	s1,a0
  400978:	00a02021 	move	a0,a1
  40097c:	00a0a021 	move	s4,a1
  400980:	0c100444 	jal	401110 <strlen>
  400984:	00e0a821 	move	s5,a3
  400988:	02602021 	move	a0,s3
  40098c:	0c100444 	jal	401110 <strlen>
  400990:	00409021 	move	s2,v0
  400994:	02a02021 	move	a0,s5
  400998:	0c100444 	jal	401110 <strlen>
  40099c:	02428021 	addu	s0,s2,v0
  4009a0:	8e230024 	lw	v1,36(s1)
  4009a4:	02022821 	addu	a1,s0,v0
  4009a8:	00a3102a 	slt	v0,a1,v1
  4009ac:	10400040 	beqz	v0,400ab0 <__pf_printstuff+0x160>
  4009b0:	00658023 	subu	s0,v1,a1
  4009b4:	1a000056 	blez	s0,400b10 <__pf_printstuff+0x1c0>
  4009b8:	02403021 	move	a2,s2
  4009bc:	8e220028 	lw	v0,40(s1)
  4009c0:	00000000 	nop
  4009c4:	10400028 	beqz	v0,400a68 <__pf_printstuff+0x118>
  4009c8:	24020030 	li	v0,48
  4009cc:	0c100444 	jal	401110 <strlen>
  4009d0:	02802021 	move	a0,s4
  4009d4:	00403021 	move	a2,v0
  4009d8:	02802821 	move	a1,s4
  4009dc:	0c100218 	jal	400860 <__pf_print>
  4009e0:	02202021 	move	a0,s1
  4009e4:	0c100444 	jal	401110 <strlen>
  4009e8:	02602021 	move	a0,s3
  4009ec:	00403021 	move	a2,v0
  4009f0:	02202021 	move	a0,s1
  4009f4:	0c100218 	jal	400860 <__pf_print>
  4009f8:	02602821 	move	a1,s3
  4009fc:	8e220028 	lw	v0,40(s1)
  400a00:	00000000 	nop
  400a04:	14400005 	bnez	v0,400a1c <__pf_printstuff+0xcc>
  400a08:	24020030 	li	v0,48
  400a0c:	8e23002c 	lw	v1,44(s1)
  400a10:	00000000 	nop
  400a14:	1062004b 	beq	v1,v0,400b44 <__pf_printstuff+0x1f4>
  400a18:	02202021 	move	a0,s1
  400a1c:	0c100444 	jal	401110 <strlen>
  400a20:	02a02021 	move	a0,s5
  400a24:	00403021 	move	a2,v0
  400a28:	02202021 	move	a0,s1
  400a2c:	0c100218 	jal	400860 <__pf_print>
  400a30:	02a02821 	move	a1,s5
  400a34:	8e220028 	lw	v0,40(s1)
  400a38:	00000000 	nop
  400a3c:	14400012 	bnez	v0,400a88 <__pf_printstuff+0x138>
  400a40:	02202021 	move	a0,s1
  400a44:	8fbf0028 	lw	ra,40(sp)
  400a48:	8fb50024 	lw	s5,36(sp)
  400a4c:	8fb40020 	lw	s4,32(sp)
  400a50:	8fb3001c 	lw	s3,28(sp)
  400a54:	8fb20018 	lw	s2,24(sp)
  400a58:	8fb10014 	lw	s1,20(sp)
  400a5c:	8fb00010 	lw	s0,16(sp)
  400a60:	03e00008 	jr	ra
  400a64:	27bd0030 	addiu	sp,sp,48
  400a68:	8e23002c 	lw	v1,44(s1)
  400a6c:	00000000 	nop
  400a70:	1062ffd6 	beq	v1,v0,4009cc <__pf_printstuff+0x7c>
  400a74:	02202021 	move	a0,s1
  400a78:	0c100239 	jal	4008e4 <__pf_fill>
  400a7c:	02002821 	move	a1,s0
  400a80:	08100273 	j	4009cc <__pf_printstuff+0x7c>
  400a84:	00000000 	nop
  400a88:	02002821 	move	a1,s0
  400a8c:	8fbf0028 	lw	ra,40(sp)
  400a90:	8fb50024 	lw	s5,36(sp)
  400a94:	8fb40020 	lw	s4,32(sp)
  400a98:	8fb3001c 	lw	s3,28(sp)
  400a9c:	8fb20018 	lw	s2,24(sp)
  400aa0:	8fb10014 	lw	s1,20(sp)
  400aa4:	8fb00010 	lw	s0,16(sp)
  400aa8:	08100239 	j	4008e4 <__pf_fill>
  400aac:	27bd0030 	addiu	sp,sp,48
  400ab0:	02802821 	move	a1,s4
  400ab4:	02403021 	move	a2,s2
  400ab8:	0c100218 	jal	400860 <__pf_print>
  400abc:	02202021 	move	a0,s1
  400ac0:	0c100444 	jal	401110 <strlen>
  400ac4:	02602021 	move	a0,s3
  400ac8:	00403021 	move	a2,v0
  400acc:	02202021 	move	a0,s1
  400ad0:	0c100218 	jal	400860 <__pf_print>
  400ad4:	02602821 	move	a1,s3
  400ad8:	0c100444 	jal	401110 <strlen>
  400adc:	02a02021 	move	a0,s5
  400ae0:	02202021 	move	a0,s1
  400ae4:	02a02821 	move	a1,s5
  400ae8:	8fbf0028 	lw	ra,40(sp)
  400aec:	8fb50024 	lw	s5,36(sp)
  400af0:	8fb40020 	lw	s4,32(sp)
  400af4:	8fb3001c 	lw	s3,28(sp)
  400af8:	8fb20018 	lw	s2,24(sp)
  400afc:	8fb10014 	lw	s1,20(sp)
  400b00:	8fb00010 	lw	s0,16(sp)
  400b04:	00403021 	move	a2,v0
  400b08:	08100218 	j	400860 <__pf_print>
  400b0c:	27bd0030 	addiu	sp,sp,48
  400b10:	02802821 	move	a1,s4
  400b14:	0c100218 	jal	400860 <__pf_print>
  400b18:	02202021 	move	a0,s1
  400b1c:	0c100444 	jal	401110 <strlen>
  400b20:	02602021 	move	a0,s3
  400b24:	00403021 	move	a2,v0
  400b28:	02202021 	move	a0,s1
  400b2c:	0c100218 	jal	400860 <__pf_print>
  400b30:	02602821 	move	a1,s3
  400b34:	0c100444 	jal	401110 <strlen>
  400b38:	02a02021 	move	a0,s5
  400b3c:	081002b9 	j	400ae4 <__pf_printstuff+0x194>
  400b40:	02202021 	move	a0,s1
  400b44:	0c100239 	jal	4008e4 <__pf_fill>
  400b48:	02002821 	move	a1,s0
  400b4c:	08100287 	j	400a1c <__pf_printstuff+0xcc>
  400b50:	00000000 	nop

00400b54 <__vprintf>:
  400b54:	27bdff68 	addiu	sp,sp,-152
  400b58:	afbe0090 	sw	s8,144(sp)
  400b5c:	27be0030 	addiu	s8,sp,48
  400b60:	afb10074 	sw	s1,116(sp)
  400b64:	afa40030 	sw	a0,48(sp)
  400b68:	00c08821 	move	s1,a2
  400b6c:	03c02021 	move	a0,s8
  400b70:	afb00070 	sw	s0,112(sp)
  400b74:	afbf0094 	sw	ra,148(sp)
  400b78:	afb7008c 	sw	s7,140(sp)
  400b7c:	afb60088 	sw	s6,136(sp)
  400b80:	afb50084 	sw	s5,132(sp)
  400b84:	afb40080 	sw	s4,128(sp)
  400b88:	afb3007c 	sw	s3,124(sp)
  400b8c:	afb20078 	sw	s2,120(sp)
  400b90:	afa50034 	sw	a1,52(sp)
  400b94:	afa70038 	sw	a3,56(sp)
  400b98:	0c10022a 	jal	4008a8 <__pf_endfield>
  400b9c:	afa0003c 	sw	zero,60(sp)
  400ba0:	82300000 	lb	s0,0(s1)
  400ba4:	00000000 	nop
  400ba8:	12000017 	beqz	s0,400c08 <__vprintf+0xb4>
  400bac:	0220a021 	move	s4,s1
  400bb0:	081002f6 	j	400bd8 <__vprintf+0x84>
  400bb4:	00000000 	nop
  400bb8:	27a50010 	addiu	a1,sp,16
  400bbc:	24060001 	li	a2,1
  400bc0:	0c100218 	jal	400860 <__pf_print>
  400bc4:	a3b00010 	sb	s0,16(sp)
  400bc8:	82900001 	lb	s0,1(s4)
  400bcc:	00000000 	nop
  400bd0:	1200000d 	beqz	s0,400c08 <__vprintf+0xb4>
  400bd4:	26940001 	addiu	s4,s4,1
  400bd8:	8fa20040 	lw	v0,64(sp)
  400bdc:	00000000 	nop
  400be0:	14400016 	bnez	v0,400c3c <__vprintf+0xe8>
  400be4:	24020025 	li	v0,37
  400be8:	1602fff3 	bne	s0,v0,400bb8 <__vprintf+0x64>
  400bec:	03c02021 	move	a0,s8
  400bf0:	24020001 	li	v0,1
  400bf4:	afa20040 	sw	v0,64(sp)
  400bf8:	82900001 	lb	s0,1(s4)
  400bfc:	00000000 	nop
  400c00:	1600fff5 	bnez	s0,400bd8 <__vprintf+0x84>
  400c04:	26940001 	addiu	s4,s4,1
  400c08:	8fa2003c 	lw	v0,60(sp)
  400c0c:	8fbf0094 	lw	ra,148(sp)
  400c10:	8fbe0090 	lw	s8,144(sp)
  400c14:	8fb7008c 	lw	s7,140(sp)
  400c18:	8fb60088 	lw	s6,136(sp)
  400c1c:	8fb50084 	lw	s5,132(sp)
  400c20:	8fb40080 	lw	s4,128(sp)
  400c24:	8fb3007c 	lw	s3,124(sp)
  400c28:	8fb20078 	lw	s2,120(sp)
  400c2c:	8fb10074 	lw	s1,116(sp)
  400c30:	8fb00070 	lw	s0,112(sp)
  400c34:	03e00008 	jr	ra
  400c38:	27bd0098 	addiu	sp,sp,152
  400c3c:	3c040040 	lui	a0,0x40
  400c40:	24841a84 	addiu	a0,a0,6788
  400c44:	0c100420 	jal	401080 <strchr>
  400c48:	02002821 	move	a1,s0
  400c4c:	10400031 	beqz	v0,400d14 <__vprintf+0x1c0>
  400c50:	24020030 	li	v0,48
  400c54:	1202001d 	beq	s0,v0,400ccc <__vprintf+0x178>
  400c58:	2a020031 	slti	v0,s0,49
  400c5c:	10400013 	beqz	v0,400cac <__vprintf+0x158>
  400c60:	2402006c 	li	v0,108
  400c64:	24020023 	li	v0,35
  400c68:	12020027 	beq	s0,v0,400d08 <__vprintf+0x1b4>
  400c6c:	2402002d 	li	v0,45
  400c70:	1202004a 	beq	s0,v0,400d9c <__vprintf+0x248>
  400c74:	24020001 	li	v0,1
  400c78:	2602ffcf 	addiu	v0,s0,-49
  400c7c:	2c420009 	sltiu	v0,v0,9
  400c80:	1040001a 	beqz	v0,400cec <__vprintf+0x198>
  400c84:	3c040040 	lui	a0,0x40
  400c88:	8fa20054 	lw	v0,84(sp)
  400c8c:	00000000 	nop
  400c90:	000218c0 	sll	v1,v0,0x3
  400c94:	00021040 	sll	v0,v0,0x1
  400c98:	00431021 	addu	v0,v0,v1
  400c9c:	02021021 	addu	v0,s0,v0
  400ca0:	2442ffd0 	addiu	v0,v0,-48
  400ca4:	081002f2 	j	400bc8 <__vprintf+0x74>
  400ca8:	afa20054 	sw	v0,84(sp)
  400cac:	1602fff3 	bne	s0,v0,400c7c <__vprintf+0x128>
  400cb0:	2602ffcf 	addiu	v0,s0,-49
  400cb4:	8fa20044 	lw	v0,68(sp)
  400cb8:	24030001 	li	v1,1
  400cbc:	10430039 	beq	v0,v1,400da4 <__vprintf+0x250>
  400cc0:	24020002 	li	v0,2
  400cc4:	081002f2 	j	400bc8 <__vprintf+0x74>
  400cc8:	afa30044 	sw	v1,68(sp)
  400ccc:	8fa20054 	lw	v0,84(sp)
  400cd0:	00000000 	nop
  400cd4:	1840008c 	blez	v0,400f08 <__vprintf+0x3b4>
  400cd8:	000218c0 	sll	v1,v0,0x3
  400cdc:	00021040 	sll	v0,v0,0x1
  400ce0:	00431021 	addu	v0,v0,v1
  400ce4:	081002f2 	j	400bc8 <__vprintf+0x74>
  400ce8:	afa20054 	sw	v0,84(sp)
  400cec:	3c060040 	lui	a2,0x40
  400cf0:	24841a94 	addiu	a0,a0,6804
  400cf4:	24c61abc 	addiu	a2,a2,6844
  400cf8:	0c100468 	jal	4011a0 <__bad_assert>
  400cfc:	240500dc 	li	a1,220
  400d00:	08100322 	j	400c88 <__vprintf+0x134>
  400d04:	00000000 	nop
  400d08:	24020001 	li	v0,1
  400d0c:	081002f2 	j	400bc8 <__vprintf+0x74>
  400d10:	afa20068 	sw	v0,104(sp)
  400d14:	3c040040 	lui	a0,0x40
  400d18:	24841ad0 	addiu	a0,a0,6864
  400d1c:	0c100420 	jal	401080 <strchr>
  400d20:	02002821 	move	a1,s0
  400d24:	10400091 	beqz	v0,400f6c <__vprintf+0x418>
  400d28:	24020070 	li	v0,112
  400d2c:	1202001f 	beq	s0,v0,400dac <__vprintf+0x258>
  400d30:	24020064 	li	v0,100
  400d34:	1202009e 	beq	s0,v0,400fb0 <__vprintf+0x45c>
  400d38:	24020001 	li	v0,1
  400d3c:	8fa30044 	lw	v1,68(sp)
  400d40:	00000000 	nop
  400d44:	10620003 	beq	v1,v0,400d54 <__vprintf+0x200>
  400d48:	00000000 	nop
  400d4c:	14600074 	bnez	v1,400f20 <__vprintf+0x3cc>
  400d50:	24020002 	li	v0,2
  400d54:	8fa20038 	lw	v0,56(sp)
  400d58:	afa00048 	sw	zero,72(sp)
  400d5c:	8c430000 	lw	v1,0(v0)
  400d60:	24420004 	addiu	v0,v0,4
  400d64:	afa20038 	sw	v0,56(sp)
  400d68:	afa3004c 	sw	v1,76(sp)
  400d6c:	2602ff9c 	addiu	v0,s0,-100
  400d70:	304200ff 	andi	v0,v0,0xff
  400d74:	2c430015 	sltiu	v1,v0,21
  400d78:	10600015 	beqz	v1,400dd0 <__vprintf+0x27c>
  400d7c:	3c030040 	lui	v1,0x40
  400d80:	00021080 	sll	v0,v0,0x2
  400d84:	246318c0 	addiu	v1,v1,6336
  400d88:	00431021 	addu	v0,v0,v1
  400d8c:	8c440000 	lw	a0,0(v0)
  400d90:	00000000 	nop
  400d94:	00800008 	jr	a0
  400d98:	00000000 	nop
  400d9c:	081002f2 	j	400bc8 <__vprintf+0x74>
  400da0:	afa20058 	sw	v0,88(sp)
  400da4:	081002f2 	j	400bc8 <__vprintf+0x74>
  400da8:	afa20044 	sw	v0,68(sp)
  400dac:	8fa20038 	lw	v0,56(sp)
  400db0:	afa00048 	sw	zero,72(sp)
  400db4:	24430004 	addiu	v1,v0,4
  400db8:	afa30038 	sw	v1,56(sp)
  400dbc:	8c440000 	lw	a0,0(v0)
  400dc0:	00000000 	nop
  400dc4:	afa4004c 	sw	a0,76(sp)
  400dc8:	24020010 	li	v0,16
  400dcc:	afa20060 	sw	v0,96(sp)
  400dd0:	8fa20068 	lw	v0,104(sp)
  400dd4:	00000000 	nop
  400dd8:	1440004d 	bnez	v0,400f10 <__vprintf+0x3bc>
  400ddc:	24020001 	li	v0,1
  400de0:	24020070 	li	v0,112
  400de4:	1202004a 	beq	s0,v0,400f10 <__vprintf+0x3bc>
  400de8:	24020001 	li	v0,1
  400dec:	8fb60060 	lw	s6,96(sp)
  400df0:	3c020040 	lui	v0,0x40
  400df4:	8fb1004c 	lw	s1,76(sp)
  400df8:	8fb00048 	lw	s0,72(sp)
  400dfc:	a3a00029 	sb	zero,41(sp)
  400e00:	24571ad8 	addiu	s7,v0,6872
  400e04:	27b50028 	addiu	s5,sp,40
  400e08:	02c09821 	move	s3,s6
  400e0c:	001697c3 	sra	s2,s6,0x1f
  400e10:	02202821 	move	a1,s1
  400e14:	02002021 	move	a0,s0
  400e18:	02603821 	move	a3,s3
  400e1c:	0c10045c 	jal	401170 <__umoddi3>
  400e20:	02403021 	move	a2,s2
  400e24:	02e31821 	addu	v1,s7,v1
  400e28:	90620000 	lbu	v0,0(v1)
  400e2c:	02202821 	move	a1,s1
  400e30:	02002021 	move	a0,s0
  400e34:	02603821 	move	a3,s3
  400e38:	02403021 	move	a2,s2
  400e3c:	0c100454 	jal	401150 <__udivdi3>
  400e40:	a2a20000 	sb	v0,0(s5)
  400e44:	00408021 	move	s0,v0
  400e48:	02031025 	or	v0,s0,v1
  400e4c:	00608821 	move	s1,v1
  400e50:	1440ffef 	bnez	v0,400e10 <__vprintf+0x2bc>
  400e54:	26b5ffff 	addiu	s5,s5,-1
  400e58:	8fa20064 	lw	v0,100(sp)
  400e5c:	00000000 	nop
  400e60:	10400006 	beqz	v0,400e7c <__vprintf+0x328>
  400e64:	3c020040 	lui	v0,0x40
  400e68:	24020010 	li	v0,16
  400e6c:	12c2005e 	beq	s6,v0,400fe8 <__vprintf+0x494>
  400e70:	24020008 	li	v0,8
  400e74:	12c20037 	beq	s6,v0,400f54 <__vprintf+0x400>
  400e78:	3c020040 	lui	v0,0x40
  400e7c:	24461ba0 	addiu	a2,v0,7072
  400e80:	8fa20050 	lw	v0,80(sp)
  400e84:	00000000 	nop
  400e88:	10400023 	beqz	v0,400f18 <__vprintf+0x3c4>
  400e8c:	3c020040 	lui	v0,0x40
  400e90:	3c020040 	lui	v0,0x40
  400e94:	24451a78 	addiu	a1,v0,6776
  400e98:	03c02021 	move	a0,s8
  400e9c:	0c100254 	jal	400950 <__pf_printstuff>
  400ea0:	26a70001 	addiu	a3,s5,1
  400ea4:	0c10022a 	jal	4008a8 <__pf_endfield>
  400ea8:	03c02021 	move	a0,s8
  400eac:	081002f2 	j	400bc8 <__vprintf+0x74>
  400eb0:	00000000 	nop
  400eb4:	8fa20038 	lw	v0,56(sp)
  400eb8:	2403fff8 	li	v1,-8
  400ebc:	24420007 	addiu	v0,v0,7
  400ec0:	00431024 	and	v0,v0,v1
  400ec4:	8c470004 	lw	a3,4(v0)
  400ec8:	8c460000 	lw	a2,0(v0)
  400ecc:	24420008 	addiu	v0,v0,8
  400ed0:	afa20038 	sw	v0,56(sp)
  400ed4:	04c10040 	bgez	a2,400fd8 <__vprintf+0x484>
  400ed8:	2402000a 	li	v0,10
  400edc:	00071823 	negu	v1,a3
  400ee0:	0003282b 	sltu	a1,zero,v1
  400ee4:	00061023 	negu	v0,a2
  400ee8:	00451023 	subu	v0,v0,a1
  400eec:	2404ffff 	li	a0,-1
  400ef0:	afa40050 	sw	a0,80(sp)
  400ef4:	afa3004c 	sw	v1,76(sp)
  400ef8:	afa20048 	sw	v0,72(sp)
  400efc:	2402000a 	li	v0,10
  400f00:	08100374 	j	400dd0 <__vprintf+0x27c>
  400f04:	afa20060 	sw	v0,96(sp)
  400f08:	081002f2 	j	400bc8 <__vprintf+0x74>
  400f0c:	afb0005c 	sw	s0,92(sp)
  400f10:	0810037b 	j	400dec <__vprintf+0x298>
  400f14:	afa20064 	sw	v0,100(sp)
  400f18:	081003a6 	j	400e98 <__vprintf+0x344>
  400f1c:	24451ba0 	addiu	a1,v0,7072
  400f20:	1462ff93 	bne	v1,v0,400d70 <__vprintf+0x21c>
  400f24:	2602ff9c 	addiu	v0,s0,-100
  400f28:	8fa20038 	lw	v0,56(sp)
  400f2c:	2403fff8 	li	v1,-8
  400f30:	24420007 	addiu	v0,v0,7
  400f34:	00431024 	and	v0,v0,v1
  400f38:	8c450004 	lw	a1,4(v0)
  400f3c:	8c440000 	lw	a0,0(v0)
  400f40:	24420008 	addiu	v0,v0,8
  400f44:	afa20038 	sw	v0,56(sp)
  400f48:	afa5004c 	sw	a1,76(sp)
  400f4c:	0810035b 	j	400d6c <__vprintf+0x218>
  400f50:	afa40048 	sw	a0,72(sp)
  400f54:	3c020040 	lui	v0,0x40
  400f58:	081003a0 	j	400e80 <__vprintf+0x32c>
  400f5c:	24461af0 	addiu	a2,v0,6896
  400f60:	24020008 	li	v0,8
  400f64:	08100374 	j	400dd0 <__vprintf+0x27c>
  400f68:	afa20060 	sw	v0,96(sp)
  400f6c:	24020073 	li	v0,115
  400f70:	12020028 	beq	s0,v0,401014 <__vprintf+0x4c0>
  400f74:	24020063 	li	v0,99
  400f78:	12020037 	beq	s0,v0,401058 <__vprintf+0x504>
  400f7c:	00000000 	nop
  400f80:	a3b00011 	sb	s0,17(sp)
  400f84:	3c050040 	lui	a1,0x40
  400f88:	24a51ba0 	addiu	a1,a1,7072
  400f8c:	03c02021 	move	a0,s8
  400f90:	00a03021 	move	a2,a1
  400f94:	27a70011 	addiu	a3,sp,17
  400f98:	0c100254 	jal	400950 <__pf_printstuff>
  400f9c:	a3a00012 	sb	zero,18(sp)
  400fa0:	0c10022a 	jal	4008a8 <__pf_endfield>
  400fa4:	03c02021 	move	a0,s8
  400fa8:	081002f2 	j	400bc8 <__vprintf+0x74>
  400fac:	00000000 	nop
  400fb0:	8fa30044 	lw	v1,68(sp)
  400fb4:	00000000 	nop
  400fb8:	1062000e 	beq	v1,v0,400ff4 <__vprintf+0x4a0>
  400fbc:	00000000 	nop
  400fc0:	1060000c 	beqz	v1,400ff4 <__vprintf+0x4a0>
  400fc4:	24020002 	li	v0,2
  400fc8:	1062ffba 	beq	v1,v0,400eb4 <__vprintf+0x360>
  400fcc:	00003821 	move	a3,zero
  400fd0:	00003021 	move	a2,zero
  400fd4:	2402000a 	li	v0,10
  400fd8:	afa7004c 	sw	a3,76(sp)
  400fdc:	afa60048 	sw	a2,72(sp)
  400fe0:	08100374 	j	400dd0 <__vprintf+0x27c>
  400fe4:	afa20060 	sw	v0,96(sp)
  400fe8:	3c020040 	lui	v0,0x40
  400fec:	081003a0 	j	400e80 <__vprintf+0x32c>
  400ff0:	24461aec 	addiu	a2,v0,6892
  400ff4:	8fa20038 	lw	v0,56(sp)
  400ff8:	00000000 	nop
  400ffc:	8c430000 	lw	v1,0(v0)
  401000:	24420004 	addiu	v0,v0,4
  401004:	00603821 	move	a3,v1
  401008:	000337c3 	sra	a2,v1,0x1f
  40100c:	081003b5 	j	400ed4 <__vprintf+0x380>
  401010:	afa20038 	sw	v0,56(sp)
  401014:	8fa30038 	lw	v1,56(sp)
  401018:	00000000 	nop
  40101c:	8c670000 	lw	a3,0(v1)
  401020:	00000000 	nop
  401024:	10e00013 	beqz	a3,401074 <__vprintf+0x520>
  401028:	3c020040 	lui	v0,0x40
  40102c:	3c050040 	lui	a1,0x40
  401030:	24a51ba0 	addiu	a1,a1,7072
  401034:	24620004 	addiu	v0,v1,4
  401038:	03c02021 	move	a0,s8
  40103c:	00a03021 	move	a2,a1
  401040:	0c100254 	jal	400950 <__pf_printstuff>
  401044:	afa20038 	sw	v0,56(sp)
  401048:	0c10022a 	jal	4008a8 <__pf_endfield>
  40104c:	03c02021 	move	a0,s8
  401050:	081002f2 	j	400bc8 <__vprintf+0x74>
  401054:	00000000 	nop
  401058:	8fa20038 	lw	v0,56(sp)
  40105c:	00000000 	nop
  401060:	8c430000 	lw	v1,0(v0)
  401064:	24420004 	addiu	v0,v0,4
  401068:	afa20038 	sw	v0,56(sp)
  40106c:	081003e1 	j	400f84 <__vprintf+0x430>
  401070:	a3a30011 	sb	v1,17(sp)
  401074:	0810040b 	j	40102c <__vprintf+0x4d8>
  401078:	24471a7c 	addiu	a3,v0,6780
  40107c:	00000000 	nop

00401080 <strchr>:
  401080:	80830000 	lb	v1,0(a0)
  401084:	00052e00 	sll	a1,a1,0x18
  401088:	00801021 	move	v0,a0
  40108c:	1060000c 	beqz	v1,4010c0 <strchr+0x40>
  401090:	00052e03 	sra	a1,a1,0x18
  401094:	14a30006 	bne	a1,v1,4010b0 <strchr+0x30>
  401098:	24420001 	addiu	v0,v0,1
  40109c:	03e00008 	jr	ra
  4010a0:	2442ffff 	addiu	v0,v0,-1
  4010a4:	10a3000c 	beq	a1,v1,4010d8 <strchr+0x58>
  4010a8:	00000000 	nop
  4010ac:	24420001 	addiu	v0,v0,1
  4010b0:	80430000 	lb	v1,0(v0)
  4010b4:	00000000 	nop
  4010b8:	1460fffa 	bnez	v1,4010a4 <strchr+0x24>
  4010bc:	00000000 	nop
  4010c0:	14a00003 	bnez	a1,4010d0 <strchr+0x50>
  4010c4:	00000000 	nop
  4010c8:	03e00008 	jr	ra
  4010cc:	00000000 	nop
  4010d0:	03e00008 	jr	ra
  4010d4:	00001021 	move	v0,zero
  4010d8:	03e00008 	jr	ra
  4010dc:	00000000 	nop

004010e0 <strerror>:
  4010e0:	3c020040 	lui	v0,0x40
  4010e4:	00042880 	sll	a1,a0,0x2
  4010e8:	24421920 	addiu	v0,v0,6432
  4010ec:	3c030040 	lui	v1,0x40
  4010f0:	2c840041 	sltiu	a0,a0,65
  4010f4:	00a22821 	addu	a1,a1,v0
  4010f8:	10800002 	beqz	a0,401104 <strerror+0x24>
  4010fc:	24621af4 	addiu	v0,v1,6900
  401100:	8ca20000 	lw	v0,0(a1)
  401104:	03e00008 	jr	ra
  401108:	00000000 	nop
  40110c:	00000000 	nop

00401110 <strlen>:
  401110:	80820000 	lb	v0,0(a0)
  401114:	00000000 	nop
  401118:	1040000a 	beqz	v0,401144 <strlen+0x34>
  40111c:	00002821 	move	a1,zero
  401120:	24a50001 	addiu	a1,a1,1
  401124:	00851021 	addu	v0,a0,a1
  401128:	80430000 	lb	v1,0(v0)
  40112c:	00000000 	nop
  401130:	1460fffc 	bnez	v1,401124 <strlen+0x14>
  401134:	24a50001 	addiu	a1,a1,1
  401138:	24a5ffff 	addiu	a1,a1,-1
  40113c:	03e00008 	jr	ra
  401140:	00a01021 	move	v0,a1
  401144:	03e00008 	jr	ra
  401148:	00a01021 	move	v0,a1
  40114c:	00000000 	nop

00401150 <__udivdi3>:
  401150:	27bdffe0 	addiu	sp,sp,-32
  401154:	afbf0018 	sw	ra,24(sp)
  401158:	0c1004e3 	jal	40138c <__qdivrem>
  40115c:	afa00010 	sw	zero,16(sp)
  401160:	8fbf0018 	lw	ra,24(sp)
  401164:	00000000 	nop
  401168:	03e00008 	jr	ra
  40116c:	27bd0020 	addiu	sp,sp,32

00401170 <__umoddi3>:
  401170:	27bdffd8 	addiu	sp,sp,-40
  401174:	27a20018 	addiu	v0,sp,24
  401178:	afbf0020 	sw	ra,32(sp)
  40117c:	0c1004e3 	jal	40138c <__qdivrem>
  401180:	afa20010 	sw	v0,16(sp)
  401184:	8fa3001c 	lw	v1,28(sp)
  401188:	8fa20018 	lw	v0,24(sp)
  40118c:	8fbf0020 	lw	ra,32(sp)
  401190:	00000000 	nop
  401194:	03e00008 	jr	ra
  401198:	27bd0028 	addiu	sp,sp,40
  40119c:	00000000 	nop

004011a0 <__bad_assert>:
  4011a0:	27bdfee0 	addiu	sp,sp,-288
  4011a4:	00c03821 	move	a3,a2
  4011a8:	afb00118 	sw	s0,280(sp)
  4011ac:	3c060040 	lui	a2,0x40
  4011b0:	27b00018 	addiu	s0,sp,24
  4011b4:	24c620f8 	addiu	a2,a2,8440
  4011b8:	afa40010 	sw	a0,16(sp)
  4011bc:	afa50014 	sw	a1,20(sp)
  4011c0:	02002021 	move	a0,s0
  4011c4:	afbf011c 	sw	ra,284(sp)
  4011c8:	0c1004b4 	jal	4012d0 <snprintf>
  4011cc:	24050100 	li	a1,256
  4011d0:	0c100444 	jal	401110 <strlen>
  4011d4:	02002021 	move	a0,s0
  4011d8:	00403021 	move	a2,v0
  4011dc:	02002821 	move	a1,s0
  4011e0:	0c100123 	jal	40048c <write>
  4011e4:	24040002 	li	a0,2
  4011e8:	0c1004c0 	jal	401300 <abort>
  4011ec:	00000000 	nop

004011f0 <__snprintf_send>:
  4011f0:	10c00012 	beqz	a2,40123c <__snprintf_send+0x4c>
  4011f4:	00004021 	move	t0,zero
  4011f8:	8c870008 	lw	a3,8(a0)
  4011fc:	8c820004 	lw	v0,4(a0)
  401200:	00a81821 	addu	v1,a1,t0
  401204:	00e2102b 	sltu	v0,a3,v0
  401208:	1040000a 	beqz	v0,401234 <__snprintf_send+0x44>
  40120c:	25080001 	addiu	t0,t0,1
  401210:	8c820000 	lw	v0,0(a0)
  401214:	90630000 	lbu	v1,0(v1)
  401218:	00471021 	addu	v0,v0,a3
  40121c:	a0430000 	sb	v1,0(v0)
  401220:	8c870008 	lw	a3,8(a0)
  401224:	00000000 	nop
  401228:	24e20001 	addiu	v0,a3,1
  40122c:	00403821 	move	a3,v0
  401230:	ac820008 	sw	v0,8(a0)
  401234:	14c8fff1 	bne	a2,t0,4011fc <__snprintf_send+0xc>
  401238:	00000000 	nop
  40123c:	03e00008 	jr	ra
  401240:	00000000 	nop

00401244 <vsnprintf>:
  401244:	27bdffd8 	addiu	sp,sp,-40
  401248:	afb00020 	sw	s0,32(sp)
  40124c:	00a01021 	move	v0,a1
  401250:	00808021 	move	s0,a0
  401254:	3c040040 	lui	a0,0x40
  401258:	24a3ffff 	addiu	v1,a1,-1
  40125c:	afbf0024 	sw	ra,36(sp)
  401260:	248411f0 	addiu	a0,a0,4592
  401264:	27a50010 	addiu	a1,sp,16
  401268:	1440000c 	bnez	v0,40129c <vsnprintf+0x58>
  40126c:	afb00010 	sw	s0,16(sp)
  401270:	3c040040 	lui	a0,0x40
  401274:	248411f0 	addiu	a0,a0,4592
  401278:	afa00014 	sw	zero,20(sp)
  40127c:	0c1002d5 	jal	400b54 <__vprintf>
  401280:	afa00018 	sw	zero,24(sp)
  401284:	00401821 	move	v1,v0
  401288:	8fbf0024 	lw	ra,36(sp)
  40128c:	8fb00020 	lw	s0,32(sp)
  401290:	00601021 	move	v0,v1
  401294:	03e00008 	jr	ra
  401298:	27bd0028 	addiu	sp,sp,40
  40129c:	afa30014 	sw	v1,20(sp)
  4012a0:	0c1002d5 	jal	400b54 <__vprintf>
  4012a4:	afa00018 	sw	zero,24(sp)
  4012a8:	00401821 	move	v1,v0
  4012ac:	8fa20018 	lw	v0,24(sp)
  4012b0:	00000000 	nop
  4012b4:	02021021 	addu	v0,s0,v0
  4012b8:	a0400000 	sb	zero,0(v0)
  4012bc:	8fbf0024 	lw	ra,36(sp)
  4012c0:	8fb00020 	lw	s0,32(sp)
  4012c4:	00601021 	move	v0,v1
  4012c8:	03e00008 	jr	ra
  4012cc:	27bd0028 	addiu	sp,sp,40

004012d0 <snprintf>:
  4012d0:	27bdffe0 	addiu	sp,sp,-32
  4012d4:	27a2002c 	addiu	v0,sp,44
  4012d8:	afa7002c 	sw	a3,44(sp)
  4012dc:	00403821 	move	a3,v0
  4012e0:	afbf0018 	sw	ra,24(sp)
  4012e4:	0c100491 	jal	401244 <vsnprintf>
  4012e8:	afa20010 	sw	v0,16(sp)
  4012ec:	8fbf0018 	lw	ra,24(sp)
  4012f0:	00000000 	nop
  4012f4:	03e00008 	jr	ra
  4012f8:	27bd0020 	addiu	sp,sp,32
  4012fc:	00000000 	nop

00401300 <abort>:
  401300:	27bdffe8 	addiu	sp,sp,-24
  401304:	afbf0010 	sw	ra,16(sp)
  401308:	0c1000e3 	jal	40038c <_exit>
  40130c:	240400ff 	li	a0,255

00401310 <shl>:
  401310:	18a00016 	blez	a1,40136c <shl+0x5c>
  401314:	24020010 	li	v0,16
  401318:	00464823 	subu	t1,v0,a2
  40131c:	00803821 	move	a3,a0
  401320:	00004021 	move	t0,zero
  401324:	8ce20000 	lw	v0,0(a3)
  401328:	8ce30004 	lw	v1,4(a3)
  40132c:	00c21004 	sllv	v0,v0,a2
  401330:	3042ffff 	andi	v0,v0,0xffff
  401334:	01231806 	srlv	v1,v1,t1
  401338:	00431025 	or	v0,v0,v1
  40133c:	25080001 	addiu	t0,t0,1
  401340:	ace20000 	sw	v0,0(a3)
  401344:	14a8fff7 	bne	a1,t0,401324 <shl+0x14>
  401348:	24e70004 	addiu	a3,a3,4
  40134c:	00051880 	sll	v1,a1,0x2
  401350:	00831821 	addu	v1,a0,v1
  401354:	8c620000 	lw	v0,0(v1)
  401358:	00000000 	nop
  40135c:	00c21004 	sllv	v0,v0,a2
  401360:	3042ffff 	andi	v0,v0,0xffff
  401364:	03e00008 	jr	ra
  401368:	ac620000 	sw	v0,0(v1)
  40136c:	00001821 	move	v1,zero
  401370:	00831821 	addu	v1,a0,v1
  401374:	8c620000 	lw	v0,0(v1)
  401378:	00000000 	nop
  40137c:	00c21004 	sllv	v0,v0,a2
  401380:	3042ffff 	andi	v0,v0,0xffff
  401384:	03e00008 	jr	ra
  401388:	ac620000 	sw	v0,0(v1)

0040138c <__qdivrem>:
  40138c:	27bdff80 	addiu	sp,sp,-128
  401390:	00c71025 	or	v0,a2,a3
  401394:	afb20060 	sw	s2,96(sp)
  401398:	afbf007c 	sw	ra,124(sp)
  40139c:	afbe0078 	sw	s8,120(sp)
  4013a0:	afb70074 	sw	s7,116(sp)
  4013a4:	afb60070 	sw	s6,112(sp)
  4013a8:	afb5006c 	sw	s5,108(sp)
  4013ac:	afb40068 	sw	s4,104(sp)
  4013b0:	afb30064 	sw	s3,100(sp)
  4013b4:	afb1005c 	sw	s1,92(sp)
  4013b8:	afb00058 	sw	s0,88(sp)
  4013bc:	00a04821 	move	t1,a1
  4013c0:	8fb20090 	lw	s2,144(sp)
  4013c4:	14400018 	bnez	v0,401428 <__qdivrem+0x9c>
  4013c8:	00804021 	move	t0,a0
  4013cc:	3c031000 	lui	v1,0x1000
  4013d0:	8c640000 	lw	a0,0(v1)
  4013d4:	24020001 	li	v0,1
  4013d8:	14800002 	bnez	a0,4013e4 <__qdivrem+0x58>
  4013dc:	0044001b 	divu	zero,v0,a0
  4013e0:	0007000d 	break	0x7
  4013e4:	00001012 	mflo	v0
  4013e8:	12400003 	beqz	s2,4013f8 <__qdivrem+0x6c>
  4013ec:	00401821 	move	v1,v0
  4013f0:	ae450004 	sw	a1,4(s2)
  4013f4:	ae480000 	sw	t0,0(s2)
  4013f8:	8fbf007c 	lw	ra,124(sp)
  4013fc:	8fbe0078 	lw	s8,120(sp)
  401400:	8fb70074 	lw	s7,116(sp)
  401404:	8fb60070 	lw	s6,112(sp)
  401408:	8fb5006c 	lw	s5,108(sp)
  40140c:	8fb40068 	lw	s4,104(sp)
  401410:	8fb30064 	lw	s3,100(sp)
  401414:	8fb20060 	lw	s2,96(sp)
  401418:	8fb1005c 	lw	s1,92(sp)
  40141c:	8fb00058 	lw	s0,88(sp)
  401420:	03e00008 	jr	ra
  401424:	27bd0080 	addiu	sp,sp,128
  401428:	0086102b 	sltu	v0,a0,a2
  40142c:	10400008 	beqz	v0,401450 <__qdivrem+0xc4>
  401430:	00000000 	nop
  401434:	1240010c 	beqz	s2,401868 <__qdivrem+0x4dc>
  401438:	00000000 	nop
  40143c:	00001821 	move	v1,zero
  401440:	00001021 	move	v0,zero
  401444:	ae490004 	sw	t1,4(s2)
  401448:	081004fe 	j	4013f8 <__qdivrem+0x6c>
  40144c:	ae480000 	sw	t0,0(s2)
  401450:	10860046 	beq	a0,a2,40156c <__qdivrem+0x1e0>
  401454:	00a7102b 	sltu	v0,a1,a3
  401458:	00e08821 	move	s1,a3
  40145c:	01001821 	move	v1,t0
  401460:	00c08021 	move	s0,a2
  401464:	30c7ffff 	andi	a3,a2,0xffff
  401468:	3108ffff 	andi	t0,t0,0xffff
  40146c:	312affff 	andi	t2,t1,0xffff
  401470:	3226ffff 	andi	a2,s1,0xffff
  401474:	00031c02 	srl	v1,v1,0x10
  401478:	00092c02 	srl	a1,t1,0x10
  40147c:	00101402 	srl	v0,s0,0x10
  401480:	00112402 	srl	a0,s1,0x10
  401484:	afa00010 	sw	zero,16(sp)
  401488:	afa30014 	sw	v1,20(sp)
  40148c:	afa80018 	sw	t0,24(sp)
  401490:	afa5001c 	sw	a1,28(sp)
  401494:	afaa0020 	sw	t2,32(sp)
  401498:	afa20028 	sw	v0,40(sp)
  40149c:	afa7002c 	sw	a3,44(sp)
  4014a0:	afa40030 	sw	a0,48(sp)
  4014a4:	144000f6 	bnez	v0,401880 <__qdivrem+0x4f4>
  4014a8:	afa60034 	sw	a2,52(sp)
  4014ac:	14e00033 	bnez	a3,40157c <__qdivrem+0x1f0>
  4014b0:	27a20028 	addiu	v0,sp,40
  4014b4:	148000f7 	bnez	a0,401894 <__qdivrem+0x508>
  4014b8:	27a2002c 	addiu	v0,sp,44
  4014bc:	14c00002 	bnez	a2,4014c8 <__qdivrem+0x13c>
  4014c0:	0066001b 	divu	zero,v1,a2
  4014c4:	0007000d 	break	0x7
  4014c8:	00001010 	mfhi	v0
  4014cc:	00021400 	sll	v0,v0,0x10
  4014d0:	00481025 	or	v0,v0,t0
  4014d4:	00004812 	mflo	t1
	...
  4014e0:	14c00002 	bnez	a2,4014ec <__qdivrem+0x160>
  4014e4:	0046001b 	divu	zero,v0,a2
  4014e8:	0007000d 	break	0x7
  4014ec:	00001810 	mfhi	v1
  4014f0:	00031c00 	sll	v1,v1,0x10
  4014f4:	00651825 	or	v1,v1,a1
  4014f8:	00003812 	mflo	a3
	...
  401504:	14c00002 	bnez	a2,401510 <__qdivrem+0x184>
  401508:	0066001b 	divu	zero,v1,a2
  40150c:	0007000d 	break	0x7
  401510:	00001010 	mfhi	v0
  401514:	00021400 	sll	v0,v0,0x10
  401518:	00001812 	mflo	v1
  40151c:	12400008 	beqz	s2,401540 <__qdivrem+0x1b4>
  401520:	01422025 	or	a0,t2,v0
  401524:	14c00002 	bnez	a2,401530 <__qdivrem+0x1a4>
  401528:	0086001b 	divu	zero,a0,a2
  40152c:	0007000d 	break	0x7
  401530:	ae400000 	sw	zero,0(s2)
  401534:	00001010 	mfhi	v0
  401538:	ae420004 	sw	v0,4(s2)
  40153c:	00000000 	nop
  401540:	14c00002 	bnez	a2,40154c <__qdivrem+0x1c0>
  401544:	0086001b 	divu	zero,a0,a2
  401548:	0007000d 	break	0x7
  40154c:	00091400 	sll	v0,t1,0x10
  401550:	00031c00 	sll	v1,v1,0x10
  401554:	00e28025 	or	s0,a3,v0
  401558:	02001021 	move	v0,s0
  40155c:	00002012 	mflo	a0
  401560:	00838825 	or	s1,a0,v1
  401564:	081004fe 	j	4013f8 <__qdivrem+0x6c>
  401568:	02201821 	move	v1,s1
  40156c:	1040ffbb 	beqz	v0,40145c <__qdivrem+0xd0>
  401570:	00e08821 	move	s1,a3
  401574:	0810050d 	j	401434 <__qdivrem+0xa8>
  401578:	00000000 	nop
  40157c:	afa20050 	sw	v0,80(sp)
  401580:	24170003 	li	s7,3
  401584:	27be002c 	addiu	s8,sp,44
  401588:	8fa30014 	lw	v1,20(sp)
  40158c:	24020004 	li	v0,4
  401590:	146000c4 	bnez	v1,4018a4 <__qdivrem+0x518>
  401594:	00579823 	subu	s3,v0,s7
  401598:	08100569 	j	4015a4 <__qdivrem+0x218>
  40159c:	27b40014 	addiu	s4,sp,20
  4015a0:	0060a021 	move	s4,v1
  4015a4:	8e820004 	lw	v0,4(s4)
  4015a8:	2673ffff 	addiu	s3,s3,-1
  4015ac:	1040fffc 	beqz	v0,4015a0 <__qdivrem+0x214>
  4015b0:	26830004 	addiu	v1,s4,4
  4015b4:	24020004 	li	v0,4
  4015b8:	00532023 	subu	a0,v0,s3
  4015bc:	2483ffff 	addiu	v1,a0,-1
  4015c0:	046000bc 	bltz	v1,4018b4 <__qdivrem+0x528>
  4015c4:	00001821 	move	v1,zero
  4015c8:	27a60038 	addiu	a2,sp,56
  4015cc:	00042880 	sll	a1,a0,0x2
  4015d0:	00c51021 	addu	v0,a2,a1
  4015d4:	2442fffc 	addiu	v0,v0,-4
  4015d8:	24630001 	addiu	v1,v1,1
  4015dc:	ac400000 	sw	zero,0(v0)
  4015e0:	1464fffd 	bne	v1,a0,4015d8 <__qdivrem+0x24c>
  4015e4:	2442fffc 	addiu	v0,v0,-4
  4015e8:	8fcb0000 	lw	t3,0(s8)
  4015ec:	34028000 	li	v0,0x8000
  4015f0:	0162102b 	sltu	v0,t3,v0
  4015f4:	00c5b021 	addu	s6,a2,a1
  4015f8:	104000ac 	beqz	v0,4018ac <__qdivrem+0x520>
  4015fc:	01601821 	move	v1,t3
  401600:	0000a821 	move	s5,zero
  401604:	34048000 	li	a0,0x8000
  401608:	00031840 	sll	v1,v1,0x1
  40160c:	0064102b 	sltu	v0,v1,a0
  401610:	1440fffd 	bnez	v0,401608 <__qdivrem+0x27c>
  401614:	26b50001 	addiu	s5,s5,1
  401618:	1aa00009 	blez	s5,401640 <__qdivrem+0x2b4>
  40161c:	02f32821 	addu	a1,s7,s3
  401620:	02a03021 	move	a2,s5
  401624:	0c1004c4 	jal	401310 <shl>
  401628:	02802021 	move	a0,s4
  40162c:	03c02021 	move	a0,s8
  401630:	26e5ffff 	addiu	a1,s7,-1
  401634:	0c1004c4 	jal	401310 <shl>
  401638:	02a03021 	move	a2,s5
  40163c:	8fcb0000 	lw	t3,0(s8)
  401640:	8fa20050 	lw	v0,80(sp)
  401644:	00177080 	sll	t6,s7,0x2
  401648:	8c580008 	lw	t8,8(v0)
  40164c:	02c06821 	move	t5,s6
  401650:	02804821 	move	t1,s4
  401654:	028e6021 	addu	t4,s4,t6
  401658:	00007821 	move	t7,zero
  40165c:	3416ffff 	li	s6,0xffff
  401660:	8d240000 	lw	a0,0(t1)
  401664:	8d230004 	lw	v1,4(t1)
  401668:	8d260008 	lw	a2,8(t1)
  40166c:	11640081 	beq	t3,a0,401874 <__qdivrem+0x4e8>
  401670:	00041400 	sll	v0,a0,0x10
  401674:	00621025 	or	v0,v1,v0
  401678:	15600002 	bnez	t3,401684 <__qdivrem+0x2f8>
  40167c:	004b001b 	divu	zero,v0,t3
  401680:	0007000d 	break	0x7
  401684:	00002810 	mfhi	a1
  401688:	00003812 	mflo	a3
	...
  401694:	00f80018 	mult	a3,t8
  401698:	00051400 	sll	v0,a1,0x10
  40169c:	00c21025 	or	v0,a2,v0
  4016a0:	00001812 	mflo	v1
  4016a4:	0043182b 	sltu	v1,v0,v1
  4016a8:	10600006 	beqz	v1,4016c4 <__qdivrem+0x338>
  4016ac:	00000000 	nop
  4016b0:	24e7ffff 	addiu	a3,a3,-1
  4016b4:	00ab2821 	addu	a1,a1,t3
  4016b8:	02c5102b 	sltu	v0,s6,a1
  4016bc:	1040fff6 	beqz	v0,401698 <__qdivrem+0x30c>
  4016c0:	00f80018 	mult	a3,t8
  4016c4:	1ae00017 	blez	s7,401724 <__qdivrem+0x398>
  4016c8:	00004021 	move	t0,zero
  4016cc:	8fa20050 	lw	v0,80(sp)
  4016d0:	01802021 	move	a0,t4
  4016d4:	004e3021 	addu	a2,v0,t6
  4016d8:	02e02821 	move	a1,s7
  4016dc:	3c0a0001 	lui	t2,0x1
  4016e0:	8cc20000 	lw	v0,0(a2)
  4016e4:	8c830000 	lw	v1,0(a0)
  4016e8:	00e20018 	mult	a3,v0
  4016ec:	24a5ffff 	addiu	a1,a1,-1
  4016f0:	24c6fffc 	addiu	a2,a2,-4
  4016f4:	00001012 	mflo	v0
  4016f8:	00621823 	subu	v1,v1,v0
  4016fc:	00681823 	subu	v1,v1,t0
  401700:	00031402 	srl	v0,v1,0x10
  401704:	01421023 	subu	v0,t2,v0
  401708:	3063ffff 	andi	v1,v1,0xffff
  40170c:	ac830000 	sw	v1,0(a0)
  401710:	3048ffff 	andi	t0,v0,0xffff
  401714:	14a0fff2 	bnez	a1,4016e0 <__qdivrem+0x354>
  401718:	2484fffc 	addiu	a0,a0,-4
  40171c:	8d240000 	lw	a0,0(t1)
  401720:	00000000 	nop
  401724:	00881023 	subu	v0,a0,t0
  401728:	3044ffff 	andi	a0,v0,0xffff
  40172c:	00021c02 	srl	v1,v0,0x10
  401730:	10600018 	beqz	v1,401794 <__qdivrem+0x408>
  401734:	ad240000 	sw	a0,0(t1)
  401738:	1ae00012 	blez	s7,401784 <__qdivrem+0x3f8>
  40173c:	00004021 	move	t0,zero
  401740:	8fa20050 	lw	v0,80(sp)
  401744:	01802021 	move	a0,t4
  401748:	004e3021 	addu	a2,v0,t6
  40174c:	02e02821 	move	a1,s7
  401750:	8c820000 	lw	v0,0(a0)
  401754:	8cc30000 	lw	v1,0(a2)
  401758:	01021021 	addu	v0,t0,v0
  40175c:	00431021 	addu	v0,v0,v1
  401760:	3043ffff 	andi	v1,v0,0xffff
  401764:	24a5ffff 	addiu	a1,a1,-1
  401768:	ac830000 	sw	v1,0(a0)
  40176c:	00024402 	srl	t0,v0,0x10
  401770:	2484fffc 	addiu	a0,a0,-4
  401774:	14a0fff6 	bnez	a1,401750 <__qdivrem+0x3c4>
  401778:	24c6fffc 	addiu	a2,a2,-4
  40177c:	8d240000 	lw	a0,0(t1)
  401780:	00000000 	nop
  401784:	01041021 	addu	v0,t0,a0
  401788:	3042ffff 	andi	v0,v0,0xffff
  40178c:	ad220000 	sw	v0,0(t1)
  401790:	24e7ffff 	addiu	a3,a3,-1
  401794:	25ef0001 	addiu	t7,t7,1
  401798:	026f102a 	slt	v0,s3,t7
  40179c:	ada70000 	sw	a3,0(t5)
  4017a0:	25290004 	addiu	t1,t1,4
  4017a4:	25ad0004 	addiu	t5,t5,4
  4017a8:	1040ffad 	beqz	v0,401660 <__qdivrem+0x2d4>
  4017ac:	258c0004 	addiu	t4,t4,4
  4017b0:	12400022 	beqz	s2,40183c <__qdivrem+0x4b0>
  4017b4:	00000000 	nop
  4017b8:	12a00016 	beqz	s5,401814 <__qdivrem+0x488>
  4017bc:	02f32821 	addu	a1,s7,s3
  4017c0:	0265102a 	slt	v0,s3,a1
  4017c4:	10400011 	beqz	v0,40180c <__qdivrem+0x480>
  4017c8:	00051080 	sll	v0,a1,0x2
  4017cc:	00051880 	sll	v1,a1,0x2
  4017d0:	24020010 	li	v0,16
  4017d4:	00553823 	subu	a3,v0,s5
  4017d8:	02833021 	addu	a2,s4,v1
  4017dc:	8cc2fffc 	lw	v0,-4(a2)
  4017e0:	8cc30000 	lw	v1,0(a2)
  4017e4:	00e21004 	sllv	v0,v0,a3
  4017e8:	02a31806 	srlv	v1,v1,s5
  4017ec:	3042ffff 	andi	v0,v0,0xffff
  4017f0:	24a5ffff 	addiu	a1,a1,-1
  4017f4:	00621825 	or	v1,v1,v0
  4017f8:	0265202a 	slt	a0,s3,a1
  4017fc:	acc30000 	sw	v1,0(a2)
  401800:	1480fff6 	bnez	a0,4017dc <__qdivrem+0x450>
  401804:	24c6fffc 	addiu	a2,a2,-4
  401808:	00051080 	sll	v0,a1,0x2
  40180c:	00541021 	addu	v0,v0,s4
  401810:	ac400000 	sw	zero,0(v0)
  401814:	8fa20014 	lw	v0,20(sp)
  401818:	8fa40018 	lw	a0,24(sp)
  40181c:	00021400 	sll	v0,v0,0x10
  401820:	8fa3001c 	lw	v1,28(sp)
  401824:	00448025 	or	s0,v0,a0
  401828:	8fa20020 	lw	v0,32(sp)
  40182c:	00031c00 	sll	v1,v1,0x10
  401830:	00628825 	or	s1,v1,v0
  401834:	ae510004 	sw	s1,4(s2)
  401838:	ae500000 	sw	s0,0(s2)
  40183c:	8fa2003c 	lw	v0,60(sp)
  401840:	8fa40040 	lw	a0,64(sp)
  401844:	00021400 	sll	v0,v0,0x10
  401848:	8fa30044 	lw	v1,68(sp)
  40184c:	00448025 	or	s0,v0,a0
  401850:	8fa20048 	lw	v0,72(sp)
  401854:	00031c00 	sll	v1,v1,0x10
  401858:	00628825 	or	s1,v1,v0
  40185c:	02201821 	move	v1,s1
  401860:	081004fe 	j	4013f8 <__qdivrem+0x6c>
  401864:	02001021 	move	v0,s0
  401868:	00001821 	move	v1,zero
  40186c:	081004fe 	j	4013f8 <__qdivrem+0x6c>
  401870:	00001021 	move	v0,zero
  401874:	00602821 	move	a1,v1
  401878:	081005ad 	j	4016b4 <__qdivrem+0x328>
  40187c:	3407ffff 	li	a3,0xffff
  401880:	27a20024 	addiu	v0,sp,36
  401884:	24170004 	li	s7,4
  401888:	27be0028 	addiu	s8,sp,40
  40188c:	08100562 	j	401588 <__qdivrem+0x1fc>
  401890:	afa20050 	sw	v0,80(sp)
  401894:	24170002 	li	s7,2
  401898:	27be0030 	addiu	s8,sp,48
  40189c:	08100562 	j	401588 <__qdivrem+0x1fc>
  4018a0:	afa20050 	sw	v0,80(sp)
  4018a4:	0810056d 	j	4015b4 <__qdivrem+0x228>
  4018a8:	27b40010 	addiu	s4,sp,16
  4018ac:	08100590 	j	401640 <__qdivrem+0x2b4>
  4018b0:	0000a821 	move	s5,zero
  4018b4:	00042880 	sll	a1,a0,0x2
  4018b8:	0810057a 	j	4015e8 <__qdivrem+0x25c>
  4018bc:	27a60038 	addiu	a2,sp,56
