
../../../build/user/my-testbin/myhog2/myhog2:     file format elf32-tradbigmips

Disassembly of section .text:

00400000 <__start>:
  400000:	3c1c1001 	lui	gp,0x1001
  400004:	279c8000 	addiu	gp,gp,-32768
  400008:	2408fff8 	li	t0,-8
  40000c:	03a8e824 	and	sp,sp,t0
  400010:	27bdfff0 	addiu	sp,sp,-16
  400014:	3c011000 	lui	at,0x1000
  400018:	ac250014 	sw	a1,20(at)
  40001c:	0c100014 	jal	400050 <main>
  400020:	00000000 	nop
  400024:	00408021 	move	s0,v0
  400028:	0c100095 	jal	400254 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c1000ab 	jal	4002ac <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <main>:
  400050:	27bdffd8 	addiu	sp,sp,-40
  400054:	afb00018 	sw	s0,24(sp)
  400058:	00808021 	move	s0,a0
  40005c:	3c040040 	lui	a0,0x40
  400060:	afb1001c 	sw	s1,28(sp)
  400064:	24841650 	addiu	a0,a0,5712
  400068:	00a08821 	move	s1,a1
  40006c:	afbf0024 	sw	ra,36(sp)
  400070:	0c100080 	jal	400200 <puts>
  400074:	afb20020 	sw	s2,32(sp)
  400078:	8e240000 	lw	a0,0(s1)
  40007c:	0c100080 	jal	400200 <puts>
  400080:	3c120040 	lui	s2,0x40
  400084:	00108080 	sll	s0,s0,0x2
  400088:	8e250004 	lw	a1,4(s1)
  40008c:	2644165c 	addiu	a0,s2,5724
  400090:	0c10005b 	jal	40016c <printf>
  400094:	02118021 	addu	s0,s0,s1
  400098:	8e050000 	lw	a1,0(s0)
  40009c:	0c10005b 	jal	40016c <printf>
  4000a0:	2644165c 	addiu	a0,s2,5724
  4000a4:	afa00010 	sw	zero,16(sp)
  4000a8:	8fa20010 	lw	v0,16(sp)
  4000ac:	3403c34f 	li	v1,0xc34f
  4000b0:	0062102a 	slt	v0,v1,v0
  4000b4:	1440000b 	bnez	v0,4000e4 <main+0x94>
  4000b8:	00000000 	nop
  4000bc:	3404c350 	li	a0,0xc350
  4000c0:	8fa20010 	lw	v0,16(sp)
  4000c4:	00000000 	nop
  4000c8:	24420001 	addiu	v0,v0,1
  4000cc:	afa20010 	sw	v0,16(sp)
  4000d0:	8fa30010 	lw	v1,16(sp)
  4000d4:	00000000 	nop
  4000d8:	0064182a 	slt	v1,v1,a0
  4000dc:	1460fff8 	bnez	v1,4000c0 <main+0x70>
  4000e0:	00000000 	nop
  4000e4:	8fbf0024 	lw	ra,36(sp)
  4000e8:	8fb20020 	lw	s2,32(sp)
  4000ec:	8fb1001c 	lw	s1,28(sp)
  4000f0:	8fb00018 	lw	s0,24(sp)
  4000f4:	00001021 	move	v0,zero
  4000f8:	03e00008 	jr	ra
  4000fc:	27bd0028 	addiu	sp,sp,40

00400100 <vprintf>:
  400100:	00803021 	move	a2,a0
  400104:	3c040040 	lui	a0,0x40
  400108:	00a03821 	move	a3,a1
  40010c:	24840118 	addiu	a0,a0,280
  400110:	08100211 	j	400844 <__vprintf>
  400114:	00002821 	move	a1,zero

00400118 <__printf_send>:
  400118:	27bdffe0 	addiu	sp,sp,-32
  40011c:	afb20018 	sw	s2,24(sp)
  400120:	afb10014 	sw	s1,20(sp)
  400124:	afbf001c 	sw	ra,28(sp)
  400128:	afb00010 	sw	s0,16(sp)
  40012c:	00c09021 	move	s2,a2
  400130:	10c00008 	beqz	a2,400154 <__printf_send+0x3c>
  400134:	00a08821 	move	s1,a1
  400138:	00008021 	move	s0,zero
  40013c:	02301021 	addu	v0,s1,s0
  400140:	80440000 	lb	a0,0(v0)
  400144:	0c100068 	jal	4001a0 <putchar>
  400148:	26100001 	addiu	s0,s0,1
  40014c:	1650fffc 	bne	s2,s0,400140 <__printf_send+0x28>
  400150:	02301021 	addu	v0,s1,s0
  400154:	8fbf001c 	lw	ra,28(sp)
  400158:	8fb20018 	lw	s2,24(sp)
  40015c:	8fb10014 	lw	s1,20(sp)
  400160:	8fb00010 	lw	s0,16(sp)
  400164:	03e00008 	jr	ra
  400168:	27bd0020 	addiu	sp,sp,32

0040016c <printf>:
  40016c:	27bdffe0 	addiu	sp,sp,-32
  400170:	27a20024 	addiu	v0,sp,36
  400174:	afa50024 	sw	a1,36(sp)
  400178:	00402821 	move	a1,v0
  40017c:	afbf0018 	sw	ra,24(sp)
  400180:	afa60028 	sw	a2,40(sp)
  400184:	afa7002c 	sw	a3,44(sp)
  400188:	0c100040 	jal	400100 <vprintf>
  40018c:	afa20010 	sw	v0,16(sp)
  400190:	8fbf0018 	lw	ra,24(sp)
  400194:	00000000 	nop
  400198:	03e00008 	jr	ra
  40019c:	27bd0020 	addiu	sp,sp,32

004001a0 <putchar>:
  4001a0:	27bdffe0 	addiu	sp,sp,-32
  4001a4:	afb00018 	sw	s0,24(sp)
  4001a8:	27a50010 	addiu	a1,sp,16
  4001ac:	00808021 	move	s0,a0
  4001b0:	24060001 	li	a2,1
  4001b4:	24040001 	li	a0,1
  4001b8:	afbf001c 	sw	ra,28(sp)
  4001bc:	0c1000eb 	jal	4003ac <write>
  4001c0:	a3b00010 	sb	s0,16(sp)
  4001c4:	18400005 	blez	v0,4001dc <putchar+0x3c>
  4001c8:	02001021 	move	v0,s0
  4001cc:	8fbf001c 	lw	ra,28(sp)
  4001d0:	8fb00018 	lw	s0,24(sp)
  4001d4:	03e00008 	jr	ra
  4001d8:	27bd0020 	addiu	sp,sp,32
  4001dc:	2410ffff 	li	s0,-1
  4001e0:	02001021 	move	v0,s0
  4001e4:	8fbf001c 	lw	ra,28(sp)
  4001e8:	8fb00018 	lw	s0,24(sp)
  4001ec:	03e00008 	jr	ra
  4001f0:	27bd0020 	addiu	sp,sp,32
	...

00400200 <puts>:
  400200:	27bdffe8 	addiu	sp,sp,-24
  400204:	afbf0010 	sw	ra,16(sp)
  400208:	0c10035c 	jal	400d70 <__puts>
  40020c:	00000000 	nop
  400210:	0c100068 	jal	4001a0 <putchar>
  400214:	2404000a 	li	a0,10
  400218:	8fbf0010 	lw	ra,16(sp)
  40021c:	00001021 	move	v0,zero
  400220:	03e00008 	jr	ra
  400224:	27bd0018 	addiu	sp,sp,24
	...

00400230 <__exit_hack>:
  400230:	27bdfff8 	addiu	sp,sp,-8
  400234:	24020001 	li	v0,1
  400238:	afa20000 	sw	v0,0(sp)
  40023c:	8fa20000 	lw	v0,0(sp)
  400240:	00000000 	nop
  400244:	1440fffd 	bnez	v0,40023c <__exit_hack+0xc>
  400248:	00000000 	nop
  40024c:	03e00008 	jr	ra
  400250:	27bd0008 	addiu	sp,sp,8

00400254 <exit>:
  400254:	27bdffe8 	addiu	sp,sp,-24
  400258:	afbf0010 	sw	ra,16(sp)
  40025c:	0c1000ab 	jal	4002ac <_exit>
  400260:	00000000 	nop
	...

00400270 <__syscall>:
  400270:	0000000c 	syscall
  400274:	10e00005 	beqz	a3,40028c <__syscall+0x1c>
  400278:	00000000 	nop
  40027c:	3c011000 	lui	at,0x1000
  400280:	ac220010 	sw	v0,16(at)
  400284:	2403ffff 	li	v1,-1
  400288:	2402ffff 	li	v0,-1
  40028c:	03e00008 	jr	ra
  400290:	00000000 	nop

00400294 <fork>:
  400294:	0810009c 	j	400270 <__syscall>
  400298:	24020000 	li	v0,0

0040029c <vfork>:
  40029c:	0810009c 	j	400270 <__syscall>
  4002a0:	24020001 	li	v0,1

004002a4 <execv>:
  4002a4:	0810009c 	j	400270 <__syscall>
  4002a8:	24020002 	li	v0,2

004002ac <_exit>:
  4002ac:	0810009c 	j	400270 <__syscall>
  4002b0:	24020003 	li	v0,3

004002b4 <waitpid>:
  4002b4:	0810009c 	j	400270 <__syscall>
  4002b8:	24020004 	li	v0,4

004002bc <getpid>:
  4002bc:	0810009c 	j	400270 <__syscall>
  4002c0:	24020005 	li	v0,5

004002c4 <getppid>:
  4002c4:	0810009c 	j	400270 <__syscall>
  4002c8:	24020006 	li	v0,6

004002cc <sbrk>:
  4002cc:	0810009c 	j	400270 <__syscall>
  4002d0:	24020007 	li	v0,7

004002d4 <mmap>:
  4002d4:	0810009c 	j	400270 <__syscall>
  4002d8:	24020008 	li	v0,8

004002dc <munmap>:
  4002dc:	0810009c 	j	400270 <__syscall>
  4002e0:	24020009 	li	v0,9

004002e4 <mprotect>:
  4002e4:	0810009c 	j	400270 <__syscall>
  4002e8:	2402000a 	li	v0,10

004002ec <umask>:
  4002ec:	0810009c 	j	400270 <__syscall>
  4002f0:	24020011 	li	v0,17

004002f4 <issetugid>:
  4002f4:	0810009c 	j	400270 <__syscall>
  4002f8:	24020012 	li	v0,18

004002fc <getresuid>:
  4002fc:	0810009c 	j	400270 <__syscall>
  400300:	24020013 	li	v0,19

00400304 <setresuid>:
  400304:	0810009c 	j	400270 <__syscall>
  400308:	24020014 	li	v0,20

0040030c <getresgid>:
  40030c:	0810009c 	j	400270 <__syscall>
  400310:	24020015 	li	v0,21

00400314 <setresgid>:
  400314:	0810009c 	j	400270 <__syscall>
  400318:	24020016 	li	v0,22

0040031c <getgroups>:
  40031c:	0810009c 	j	400270 <__syscall>
  400320:	24020017 	li	v0,23

00400324 <setgroups>:
  400324:	0810009c 	j	400270 <__syscall>
  400328:	24020018 	li	v0,24

0040032c <__getlogin>:
  40032c:	0810009c 	j	400270 <__syscall>
  400330:	24020019 	li	v0,25

00400334 <__setlogin>:
  400334:	0810009c 	j	400270 <__syscall>
  400338:	2402001a 	li	v0,26

0040033c <kill>:
  40033c:	0810009c 	j	400270 <__syscall>
  400340:	2402001b 	li	v0,27

00400344 <sigaction>:
  400344:	0810009c 	j	400270 <__syscall>
  400348:	2402001c 	li	v0,28

0040034c <sigpending>:
  40034c:	0810009c 	j	400270 <__syscall>
  400350:	2402001d 	li	v0,29

00400354 <sigprocmask>:
  400354:	0810009c 	j	400270 <__syscall>
  400358:	2402001e 	li	v0,30

0040035c <sigsuspend>:
  40035c:	0810009c 	j	400270 <__syscall>
  400360:	2402001f 	li	v0,31

00400364 <sigreturn>:
  400364:	0810009c 	j	400270 <__syscall>
  400368:	24020020 	li	v0,32

0040036c <open>:
  40036c:	0810009c 	j	400270 <__syscall>
  400370:	2402002d 	li	v0,45

00400374 <pipe>:
  400374:	0810009c 	j	400270 <__syscall>
  400378:	2402002e 	li	v0,46

0040037c <dup>:
  40037c:	0810009c 	j	400270 <__syscall>
  400380:	2402002f 	li	v0,47

00400384 <dup2>:
  400384:	0810009c 	j	400270 <__syscall>
  400388:	24020030 	li	v0,48

0040038c <close>:
  40038c:	0810009c 	j	400270 <__syscall>
  400390:	24020031 	li	v0,49

00400394 <read>:
  400394:	0810009c 	j	400270 <__syscall>
  400398:	24020032 	li	v0,50

0040039c <pread>:
  40039c:	0810009c 	j	400270 <__syscall>
  4003a0:	24020033 	li	v0,51

004003a4 <getdirentry>:
  4003a4:	0810009c 	j	400270 <__syscall>
  4003a8:	24020036 	li	v0,54

004003ac <write>:
  4003ac:	0810009c 	j	400270 <__syscall>
  4003b0:	24020037 	li	v0,55

004003b4 <pwrite>:
  4003b4:	0810009c 	j	400270 <__syscall>
  4003b8:	24020038 	li	v0,56

004003bc <lseek>:
  4003bc:	0810009c 	j	400270 <__syscall>
  4003c0:	2402003b 	li	v0,59

004003c4 <flock>:
  4003c4:	0810009c 	j	400270 <__syscall>
  4003c8:	2402003c 	li	v0,60

004003cc <ftruncate>:
  4003cc:	0810009c 	j	400270 <__syscall>
  4003d0:	2402003d 	li	v0,61

004003d4 <fsync>:
  4003d4:	0810009c 	j	400270 <__syscall>
  4003d8:	2402003e 	li	v0,62

004003dc <fcntl>:
  4003dc:	0810009c 	j	400270 <__syscall>
  4003e0:	2402003f 	li	v0,63

004003e4 <ioctl>:
  4003e4:	0810009c 	j	400270 <__syscall>
  4003e8:	24020040 	li	v0,64

004003ec <select>:
  4003ec:	0810009c 	j	400270 <__syscall>
  4003f0:	24020041 	li	v0,65

004003f4 <poll>:
  4003f4:	0810009c 	j	400270 <__syscall>
  4003f8:	24020042 	li	v0,66

004003fc <link>:
  4003fc:	0810009c 	j	400270 <__syscall>
  400400:	24020043 	li	v0,67

00400404 <remove>:
  400404:	0810009c 	j	400270 <__syscall>
  400408:	24020044 	li	v0,68

0040040c <mkdir>:
  40040c:	0810009c 	j	400270 <__syscall>
  400410:	24020045 	li	v0,69

00400414 <rmdir>:
  400414:	0810009c 	j	400270 <__syscall>
  400418:	24020046 	li	v0,70

0040041c <mkfifo>:
  40041c:	0810009c 	j	400270 <__syscall>
  400420:	24020047 	li	v0,71

00400424 <rename>:
  400424:	0810009c 	j	400270 <__syscall>
  400428:	24020048 	li	v0,72

0040042c <access>:
  40042c:	0810009c 	j	400270 <__syscall>
  400430:	24020049 	li	v0,73

00400434 <chdir>:
  400434:	0810009c 	j	400270 <__syscall>
  400438:	2402004a 	li	v0,74

0040043c <fchdir>:
  40043c:	0810009c 	j	400270 <__syscall>
  400440:	2402004b 	li	v0,75

00400444 <__getcwd>:
  400444:	0810009c 	j	400270 <__syscall>
  400448:	2402004c 	li	v0,76

0040044c <symlink>:
  40044c:	0810009c 	j	400270 <__syscall>
  400450:	2402004d 	li	v0,77

00400454 <readlink>:
  400454:	0810009c 	j	400270 <__syscall>
  400458:	2402004e 	li	v0,78

0040045c <mount>:
  40045c:	0810009c 	j	400270 <__syscall>
  400460:	2402004f 	li	v0,79

00400464 <unmount>:
  400464:	0810009c 	j	400270 <__syscall>
  400468:	24020050 	li	v0,80

0040046c <stat>:
  40046c:	0810009c 	j	400270 <__syscall>
  400470:	24020051 	li	v0,81

00400474 <fstat>:
  400474:	0810009c 	j	400270 <__syscall>
  400478:	24020052 	li	v0,82

0040047c <lstat>:
  40047c:	0810009c 	j	400270 <__syscall>
  400480:	24020053 	li	v0,83

00400484 <utimes>:
  400484:	0810009c 	j	400270 <__syscall>
  400488:	24020054 	li	v0,84

0040048c <futimes>:
  40048c:	0810009c 	j	400270 <__syscall>
  400490:	24020055 	li	v0,85

00400494 <lutimes>:
  400494:	0810009c 	j	400270 <__syscall>
  400498:	24020056 	li	v0,86

0040049c <chmod>:
  40049c:	0810009c 	j	400270 <__syscall>
  4004a0:	24020057 	li	v0,87

004004a4 <chown>:
  4004a4:	0810009c 	j	400270 <__syscall>
  4004a8:	24020058 	li	v0,88

004004ac <fchmod>:
  4004ac:	0810009c 	j	400270 <__syscall>
  4004b0:	24020059 	li	v0,89

004004b4 <fchown>:
  4004b4:	0810009c 	j	400270 <__syscall>
  4004b8:	2402005a 	li	v0,90

004004bc <lchmod>:
  4004bc:	0810009c 	j	400270 <__syscall>
  4004c0:	2402005b 	li	v0,91

004004c4 <lchown>:
  4004c4:	0810009c 	j	400270 <__syscall>
  4004c8:	2402005c 	li	v0,92

004004cc <socket>:
  4004cc:	0810009c 	j	400270 <__syscall>
  4004d0:	24020062 	li	v0,98

004004d4 <bind>:
  4004d4:	0810009c 	j	400270 <__syscall>
  4004d8:	24020063 	li	v0,99

004004dc <connect>:
  4004dc:	0810009c 	j	400270 <__syscall>
  4004e0:	24020064 	li	v0,100

004004e4 <listen>:
  4004e4:	0810009c 	j	400270 <__syscall>
  4004e8:	24020065 	li	v0,101

004004ec <accept>:
  4004ec:	0810009c 	j	400270 <__syscall>
  4004f0:	24020066 	li	v0,102

004004f4 <shutdown>:
  4004f4:	0810009c 	j	400270 <__syscall>
  4004f8:	24020068 	li	v0,104

004004fc <getsockname>:
  4004fc:	0810009c 	j	400270 <__syscall>
  400500:	24020069 	li	v0,105

00400504 <getpeername>:
  400504:	0810009c 	j	400270 <__syscall>
  400508:	2402006a 	li	v0,106

0040050c <getsockopt>:
  40050c:	0810009c 	j	400270 <__syscall>
  400510:	2402006b 	li	v0,107

00400514 <setsockopt>:
  400514:	0810009c 	j	400270 <__syscall>
  400518:	2402006c 	li	v0,108

0040051c <__time>:
  40051c:	0810009c 	j	400270 <__syscall>
  400520:	24020071 	li	v0,113

00400524 <__settime>:
  400524:	0810009c 	j	400270 <__syscall>
  400528:	24020072 	li	v0,114

0040052c <nanosleep>:
  40052c:	0810009c 	j	400270 <__syscall>
  400530:	24020073 	li	v0,115

00400534 <sync>:
  400534:	0810009c 	j	400270 <__syscall>
  400538:	24020076 	li	v0,118

0040053c <reboot>:
  40053c:	0810009c 	j	400270 <__syscall>
  400540:	24020077 	li	v0,119
	...

00400550 <__pf_print>:
  400550:	27bdffe0 	addiu	sp,sp,-32
  400554:	afbf0018 	sw	ra,24(sp)
  400558:	afb10014 	sw	s1,20(sp)
  40055c:	afb00010 	sw	s0,16(sp)
  400560:	8c830000 	lw	v1,0(a0)
  400564:	00808021 	move	s0,a0
  400568:	8c840004 	lw	a0,4(a0)
  40056c:	0060f809 	jalr	v1
  400570:	00c08821 	move	s1,a2
  400574:	8e02000c 	lw	v0,12(s0)
  400578:	00000000 	nop
  40057c:	00511021 	addu	v0,v0,s1
  400580:	ae02000c 	sw	v0,12(s0)
  400584:	8fbf0018 	lw	ra,24(sp)
  400588:	8fb10014 	lw	s1,20(sp)
  40058c:	8fb00010 	lw	s0,16(sp)
  400590:	03e00008 	jr	ra
  400594:	27bd0020 	addiu	sp,sp,32

00400598 <__pf_endfield>:
  400598:	24020020 	li	v0,32
  40059c:	ac82002c 	sw	v0,44(a0)
  4005a0:	00001821 	move	v1,zero
  4005a4:	00001021 	move	v0,zero
  4005a8:	ac800038 	sw	zero,56(a0)
  4005ac:	ac800010 	sw	zero,16(a0)
  4005b0:	ac800014 	sw	zero,20(a0)
  4005b4:	ac83001c 	sw	v1,28(a0)
  4005b8:	ac820018 	sw	v0,24(a0)
  4005bc:	ac800020 	sw	zero,32(a0)
  4005c0:	ac800024 	sw	zero,36(a0)
  4005c4:	ac800028 	sw	zero,40(a0)
  4005c8:	ac800030 	sw	zero,48(a0)
  4005cc:	03e00008 	jr	ra
  4005d0:	ac800034 	sw	zero,52(a0)

004005d4 <__pf_fill>:
  4005d4:	27bdffd0 	addiu	sp,sp,-48
  4005d8:	afb30024 	sw	s3,36(sp)
  4005dc:	afb20020 	sw	s2,32(sp)
  4005e0:	afbf0028 	sw	ra,40(sp)
  4005e4:	afb1001c 	sw	s1,28(sp)
  4005e8:	afb00018 	sw	s0,24(sp)
  4005ec:	00809821 	move	s3,a0
  4005f0:	8c82002c 	lw	v0,44(a0)
  4005f4:	18a0000b 	blez	a1,400624 <__pf_fill+0x50>
  4005f8:	00a09021 	move	s2,a1
  4005fc:	a3a20010 	sb	v0,16(sp)
  400600:	00008021 	move	s0,zero
  400604:	27b10010 	addiu	s1,sp,16
  400608:	26100001 	addiu	s0,s0,1
  40060c:	02602021 	move	a0,s3
  400610:	02202821 	move	a1,s1
  400614:	0c100154 	jal	400550 <__pf_print>
  400618:	24060001 	li	a2,1
  40061c:	1650fffb 	bne	s2,s0,40060c <__pf_fill+0x38>
  400620:	26100001 	addiu	s0,s0,1
  400624:	8fbf0028 	lw	ra,40(sp)
  400628:	8fb30024 	lw	s3,36(sp)
  40062c:	8fb20020 	lw	s2,32(sp)
  400630:	8fb1001c 	lw	s1,28(sp)
  400634:	8fb00018 	lw	s0,24(sp)
  400638:	03e00008 	jr	ra
  40063c:	27bd0030 	addiu	sp,sp,48

00400640 <__pf_printstuff>:
  400640:	27bdffd0 	addiu	sp,sp,-48
  400644:	afbf0028 	sw	ra,40(sp)
  400648:	afb50024 	sw	s5,36(sp)
  40064c:	afb40020 	sw	s4,32(sp)
  400650:	afb3001c 	sw	s3,28(sp)
  400654:	afb20018 	sw	s2,24(sp)
  400658:	00c09821 	move	s3,a2
  40065c:	afb10014 	sw	s1,20(sp)
  400660:	afb00010 	sw	s0,16(sp)
  400664:	00808821 	move	s1,a0
  400668:	00a02021 	move	a0,a1
  40066c:	00a0a021 	move	s4,a1
  400670:	0c100390 	jal	400e40 <strlen>
  400674:	00e0a821 	move	s5,a3
  400678:	02602021 	move	a0,s3
  40067c:	0c100390 	jal	400e40 <strlen>
  400680:	00409021 	move	s2,v0
  400684:	02a02021 	move	a0,s5
  400688:	0c100390 	jal	400e40 <strlen>
  40068c:	02428021 	addu	s0,s2,v0
  400690:	8e230024 	lw	v1,36(s1)
  400694:	02022821 	addu	a1,s0,v0
  400698:	00a3102a 	slt	v0,a1,v1
  40069c:	10400040 	beqz	v0,4007a0 <__pf_printstuff+0x160>
  4006a0:	00658023 	subu	s0,v1,a1
  4006a4:	1a000056 	blez	s0,400800 <__pf_printstuff+0x1c0>
  4006a8:	02403021 	move	a2,s2
  4006ac:	8e220028 	lw	v0,40(s1)
  4006b0:	00000000 	nop
  4006b4:	10400028 	beqz	v0,400758 <__pf_printstuff+0x118>
  4006b8:	24020030 	li	v0,48
  4006bc:	0c100390 	jal	400e40 <strlen>
  4006c0:	02802021 	move	a0,s4
  4006c4:	00403021 	move	a2,v0
  4006c8:	02802821 	move	a1,s4
  4006cc:	0c100154 	jal	400550 <__pf_print>
  4006d0:	02202021 	move	a0,s1
  4006d4:	0c100390 	jal	400e40 <strlen>
  4006d8:	02602021 	move	a0,s3
  4006dc:	00403021 	move	a2,v0
  4006e0:	02202021 	move	a0,s1
  4006e4:	0c100154 	jal	400550 <__pf_print>
  4006e8:	02602821 	move	a1,s3
  4006ec:	8e220028 	lw	v0,40(s1)
  4006f0:	00000000 	nop
  4006f4:	14400005 	bnez	v0,40070c <__pf_printstuff+0xcc>
  4006f8:	24020030 	li	v0,48
  4006fc:	8e23002c 	lw	v1,44(s1)
  400700:	00000000 	nop
  400704:	1062004b 	beq	v1,v0,400834 <__pf_printstuff+0x1f4>
  400708:	02202021 	move	a0,s1
  40070c:	0c100390 	jal	400e40 <strlen>
  400710:	02a02021 	move	a0,s5
  400714:	00403021 	move	a2,v0
  400718:	02202021 	move	a0,s1
  40071c:	0c100154 	jal	400550 <__pf_print>
  400720:	02a02821 	move	a1,s5
  400724:	8e220028 	lw	v0,40(s1)
  400728:	00000000 	nop
  40072c:	14400012 	bnez	v0,400778 <__pf_printstuff+0x138>
  400730:	02202021 	move	a0,s1
  400734:	8fbf0028 	lw	ra,40(sp)
  400738:	8fb50024 	lw	s5,36(sp)
  40073c:	8fb40020 	lw	s4,32(sp)
  400740:	8fb3001c 	lw	s3,28(sp)
  400744:	8fb20018 	lw	s2,24(sp)
  400748:	8fb10014 	lw	s1,20(sp)
  40074c:	8fb00010 	lw	s0,16(sp)
  400750:	03e00008 	jr	ra
  400754:	27bd0030 	addiu	sp,sp,48
  400758:	8e23002c 	lw	v1,44(s1)
  40075c:	00000000 	nop
  400760:	1062ffd6 	beq	v1,v0,4006bc <__pf_printstuff+0x7c>
  400764:	02202021 	move	a0,s1
  400768:	0c100175 	jal	4005d4 <__pf_fill>
  40076c:	02002821 	move	a1,s0
  400770:	081001af 	j	4006bc <__pf_printstuff+0x7c>
  400774:	00000000 	nop
  400778:	02002821 	move	a1,s0
  40077c:	8fbf0028 	lw	ra,40(sp)
  400780:	8fb50024 	lw	s5,36(sp)
  400784:	8fb40020 	lw	s4,32(sp)
  400788:	8fb3001c 	lw	s3,28(sp)
  40078c:	8fb20018 	lw	s2,24(sp)
  400790:	8fb10014 	lw	s1,20(sp)
  400794:	8fb00010 	lw	s0,16(sp)
  400798:	08100175 	j	4005d4 <__pf_fill>
  40079c:	27bd0030 	addiu	sp,sp,48
  4007a0:	02802821 	move	a1,s4
  4007a4:	02403021 	move	a2,s2
  4007a8:	0c100154 	jal	400550 <__pf_print>
  4007ac:	02202021 	move	a0,s1
  4007b0:	0c100390 	jal	400e40 <strlen>
  4007b4:	02602021 	move	a0,s3
  4007b8:	00403021 	move	a2,v0
  4007bc:	02202021 	move	a0,s1
  4007c0:	0c100154 	jal	400550 <__pf_print>
  4007c4:	02602821 	move	a1,s3
  4007c8:	0c100390 	jal	400e40 <strlen>
  4007cc:	02a02021 	move	a0,s5
  4007d0:	02202021 	move	a0,s1
  4007d4:	02a02821 	move	a1,s5
  4007d8:	8fbf0028 	lw	ra,40(sp)
  4007dc:	8fb50024 	lw	s5,36(sp)
  4007e0:	8fb40020 	lw	s4,32(sp)
  4007e4:	8fb3001c 	lw	s3,28(sp)
  4007e8:	8fb20018 	lw	s2,24(sp)
  4007ec:	8fb10014 	lw	s1,20(sp)
  4007f0:	8fb00010 	lw	s0,16(sp)
  4007f4:	00403021 	move	a2,v0
  4007f8:	08100154 	j	400550 <__pf_print>
  4007fc:	27bd0030 	addiu	sp,sp,48
  400800:	02802821 	move	a1,s4
  400804:	0c100154 	jal	400550 <__pf_print>
  400808:	02202021 	move	a0,s1
  40080c:	0c100390 	jal	400e40 <strlen>
  400810:	02602021 	move	a0,s3
  400814:	00403021 	move	a2,v0
  400818:	02202021 	move	a0,s1
  40081c:	0c100154 	jal	400550 <__pf_print>
  400820:	02602821 	move	a1,s3
  400824:	0c100390 	jal	400e40 <strlen>
  400828:	02a02021 	move	a0,s5
  40082c:	081001f5 	j	4007d4 <__pf_printstuff+0x194>
  400830:	02202021 	move	a0,s1
  400834:	0c100175 	jal	4005d4 <__pf_fill>
  400838:	02002821 	move	a1,s0
  40083c:	081001c3 	j	40070c <__pf_printstuff+0xcc>
  400840:	00000000 	nop

00400844 <__vprintf>:
  400844:	27bdff68 	addiu	sp,sp,-152
  400848:	afbe0090 	sw	s8,144(sp)
  40084c:	27be0030 	addiu	s8,sp,48
  400850:	afb10074 	sw	s1,116(sp)
  400854:	afa40030 	sw	a0,48(sp)
  400858:	00c08821 	move	s1,a2
  40085c:	03c02021 	move	a0,s8
  400860:	afb00070 	sw	s0,112(sp)
  400864:	afbf0094 	sw	ra,148(sp)
  400868:	afb7008c 	sw	s7,140(sp)
  40086c:	afb60088 	sw	s6,136(sp)
  400870:	afb50084 	sw	s5,132(sp)
  400874:	afb40080 	sw	s4,128(sp)
  400878:	afb3007c 	sw	s3,124(sp)
  40087c:	afb20078 	sw	s2,120(sp)
  400880:	afa50034 	sw	a1,52(sp)
  400884:	afa70038 	sw	a3,56(sp)
  400888:	0c100166 	jal	400598 <__pf_endfield>
  40088c:	afa0003c 	sw	zero,60(sp)
  400890:	82300000 	lb	s0,0(s1)
  400894:	00000000 	nop
  400898:	12000017 	beqz	s0,4008f8 <__vprintf+0xb4>
  40089c:	0220a021 	move	s4,s1
  4008a0:	08100232 	j	4008c8 <__vprintf+0x84>
  4008a4:	00000000 	nop
  4008a8:	27a50010 	addiu	a1,sp,16
  4008ac:	24060001 	li	a2,1
  4008b0:	0c100154 	jal	400550 <__pf_print>
  4008b4:	a3b00010 	sb	s0,16(sp)
  4008b8:	82900001 	lb	s0,1(s4)
  4008bc:	00000000 	nop
  4008c0:	1200000d 	beqz	s0,4008f8 <__vprintf+0xb4>
  4008c4:	26940001 	addiu	s4,s4,1
  4008c8:	8fa20040 	lw	v0,64(sp)
  4008cc:	00000000 	nop
  4008d0:	14400016 	bnez	v0,40092c <__vprintf+0xe8>
  4008d4:	24020025 	li	v0,37
  4008d8:	1602fff3 	bne	s0,v0,4008a8 <__vprintf+0x64>
  4008dc:	03c02021 	move	a0,s8
  4008e0:	24020001 	li	v0,1
  4008e4:	afa20040 	sw	v0,64(sp)
  4008e8:	82900001 	lb	s0,1(s4)
  4008ec:	00000000 	nop
  4008f0:	1600fff5 	bnez	s0,4008c8 <__vprintf+0x84>
  4008f4:	26940001 	addiu	s4,s4,1
  4008f8:	8fa2003c 	lw	v0,60(sp)
  4008fc:	8fbf0094 	lw	ra,148(sp)
  400900:	8fbe0090 	lw	s8,144(sp)
  400904:	8fb7008c 	lw	s7,140(sp)
  400908:	8fb60088 	lw	s6,136(sp)
  40090c:	8fb50084 	lw	s5,132(sp)
  400910:	8fb40080 	lw	s4,128(sp)
  400914:	8fb3007c 	lw	s3,124(sp)
  400918:	8fb20078 	lw	s2,120(sp)
  40091c:	8fb10074 	lw	s1,116(sp)
  400920:	8fb00070 	lw	s0,112(sp)
  400924:	03e00008 	jr	ra
  400928:	27bd0098 	addiu	sp,sp,152
  40092c:	3c040040 	lui	a0,0x40
  400930:	2484166c 	addiu	a0,a0,5740
  400934:	0c100378 	jal	400de0 <strchr>
  400938:	02002821 	move	a1,s0
  40093c:	10400031 	beqz	v0,400a04 <__vprintf+0x1c0>
  400940:	24020030 	li	v0,48
  400944:	1202001d 	beq	s0,v0,4009bc <__vprintf+0x178>
  400948:	2a020031 	slti	v0,s0,49
  40094c:	10400013 	beqz	v0,40099c <__vprintf+0x158>
  400950:	2402006c 	li	v0,108
  400954:	24020023 	li	v0,35
  400958:	12020027 	beq	s0,v0,4009f8 <__vprintf+0x1b4>
  40095c:	2402002d 	li	v0,45
  400960:	1202004a 	beq	s0,v0,400a8c <__vprintf+0x248>
  400964:	24020001 	li	v0,1
  400968:	2602ffcf 	addiu	v0,s0,-49
  40096c:	2c420009 	sltiu	v0,v0,9
  400970:	1040001a 	beqz	v0,4009dc <__vprintf+0x198>
  400974:	3c040040 	lui	a0,0x40
  400978:	8fa20054 	lw	v0,84(sp)
  40097c:	00000000 	nop
  400980:	000218c0 	sll	v1,v0,0x3
  400984:	00021040 	sll	v0,v0,0x1
  400988:	00431021 	addu	v0,v0,v1
  40098c:	02021021 	addu	v0,s0,v0
  400990:	2442ffd0 	addiu	v0,v0,-48
  400994:	0810022e 	j	4008b8 <__vprintf+0x74>
  400998:	afa20054 	sw	v0,84(sp)
  40099c:	1602fff3 	bne	s0,v0,40096c <__vprintf+0x128>
  4009a0:	2602ffcf 	addiu	v0,s0,-49
  4009a4:	8fa20044 	lw	v0,68(sp)
  4009a8:	24030001 	li	v1,1
  4009ac:	10430039 	beq	v0,v1,400a94 <__vprintf+0x250>
  4009b0:	24020002 	li	v0,2
  4009b4:	0810022e 	j	4008b8 <__vprintf+0x74>
  4009b8:	afa30044 	sw	v1,68(sp)
  4009bc:	8fa20054 	lw	v0,84(sp)
  4009c0:	00000000 	nop
  4009c4:	1840008c 	blez	v0,400bf8 <__vprintf+0x3b4>
  4009c8:	000218c0 	sll	v1,v0,0x3
  4009cc:	00021040 	sll	v0,v0,0x1
  4009d0:	00431021 	addu	v0,v0,v1
  4009d4:	0810022e 	j	4008b8 <__vprintf+0x74>
  4009d8:	afa20054 	sw	v0,84(sp)
  4009dc:	3c060040 	lui	a2,0x40
  4009e0:	2484167c 	addiu	a0,a0,5756
  4009e4:	24c616a4 	addiu	a2,a2,5796
  4009e8:	0c1003b4 	jal	400ed0 <__bad_assert>
  4009ec:	240500dc 	li	a1,220
  4009f0:	0810025e 	j	400978 <__vprintf+0x134>
  4009f4:	00000000 	nop
  4009f8:	24020001 	li	v0,1
  4009fc:	0810022e 	j	4008b8 <__vprintf+0x74>
  400a00:	afa20068 	sw	v0,104(sp)
  400a04:	3c040040 	lui	a0,0x40
  400a08:	248416b8 	addiu	a0,a0,5816
  400a0c:	0c100378 	jal	400de0 <strchr>
  400a10:	02002821 	move	a1,s0
  400a14:	10400091 	beqz	v0,400c5c <__vprintf+0x418>
  400a18:	24020070 	li	v0,112
  400a1c:	1202001f 	beq	s0,v0,400a9c <__vprintf+0x258>
  400a20:	24020064 	li	v0,100
  400a24:	1202009e 	beq	s0,v0,400ca0 <__vprintf+0x45c>
  400a28:	24020001 	li	v0,1
  400a2c:	8fa30044 	lw	v1,68(sp)
  400a30:	00000000 	nop
  400a34:	10620003 	beq	v1,v0,400a44 <__vprintf+0x200>
  400a38:	00000000 	nop
  400a3c:	14600074 	bnez	v1,400c10 <__vprintf+0x3cc>
  400a40:	24020002 	li	v0,2
  400a44:	8fa20038 	lw	v0,56(sp)
  400a48:	afa00048 	sw	zero,72(sp)
  400a4c:	8c430000 	lw	v1,0(v0)
  400a50:	24420004 	addiu	v0,v0,4
  400a54:	afa20038 	sw	v0,56(sp)
  400a58:	afa3004c 	sw	v1,76(sp)
  400a5c:	2602ff9c 	addiu	v0,s0,-100
  400a60:	304200ff 	andi	v0,v0,0xff
  400a64:	2c430015 	sltiu	v1,v0,21
  400a68:	10600015 	beqz	v1,400ac0 <__vprintf+0x27c>
  400a6c:	3c030040 	lui	v1,0x40
  400a70:	00021080 	sll	v0,v0,0x2
  400a74:	246315f0 	addiu	v1,v1,5616
  400a78:	00431021 	addu	v0,v0,v1
  400a7c:	8c440000 	lw	a0,0(v0)
  400a80:	00000000 	nop
  400a84:	00800008 	jr	a0
  400a88:	00000000 	nop
  400a8c:	0810022e 	j	4008b8 <__vprintf+0x74>
  400a90:	afa20058 	sw	v0,88(sp)
  400a94:	0810022e 	j	4008b8 <__vprintf+0x74>
  400a98:	afa20044 	sw	v0,68(sp)
  400a9c:	8fa20038 	lw	v0,56(sp)
  400aa0:	afa00048 	sw	zero,72(sp)
  400aa4:	24430004 	addiu	v1,v0,4
  400aa8:	afa30038 	sw	v1,56(sp)
  400aac:	8c440000 	lw	a0,0(v0)
  400ab0:	00000000 	nop
  400ab4:	afa4004c 	sw	a0,76(sp)
  400ab8:	24020010 	li	v0,16
  400abc:	afa20060 	sw	v0,96(sp)
  400ac0:	8fa20068 	lw	v0,104(sp)
  400ac4:	00000000 	nop
  400ac8:	1440004d 	bnez	v0,400c00 <__vprintf+0x3bc>
  400acc:	24020001 	li	v0,1
  400ad0:	24020070 	li	v0,112
  400ad4:	1202004a 	beq	s0,v0,400c00 <__vprintf+0x3bc>
  400ad8:	24020001 	li	v0,1
  400adc:	8fb60060 	lw	s6,96(sp)
  400ae0:	3c020040 	lui	v0,0x40
  400ae4:	8fb1004c 	lw	s1,76(sp)
  400ae8:	8fb00048 	lw	s0,72(sp)
  400aec:	a3a00029 	sb	zero,41(sp)
  400af0:	245716c0 	addiu	s7,v0,5824
  400af4:	27b50028 	addiu	s5,sp,40
  400af8:	02c09821 	move	s3,s6
  400afc:	001697c3 	sra	s2,s6,0x1f
  400b00:	02202821 	move	a1,s1
  400b04:	02002021 	move	a0,s0
  400b08:	02603821 	move	a3,s3
  400b0c:	0c1003a8 	jal	400ea0 <__umoddi3>
  400b10:	02403021 	move	a2,s2
  400b14:	02e31821 	addu	v1,s7,v1
  400b18:	90620000 	lbu	v0,0(v1)
  400b1c:	02202821 	move	a1,s1
  400b20:	02002021 	move	a0,s0
  400b24:	02603821 	move	a3,s3
  400b28:	02403021 	move	a2,s2
  400b2c:	0c1003a0 	jal	400e80 <__udivdi3>
  400b30:	a2a20000 	sb	v0,0(s5)
  400b34:	00408021 	move	s0,v0
  400b38:	02031025 	or	v0,s0,v1
  400b3c:	00608821 	move	s1,v1
  400b40:	1440ffef 	bnez	v0,400b00 <__vprintf+0x2bc>
  400b44:	26b5ffff 	addiu	s5,s5,-1
  400b48:	8fa20064 	lw	v0,100(sp)
  400b4c:	00000000 	nop
  400b50:	10400006 	beqz	v0,400b6c <__vprintf+0x328>
  400b54:	3c020040 	lui	v0,0x40
  400b58:	24020010 	li	v0,16
  400b5c:	12c2005e 	beq	s6,v0,400cd8 <__vprintf+0x494>
  400b60:	24020008 	li	v0,8
  400b64:	12c20037 	beq	s6,v0,400c44 <__vprintf+0x400>
  400b68:	3c020040 	lui	v0,0x40
  400b6c:	244616d0 	addiu	a2,v0,5840
  400b70:	8fa20050 	lw	v0,80(sp)
  400b74:	00000000 	nop
  400b78:	10400023 	beqz	v0,400c08 <__vprintf+0x3c4>
  400b7c:	3c020040 	lui	v0,0x40
  400b80:	3c020040 	lui	v0,0x40
  400b84:	24451660 	addiu	a1,v0,5728
  400b88:	03c02021 	move	a0,s8
  400b8c:	0c100190 	jal	400640 <__pf_printstuff>
  400b90:	26a70001 	addiu	a3,s5,1
  400b94:	0c100166 	jal	400598 <__pf_endfield>
  400b98:	03c02021 	move	a0,s8
  400b9c:	0810022e 	j	4008b8 <__vprintf+0x74>
  400ba0:	00000000 	nop
  400ba4:	8fa20038 	lw	v0,56(sp)
  400ba8:	2403fff8 	li	v1,-8
  400bac:	24420007 	addiu	v0,v0,7
  400bb0:	00431024 	and	v0,v0,v1
  400bb4:	8c470004 	lw	a3,4(v0)
  400bb8:	8c460000 	lw	a2,0(v0)
  400bbc:	24420008 	addiu	v0,v0,8
  400bc0:	afa20038 	sw	v0,56(sp)
  400bc4:	04c10040 	bgez	a2,400cc8 <__vprintf+0x484>
  400bc8:	2402000a 	li	v0,10
  400bcc:	00071823 	negu	v1,a3
  400bd0:	0003282b 	sltu	a1,zero,v1
  400bd4:	00061023 	negu	v0,a2
  400bd8:	00451023 	subu	v0,v0,a1
  400bdc:	2404ffff 	li	a0,-1
  400be0:	afa40050 	sw	a0,80(sp)
  400be4:	afa3004c 	sw	v1,76(sp)
  400be8:	afa20048 	sw	v0,72(sp)
  400bec:	2402000a 	li	v0,10
  400bf0:	081002b0 	j	400ac0 <__vprintf+0x27c>
  400bf4:	afa20060 	sw	v0,96(sp)
  400bf8:	0810022e 	j	4008b8 <__vprintf+0x74>
  400bfc:	afb0005c 	sw	s0,92(sp)
  400c00:	081002b7 	j	400adc <__vprintf+0x298>
  400c04:	afa20064 	sw	v0,100(sp)
  400c08:	081002e2 	j	400b88 <__vprintf+0x344>
  400c0c:	244516d0 	addiu	a1,v0,5840
  400c10:	1462ff93 	bne	v1,v0,400a60 <__vprintf+0x21c>
  400c14:	2602ff9c 	addiu	v0,s0,-100
  400c18:	8fa20038 	lw	v0,56(sp)
  400c1c:	2403fff8 	li	v1,-8
  400c20:	24420007 	addiu	v0,v0,7
  400c24:	00431024 	and	v0,v0,v1
  400c28:	8c450004 	lw	a1,4(v0)
  400c2c:	8c440000 	lw	a0,0(v0)
  400c30:	24420008 	addiu	v0,v0,8
  400c34:	afa20038 	sw	v0,56(sp)
  400c38:	afa5004c 	sw	a1,76(sp)
  400c3c:	08100297 	j	400a5c <__vprintf+0x218>
  400c40:	afa40048 	sw	a0,72(sp)
  400c44:	3c020040 	lui	v0,0x40
  400c48:	081002dc 	j	400b70 <__vprintf+0x32c>
  400c4c:	244616d8 	addiu	a2,v0,5848
  400c50:	24020008 	li	v0,8
  400c54:	081002b0 	j	400ac0 <__vprintf+0x27c>
  400c58:	afa20060 	sw	v0,96(sp)
  400c5c:	24020073 	li	v0,115
  400c60:	12020028 	beq	s0,v0,400d04 <__vprintf+0x4c0>
  400c64:	24020063 	li	v0,99
  400c68:	12020037 	beq	s0,v0,400d48 <__vprintf+0x504>
  400c6c:	00000000 	nop
  400c70:	a3b00011 	sb	s0,17(sp)
  400c74:	3c050040 	lui	a1,0x40
  400c78:	24a516d0 	addiu	a1,a1,5840
  400c7c:	03c02021 	move	a0,s8
  400c80:	00a03021 	move	a2,a1
  400c84:	27a70011 	addiu	a3,sp,17
  400c88:	0c100190 	jal	400640 <__pf_printstuff>
  400c8c:	a3a00012 	sb	zero,18(sp)
  400c90:	0c100166 	jal	400598 <__pf_endfield>
  400c94:	03c02021 	move	a0,s8
  400c98:	0810022e 	j	4008b8 <__vprintf+0x74>
  400c9c:	00000000 	nop
  400ca0:	8fa30044 	lw	v1,68(sp)
  400ca4:	00000000 	nop
  400ca8:	1062000e 	beq	v1,v0,400ce4 <__vprintf+0x4a0>
  400cac:	00000000 	nop
  400cb0:	1060000c 	beqz	v1,400ce4 <__vprintf+0x4a0>
  400cb4:	24020002 	li	v0,2
  400cb8:	1062ffba 	beq	v1,v0,400ba4 <__vprintf+0x360>
  400cbc:	00003821 	move	a3,zero
  400cc0:	00003021 	move	a2,zero
  400cc4:	2402000a 	li	v0,10
  400cc8:	afa7004c 	sw	a3,76(sp)
  400ccc:	afa60048 	sw	a2,72(sp)
  400cd0:	081002b0 	j	400ac0 <__vprintf+0x27c>
  400cd4:	afa20060 	sw	v0,96(sp)
  400cd8:	3c020040 	lui	v0,0x40
  400cdc:	081002dc 	j	400b70 <__vprintf+0x32c>
  400ce0:	244616d4 	addiu	a2,v0,5844
  400ce4:	8fa20038 	lw	v0,56(sp)
  400ce8:	00000000 	nop
  400cec:	8c430000 	lw	v1,0(v0)
  400cf0:	24420004 	addiu	v0,v0,4
  400cf4:	00603821 	move	a3,v1
  400cf8:	000337c3 	sra	a2,v1,0x1f
  400cfc:	081002f1 	j	400bc4 <__vprintf+0x380>
  400d00:	afa20038 	sw	v0,56(sp)
  400d04:	8fa30038 	lw	v1,56(sp)
  400d08:	00000000 	nop
  400d0c:	8c670000 	lw	a3,0(v1)
  400d10:	00000000 	nop
  400d14:	10e00013 	beqz	a3,400d64 <__vprintf+0x520>
  400d18:	3c020040 	lui	v0,0x40
  400d1c:	3c050040 	lui	a1,0x40
  400d20:	24a516d0 	addiu	a1,a1,5840
  400d24:	24620004 	addiu	v0,v1,4
  400d28:	03c02021 	move	a0,s8
  400d2c:	00a03021 	move	a2,a1
  400d30:	0c100190 	jal	400640 <__pf_printstuff>
  400d34:	afa20038 	sw	v0,56(sp)
  400d38:	0c100166 	jal	400598 <__pf_endfield>
  400d3c:	03c02021 	move	a0,s8
  400d40:	0810022e 	j	4008b8 <__vprintf+0x74>
  400d44:	00000000 	nop
  400d48:	8fa20038 	lw	v0,56(sp)
  400d4c:	00000000 	nop
  400d50:	8c430000 	lw	v1,0(v0)
  400d54:	24420004 	addiu	v0,v0,4
  400d58:	afa20038 	sw	v0,56(sp)
  400d5c:	0810031d 	j	400c74 <__vprintf+0x430>
  400d60:	a3a30011 	sb	v1,17(sp)
  400d64:	08100347 	j	400d1c <__vprintf+0x4d8>
  400d68:	24471664 	addiu	a3,v0,5732
  400d6c:	00000000 	nop

00400d70 <__puts>:
  400d70:	27bdffe0 	addiu	sp,sp,-32
  400d74:	afb00010 	sw	s0,16(sp)
  400d78:	afbf0018 	sw	ra,24(sp)
  400d7c:	afb10014 	sw	s1,20(sp)
  400d80:	00808021 	move	s0,a0
  400d84:	80840000 	lb	a0,0(a0)
  400d88:	00000000 	nop
  400d8c:	1080000d 	beqz	a0,400dc4 <__puts+0x54>
  400d90:	00008821 	move	s1,zero
  400d94:	0c100068 	jal	4001a0 <putchar>
  400d98:	26100001 	addiu	s0,s0,1
  400d9c:	82040000 	lb	a0,0(s0)
  400da0:	00000000 	nop
  400da4:	1480fffb 	bnez	a0,400d94 <__puts+0x24>
  400da8:	26310001 	addiu	s1,s1,1
  400dac:	02201021 	move	v0,s1
  400db0:	8fbf0018 	lw	ra,24(sp)
  400db4:	8fb10014 	lw	s1,20(sp)
  400db8:	8fb00010 	lw	s0,16(sp)
  400dbc:	03e00008 	jr	ra
  400dc0:	27bd0020 	addiu	sp,sp,32
  400dc4:	02201021 	move	v0,s1
  400dc8:	8fbf0018 	lw	ra,24(sp)
  400dcc:	8fb10014 	lw	s1,20(sp)
  400dd0:	8fb00010 	lw	s0,16(sp)
  400dd4:	03e00008 	jr	ra
  400dd8:	27bd0020 	addiu	sp,sp,32
  400ddc:	00000000 	nop

00400de0 <strchr>:
  400de0:	80830000 	lb	v1,0(a0)
  400de4:	00052e00 	sll	a1,a1,0x18
  400de8:	00801021 	move	v0,a0
  400dec:	1060000c 	beqz	v1,400e20 <strchr+0x40>
  400df0:	00052e03 	sra	a1,a1,0x18
  400df4:	14a30006 	bne	a1,v1,400e10 <strchr+0x30>
  400df8:	24420001 	addiu	v0,v0,1
  400dfc:	03e00008 	jr	ra
  400e00:	2442ffff 	addiu	v0,v0,-1
  400e04:	10a3000c 	beq	a1,v1,400e38 <strchr+0x58>
  400e08:	00000000 	nop
  400e0c:	24420001 	addiu	v0,v0,1
  400e10:	80430000 	lb	v1,0(v0)
  400e14:	00000000 	nop
  400e18:	1460fffa 	bnez	v1,400e04 <strchr+0x24>
  400e1c:	00000000 	nop
  400e20:	14a00003 	bnez	a1,400e30 <strchr+0x50>
  400e24:	00000000 	nop
  400e28:	03e00008 	jr	ra
  400e2c:	00000000 	nop
  400e30:	03e00008 	jr	ra
  400e34:	00001021 	move	v0,zero
  400e38:	03e00008 	jr	ra
  400e3c:	00000000 	nop

00400e40 <strlen>:
  400e40:	80820000 	lb	v0,0(a0)
  400e44:	00000000 	nop
  400e48:	1040000a 	beqz	v0,400e74 <strlen+0x34>
  400e4c:	00002821 	move	a1,zero
  400e50:	24a50001 	addiu	a1,a1,1
  400e54:	00851021 	addu	v0,a0,a1
  400e58:	80430000 	lb	v1,0(v0)
  400e5c:	00000000 	nop
  400e60:	1460fffc 	bnez	v1,400e54 <strlen+0x14>
  400e64:	24a50001 	addiu	a1,a1,1
  400e68:	24a5ffff 	addiu	a1,a1,-1
  400e6c:	03e00008 	jr	ra
  400e70:	00a01021 	move	v0,a1
  400e74:	03e00008 	jr	ra
  400e78:	00a01021 	move	v0,a1
  400e7c:	00000000 	nop

00400e80 <__udivdi3>:
  400e80:	27bdffe0 	addiu	sp,sp,-32
  400e84:	afbf0018 	sw	ra,24(sp)
  400e88:	0c10042f 	jal	4010bc <__qdivrem>
  400e8c:	afa00010 	sw	zero,16(sp)
  400e90:	8fbf0018 	lw	ra,24(sp)
  400e94:	00000000 	nop
  400e98:	03e00008 	jr	ra
  400e9c:	27bd0020 	addiu	sp,sp,32

00400ea0 <__umoddi3>:
  400ea0:	27bdffd8 	addiu	sp,sp,-40
  400ea4:	27a20018 	addiu	v0,sp,24
  400ea8:	afbf0020 	sw	ra,32(sp)
  400eac:	0c10042f 	jal	4010bc <__qdivrem>
  400eb0:	afa20010 	sw	v0,16(sp)
  400eb4:	8fa3001c 	lw	v1,28(sp)
  400eb8:	8fa20018 	lw	v0,24(sp)
  400ebc:	8fbf0020 	lw	ra,32(sp)
  400ec0:	00000000 	nop
  400ec4:	03e00008 	jr	ra
  400ec8:	27bd0028 	addiu	sp,sp,40
  400ecc:	00000000 	nop

00400ed0 <__bad_assert>:
  400ed0:	27bdfee0 	addiu	sp,sp,-288
  400ed4:	00c03821 	move	a3,a2
  400ed8:	afb00118 	sw	s0,280(sp)
  400edc:	3c060040 	lui	a2,0x40
  400ee0:	27b00018 	addiu	s0,sp,24
  400ee4:	24c616dc 	addiu	a2,a2,5852
  400ee8:	afa40010 	sw	a0,16(sp)
  400eec:	afa50014 	sw	a1,20(sp)
  400ef0:	02002021 	move	a0,s0
  400ef4:	afbf011c 	sw	ra,284(sp)
  400ef8:	0c100400 	jal	401000 <snprintf>
  400efc:	24050100 	li	a1,256
  400f00:	0c100390 	jal	400e40 <strlen>
  400f04:	02002021 	move	a0,s0
  400f08:	00403021 	move	a2,v0
  400f0c:	02002821 	move	a1,s0
  400f10:	0c1000eb 	jal	4003ac <write>
  400f14:	24040002 	li	a0,2
  400f18:	0c10040c 	jal	401030 <abort>
  400f1c:	00000000 	nop

00400f20 <__snprintf_send>:
  400f20:	10c00012 	beqz	a2,400f6c <__snprintf_send+0x4c>
  400f24:	00004021 	move	t0,zero
  400f28:	8c870008 	lw	a3,8(a0)
  400f2c:	8c820004 	lw	v0,4(a0)
  400f30:	00a81821 	addu	v1,a1,t0
  400f34:	00e2102b 	sltu	v0,a3,v0
  400f38:	1040000a 	beqz	v0,400f64 <__snprintf_send+0x44>
  400f3c:	25080001 	addiu	t0,t0,1
  400f40:	8c820000 	lw	v0,0(a0)
  400f44:	90630000 	lbu	v1,0(v1)
  400f48:	00471021 	addu	v0,v0,a3
  400f4c:	a0430000 	sb	v1,0(v0)
  400f50:	8c870008 	lw	a3,8(a0)
  400f54:	00000000 	nop
  400f58:	24e20001 	addiu	v0,a3,1
  400f5c:	00403821 	move	a3,v0
  400f60:	ac820008 	sw	v0,8(a0)
  400f64:	14c8fff1 	bne	a2,t0,400f2c <__snprintf_send+0xc>
  400f68:	00000000 	nop
  400f6c:	03e00008 	jr	ra
  400f70:	00000000 	nop

00400f74 <vsnprintf>:
  400f74:	27bdffd8 	addiu	sp,sp,-40
  400f78:	afb00020 	sw	s0,32(sp)
  400f7c:	00a01021 	move	v0,a1
  400f80:	00808021 	move	s0,a0
  400f84:	3c040040 	lui	a0,0x40
  400f88:	24a3ffff 	addiu	v1,a1,-1
  400f8c:	afbf0024 	sw	ra,36(sp)
  400f90:	24840f20 	addiu	a0,a0,3872
  400f94:	27a50010 	addiu	a1,sp,16
  400f98:	1440000c 	bnez	v0,400fcc <vsnprintf+0x58>
  400f9c:	afb00010 	sw	s0,16(sp)
  400fa0:	3c040040 	lui	a0,0x40
  400fa4:	24840f20 	addiu	a0,a0,3872
  400fa8:	afa00014 	sw	zero,20(sp)
  400fac:	0c100211 	jal	400844 <__vprintf>
  400fb0:	afa00018 	sw	zero,24(sp)
  400fb4:	00401821 	move	v1,v0
  400fb8:	8fbf0024 	lw	ra,36(sp)
  400fbc:	8fb00020 	lw	s0,32(sp)
  400fc0:	00601021 	move	v0,v1
  400fc4:	03e00008 	jr	ra
  400fc8:	27bd0028 	addiu	sp,sp,40
  400fcc:	afa30014 	sw	v1,20(sp)
  400fd0:	0c100211 	jal	400844 <__vprintf>
  400fd4:	afa00018 	sw	zero,24(sp)
  400fd8:	00401821 	move	v1,v0
  400fdc:	8fa20018 	lw	v0,24(sp)
  400fe0:	00000000 	nop
  400fe4:	02021021 	addu	v0,s0,v0
  400fe8:	a0400000 	sb	zero,0(v0)
  400fec:	8fbf0024 	lw	ra,36(sp)
  400ff0:	8fb00020 	lw	s0,32(sp)
  400ff4:	00601021 	move	v0,v1
  400ff8:	03e00008 	jr	ra
  400ffc:	27bd0028 	addiu	sp,sp,40

00401000 <snprintf>:
  401000:	27bdffe0 	addiu	sp,sp,-32
  401004:	27a2002c 	addiu	v0,sp,44
  401008:	afa7002c 	sw	a3,44(sp)
  40100c:	00403821 	move	a3,v0
  401010:	afbf0018 	sw	ra,24(sp)
  401014:	0c1003dd 	jal	400f74 <vsnprintf>
  401018:	afa20010 	sw	v0,16(sp)
  40101c:	8fbf0018 	lw	ra,24(sp)
  401020:	00000000 	nop
  401024:	03e00008 	jr	ra
  401028:	27bd0020 	addiu	sp,sp,32
  40102c:	00000000 	nop

00401030 <abort>:
  401030:	27bdffe8 	addiu	sp,sp,-24
  401034:	afbf0010 	sw	ra,16(sp)
  401038:	0c1000ab 	jal	4002ac <_exit>
  40103c:	240400ff 	li	a0,255

00401040 <shl>:
  401040:	18a00016 	blez	a1,40109c <shl+0x5c>
  401044:	24020010 	li	v0,16
  401048:	00464823 	subu	t1,v0,a2
  40104c:	00803821 	move	a3,a0
  401050:	00004021 	move	t0,zero
  401054:	8ce20000 	lw	v0,0(a3)
  401058:	8ce30004 	lw	v1,4(a3)
  40105c:	00c21004 	sllv	v0,v0,a2
  401060:	3042ffff 	andi	v0,v0,0xffff
  401064:	01231806 	srlv	v1,v1,t1
  401068:	00431025 	or	v0,v0,v1
  40106c:	25080001 	addiu	t0,t0,1
  401070:	ace20000 	sw	v0,0(a3)
  401074:	14a8fff7 	bne	a1,t0,401054 <shl+0x14>
  401078:	24e70004 	addiu	a3,a3,4
  40107c:	00051880 	sll	v1,a1,0x2
  401080:	00831821 	addu	v1,a0,v1
  401084:	8c620000 	lw	v0,0(v1)
  401088:	00000000 	nop
  40108c:	00c21004 	sllv	v0,v0,a2
  401090:	3042ffff 	andi	v0,v0,0xffff
  401094:	03e00008 	jr	ra
  401098:	ac620000 	sw	v0,0(v1)
  40109c:	00001821 	move	v1,zero
  4010a0:	00831821 	addu	v1,a0,v1
  4010a4:	8c620000 	lw	v0,0(v1)
  4010a8:	00000000 	nop
  4010ac:	00c21004 	sllv	v0,v0,a2
  4010b0:	3042ffff 	andi	v0,v0,0xffff
  4010b4:	03e00008 	jr	ra
  4010b8:	ac620000 	sw	v0,0(v1)

004010bc <__qdivrem>:
  4010bc:	27bdff80 	addiu	sp,sp,-128
  4010c0:	00c71025 	or	v0,a2,a3
  4010c4:	afb20060 	sw	s2,96(sp)
  4010c8:	afbf007c 	sw	ra,124(sp)
  4010cc:	afbe0078 	sw	s8,120(sp)
  4010d0:	afb70074 	sw	s7,116(sp)
  4010d4:	afb60070 	sw	s6,112(sp)
  4010d8:	afb5006c 	sw	s5,108(sp)
  4010dc:	afb40068 	sw	s4,104(sp)
  4010e0:	afb30064 	sw	s3,100(sp)
  4010e4:	afb1005c 	sw	s1,92(sp)
  4010e8:	afb00058 	sw	s0,88(sp)
  4010ec:	00a04821 	move	t1,a1
  4010f0:	8fb20090 	lw	s2,144(sp)
  4010f4:	14400018 	bnez	v0,401158 <__qdivrem+0x9c>
  4010f8:	00804021 	move	t0,a0
  4010fc:	3c031000 	lui	v1,0x1000
  401100:	8c640000 	lw	a0,0(v1)
  401104:	24020001 	li	v0,1
  401108:	14800002 	bnez	a0,401114 <__qdivrem+0x58>
  40110c:	0044001b 	divu	zero,v0,a0
  401110:	0007000d 	break	0x7
  401114:	00001012 	mflo	v0
  401118:	12400003 	beqz	s2,401128 <__qdivrem+0x6c>
  40111c:	00401821 	move	v1,v0
  401120:	ae450004 	sw	a1,4(s2)
  401124:	ae480000 	sw	t0,0(s2)
  401128:	8fbf007c 	lw	ra,124(sp)
  40112c:	8fbe0078 	lw	s8,120(sp)
  401130:	8fb70074 	lw	s7,116(sp)
  401134:	8fb60070 	lw	s6,112(sp)
  401138:	8fb5006c 	lw	s5,108(sp)
  40113c:	8fb40068 	lw	s4,104(sp)
  401140:	8fb30064 	lw	s3,100(sp)
  401144:	8fb20060 	lw	s2,96(sp)
  401148:	8fb1005c 	lw	s1,92(sp)
  40114c:	8fb00058 	lw	s0,88(sp)
  401150:	03e00008 	jr	ra
  401154:	27bd0080 	addiu	sp,sp,128
  401158:	0086102b 	sltu	v0,a0,a2
  40115c:	10400008 	beqz	v0,401180 <__qdivrem+0xc4>
  401160:	00000000 	nop
  401164:	1240010c 	beqz	s2,401598 <__qdivrem+0x4dc>
  401168:	00000000 	nop
  40116c:	00001821 	move	v1,zero
  401170:	00001021 	move	v0,zero
  401174:	ae490004 	sw	t1,4(s2)
  401178:	0810044a 	j	401128 <__qdivrem+0x6c>
  40117c:	ae480000 	sw	t0,0(s2)
  401180:	10860046 	beq	a0,a2,40129c <__qdivrem+0x1e0>
  401184:	00a7102b 	sltu	v0,a1,a3
  401188:	00e08821 	move	s1,a3
  40118c:	01001821 	move	v1,t0
  401190:	00c08021 	move	s0,a2
  401194:	30c7ffff 	andi	a3,a2,0xffff
  401198:	3108ffff 	andi	t0,t0,0xffff
  40119c:	312affff 	andi	t2,t1,0xffff
  4011a0:	3226ffff 	andi	a2,s1,0xffff
  4011a4:	00031c02 	srl	v1,v1,0x10
  4011a8:	00092c02 	srl	a1,t1,0x10
  4011ac:	00101402 	srl	v0,s0,0x10
  4011b0:	00112402 	srl	a0,s1,0x10
  4011b4:	afa00010 	sw	zero,16(sp)
  4011b8:	afa30014 	sw	v1,20(sp)
  4011bc:	afa80018 	sw	t0,24(sp)
  4011c0:	afa5001c 	sw	a1,28(sp)
  4011c4:	afaa0020 	sw	t2,32(sp)
  4011c8:	afa20028 	sw	v0,40(sp)
  4011cc:	afa7002c 	sw	a3,44(sp)
  4011d0:	afa40030 	sw	a0,48(sp)
  4011d4:	144000f6 	bnez	v0,4015b0 <__qdivrem+0x4f4>
  4011d8:	afa60034 	sw	a2,52(sp)
  4011dc:	14e00033 	bnez	a3,4012ac <__qdivrem+0x1f0>
  4011e0:	27a20028 	addiu	v0,sp,40
  4011e4:	148000f7 	bnez	a0,4015c4 <__qdivrem+0x508>
  4011e8:	27a2002c 	addiu	v0,sp,44
  4011ec:	14c00002 	bnez	a2,4011f8 <__qdivrem+0x13c>
  4011f0:	0066001b 	divu	zero,v1,a2
  4011f4:	0007000d 	break	0x7
  4011f8:	00001010 	mfhi	v0
  4011fc:	00021400 	sll	v0,v0,0x10
  401200:	00481025 	or	v0,v0,t0
  401204:	00004812 	mflo	t1
	...
  401210:	14c00002 	bnez	a2,40121c <__qdivrem+0x160>
  401214:	0046001b 	divu	zero,v0,a2
  401218:	0007000d 	break	0x7
  40121c:	00001810 	mfhi	v1
  401220:	00031c00 	sll	v1,v1,0x10
  401224:	00651825 	or	v1,v1,a1
  401228:	00003812 	mflo	a3
	...
  401234:	14c00002 	bnez	a2,401240 <__qdivrem+0x184>
  401238:	0066001b 	divu	zero,v1,a2
  40123c:	0007000d 	break	0x7
  401240:	00001010 	mfhi	v0
  401244:	00021400 	sll	v0,v0,0x10
  401248:	00001812 	mflo	v1
  40124c:	12400008 	beqz	s2,401270 <__qdivrem+0x1b4>
  401250:	01422025 	or	a0,t2,v0
  401254:	14c00002 	bnez	a2,401260 <__qdivrem+0x1a4>
  401258:	0086001b 	divu	zero,a0,a2
  40125c:	0007000d 	break	0x7
  401260:	ae400000 	sw	zero,0(s2)
  401264:	00001010 	mfhi	v0
  401268:	ae420004 	sw	v0,4(s2)
  40126c:	00000000 	nop
  401270:	14c00002 	bnez	a2,40127c <__qdivrem+0x1c0>
  401274:	0086001b 	divu	zero,a0,a2
  401278:	0007000d 	break	0x7
  40127c:	00091400 	sll	v0,t1,0x10
  401280:	00031c00 	sll	v1,v1,0x10
  401284:	00e28025 	or	s0,a3,v0
  401288:	02001021 	move	v0,s0
  40128c:	00002012 	mflo	a0
  401290:	00838825 	or	s1,a0,v1
  401294:	0810044a 	j	401128 <__qdivrem+0x6c>
  401298:	02201821 	move	v1,s1
  40129c:	1040ffbb 	beqz	v0,40118c <__qdivrem+0xd0>
  4012a0:	00e08821 	move	s1,a3
  4012a4:	08100459 	j	401164 <__qdivrem+0xa8>
  4012a8:	00000000 	nop
  4012ac:	afa20050 	sw	v0,80(sp)
  4012b0:	24170003 	li	s7,3
  4012b4:	27be002c 	addiu	s8,sp,44
  4012b8:	8fa30014 	lw	v1,20(sp)
  4012bc:	24020004 	li	v0,4
  4012c0:	146000c4 	bnez	v1,4015d4 <__qdivrem+0x518>
  4012c4:	00579823 	subu	s3,v0,s7
  4012c8:	081004b5 	j	4012d4 <__qdivrem+0x218>
  4012cc:	27b40014 	addiu	s4,sp,20
  4012d0:	0060a021 	move	s4,v1
  4012d4:	8e820004 	lw	v0,4(s4)
  4012d8:	2673ffff 	addiu	s3,s3,-1
  4012dc:	1040fffc 	beqz	v0,4012d0 <__qdivrem+0x214>
  4012e0:	26830004 	addiu	v1,s4,4
  4012e4:	24020004 	li	v0,4
  4012e8:	00532023 	subu	a0,v0,s3
  4012ec:	2483ffff 	addiu	v1,a0,-1
  4012f0:	046000bc 	bltz	v1,4015e4 <__qdivrem+0x528>
  4012f4:	00001821 	move	v1,zero
  4012f8:	27a60038 	addiu	a2,sp,56
  4012fc:	00042880 	sll	a1,a0,0x2
  401300:	00c51021 	addu	v0,a2,a1
  401304:	2442fffc 	addiu	v0,v0,-4
  401308:	24630001 	addiu	v1,v1,1
  40130c:	ac400000 	sw	zero,0(v0)
  401310:	1464fffd 	bne	v1,a0,401308 <__qdivrem+0x24c>
  401314:	2442fffc 	addiu	v0,v0,-4
  401318:	8fcb0000 	lw	t3,0(s8)
  40131c:	34028000 	li	v0,0x8000
  401320:	0162102b 	sltu	v0,t3,v0
  401324:	00c5b021 	addu	s6,a2,a1
  401328:	104000ac 	beqz	v0,4015dc <__qdivrem+0x520>
  40132c:	01601821 	move	v1,t3
  401330:	0000a821 	move	s5,zero
  401334:	34048000 	li	a0,0x8000
  401338:	00031840 	sll	v1,v1,0x1
  40133c:	0064102b 	sltu	v0,v1,a0
  401340:	1440fffd 	bnez	v0,401338 <__qdivrem+0x27c>
  401344:	26b50001 	addiu	s5,s5,1
  401348:	1aa00009 	blez	s5,401370 <__qdivrem+0x2b4>
  40134c:	02f32821 	addu	a1,s7,s3
  401350:	02a03021 	move	a2,s5
  401354:	0c100410 	jal	401040 <shl>
  401358:	02802021 	move	a0,s4
  40135c:	03c02021 	move	a0,s8
  401360:	26e5ffff 	addiu	a1,s7,-1
  401364:	0c100410 	jal	401040 <shl>
  401368:	02a03021 	move	a2,s5
  40136c:	8fcb0000 	lw	t3,0(s8)
  401370:	8fa20050 	lw	v0,80(sp)
  401374:	00177080 	sll	t6,s7,0x2
  401378:	8c580008 	lw	t8,8(v0)
  40137c:	02c06821 	move	t5,s6
  401380:	02804821 	move	t1,s4
  401384:	028e6021 	addu	t4,s4,t6
  401388:	00007821 	move	t7,zero
  40138c:	3416ffff 	li	s6,0xffff
  401390:	8d240000 	lw	a0,0(t1)
  401394:	8d230004 	lw	v1,4(t1)
  401398:	8d260008 	lw	a2,8(t1)
  40139c:	11640081 	beq	t3,a0,4015a4 <__qdivrem+0x4e8>
  4013a0:	00041400 	sll	v0,a0,0x10
  4013a4:	00621025 	or	v0,v1,v0
  4013a8:	15600002 	bnez	t3,4013b4 <__qdivrem+0x2f8>
  4013ac:	004b001b 	divu	zero,v0,t3
  4013b0:	0007000d 	break	0x7
  4013b4:	00002810 	mfhi	a1
  4013b8:	00003812 	mflo	a3
	...
  4013c4:	00f80018 	mult	a3,t8
  4013c8:	00051400 	sll	v0,a1,0x10
  4013cc:	00c21025 	or	v0,a2,v0
  4013d0:	00001812 	mflo	v1
  4013d4:	0043182b 	sltu	v1,v0,v1
  4013d8:	10600006 	beqz	v1,4013f4 <__qdivrem+0x338>
  4013dc:	00000000 	nop
  4013e0:	24e7ffff 	addiu	a3,a3,-1
  4013e4:	00ab2821 	addu	a1,a1,t3
  4013e8:	02c5102b 	sltu	v0,s6,a1
  4013ec:	1040fff6 	beqz	v0,4013c8 <__qdivrem+0x30c>
  4013f0:	00f80018 	mult	a3,t8
  4013f4:	1ae00017 	blez	s7,401454 <__qdivrem+0x398>
  4013f8:	00004021 	move	t0,zero
  4013fc:	8fa20050 	lw	v0,80(sp)
  401400:	01802021 	move	a0,t4
  401404:	004e3021 	addu	a2,v0,t6
  401408:	02e02821 	move	a1,s7
  40140c:	3c0a0001 	lui	t2,0x1
  401410:	8cc20000 	lw	v0,0(a2)
  401414:	8c830000 	lw	v1,0(a0)
  401418:	00e20018 	mult	a3,v0
  40141c:	24a5ffff 	addiu	a1,a1,-1
  401420:	24c6fffc 	addiu	a2,a2,-4
  401424:	00001012 	mflo	v0
  401428:	00621823 	subu	v1,v1,v0
  40142c:	00681823 	subu	v1,v1,t0
  401430:	00031402 	srl	v0,v1,0x10
  401434:	01421023 	subu	v0,t2,v0
  401438:	3063ffff 	andi	v1,v1,0xffff
  40143c:	ac830000 	sw	v1,0(a0)
  401440:	3048ffff 	andi	t0,v0,0xffff
  401444:	14a0fff2 	bnez	a1,401410 <__qdivrem+0x354>
  401448:	2484fffc 	addiu	a0,a0,-4
  40144c:	8d240000 	lw	a0,0(t1)
  401450:	00000000 	nop
  401454:	00881023 	subu	v0,a0,t0
  401458:	3044ffff 	andi	a0,v0,0xffff
  40145c:	00021c02 	srl	v1,v0,0x10
  401460:	10600018 	beqz	v1,4014c4 <__qdivrem+0x408>
  401464:	ad240000 	sw	a0,0(t1)
  401468:	1ae00012 	blez	s7,4014b4 <__qdivrem+0x3f8>
  40146c:	00004021 	move	t0,zero
  401470:	8fa20050 	lw	v0,80(sp)
  401474:	01802021 	move	a0,t4
  401478:	004e3021 	addu	a2,v0,t6
  40147c:	02e02821 	move	a1,s7
  401480:	8c820000 	lw	v0,0(a0)
  401484:	8cc30000 	lw	v1,0(a2)
  401488:	01021021 	addu	v0,t0,v0
  40148c:	00431021 	addu	v0,v0,v1
  401490:	3043ffff 	andi	v1,v0,0xffff
  401494:	24a5ffff 	addiu	a1,a1,-1
  401498:	ac830000 	sw	v1,0(a0)
  40149c:	00024402 	srl	t0,v0,0x10
  4014a0:	2484fffc 	addiu	a0,a0,-4
  4014a4:	14a0fff6 	bnez	a1,401480 <__qdivrem+0x3c4>
  4014a8:	24c6fffc 	addiu	a2,a2,-4
  4014ac:	8d240000 	lw	a0,0(t1)
  4014b0:	00000000 	nop
  4014b4:	01041021 	addu	v0,t0,a0
  4014b8:	3042ffff 	andi	v0,v0,0xffff
  4014bc:	ad220000 	sw	v0,0(t1)
  4014c0:	24e7ffff 	addiu	a3,a3,-1
  4014c4:	25ef0001 	addiu	t7,t7,1
  4014c8:	026f102a 	slt	v0,s3,t7
  4014cc:	ada70000 	sw	a3,0(t5)
  4014d0:	25290004 	addiu	t1,t1,4
  4014d4:	25ad0004 	addiu	t5,t5,4
  4014d8:	1040ffad 	beqz	v0,401390 <__qdivrem+0x2d4>
  4014dc:	258c0004 	addiu	t4,t4,4
  4014e0:	12400022 	beqz	s2,40156c <__qdivrem+0x4b0>
  4014e4:	00000000 	nop
  4014e8:	12a00016 	beqz	s5,401544 <__qdivrem+0x488>
  4014ec:	02f32821 	addu	a1,s7,s3
  4014f0:	0265102a 	slt	v0,s3,a1
  4014f4:	10400011 	beqz	v0,40153c <__qdivrem+0x480>
  4014f8:	00051080 	sll	v0,a1,0x2
  4014fc:	00051880 	sll	v1,a1,0x2
  401500:	24020010 	li	v0,16
  401504:	00553823 	subu	a3,v0,s5
  401508:	02833021 	addu	a2,s4,v1
  40150c:	8cc2fffc 	lw	v0,-4(a2)
  401510:	8cc30000 	lw	v1,0(a2)
  401514:	00e21004 	sllv	v0,v0,a3
  401518:	02a31806 	srlv	v1,v1,s5
  40151c:	3042ffff 	andi	v0,v0,0xffff
  401520:	24a5ffff 	addiu	a1,a1,-1
  401524:	00621825 	or	v1,v1,v0
  401528:	0265202a 	slt	a0,s3,a1
  40152c:	acc30000 	sw	v1,0(a2)
  401530:	1480fff6 	bnez	a0,40150c <__qdivrem+0x450>
  401534:	24c6fffc 	addiu	a2,a2,-4
  401538:	00051080 	sll	v0,a1,0x2
  40153c:	00541021 	addu	v0,v0,s4
  401540:	ac400000 	sw	zero,0(v0)
  401544:	8fa20014 	lw	v0,20(sp)
  401548:	8fa40018 	lw	a0,24(sp)
  40154c:	00021400 	sll	v0,v0,0x10
  401550:	8fa3001c 	lw	v1,28(sp)
  401554:	00448025 	or	s0,v0,a0
  401558:	8fa20020 	lw	v0,32(sp)
  40155c:	00031c00 	sll	v1,v1,0x10
  401560:	00628825 	or	s1,v1,v0
  401564:	ae510004 	sw	s1,4(s2)
  401568:	ae500000 	sw	s0,0(s2)
  40156c:	8fa2003c 	lw	v0,60(sp)
  401570:	8fa40040 	lw	a0,64(sp)
  401574:	00021400 	sll	v0,v0,0x10
  401578:	8fa30044 	lw	v1,68(sp)
  40157c:	00448025 	or	s0,v0,a0
  401580:	8fa20048 	lw	v0,72(sp)
  401584:	00031c00 	sll	v1,v1,0x10
  401588:	00628825 	or	s1,v1,v0
  40158c:	02201821 	move	v1,s1
  401590:	0810044a 	j	401128 <__qdivrem+0x6c>
  401594:	02001021 	move	v0,s0
  401598:	00001821 	move	v1,zero
  40159c:	0810044a 	j	401128 <__qdivrem+0x6c>
  4015a0:	00001021 	move	v0,zero
  4015a4:	00602821 	move	a1,v1
  4015a8:	081004f9 	j	4013e4 <__qdivrem+0x328>
  4015ac:	3407ffff 	li	a3,0xffff
  4015b0:	27a20024 	addiu	v0,sp,36
  4015b4:	24170004 	li	s7,4
  4015b8:	27be0028 	addiu	s8,sp,40
  4015bc:	081004ae 	j	4012b8 <__qdivrem+0x1fc>
  4015c0:	afa20050 	sw	v0,80(sp)
  4015c4:	24170002 	li	s7,2
  4015c8:	27be0030 	addiu	s8,sp,48
  4015cc:	081004ae 	j	4012b8 <__qdivrem+0x1fc>
  4015d0:	afa20050 	sw	v0,80(sp)
  4015d4:	081004b9 	j	4012e4 <__qdivrem+0x228>
  4015d8:	27b40010 	addiu	s4,sp,16
  4015dc:	081004dc 	j	401370 <__qdivrem+0x2b4>
  4015e0:	0000a821 	move	s5,zero
  4015e4:	00042880 	sll	a1,a0,0x2
  4015e8:	081004c6 	j	401318 <__qdivrem+0x25c>
  4015ec:	27a60038 	addiu	a2,sp,56
