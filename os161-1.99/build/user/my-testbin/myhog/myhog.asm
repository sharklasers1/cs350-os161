
../../../build/user/my-testbin/myhog/myhog:     file format elf32-tradbigmips

Disassembly of section .text:

00400000 <__start>:
  400000:	3c1c1001 	lui	gp,0x1001
  400004:	279c8010 	addiu	gp,gp,-32752
  400008:	2408fff8 	li	t0,-8
  40000c:	03a8e824 	and	sp,sp,t0
  400010:	27bdfff0 	addiu	sp,sp,-16
  400014:	3c011000 	lui	at,0x1000
  400018:	ac250028 	sw	a1,40(at)
  40001c:	0c100043 	jal	40010c <main>
  400020:	00000000 	nop
  400024:	00408021 	move	s0,v0
  400028:	0c100091 	jal	400244 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c1000a7 	jal	40029c <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <hog>:
  400050:	27bdffe8 	addiu	sp,sp,-24
  400054:	afb00010 	sw	s0,16(sp)
  400058:	afbf0014 	sw	ra,20(sp)
  40005c:	0c1000a1 	jal	400284 <fork>
  400060:	00000000 	nop
  400064:	00408021 	move	s0,v0
  400068:	3c050040 	lui	a1,0x40
  40006c:	2402ffff 	li	v0,-1
  400070:	24a51940 	addiu	a1,a1,6464
  400074:	12020018 	beq	s0,v0,4000d8 <hog+0x88>
  400078:	24040001 	li	a0,1
  40007c:	16000009 	bnez	s0,4000a4 <hog+0x54>
  400080:	3c040040 	lui	a0,0x40
  400084:	3c051000 	lui	a1,0x1000
  400088:	24841948 	addiu	a0,a0,6472
  40008c:	0c1000a5 	jal	400294 <execv>
  400090:	24a50000 	addiu	a1,a1,0
  400094:	3c050040 	lui	a1,0x40
  400098:	24a5195c 	addiu	a1,a1,6492
  40009c:	0c1001ae 	jal	4006b8 <err>
  4000a0:	24040001 	li	a0,1
  4000a4:	3c051000 	lui	a1,0x1000
  4000a8:	8ca40020 	lw	a0,32(a1)
  4000ac:	3c021000 	lui	v0,0x1000
  4000b0:	00041880 	sll	v1,a0,0x2
  4000b4:	24420030 	addiu	v0,v0,48
  4000b8:	00621821 	addu	v1,v1,v0
  4000bc:	24840001 	addiu	a0,a0,1
  4000c0:	ac700000 	sw	s0,0(v1)
  4000c4:	aca40020 	sw	a0,32(a1)
  4000c8:	8fbf0014 	lw	ra,20(sp)
  4000cc:	8fb00010 	lw	s0,16(sp)
  4000d0:	03e00008 	jr	ra
  4000d4:	27bd0018 	addiu	sp,sp,24
  4000d8:	0c1001ae 	jal	4006b8 <err>
  4000dc:	00000000 	nop
  4000e0:	3c040040 	lui	a0,0x40
  4000e4:	3c051000 	lui	a1,0x1000
  4000e8:	24841948 	addiu	a0,a0,6472
  4000ec:	0c1000a5 	jal	400294 <execv>
  4000f0:	24a50000 	addiu	a1,a1,0
  4000f4:	3c050040 	lui	a1,0x40
  4000f8:	24a5195c 	addiu	a1,a1,6492
  4000fc:	0c1001ae 	jal	4006b8 <err>
  400100:	24040001 	li	a0,1
  400104:	0810002a 	j	4000a8 <hog+0x58>
  400108:	3c051000 	lui	a1,0x1000

0040010c <main>:
  40010c:	27bdffc8 	addiu	sp,sp,-56
  400110:	afb60030 	sw	s6,48(sp)
  400114:	3c161000 	lui	s6,0x1000
  400118:	afbf0034 	sw	ra,52(sp)
  40011c:	afb5002c 	sw	s5,44(sp)
  400120:	afb40028 	sw	s4,40(sp)
  400124:	afb30024 	sw	s3,36(sp)
  400128:	afb20020 	sw	s2,32(sp)
  40012c:	afb1001c 	sw	s1,28(sp)
  400130:	0c100014 	jal	400050 <hog>
  400134:	afb00018 	sw	s0,24(sp)
  400138:	0c100014 	jal	400050 <hog>
  40013c:	00000000 	nop
  400140:	8ec20020 	lw	v0,32(s6)
  400144:	00000000 	nop
  400148:	18400025 	blez	v0,4001e0 <main+0xd4>
  40014c:	3c021000 	lui	v0,0x1000
  400150:	24500030 	addiu	s0,v0,48
  400154:	00008821 	move	s1,zero
  400158:	27b30010 	addiu	s3,sp,16
  40015c:	3c120040 	lui	s2,0x40
  400160:	3c140040 	lui	s4,0x40
  400164:	08100060 	j	400180 <main+0x74>
  400168:	3c150040 	lui	s5,0x40
  40016c:	8ec20020 	lw	v0,32(s6)
  400170:	26310001 	addiu	s1,s1,1
  400174:	0222102a 	slt	v0,s1,v0
  400178:	10400019 	beqz	v0,4001e0 <main+0xd4>
  40017c:	26100004 	addiu	s0,s0,4
  400180:	8e040000 	lw	a0,0(s0)
  400184:	02602821 	move	a1,s3
  400188:	0c1000a9 	jal	4002a4 <waitpid>
  40018c:	00003021 	move	a2,zero
  400190:	0440001e 	bltz	v0,40020c <main+0x100>
  400194:	2644196c 	addiu	a0,s2,6508
  400198:	8fa30010 	lw	v1,16(sp)
  40019c:	2684197c 	addiu	a0,s4,6524
  4001a0:	30620003 	andi	v0,v1,0x3
  4001a4:	2442ffff 	addiu	v0,v0,-1
  4001a8:	00033083 	sra	a2,v1,0x2
  4001ac:	2c420002 	sltiu	v0,v0,2
  4001b0:	14400003 	bnez	v0,4001c0 <main+0xb4>
  4001b4:	00c01821 	move	v1,a2
  4001b8:	1060ffec 	beqz	v1,40016c <main+0x60>
  4001bc:	26a41990 	addiu	a0,s5,6544
  4001c0:	8e050000 	lw	a1,0(s0)
  4001c4:	0c1001be 	jal	4006f8 <warnx>
  4001c8:	26310001 	addiu	s1,s1,1
  4001cc:	8ec20020 	lw	v0,32(s6)
  4001d0:	00000000 	nop
  4001d4:	0222102a 	slt	v0,s1,v0
  4001d8:	1440ffe9 	bnez	v0,400180 <main+0x74>
  4001dc:	26100004 	addiu	s0,s0,4
  4001e0:	8fbf0034 	lw	ra,52(sp)
  4001e4:	8fb60030 	lw	s6,48(sp)
  4001e8:	8fb5002c 	lw	s5,44(sp)
  4001ec:	8fb40028 	lw	s4,40(sp)
  4001f0:	8fb30024 	lw	s3,36(sp)
  4001f4:	8fb20020 	lw	s2,32(sp)
  4001f8:	8fb1001c 	lw	s1,28(sp)
  4001fc:	8fb00018 	lw	s0,24(sp)
  400200:	00001021 	move	v0,zero
  400204:	03e00008 	jr	ra
  400208:	27bd0038 	addiu	sp,sp,56
  40020c:	8e050000 	lw	a1,0(s0)
  400210:	0c1001cf 	jal	40073c <warn>
  400214:	00000000 	nop
  400218:	0810005b 	j	40016c <main+0x60>
  40021c:	00000000 	nop

00400220 <__exit_hack>:
  400220:	27bdfff8 	addiu	sp,sp,-8
  400224:	24020001 	li	v0,1
  400228:	afa20000 	sw	v0,0(sp)
  40022c:	8fa20000 	lw	v0,0(sp)
  400230:	00000000 	nop
  400234:	1440fffd 	bnez	v0,40022c <__exit_hack+0xc>
  400238:	00000000 	nop
  40023c:	03e00008 	jr	ra
  400240:	27bd0008 	addiu	sp,sp,8

00400244 <exit>:
  400244:	27bdffe8 	addiu	sp,sp,-24
  400248:	afbf0010 	sw	ra,16(sp)
  40024c:	0c1000a7 	jal	40029c <_exit>
  400250:	00000000 	nop
	...

00400260 <__syscall>:
  400260:	0000000c 	syscall
  400264:	10e00005 	beqz	a3,40027c <__syscall+0x1c>
  400268:	00000000 	nop
  40026c:	3c011000 	lui	at,0x1000
  400270:	ac220024 	sw	v0,36(at)
  400274:	2403ffff 	li	v1,-1
  400278:	2402ffff 	li	v0,-1
  40027c:	03e00008 	jr	ra
  400280:	00000000 	nop

00400284 <fork>:
  400284:	08100098 	j	400260 <__syscall>
  400288:	24020000 	li	v0,0

0040028c <vfork>:
  40028c:	08100098 	j	400260 <__syscall>
  400290:	24020001 	li	v0,1

00400294 <execv>:
  400294:	08100098 	j	400260 <__syscall>
  400298:	24020002 	li	v0,2

0040029c <_exit>:
  40029c:	08100098 	j	400260 <__syscall>
  4002a0:	24020003 	li	v0,3

004002a4 <waitpid>:
  4002a4:	08100098 	j	400260 <__syscall>
  4002a8:	24020004 	li	v0,4

004002ac <getpid>:
  4002ac:	08100098 	j	400260 <__syscall>
  4002b0:	24020005 	li	v0,5

004002b4 <getppid>:
  4002b4:	08100098 	j	400260 <__syscall>
  4002b8:	24020006 	li	v0,6

004002bc <sbrk>:
  4002bc:	08100098 	j	400260 <__syscall>
  4002c0:	24020007 	li	v0,7

004002c4 <mmap>:
  4002c4:	08100098 	j	400260 <__syscall>
  4002c8:	24020008 	li	v0,8

004002cc <munmap>:
  4002cc:	08100098 	j	400260 <__syscall>
  4002d0:	24020009 	li	v0,9

004002d4 <mprotect>:
  4002d4:	08100098 	j	400260 <__syscall>
  4002d8:	2402000a 	li	v0,10

004002dc <umask>:
  4002dc:	08100098 	j	400260 <__syscall>
  4002e0:	24020011 	li	v0,17

004002e4 <issetugid>:
  4002e4:	08100098 	j	400260 <__syscall>
  4002e8:	24020012 	li	v0,18

004002ec <getresuid>:
  4002ec:	08100098 	j	400260 <__syscall>
  4002f0:	24020013 	li	v0,19

004002f4 <setresuid>:
  4002f4:	08100098 	j	400260 <__syscall>
  4002f8:	24020014 	li	v0,20

004002fc <getresgid>:
  4002fc:	08100098 	j	400260 <__syscall>
  400300:	24020015 	li	v0,21

00400304 <setresgid>:
  400304:	08100098 	j	400260 <__syscall>
  400308:	24020016 	li	v0,22

0040030c <getgroups>:
  40030c:	08100098 	j	400260 <__syscall>
  400310:	24020017 	li	v0,23

00400314 <setgroups>:
  400314:	08100098 	j	400260 <__syscall>
  400318:	24020018 	li	v0,24

0040031c <__getlogin>:
  40031c:	08100098 	j	400260 <__syscall>
  400320:	24020019 	li	v0,25

00400324 <__setlogin>:
  400324:	08100098 	j	400260 <__syscall>
  400328:	2402001a 	li	v0,26

0040032c <kill>:
  40032c:	08100098 	j	400260 <__syscall>
  400330:	2402001b 	li	v0,27

00400334 <sigaction>:
  400334:	08100098 	j	400260 <__syscall>
  400338:	2402001c 	li	v0,28

0040033c <sigpending>:
  40033c:	08100098 	j	400260 <__syscall>
  400340:	2402001d 	li	v0,29

00400344 <sigprocmask>:
  400344:	08100098 	j	400260 <__syscall>
  400348:	2402001e 	li	v0,30

0040034c <sigsuspend>:
  40034c:	08100098 	j	400260 <__syscall>
  400350:	2402001f 	li	v0,31

00400354 <sigreturn>:
  400354:	08100098 	j	400260 <__syscall>
  400358:	24020020 	li	v0,32

0040035c <open>:
  40035c:	08100098 	j	400260 <__syscall>
  400360:	2402002d 	li	v0,45

00400364 <pipe>:
  400364:	08100098 	j	400260 <__syscall>
  400368:	2402002e 	li	v0,46

0040036c <dup>:
  40036c:	08100098 	j	400260 <__syscall>
  400370:	2402002f 	li	v0,47

00400374 <dup2>:
  400374:	08100098 	j	400260 <__syscall>
  400378:	24020030 	li	v0,48

0040037c <close>:
  40037c:	08100098 	j	400260 <__syscall>
  400380:	24020031 	li	v0,49

00400384 <read>:
  400384:	08100098 	j	400260 <__syscall>
  400388:	24020032 	li	v0,50

0040038c <pread>:
  40038c:	08100098 	j	400260 <__syscall>
  400390:	24020033 	li	v0,51

00400394 <getdirentry>:
  400394:	08100098 	j	400260 <__syscall>
  400398:	24020036 	li	v0,54

0040039c <write>:
  40039c:	08100098 	j	400260 <__syscall>
  4003a0:	24020037 	li	v0,55

004003a4 <pwrite>:
  4003a4:	08100098 	j	400260 <__syscall>
  4003a8:	24020038 	li	v0,56

004003ac <lseek>:
  4003ac:	08100098 	j	400260 <__syscall>
  4003b0:	2402003b 	li	v0,59

004003b4 <flock>:
  4003b4:	08100098 	j	400260 <__syscall>
  4003b8:	2402003c 	li	v0,60

004003bc <ftruncate>:
  4003bc:	08100098 	j	400260 <__syscall>
  4003c0:	2402003d 	li	v0,61

004003c4 <fsync>:
  4003c4:	08100098 	j	400260 <__syscall>
  4003c8:	2402003e 	li	v0,62

004003cc <fcntl>:
  4003cc:	08100098 	j	400260 <__syscall>
  4003d0:	2402003f 	li	v0,63

004003d4 <ioctl>:
  4003d4:	08100098 	j	400260 <__syscall>
  4003d8:	24020040 	li	v0,64

004003dc <select>:
  4003dc:	08100098 	j	400260 <__syscall>
  4003e0:	24020041 	li	v0,65

004003e4 <poll>:
  4003e4:	08100098 	j	400260 <__syscall>
  4003e8:	24020042 	li	v0,66

004003ec <link>:
  4003ec:	08100098 	j	400260 <__syscall>
  4003f0:	24020043 	li	v0,67

004003f4 <remove>:
  4003f4:	08100098 	j	400260 <__syscall>
  4003f8:	24020044 	li	v0,68

004003fc <mkdir>:
  4003fc:	08100098 	j	400260 <__syscall>
  400400:	24020045 	li	v0,69

00400404 <rmdir>:
  400404:	08100098 	j	400260 <__syscall>
  400408:	24020046 	li	v0,70

0040040c <mkfifo>:
  40040c:	08100098 	j	400260 <__syscall>
  400410:	24020047 	li	v0,71

00400414 <rename>:
  400414:	08100098 	j	400260 <__syscall>
  400418:	24020048 	li	v0,72

0040041c <access>:
  40041c:	08100098 	j	400260 <__syscall>
  400420:	24020049 	li	v0,73

00400424 <chdir>:
  400424:	08100098 	j	400260 <__syscall>
  400428:	2402004a 	li	v0,74

0040042c <fchdir>:
  40042c:	08100098 	j	400260 <__syscall>
  400430:	2402004b 	li	v0,75

00400434 <__getcwd>:
  400434:	08100098 	j	400260 <__syscall>
  400438:	2402004c 	li	v0,76

0040043c <symlink>:
  40043c:	08100098 	j	400260 <__syscall>
  400440:	2402004d 	li	v0,77

00400444 <readlink>:
  400444:	08100098 	j	400260 <__syscall>
  400448:	2402004e 	li	v0,78

0040044c <mount>:
  40044c:	08100098 	j	400260 <__syscall>
  400450:	2402004f 	li	v0,79

00400454 <unmount>:
  400454:	08100098 	j	400260 <__syscall>
  400458:	24020050 	li	v0,80

0040045c <stat>:
  40045c:	08100098 	j	400260 <__syscall>
  400460:	24020051 	li	v0,81

00400464 <fstat>:
  400464:	08100098 	j	400260 <__syscall>
  400468:	24020052 	li	v0,82

0040046c <lstat>:
  40046c:	08100098 	j	400260 <__syscall>
  400470:	24020053 	li	v0,83

00400474 <utimes>:
  400474:	08100098 	j	400260 <__syscall>
  400478:	24020054 	li	v0,84

0040047c <futimes>:
  40047c:	08100098 	j	400260 <__syscall>
  400480:	24020055 	li	v0,85

00400484 <lutimes>:
  400484:	08100098 	j	400260 <__syscall>
  400488:	24020056 	li	v0,86

0040048c <chmod>:
  40048c:	08100098 	j	400260 <__syscall>
  400490:	24020057 	li	v0,87

00400494 <chown>:
  400494:	08100098 	j	400260 <__syscall>
  400498:	24020058 	li	v0,88

0040049c <fchmod>:
  40049c:	08100098 	j	400260 <__syscall>
  4004a0:	24020059 	li	v0,89

004004a4 <fchown>:
  4004a4:	08100098 	j	400260 <__syscall>
  4004a8:	2402005a 	li	v0,90

004004ac <lchmod>:
  4004ac:	08100098 	j	400260 <__syscall>
  4004b0:	2402005b 	li	v0,91

004004b4 <lchown>:
  4004b4:	08100098 	j	400260 <__syscall>
  4004b8:	2402005c 	li	v0,92

004004bc <socket>:
  4004bc:	08100098 	j	400260 <__syscall>
  4004c0:	24020062 	li	v0,98

004004c4 <bind>:
  4004c4:	08100098 	j	400260 <__syscall>
  4004c8:	24020063 	li	v0,99

004004cc <connect>:
  4004cc:	08100098 	j	400260 <__syscall>
  4004d0:	24020064 	li	v0,100

004004d4 <listen>:
  4004d4:	08100098 	j	400260 <__syscall>
  4004d8:	24020065 	li	v0,101

004004dc <accept>:
  4004dc:	08100098 	j	400260 <__syscall>
  4004e0:	24020066 	li	v0,102

004004e4 <shutdown>:
  4004e4:	08100098 	j	400260 <__syscall>
  4004e8:	24020068 	li	v0,104

004004ec <getsockname>:
  4004ec:	08100098 	j	400260 <__syscall>
  4004f0:	24020069 	li	v0,105

004004f4 <getpeername>:
  4004f4:	08100098 	j	400260 <__syscall>
  4004f8:	2402006a 	li	v0,106

004004fc <getsockopt>:
  4004fc:	08100098 	j	400260 <__syscall>
  400500:	2402006b 	li	v0,107

00400504 <setsockopt>:
  400504:	08100098 	j	400260 <__syscall>
  400508:	2402006c 	li	v0,108

0040050c <__time>:
  40050c:	08100098 	j	400260 <__syscall>
  400510:	24020071 	li	v0,113

00400514 <__settime>:
  400514:	08100098 	j	400260 <__syscall>
  400518:	24020072 	li	v0,114

0040051c <nanosleep>:
  40051c:	08100098 	j	400260 <__syscall>
  400520:	24020073 	li	v0,115

00400524 <sync>:
  400524:	08100098 	j	400260 <__syscall>
  400528:	24020076 	li	v0,118

0040052c <reboot>:
  40052c:	08100098 	j	400260 <__syscall>
  400530:	24020077 	li	v0,119
	...

00400540 <__senderr>:
  400540:	081000e7 	j	40039c <write>
  400544:	24040002 	li	a0,2

00400548 <__senderrstr>:
  400548:	27bdffe8 	addiu	sp,sp,-24
  40054c:	afbf0014 	sw	ra,20(sp)
  400550:	afb00010 	sw	s0,16(sp)
  400554:	0c100408 	jal	401020 <strlen>
  400558:	00808021 	move	s0,a0
  40055c:	00403021 	move	a2,v0
  400560:	02002821 	move	a1,s0
  400564:	8fbf0014 	lw	ra,20(sp)
  400568:	8fb00010 	lw	s0,16(sp)
  40056c:	00002021 	move	a0,zero
  400570:	08100150 	j	400540 <__senderr>
  400574:	27bd0018 	addiu	sp,sp,24

00400578 <__printerr>:
  400578:	27bdffd8 	addiu	sp,sp,-40
  40057c:	afb40020 	sw	s4,32(sp)
  400580:	afb3001c 	sw	s3,28(sp)
  400584:	afb20018 	sw	s2,24(sp)
  400588:	afb10014 	sw	s1,20(sp)
  40058c:	afbf0024 	sw	ra,36(sp)
  400590:	afb00010 	sw	s0,16(sp)
  400594:	3c021000 	lui	v0,0x1000
  400598:	00809821 	move	s3,a0
  40059c:	8c440024 	lw	a0,36(v0)
  4005a0:	00a08821 	move	s1,a1
  4005a4:	0c1003fc 	jal	400ff0 <strerror>
  4005a8:	00c09021 	move	s2,a2
  4005ac:	0040a021 	move	s4,v0
  4005b0:	3c021000 	lui	v0,0x1000
  4005b4:	8c420028 	lw	v0,40(v0)
  4005b8:	00000000 	nop
  4005bc:	1040001f 	beqz	v0,40063c <__printerr+0xc4>
  4005c0:	00000000 	nop
  4005c4:	8c420000 	lw	v0,0(v0)
  4005c8:	00000000 	nop
  4005cc:	1040001b 	beqz	v0,40063c <__printerr+0xc4>
  4005d0:	00402021 	move	a0,v0
  4005d4:	0c100152 	jal	400548 <__senderrstr>
  4005d8:	3c100040 	lui	s0,0x40
  4005dc:	0c100152 	jal	400548 <__senderrstr>
  4005e0:	260419c8 	addiu	a0,s0,6600
  4005e4:	3c040040 	lui	a0,0x40
  4005e8:	24840540 	addiu	a0,a0,1344
  4005ec:	02203021 	move	a2,s1
  4005f0:	02403821 	move	a3,s2
  4005f4:	0c100299 	jal	400a64 <__vprintf>
  4005f8:	00002821 	move	a1,zero
  4005fc:	12600005 	beqz	s3,400614 <__printerr+0x9c>
  400600:	260419c8 	addiu	a0,s0,6600
  400604:	0c100152 	jal	400548 <__senderrstr>
  400608:	00000000 	nop
  40060c:	0c100152 	jal	400548 <__senderrstr>
  400610:	02802021 	move	a0,s4
  400614:	3c040040 	lui	a0,0x40
  400618:	8fbf0024 	lw	ra,36(sp)
  40061c:	8fb40020 	lw	s4,32(sp)
  400620:	8fb3001c 	lw	s3,28(sp)
  400624:	8fb20018 	lw	s2,24(sp)
  400628:	8fb10014 	lw	s1,20(sp)
  40062c:	8fb00010 	lw	s0,16(sp)
  400630:	248419cc 	addiu	a0,a0,6604
  400634:	08100152 	j	400548 <__senderrstr>
  400638:	27bd0028 	addiu	sp,sp,40
  40063c:	3c020040 	lui	v0,0x40
  400640:	08100175 	j	4005d4 <__printerr+0x5c>
  400644:	244419b0 	addiu	a0,v0,6576

00400648 <verrx>:
  400648:	27bdffe8 	addiu	sp,sp,-24
  40064c:	afb00010 	sw	s0,16(sp)
  400650:	00808021 	move	s0,a0
  400654:	afbf0014 	sw	ra,20(sp)
  400658:	0c10015e 	jal	400578 <__printerr>
  40065c:	00002021 	move	a0,zero
  400660:	0c100091 	jal	400244 <exit>
  400664:	02002021 	move	a0,s0

00400668 <errx>:
  400668:	27bdffe0 	addiu	sp,sp,-32
  40066c:	27a20028 	addiu	v0,sp,40
  400670:	afa60028 	sw	a2,40(sp)
  400674:	00403021 	move	a2,v0
  400678:	afbf0018 	sw	ra,24(sp)
  40067c:	afa7002c 	sw	a3,44(sp)
  400680:	0c100192 	jal	400648 <verrx>
  400684:	afa20010 	sw	v0,16(sp)
  400688:	8fbf0018 	lw	ra,24(sp)
  40068c:	00000000 	nop
  400690:	03e00008 	jr	ra
  400694:	27bd0020 	addiu	sp,sp,32

00400698 <verr>:
  400698:	27bdffe8 	addiu	sp,sp,-24
  40069c:	afb00010 	sw	s0,16(sp)
  4006a0:	00808021 	move	s0,a0
  4006a4:	afbf0014 	sw	ra,20(sp)
  4006a8:	0c10015e 	jal	400578 <__printerr>
  4006ac:	24040001 	li	a0,1
  4006b0:	0c100091 	jal	400244 <exit>
  4006b4:	02002021 	move	a0,s0

004006b8 <err>:
  4006b8:	27bdffe0 	addiu	sp,sp,-32
  4006bc:	27a20028 	addiu	v0,sp,40
  4006c0:	afa60028 	sw	a2,40(sp)
  4006c4:	00403021 	move	a2,v0
  4006c8:	afbf0018 	sw	ra,24(sp)
  4006cc:	afa7002c 	sw	a3,44(sp)
  4006d0:	0c1001a6 	jal	400698 <verr>
  4006d4:	afa20010 	sw	v0,16(sp)
  4006d8:	8fbf0018 	lw	ra,24(sp)
  4006dc:	00000000 	nop
  4006e0:	03e00008 	jr	ra
  4006e4:	27bd0020 	addiu	sp,sp,32

004006e8 <vwarnx>:
  4006e8:	00a03021 	move	a2,a1
  4006ec:	00802821 	move	a1,a0
  4006f0:	0810015e 	j	400578 <__printerr>
  4006f4:	00002021 	move	a0,zero

004006f8 <warnx>:
  4006f8:	27bdffe0 	addiu	sp,sp,-32
  4006fc:	27a20024 	addiu	v0,sp,36
  400700:	afa50024 	sw	a1,36(sp)
  400704:	00402821 	move	a1,v0
  400708:	afbf0018 	sw	ra,24(sp)
  40070c:	afa60028 	sw	a2,40(sp)
  400710:	afa7002c 	sw	a3,44(sp)
  400714:	0c1001ba 	jal	4006e8 <vwarnx>
  400718:	afa20010 	sw	v0,16(sp)
  40071c:	8fbf0018 	lw	ra,24(sp)
  400720:	00000000 	nop
  400724:	03e00008 	jr	ra
  400728:	27bd0020 	addiu	sp,sp,32

0040072c <vwarn>:
  40072c:	00a03021 	move	a2,a1
  400730:	00802821 	move	a1,a0
  400734:	0810015e 	j	400578 <__printerr>
  400738:	24040001 	li	a0,1

0040073c <warn>:
  40073c:	27bdffe0 	addiu	sp,sp,-32
  400740:	27a20024 	addiu	v0,sp,36
  400744:	afa50024 	sw	a1,36(sp)
  400748:	00402821 	move	a1,v0
  40074c:	afbf0018 	sw	ra,24(sp)
  400750:	afa60028 	sw	a2,40(sp)
  400754:	afa7002c 	sw	a3,44(sp)
  400758:	0c1001cb 	jal	40072c <vwarn>
  40075c:	afa20010 	sw	v0,16(sp)
  400760:	8fbf0018 	lw	ra,24(sp)
  400764:	00000000 	nop
  400768:	03e00008 	jr	ra
  40076c:	27bd0020 	addiu	sp,sp,32

00400770 <__pf_print>:
  400770:	27bdffe0 	addiu	sp,sp,-32
  400774:	afbf0018 	sw	ra,24(sp)
  400778:	afb10014 	sw	s1,20(sp)
  40077c:	afb00010 	sw	s0,16(sp)
  400780:	8c830000 	lw	v1,0(a0)
  400784:	00808021 	move	s0,a0
  400788:	8c840004 	lw	a0,4(a0)
  40078c:	0060f809 	jalr	v1
  400790:	00c08821 	move	s1,a2
  400794:	8e02000c 	lw	v0,12(s0)
  400798:	00000000 	nop
  40079c:	00511021 	addu	v0,v0,s1
  4007a0:	ae02000c 	sw	v0,12(s0)
  4007a4:	8fbf0018 	lw	ra,24(sp)
  4007a8:	8fb10014 	lw	s1,20(sp)
  4007ac:	8fb00010 	lw	s0,16(sp)
  4007b0:	03e00008 	jr	ra
  4007b4:	27bd0020 	addiu	sp,sp,32

004007b8 <__pf_endfield>:
  4007b8:	24020020 	li	v0,32
  4007bc:	ac82002c 	sw	v0,44(a0)
  4007c0:	00001821 	move	v1,zero
  4007c4:	00001021 	move	v0,zero
  4007c8:	ac800038 	sw	zero,56(a0)
  4007cc:	ac800010 	sw	zero,16(a0)
  4007d0:	ac800014 	sw	zero,20(a0)
  4007d4:	ac83001c 	sw	v1,28(a0)
  4007d8:	ac820018 	sw	v0,24(a0)
  4007dc:	ac800020 	sw	zero,32(a0)
  4007e0:	ac800024 	sw	zero,36(a0)
  4007e4:	ac800028 	sw	zero,40(a0)
  4007e8:	ac800030 	sw	zero,48(a0)
  4007ec:	03e00008 	jr	ra
  4007f0:	ac800034 	sw	zero,52(a0)

004007f4 <__pf_fill>:
  4007f4:	27bdffd0 	addiu	sp,sp,-48
  4007f8:	afb30024 	sw	s3,36(sp)
  4007fc:	afb20020 	sw	s2,32(sp)
  400800:	afbf0028 	sw	ra,40(sp)
  400804:	afb1001c 	sw	s1,28(sp)
  400808:	afb00018 	sw	s0,24(sp)
  40080c:	00809821 	move	s3,a0
  400810:	8c82002c 	lw	v0,44(a0)
  400814:	18a0000b 	blez	a1,400844 <__pf_fill+0x50>
  400818:	00a09021 	move	s2,a1
  40081c:	a3a20010 	sb	v0,16(sp)
  400820:	00008021 	move	s0,zero
  400824:	27b10010 	addiu	s1,sp,16
  400828:	26100001 	addiu	s0,s0,1
  40082c:	02602021 	move	a0,s3
  400830:	02202821 	move	a1,s1
  400834:	0c1001dc 	jal	400770 <__pf_print>
  400838:	24060001 	li	a2,1
  40083c:	1650fffb 	bne	s2,s0,40082c <__pf_fill+0x38>
  400840:	26100001 	addiu	s0,s0,1
  400844:	8fbf0028 	lw	ra,40(sp)
  400848:	8fb30024 	lw	s3,36(sp)
  40084c:	8fb20020 	lw	s2,32(sp)
  400850:	8fb1001c 	lw	s1,28(sp)
  400854:	8fb00018 	lw	s0,24(sp)
  400858:	03e00008 	jr	ra
  40085c:	27bd0030 	addiu	sp,sp,48

00400860 <__pf_printstuff>:
  400860:	27bdffd0 	addiu	sp,sp,-48
  400864:	afbf0028 	sw	ra,40(sp)
  400868:	afb50024 	sw	s5,36(sp)
  40086c:	afb40020 	sw	s4,32(sp)
  400870:	afb3001c 	sw	s3,28(sp)
  400874:	afb20018 	sw	s2,24(sp)
  400878:	00c09821 	move	s3,a2
  40087c:	afb10014 	sw	s1,20(sp)
  400880:	afb00010 	sw	s0,16(sp)
  400884:	00808821 	move	s1,a0
  400888:	00a02021 	move	a0,a1
  40088c:	00a0a021 	move	s4,a1
  400890:	0c100408 	jal	401020 <strlen>
  400894:	00e0a821 	move	s5,a3
  400898:	02602021 	move	a0,s3
  40089c:	0c100408 	jal	401020 <strlen>
  4008a0:	00409021 	move	s2,v0
  4008a4:	02a02021 	move	a0,s5
  4008a8:	0c100408 	jal	401020 <strlen>
  4008ac:	02428021 	addu	s0,s2,v0
  4008b0:	8e230024 	lw	v1,36(s1)
  4008b4:	02022821 	addu	a1,s0,v0
  4008b8:	00a3102a 	slt	v0,a1,v1
  4008bc:	10400040 	beqz	v0,4009c0 <__pf_printstuff+0x160>
  4008c0:	00658023 	subu	s0,v1,a1
  4008c4:	1a000056 	blez	s0,400a20 <__pf_printstuff+0x1c0>
  4008c8:	02403021 	move	a2,s2
  4008cc:	8e220028 	lw	v0,40(s1)
  4008d0:	00000000 	nop
  4008d4:	10400028 	beqz	v0,400978 <__pf_printstuff+0x118>
  4008d8:	24020030 	li	v0,48
  4008dc:	0c100408 	jal	401020 <strlen>
  4008e0:	02802021 	move	a0,s4
  4008e4:	00403021 	move	a2,v0
  4008e8:	02802821 	move	a1,s4
  4008ec:	0c1001dc 	jal	400770 <__pf_print>
  4008f0:	02202021 	move	a0,s1
  4008f4:	0c100408 	jal	401020 <strlen>
  4008f8:	02602021 	move	a0,s3
  4008fc:	00403021 	move	a2,v0
  400900:	02202021 	move	a0,s1
  400904:	0c1001dc 	jal	400770 <__pf_print>
  400908:	02602821 	move	a1,s3
  40090c:	8e220028 	lw	v0,40(s1)
  400910:	00000000 	nop
  400914:	14400005 	bnez	v0,40092c <__pf_printstuff+0xcc>
  400918:	24020030 	li	v0,48
  40091c:	8e23002c 	lw	v1,44(s1)
  400920:	00000000 	nop
  400924:	1062004b 	beq	v1,v0,400a54 <__pf_printstuff+0x1f4>
  400928:	02202021 	move	a0,s1
  40092c:	0c100408 	jal	401020 <strlen>
  400930:	02a02021 	move	a0,s5
  400934:	00403021 	move	a2,v0
  400938:	02202021 	move	a0,s1
  40093c:	0c1001dc 	jal	400770 <__pf_print>
  400940:	02a02821 	move	a1,s5
  400944:	8e220028 	lw	v0,40(s1)
  400948:	00000000 	nop
  40094c:	14400012 	bnez	v0,400998 <__pf_printstuff+0x138>
  400950:	02202021 	move	a0,s1
  400954:	8fbf0028 	lw	ra,40(sp)
  400958:	8fb50024 	lw	s5,36(sp)
  40095c:	8fb40020 	lw	s4,32(sp)
  400960:	8fb3001c 	lw	s3,28(sp)
  400964:	8fb20018 	lw	s2,24(sp)
  400968:	8fb10014 	lw	s1,20(sp)
  40096c:	8fb00010 	lw	s0,16(sp)
  400970:	03e00008 	jr	ra
  400974:	27bd0030 	addiu	sp,sp,48
  400978:	8e23002c 	lw	v1,44(s1)
  40097c:	00000000 	nop
  400980:	1062ffd6 	beq	v1,v0,4008dc <__pf_printstuff+0x7c>
  400984:	02202021 	move	a0,s1
  400988:	0c1001fd 	jal	4007f4 <__pf_fill>
  40098c:	02002821 	move	a1,s0
  400990:	08100237 	j	4008dc <__pf_printstuff+0x7c>
  400994:	00000000 	nop
  400998:	02002821 	move	a1,s0
  40099c:	8fbf0028 	lw	ra,40(sp)
  4009a0:	8fb50024 	lw	s5,36(sp)
  4009a4:	8fb40020 	lw	s4,32(sp)
  4009a8:	8fb3001c 	lw	s3,28(sp)
  4009ac:	8fb20018 	lw	s2,24(sp)
  4009b0:	8fb10014 	lw	s1,20(sp)
  4009b4:	8fb00010 	lw	s0,16(sp)
  4009b8:	081001fd 	j	4007f4 <__pf_fill>
  4009bc:	27bd0030 	addiu	sp,sp,48
  4009c0:	02802821 	move	a1,s4
  4009c4:	02403021 	move	a2,s2
  4009c8:	0c1001dc 	jal	400770 <__pf_print>
  4009cc:	02202021 	move	a0,s1
  4009d0:	0c100408 	jal	401020 <strlen>
  4009d4:	02602021 	move	a0,s3
  4009d8:	00403021 	move	a2,v0
  4009dc:	02202021 	move	a0,s1
  4009e0:	0c1001dc 	jal	400770 <__pf_print>
  4009e4:	02602821 	move	a1,s3
  4009e8:	0c100408 	jal	401020 <strlen>
  4009ec:	02a02021 	move	a0,s5
  4009f0:	02202021 	move	a0,s1
  4009f4:	02a02821 	move	a1,s5
  4009f8:	8fbf0028 	lw	ra,40(sp)
  4009fc:	8fb50024 	lw	s5,36(sp)
  400a00:	8fb40020 	lw	s4,32(sp)
  400a04:	8fb3001c 	lw	s3,28(sp)
  400a08:	8fb20018 	lw	s2,24(sp)
  400a0c:	8fb10014 	lw	s1,20(sp)
  400a10:	8fb00010 	lw	s0,16(sp)
  400a14:	00403021 	move	a2,v0
  400a18:	081001dc 	j	400770 <__pf_print>
  400a1c:	27bd0030 	addiu	sp,sp,48
  400a20:	02802821 	move	a1,s4
  400a24:	0c1001dc 	jal	400770 <__pf_print>
  400a28:	02202021 	move	a0,s1
  400a2c:	0c100408 	jal	401020 <strlen>
  400a30:	02602021 	move	a0,s3
  400a34:	00403021 	move	a2,v0
  400a38:	02202021 	move	a0,s1
  400a3c:	0c1001dc 	jal	400770 <__pf_print>
  400a40:	02602821 	move	a1,s3
  400a44:	0c100408 	jal	401020 <strlen>
  400a48:	02a02021 	move	a0,s5
  400a4c:	0810027d 	j	4009f4 <__pf_printstuff+0x194>
  400a50:	02202021 	move	a0,s1
  400a54:	0c1001fd 	jal	4007f4 <__pf_fill>
  400a58:	02002821 	move	a1,s0
  400a5c:	0810024b 	j	40092c <__pf_printstuff+0xcc>
  400a60:	00000000 	nop

00400a64 <__vprintf>:
  400a64:	27bdff68 	addiu	sp,sp,-152
  400a68:	afbe0090 	sw	s8,144(sp)
  400a6c:	27be0030 	addiu	s8,sp,48
  400a70:	afb10074 	sw	s1,116(sp)
  400a74:	afa40030 	sw	a0,48(sp)
  400a78:	00c08821 	move	s1,a2
  400a7c:	03c02021 	move	a0,s8
  400a80:	afb00070 	sw	s0,112(sp)
  400a84:	afbf0094 	sw	ra,148(sp)
  400a88:	afb7008c 	sw	s7,140(sp)
  400a8c:	afb60088 	sw	s6,136(sp)
  400a90:	afb50084 	sw	s5,132(sp)
  400a94:	afb40080 	sw	s4,128(sp)
  400a98:	afb3007c 	sw	s3,124(sp)
  400a9c:	afb20078 	sw	s2,120(sp)
  400aa0:	afa50034 	sw	a1,52(sp)
  400aa4:	afa70038 	sw	a3,56(sp)
  400aa8:	0c1001ee 	jal	4007b8 <__pf_endfield>
  400aac:	afa0003c 	sw	zero,60(sp)
  400ab0:	82300000 	lb	s0,0(s1)
  400ab4:	00000000 	nop
  400ab8:	12000017 	beqz	s0,400b18 <__vprintf+0xb4>
  400abc:	0220a021 	move	s4,s1
  400ac0:	081002ba 	j	400ae8 <__vprintf+0x84>
  400ac4:	00000000 	nop
  400ac8:	27a50010 	addiu	a1,sp,16
  400acc:	24060001 	li	a2,1
  400ad0:	0c1001dc 	jal	400770 <__pf_print>
  400ad4:	a3b00010 	sb	s0,16(sp)
  400ad8:	82900001 	lb	s0,1(s4)
  400adc:	00000000 	nop
  400ae0:	1200000d 	beqz	s0,400b18 <__vprintf+0xb4>
  400ae4:	26940001 	addiu	s4,s4,1
  400ae8:	8fa20040 	lw	v0,64(sp)
  400aec:	00000000 	nop
  400af0:	14400016 	bnez	v0,400b4c <__vprintf+0xe8>
  400af4:	24020025 	li	v0,37
  400af8:	1602fff3 	bne	s0,v0,400ac8 <__vprintf+0x64>
  400afc:	03c02021 	move	a0,s8
  400b00:	24020001 	li	v0,1
  400b04:	afa20040 	sw	v0,64(sp)
  400b08:	82900001 	lb	s0,1(s4)
  400b0c:	00000000 	nop
  400b10:	1600fff5 	bnez	s0,400ae8 <__vprintf+0x84>
  400b14:	26940001 	addiu	s4,s4,1
  400b18:	8fa2003c 	lw	v0,60(sp)
  400b1c:	8fbf0094 	lw	ra,148(sp)
  400b20:	8fbe0090 	lw	s8,144(sp)
  400b24:	8fb7008c 	lw	s7,140(sp)
  400b28:	8fb60088 	lw	s6,136(sp)
  400b2c:	8fb50084 	lw	s5,132(sp)
  400b30:	8fb40080 	lw	s4,128(sp)
  400b34:	8fb3007c 	lw	s3,124(sp)
  400b38:	8fb20078 	lw	s2,120(sp)
  400b3c:	8fb10074 	lw	s1,116(sp)
  400b40:	8fb00070 	lw	s0,112(sp)
  400b44:	03e00008 	jr	ra
  400b48:	27bd0098 	addiu	sp,sp,152
  400b4c:	3c040040 	lui	a0,0x40
  400b50:	248419dc 	addiu	a0,a0,6620
  400b54:	0c1003e4 	jal	400f90 <strchr>
  400b58:	02002821 	move	a1,s0
  400b5c:	10400031 	beqz	v0,400c24 <__vprintf+0x1c0>
  400b60:	24020030 	li	v0,48
  400b64:	1202001d 	beq	s0,v0,400bdc <__vprintf+0x178>
  400b68:	2a020031 	slti	v0,s0,49
  400b6c:	10400013 	beqz	v0,400bbc <__vprintf+0x158>
  400b70:	2402006c 	li	v0,108
  400b74:	24020023 	li	v0,35
  400b78:	12020027 	beq	s0,v0,400c18 <__vprintf+0x1b4>
  400b7c:	2402002d 	li	v0,45
  400b80:	1202004a 	beq	s0,v0,400cac <__vprintf+0x248>
  400b84:	24020001 	li	v0,1
  400b88:	2602ffcf 	addiu	v0,s0,-49
  400b8c:	2c420009 	sltiu	v0,v0,9
  400b90:	1040001a 	beqz	v0,400bfc <__vprintf+0x198>
  400b94:	3c040040 	lui	a0,0x40
  400b98:	8fa20054 	lw	v0,84(sp)
  400b9c:	00000000 	nop
  400ba0:	000218c0 	sll	v1,v0,0x3
  400ba4:	00021040 	sll	v0,v0,0x1
  400ba8:	00431021 	addu	v0,v0,v1
  400bac:	02021021 	addu	v0,s0,v0
  400bb0:	2442ffd0 	addiu	v0,v0,-48
  400bb4:	081002b6 	j	400ad8 <__vprintf+0x74>
  400bb8:	afa20054 	sw	v0,84(sp)
  400bbc:	1602fff3 	bne	s0,v0,400b8c <__vprintf+0x128>
  400bc0:	2602ffcf 	addiu	v0,s0,-49
  400bc4:	8fa20044 	lw	v0,68(sp)
  400bc8:	24030001 	li	v1,1
  400bcc:	10430039 	beq	v0,v1,400cb4 <__vprintf+0x250>
  400bd0:	24020002 	li	v0,2
  400bd4:	081002b6 	j	400ad8 <__vprintf+0x74>
  400bd8:	afa30044 	sw	v1,68(sp)
  400bdc:	8fa20054 	lw	v0,84(sp)
  400be0:	00000000 	nop
  400be4:	1840008c 	blez	v0,400e18 <__vprintf+0x3b4>
  400be8:	000218c0 	sll	v1,v0,0x3
  400bec:	00021040 	sll	v0,v0,0x1
  400bf0:	00431021 	addu	v0,v0,v1
  400bf4:	081002b6 	j	400ad8 <__vprintf+0x74>
  400bf8:	afa20054 	sw	v0,84(sp)
  400bfc:	3c060040 	lui	a2,0x40
  400c00:	248419ec 	addiu	a0,a0,6636
  400c04:	24c61a14 	addiu	a2,a2,6676
  400c08:	0c10042c 	jal	4010b0 <__bad_assert>
  400c0c:	240500dc 	li	a1,220
  400c10:	081002e6 	j	400b98 <__vprintf+0x134>
  400c14:	00000000 	nop
  400c18:	24020001 	li	v0,1
  400c1c:	081002b6 	j	400ad8 <__vprintf+0x74>
  400c20:	afa20068 	sw	v0,104(sp)
  400c24:	3c040040 	lui	a0,0x40
  400c28:	24841a28 	addiu	a0,a0,6696
  400c2c:	0c1003e4 	jal	400f90 <strchr>
  400c30:	02002821 	move	a1,s0
  400c34:	10400091 	beqz	v0,400e7c <__vprintf+0x418>
  400c38:	24020070 	li	v0,112
  400c3c:	1202001f 	beq	s0,v0,400cbc <__vprintf+0x258>
  400c40:	24020064 	li	v0,100
  400c44:	1202009e 	beq	s0,v0,400ec0 <__vprintf+0x45c>
  400c48:	24020001 	li	v0,1
  400c4c:	8fa30044 	lw	v1,68(sp)
  400c50:	00000000 	nop
  400c54:	10620003 	beq	v1,v0,400c64 <__vprintf+0x200>
  400c58:	00000000 	nop
  400c5c:	14600074 	bnez	v1,400e30 <__vprintf+0x3cc>
  400c60:	24020002 	li	v0,2
  400c64:	8fa20038 	lw	v0,56(sp)
  400c68:	afa00048 	sw	zero,72(sp)
  400c6c:	8c430000 	lw	v1,0(v0)
  400c70:	24420004 	addiu	v0,v0,4
  400c74:	afa20038 	sw	v0,56(sp)
  400c78:	afa3004c 	sw	v1,76(sp)
  400c7c:	2602ff9c 	addiu	v0,s0,-100
  400c80:	304200ff 	andi	v0,v0,0xff
  400c84:	2c430015 	sltiu	v1,v0,21
  400c88:	10600015 	beqz	v1,400ce0 <__vprintf+0x27c>
  400c8c:	3c030040 	lui	v1,0x40
  400c90:	00021080 	sll	v0,v0,0x2
  400c94:	246317d0 	addiu	v1,v1,6096
  400c98:	00431021 	addu	v0,v0,v1
  400c9c:	8c440000 	lw	a0,0(v0)
  400ca0:	00000000 	nop
  400ca4:	00800008 	jr	a0
  400ca8:	00000000 	nop
  400cac:	081002b6 	j	400ad8 <__vprintf+0x74>
  400cb0:	afa20058 	sw	v0,88(sp)
  400cb4:	081002b6 	j	400ad8 <__vprintf+0x74>
  400cb8:	afa20044 	sw	v0,68(sp)
  400cbc:	8fa20038 	lw	v0,56(sp)
  400cc0:	afa00048 	sw	zero,72(sp)
  400cc4:	24430004 	addiu	v1,v0,4
  400cc8:	afa30038 	sw	v1,56(sp)
  400ccc:	8c440000 	lw	a0,0(v0)
  400cd0:	00000000 	nop
  400cd4:	afa4004c 	sw	a0,76(sp)
  400cd8:	24020010 	li	v0,16
  400cdc:	afa20060 	sw	v0,96(sp)
  400ce0:	8fa20068 	lw	v0,104(sp)
  400ce4:	00000000 	nop
  400ce8:	1440004d 	bnez	v0,400e20 <__vprintf+0x3bc>
  400cec:	24020001 	li	v0,1
  400cf0:	24020070 	li	v0,112
  400cf4:	1202004a 	beq	s0,v0,400e20 <__vprintf+0x3bc>
  400cf8:	24020001 	li	v0,1
  400cfc:	8fb60060 	lw	s6,96(sp)
  400d00:	3c020040 	lui	v0,0x40
  400d04:	8fb1004c 	lw	s1,76(sp)
  400d08:	8fb00048 	lw	s0,72(sp)
  400d0c:	a3a00029 	sb	zero,41(sp)
  400d10:	24571a30 	addiu	s7,v0,6704
  400d14:	27b50028 	addiu	s5,sp,40
  400d18:	02c09821 	move	s3,s6
  400d1c:	001697c3 	sra	s2,s6,0x1f
  400d20:	02202821 	move	a1,s1
  400d24:	02002021 	move	a0,s0
  400d28:	02603821 	move	a3,s3
  400d2c:	0c100420 	jal	401080 <__umoddi3>
  400d30:	02403021 	move	a2,s2
  400d34:	02e31821 	addu	v1,s7,v1
  400d38:	90620000 	lbu	v0,0(v1)
  400d3c:	02202821 	move	a1,s1
  400d40:	02002021 	move	a0,s0
  400d44:	02603821 	move	a3,s3
  400d48:	02403021 	move	a2,s2
  400d4c:	0c100418 	jal	401060 <__udivdi3>
  400d50:	a2a20000 	sb	v0,0(s5)
  400d54:	00408021 	move	s0,v0
  400d58:	02031025 	or	v0,s0,v1
  400d5c:	00608821 	move	s1,v1
  400d60:	1440ffef 	bnez	v0,400d20 <__vprintf+0x2bc>
  400d64:	26b5ffff 	addiu	s5,s5,-1
  400d68:	8fa20064 	lw	v0,100(sp)
  400d6c:	00000000 	nop
  400d70:	10400006 	beqz	v0,400d8c <__vprintf+0x328>
  400d74:	3c020040 	lui	v0,0x40
  400d78:	24020010 	li	v0,16
  400d7c:	12c2005e 	beq	s6,v0,400ef8 <__vprintf+0x494>
  400d80:	24020008 	li	v0,8
  400d84:	12c20037 	beq	s6,v0,400e64 <__vprintf+0x400>
  400d88:	3c020040 	lui	v0,0x40
  400d8c:	24461af8 	addiu	a2,v0,6904
  400d90:	8fa20050 	lw	v0,80(sp)
  400d94:	00000000 	nop
  400d98:	10400023 	beqz	v0,400e28 <__vprintf+0x3c4>
  400d9c:	3c020040 	lui	v0,0x40
  400da0:	3c020040 	lui	v0,0x40
  400da4:	244519d0 	addiu	a1,v0,6608
  400da8:	03c02021 	move	a0,s8
  400dac:	0c100218 	jal	400860 <__pf_printstuff>
  400db0:	26a70001 	addiu	a3,s5,1
  400db4:	0c1001ee 	jal	4007b8 <__pf_endfield>
  400db8:	03c02021 	move	a0,s8
  400dbc:	081002b6 	j	400ad8 <__vprintf+0x74>
  400dc0:	00000000 	nop
  400dc4:	8fa20038 	lw	v0,56(sp)
  400dc8:	2403fff8 	li	v1,-8
  400dcc:	24420007 	addiu	v0,v0,7
  400dd0:	00431024 	and	v0,v0,v1
  400dd4:	8c470004 	lw	a3,4(v0)
  400dd8:	8c460000 	lw	a2,0(v0)
  400ddc:	24420008 	addiu	v0,v0,8
  400de0:	afa20038 	sw	v0,56(sp)
  400de4:	04c10040 	bgez	a2,400ee8 <__vprintf+0x484>
  400de8:	2402000a 	li	v0,10
  400dec:	00071823 	negu	v1,a3
  400df0:	0003282b 	sltu	a1,zero,v1
  400df4:	00061023 	negu	v0,a2
  400df8:	00451023 	subu	v0,v0,a1
  400dfc:	2404ffff 	li	a0,-1
  400e00:	afa40050 	sw	a0,80(sp)
  400e04:	afa3004c 	sw	v1,76(sp)
  400e08:	afa20048 	sw	v0,72(sp)
  400e0c:	2402000a 	li	v0,10
  400e10:	08100338 	j	400ce0 <__vprintf+0x27c>
  400e14:	afa20060 	sw	v0,96(sp)
  400e18:	081002b6 	j	400ad8 <__vprintf+0x74>
  400e1c:	afb0005c 	sw	s0,92(sp)
  400e20:	0810033f 	j	400cfc <__vprintf+0x298>
  400e24:	afa20064 	sw	v0,100(sp)
  400e28:	0810036a 	j	400da8 <__vprintf+0x344>
  400e2c:	24451af8 	addiu	a1,v0,6904
  400e30:	1462ff93 	bne	v1,v0,400c80 <__vprintf+0x21c>
  400e34:	2602ff9c 	addiu	v0,s0,-100
  400e38:	8fa20038 	lw	v0,56(sp)
  400e3c:	2403fff8 	li	v1,-8
  400e40:	24420007 	addiu	v0,v0,7
  400e44:	00431024 	and	v0,v0,v1
  400e48:	8c450004 	lw	a1,4(v0)
  400e4c:	8c440000 	lw	a0,0(v0)
  400e50:	24420008 	addiu	v0,v0,8
  400e54:	afa20038 	sw	v0,56(sp)
  400e58:	afa5004c 	sw	a1,76(sp)
  400e5c:	0810031f 	j	400c7c <__vprintf+0x218>
  400e60:	afa40048 	sw	a0,72(sp)
  400e64:	3c020040 	lui	v0,0x40
  400e68:	08100364 	j	400d90 <__vprintf+0x32c>
  400e6c:	24461a48 	addiu	a2,v0,6728
  400e70:	24020008 	li	v0,8
  400e74:	08100338 	j	400ce0 <__vprintf+0x27c>
  400e78:	afa20060 	sw	v0,96(sp)
  400e7c:	24020073 	li	v0,115
  400e80:	12020028 	beq	s0,v0,400f24 <__vprintf+0x4c0>
  400e84:	24020063 	li	v0,99
  400e88:	12020037 	beq	s0,v0,400f68 <__vprintf+0x504>
  400e8c:	00000000 	nop
  400e90:	a3b00011 	sb	s0,17(sp)
  400e94:	3c050040 	lui	a1,0x40
  400e98:	24a51af8 	addiu	a1,a1,6904
  400e9c:	03c02021 	move	a0,s8
  400ea0:	00a03021 	move	a2,a1
  400ea4:	27a70011 	addiu	a3,sp,17
  400ea8:	0c100218 	jal	400860 <__pf_printstuff>
  400eac:	a3a00012 	sb	zero,18(sp)
  400eb0:	0c1001ee 	jal	4007b8 <__pf_endfield>
  400eb4:	03c02021 	move	a0,s8
  400eb8:	081002b6 	j	400ad8 <__vprintf+0x74>
  400ebc:	00000000 	nop
  400ec0:	8fa30044 	lw	v1,68(sp)
  400ec4:	00000000 	nop
  400ec8:	1062000e 	beq	v1,v0,400f04 <__vprintf+0x4a0>
  400ecc:	00000000 	nop
  400ed0:	1060000c 	beqz	v1,400f04 <__vprintf+0x4a0>
  400ed4:	24020002 	li	v0,2
  400ed8:	1062ffba 	beq	v1,v0,400dc4 <__vprintf+0x360>
  400edc:	00003821 	move	a3,zero
  400ee0:	00003021 	move	a2,zero
  400ee4:	2402000a 	li	v0,10
  400ee8:	afa7004c 	sw	a3,76(sp)
  400eec:	afa60048 	sw	a2,72(sp)
  400ef0:	08100338 	j	400ce0 <__vprintf+0x27c>
  400ef4:	afa20060 	sw	v0,96(sp)
  400ef8:	3c020040 	lui	v0,0x40
  400efc:	08100364 	j	400d90 <__vprintf+0x32c>
  400f00:	24461a44 	addiu	a2,v0,6724
  400f04:	8fa20038 	lw	v0,56(sp)
  400f08:	00000000 	nop
  400f0c:	8c430000 	lw	v1,0(v0)
  400f10:	24420004 	addiu	v0,v0,4
  400f14:	00603821 	move	a3,v1
  400f18:	000337c3 	sra	a2,v1,0x1f
  400f1c:	08100379 	j	400de4 <__vprintf+0x380>
  400f20:	afa20038 	sw	v0,56(sp)
  400f24:	8fa30038 	lw	v1,56(sp)
  400f28:	00000000 	nop
  400f2c:	8c670000 	lw	a3,0(v1)
  400f30:	00000000 	nop
  400f34:	10e00013 	beqz	a3,400f84 <__vprintf+0x520>
  400f38:	3c020040 	lui	v0,0x40
  400f3c:	3c050040 	lui	a1,0x40
  400f40:	24a51af8 	addiu	a1,a1,6904
  400f44:	24620004 	addiu	v0,v1,4
  400f48:	03c02021 	move	a0,s8
  400f4c:	00a03021 	move	a2,a1
  400f50:	0c100218 	jal	400860 <__pf_printstuff>
  400f54:	afa20038 	sw	v0,56(sp)
  400f58:	0c1001ee 	jal	4007b8 <__pf_endfield>
  400f5c:	03c02021 	move	a0,s8
  400f60:	081002b6 	j	400ad8 <__vprintf+0x74>
  400f64:	00000000 	nop
  400f68:	8fa20038 	lw	v0,56(sp)
  400f6c:	00000000 	nop
  400f70:	8c430000 	lw	v1,0(v0)
  400f74:	24420004 	addiu	v0,v0,4
  400f78:	afa20038 	sw	v0,56(sp)
  400f7c:	081003a5 	j	400e94 <__vprintf+0x430>
  400f80:	a3a30011 	sb	v1,17(sp)
  400f84:	081003cf 	j	400f3c <__vprintf+0x4d8>
  400f88:	244719d4 	addiu	a3,v0,6612
  400f8c:	00000000 	nop

00400f90 <strchr>:
  400f90:	80830000 	lb	v1,0(a0)
  400f94:	00052e00 	sll	a1,a1,0x18
  400f98:	00801021 	move	v0,a0
  400f9c:	1060000c 	beqz	v1,400fd0 <strchr+0x40>
  400fa0:	00052e03 	sra	a1,a1,0x18
  400fa4:	14a30006 	bne	a1,v1,400fc0 <strchr+0x30>
  400fa8:	24420001 	addiu	v0,v0,1
  400fac:	03e00008 	jr	ra
  400fb0:	2442ffff 	addiu	v0,v0,-1
  400fb4:	10a3000c 	beq	a1,v1,400fe8 <strchr+0x58>
  400fb8:	00000000 	nop
  400fbc:	24420001 	addiu	v0,v0,1
  400fc0:	80430000 	lb	v1,0(v0)
  400fc4:	00000000 	nop
  400fc8:	1460fffa 	bnez	v1,400fb4 <strchr+0x24>
  400fcc:	00000000 	nop
  400fd0:	14a00003 	bnez	a1,400fe0 <strchr+0x50>
  400fd4:	00000000 	nop
  400fd8:	03e00008 	jr	ra
  400fdc:	00000000 	nop
  400fe0:	03e00008 	jr	ra
  400fe4:	00001021 	move	v0,zero
  400fe8:	03e00008 	jr	ra
  400fec:	00000000 	nop

00400ff0 <strerror>:
  400ff0:	3c020040 	lui	v0,0x40
  400ff4:	00042880 	sll	a1,a0,0x2
  400ff8:	24421830 	addiu	v0,v0,6192
  400ffc:	3c030040 	lui	v1,0x40
  401000:	2c840041 	sltiu	a0,a0,65
  401004:	00a22821 	addu	a1,a1,v0
  401008:	10800002 	beqz	a0,401014 <strerror+0x24>
  40100c:	24621a4c 	addiu	v0,v1,6732
  401010:	8ca20000 	lw	v0,0(a1)
  401014:	03e00008 	jr	ra
  401018:	00000000 	nop
  40101c:	00000000 	nop

00401020 <strlen>:
  401020:	80820000 	lb	v0,0(a0)
  401024:	00000000 	nop
  401028:	1040000a 	beqz	v0,401054 <strlen+0x34>
  40102c:	00002821 	move	a1,zero
  401030:	24a50001 	addiu	a1,a1,1
  401034:	00851021 	addu	v0,a0,a1
  401038:	80430000 	lb	v1,0(v0)
  40103c:	00000000 	nop
  401040:	1460fffc 	bnez	v1,401034 <strlen+0x14>
  401044:	24a50001 	addiu	a1,a1,1
  401048:	24a5ffff 	addiu	a1,a1,-1
  40104c:	03e00008 	jr	ra
  401050:	00a01021 	move	v0,a1
  401054:	03e00008 	jr	ra
  401058:	00a01021 	move	v0,a1
  40105c:	00000000 	nop

00401060 <__udivdi3>:
  401060:	27bdffe0 	addiu	sp,sp,-32
  401064:	afbf0018 	sw	ra,24(sp)
  401068:	0c1004a7 	jal	40129c <__qdivrem>
  40106c:	afa00010 	sw	zero,16(sp)
  401070:	8fbf0018 	lw	ra,24(sp)
  401074:	00000000 	nop
  401078:	03e00008 	jr	ra
  40107c:	27bd0020 	addiu	sp,sp,32

00401080 <__umoddi3>:
  401080:	27bdffd8 	addiu	sp,sp,-40
  401084:	27a20018 	addiu	v0,sp,24
  401088:	afbf0020 	sw	ra,32(sp)
  40108c:	0c1004a7 	jal	40129c <__qdivrem>
  401090:	afa20010 	sw	v0,16(sp)
  401094:	8fa3001c 	lw	v1,28(sp)
  401098:	8fa20018 	lw	v0,24(sp)
  40109c:	8fbf0020 	lw	ra,32(sp)
  4010a0:	00000000 	nop
  4010a4:	03e00008 	jr	ra
  4010a8:	27bd0028 	addiu	sp,sp,40
  4010ac:	00000000 	nop

004010b0 <__bad_assert>:
  4010b0:	27bdfee0 	addiu	sp,sp,-288
  4010b4:	00c03821 	move	a3,a2
  4010b8:	afb00118 	sw	s0,280(sp)
  4010bc:	3c060040 	lui	a2,0x40
  4010c0:	27b00018 	addiu	s0,sp,24
  4010c4:	24c62050 	addiu	a2,a2,8272
  4010c8:	afa40010 	sw	a0,16(sp)
  4010cc:	afa50014 	sw	a1,20(sp)
  4010d0:	02002021 	move	a0,s0
  4010d4:	afbf011c 	sw	ra,284(sp)
  4010d8:	0c100478 	jal	4011e0 <snprintf>
  4010dc:	24050100 	li	a1,256
  4010e0:	0c100408 	jal	401020 <strlen>
  4010e4:	02002021 	move	a0,s0
  4010e8:	00403021 	move	a2,v0
  4010ec:	02002821 	move	a1,s0
  4010f0:	0c1000e7 	jal	40039c <write>
  4010f4:	24040002 	li	a0,2
  4010f8:	0c100484 	jal	401210 <abort>
  4010fc:	00000000 	nop

00401100 <__snprintf_send>:
  401100:	10c00012 	beqz	a2,40114c <__snprintf_send+0x4c>
  401104:	00004021 	move	t0,zero
  401108:	8c870008 	lw	a3,8(a0)
  40110c:	8c820004 	lw	v0,4(a0)
  401110:	00a81821 	addu	v1,a1,t0
  401114:	00e2102b 	sltu	v0,a3,v0
  401118:	1040000a 	beqz	v0,401144 <__snprintf_send+0x44>
  40111c:	25080001 	addiu	t0,t0,1
  401120:	8c820000 	lw	v0,0(a0)
  401124:	90630000 	lbu	v1,0(v1)
  401128:	00471021 	addu	v0,v0,a3
  40112c:	a0430000 	sb	v1,0(v0)
  401130:	8c870008 	lw	a3,8(a0)
  401134:	00000000 	nop
  401138:	24e20001 	addiu	v0,a3,1
  40113c:	00403821 	move	a3,v0
  401140:	ac820008 	sw	v0,8(a0)
  401144:	14c8fff1 	bne	a2,t0,40110c <__snprintf_send+0xc>
  401148:	00000000 	nop
  40114c:	03e00008 	jr	ra
  401150:	00000000 	nop

00401154 <vsnprintf>:
  401154:	27bdffd8 	addiu	sp,sp,-40
  401158:	afb00020 	sw	s0,32(sp)
  40115c:	00a01021 	move	v0,a1
  401160:	00808021 	move	s0,a0
  401164:	3c040040 	lui	a0,0x40
  401168:	24a3ffff 	addiu	v1,a1,-1
  40116c:	afbf0024 	sw	ra,36(sp)
  401170:	24841100 	addiu	a0,a0,4352
  401174:	27a50010 	addiu	a1,sp,16
  401178:	1440000c 	bnez	v0,4011ac <vsnprintf+0x58>
  40117c:	afb00010 	sw	s0,16(sp)
  401180:	3c040040 	lui	a0,0x40
  401184:	24841100 	addiu	a0,a0,4352
  401188:	afa00014 	sw	zero,20(sp)
  40118c:	0c100299 	jal	400a64 <__vprintf>
  401190:	afa00018 	sw	zero,24(sp)
  401194:	00401821 	move	v1,v0
  401198:	8fbf0024 	lw	ra,36(sp)
  40119c:	8fb00020 	lw	s0,32(sp)
  4011a0:	00601021 	move	v0,v1
  4011a4:	03e00008 	jr	ra
  4011a8:	27bd0028 	addiu	sp,sp,40
  4011ac:	afa30014 	sw	v1,20(sp)
  4011b0:	0c100299 	jal	400a64 <__vprintf>
  4011b4:	afa00018 	sw	zero,24(sp)
  4011b8:	00401821 	move	v1,v0
  4011bc:	8fa20018 	lw	v0,24(sp)
  4011c0:	00000000 	nop
  4011c4:	02021021 	addu	v0,s0,v0
  4011c8:	a0400000 	sb	zero,0(v0)
  4011cc:	8fbf0024 	lw	ra,36(sp)
  4011d0:	8fb00020 	lw	s0,32(sp)
  4011d4:	00601021 	move	v0,v1
  4011d8:	03e00008 	jr	ra
  4011dc:	27bd0028 	addiu	sp,sp,40

004011e0 <snprintf>:
  4011e0:	27bdffe0 	addiu	sp,sp,-32
  4011e4:	27a2002c 	addiu	v0,sp,44
  4011e8:	afa7002c 	sw	a3,44(sp)
  4011ec:	00403821 	move	a3,v0
  4011f0:	afbf0018 	sw	ra,24(sp)
  4011f4:	0c100455 	jal	401154 <vsnprintf>
  4011f8:	afa20010 	sw	v0,16(sp)
  4011fc:	8fbf0018 	lw	ra,24(sp)
  401200:	00000000 	nop
  401204:	03e00008 	jr	ra
  401208:	27bd0020 	addiu	sp,sp,32
  40120c:	00000000 	nop

00401210 <abort>:
  401210:	27bdffe8 	addiu	sp,sp,-24
  401214:	afbf0010 	sw	ra,16(sp)
  401218:	0c1000a7 	jal	40029c <_exit>
  40121c:	240400ff 	li	a0,255

00401220 <shl>:
  401220:	18a00016 	blez	a1,40127c <shl+0x5c>
  401224:	24020010 	li	v0,16
  401228:	00464823 	subu	t1,v0,a2
  40122c:	00803821 	move	a3,a0
  401230:	00004021 	move	t0,zero
  401234:	8ce20000 	lw	v0,0(a3)
  401238:	8ce30004 	lw	v1,4(a3)
  40123c:	00c21004 	sllv	v0,v0,a2
  401240:	3042ffff 	andi	v0,v0,0xffff
  401244:	01231806 	srlv	v1,v1,t1
  401248:	00431025 	or	v0,v0,v1
  40124c:	25080001 	addiu	t0,t0,1
  401250:	ace20000 	sw	v0,0(a3)
  401254:	14a8fff7 	bne	a1,t0,401234 <shl+0x14>
  401258:	24e70004 	addiu	a3,a3,4
  40125c:	00051880 	sll	v1,a1,0x2
  401260:	00831821 	addu	v1,a0,v1
  401264:	8c620000 	lw	v0,0(v1)
  401268:	00000000 	nop
  40126c:	00c21004 	sllv	v0,v0,a2
  401270:	3042ffff 	andi	v0,v0,0xffff
  401274:	03e00008 	jr	ra
  401278:	ac620000 	sw	v0,0(v1)
  40127c:	00001821 	move	v1,zero
  401280:	00831821 	addu	v1,a0,v1
  401284:	8c620000 	lw	v0,0(v1)
  401288:	00000000 	nop
  40128c:	00c21004 	sllv	v0,v0,a2
  401290:	3042ffff 	andi	v0,v0,0xffff
  401294:	03e00008 	jr	ra
  401298:	ac620000 	sw	v0,0(v1)

0040129c <__qdivrem>:
  40129c:	27bdff80 	addiu	sp,sp,-128
  4012a0:	00c71025 	or	v0,a2,a3
  4012a4:	afb20060 	sw	s2,96(sp)
  4012a8:	afbf007c 	sw	ra,124(sp)
  4012ac:	afbe0078 	sw	s8,120(sp)
  4012b0:	afb70074 	sw	s7,116(sp)
  4012b4:	afb60070 	sw	s6,112(sp)
  4012b8:	afb5006c 	sw	s5,108(sp)
  4012bc:	afb40068 	sw	s4,104(sp)
  4012c0:	afb30064 	sw	s3,100(sp)
  4012c4:	afb1005c 	sw	s1,92(sp)
  4012c8:	afb00058 	sw	s0,88(sp)
  4012cc:	00a04821 	move	t1,a1
  4012d0:	8fb20090 	lw	s2,144(sp)
  4012d4:	14400018 	bnez	v0,401338 <__qdivrem+0x9c>
  4012d8:	00804021 	move	t0,a0
  4012dc:	3c031000 	lui	v1,0x1000
  4012e0:	8c640010 	lw	a0,16(v1)
  4012e4:	24020001 	li	v0,1
  4012e8:	14800002 	bnez	a0,4012f4 <__qdivrem+0x58>
  4012ec:	0044001b 	divu	zero,v0,a0
  4012f0:	0007000d 	break	0x7
  4012f4:	00001012 	mflo	v0
  4012f8:	12400003 	beqz	s2,401308 <__qdivrem+0x6c>
  4012fc:	00401821 	move	v1,v0
  401300:	ae450004 	sw	a1,4(s2)
  401304:	ae480000 	sw	t0,0(s2)
  401308:	8fbf007c 	lw	ra,124(sp)
  40130c:	8fbe0078 	lw	s8,120(sp)
  401310:	8fb70074 	lw	s7,116(sp)
  401314:	8fb60070 	lw	s6,112(sp)
  401318:	8fb5006c 	lw	s5,108(sp)
  40131c:	8fb40068 	lw	s4,104(sp)
  401320:	8fb30064 	lw	s3,100(sp)
  401324:	8fb20060 	lw	s2,96(sp)
  401328:	8fb1005c 	lw	s1,92(sp)
  40132c:	8fb00058 	lw	s0,88(sp)
  401330:	03e00008 	jr	ra
  401334:	27bd0080 	addiu	sp,sp,128
  401338:	0086102b 	sltu	v0,a0,a2
  40133c:	10400008 	beqz	v0,401360 <__qdivrem+0xc4>
  401340:	00000000 	nop
  401344:	1240010c 	beqz	s2,401778 <__qdivrem+0x4dc>
  401348:	00000000 	nop
  40134c:	00001821 	move	v1,zero
  401350:	00001021 	move	v0,zero
  401354:	ae490004 	sw	t1,4(s2)
  401358:	081004c2 	j	401308 <__qdivrem+0x6c>
  40135c:	ae480000 	sw	t0,0(s2)
  401360:	10860046 	beq	a0,a2,40147c <__qdivrem+0x1e0>
  401364:	00a7102b 	sltu	v0,a1,a3
  401368:	00e08821 	move	s1,a3
  40136c:	01001821 	move	v1,t0
  401370:	00c08021 	move	s0,a2
  401374:	30c7ffff 	andi	a3,a2,0xffff
  401378:	3108ffff 	andi	t0,t0,0xffff
  40137c:	312affff 	andi	t2,t1,0xffff
  401380:	3226ffff 	andi	a2,s1,0xffff
  401384:	00031c02 	srl	v1,v1,0x10
  401388:	00092c02 	srl	a1,t1,0x10
  40138c:	00101402 	srl	v0,s0,0x10
  401390:	00112402 	srl	a0,s1,0x10
  401394:	afa00010 	sw	zero,16(sp)
  401398:	afa30014 	sw	v1,20(sp)
  40139c:	afa80018 	sw	t0,24(sp)
  4013a0:	afa5001c 	sw	a1,28(sp)
  4013a4:	afaa0020 	sw	t2,32(sp)
  4013a8:	afa20028 	sw	v0,40(sp)
  4013ac:	afa7002c 	sw	a3,44(sp)
  4013b0:	afa40030 	sw	a0,48(sp)
  4013b4:	144000f6 	bnez	v0,401790 <__qdivrem+0x4f4>
  4013b8:	afa60034 	sw	a2,52(sp)
  4013bc:	14e00033 	bnez	a3,40148c <__qdivrem+0x1f0>
  4013c0:	27a20028 	addiu	v0,sp,40
  4013c4:	148000f7 	bnez	a0,4017a4 <__qdivrem+0x508>
  4013c8:	27a2002c 	addiu	v0,sp,44
  4013cc:	14c00002 	bnez	a2,4013d8 <__qdivrem+0x13c>
  4013d0:	0066001b 	divu	zero,v1,a2
  4013d4:	0007000d 	break	0x7
  4013d8:	00001010 	mfhi	v0
  4013dc:	00021400 	sll	v0,v0,0x10
  4013e0:	00481025 	or	v0,v0,t0
  4013e4:	00004812 	mflo	t1
	...
  4013f0:	14c00002 	bnez	a2,4013fc <__qdivrem+0x160>
  4013f4:	0046001b 	divu	zero,v0,a2
  4013f8:	0007000d 	break	0x7
  4013fc:	00001810 	mfhi	v1
  401400:	00031c00 	sll	v1,v1,0x10
  401404:	00651825 	or	v1,v1,a1
  401408:	00003812 	mflo	a3
	...
  401414:	14c00002 	bnez	a2,401420 <__qdivrem+0x184>
  401418:	0066001b 	divu	zero,v1,a2
  40141c:	0007000d 	break	0x7
  401420:	00001010 	mfhi	v0
  401424:	00021400 	sll	v0,v0,0x10
  401428:	00001812 	mflo	v1
  40142c:	12400008 	beqz	s2,401450 <__qdivrem+0x1b4>
  401430:	01422025 	or	a0,t2,v0
  401434:	14c00002 	bnez	a2,401440 <__qdivrem+0x1a4>
  401438:	0086001b 	divu	zero,a0,a2
  40143c:	0007000d 	break	0x7
  401440:	ae400000 	sw	zero,0(s2)
  401444:	00001010 	mfhi	v0
  401448:	ae420004 	sw	v0,4(s2)
  40144c:	00000000 	nop
  401450:	14c00002 	bnez	a2,40145c <__qdivrem+0x1c0>
  401454:	0086001b 	divu	zero,a0,a2
  401458:	0007000d 	break	0x7
  40145c:	00091400 	sll	v0,t1,0x10
  401460:	00031c00 	sll	v1,v1,0x10
  401464:	00e28025 	or	s0,a3,v0
  401468:	02001021 	move	v0,s0
  40146c:	00002012 	mflo	a0
  401470:	00838825 	or	s1,a0,v1
  401474:	081004c2 	j	401308 <__qdivrem+0x6c>
  401478:	02201821 	move	v1,s1
  40147c:	1040ffbb 	beqz	v0,40136c <__qdivrem+0xd0>
  401480:	00e08821 	move	s1,a3
  401484:	081004d1 	j	401344 <__qdivrem+0xa8>
  401488:	00000000 	nop
  40148c:	afa20050 	sw	v0,80(sp)
  401490:	24170003 	li	s7,3
  401494:	27be002c 	addiu	s8,sp,44
  401498:	8fa30014 	lw	v1,20(sp)
  40149c:	24020004 	li	v0,4
  4014a0:	146000c4 	bnez	v1,4017b4 <__qdivrem+0x518>
  4014a4:	00579823 	subu	s3,v0,s7
  4014a8:	0810052d 	j	4014b4 <__qdivrem+0x218>
  4014ac:	27b40014 	addiu	s4,sp,20
  4014b0:	0060a021 	move	s4,v1
  4014b4:	8e820004 	lw	v0,4(s4)
  4014b8:	2673ffff 	addiu	s3,s3,-1
  4014bc:	1040fffc 	beqz	v0,4014b0 <__qdivrem+0x214>
  4014c0:	26830004 	addiu	v1,s4,4
  4014c4:	24020004 	li	v0,4
  4014c8:	00532023 	subu	a0,v0,s3
  4014cc:	2483ffff 	addiu	v1,a0,-1
  4014d0:	046000bc 	bltz	v1,4017c4 <__qdivrem+0x528>
  4014d4:	00001821 	move	v1,zero
  4014d8:	27a60038 	addiu	a2,sp,56
  4014dc:	00042880 	sll	a1,a0,0x2
  4014e0:	00c51021 	addu	v0,a2,a1
  4014e4:	2442fffc 	addiu	v0,v0,-4
  4014e8:	24630001 	addiu	v1,v1,1
  4014ec:	ac400000 	sw	zero,0(v0)
  4014f0:	1464fffd 	bne	v1,a0,4014e8 <__qdivrem+0x24c>
  4014f4:	2442fffc 	addiu	v0,v0,-4
  4014f8:	8fcb0000 	lw	t3,0(s8)
  4014fc:	34028000 	li	v0,0x8000
  401500:	0162102b 	sltu	v0,t3,v0
  401504:	00c5b021 	addu	s6,a2,a1
  401508:	104000ac 	beqz	v0,4017bc <__qdivrem+0x520>
  40150c:	01601821 	move	v1,t3
  401510:	0000a821 	move	s5,zero
  401514:	34048000 	li	a0,0x8000
  401518:	00031840 	sll	v1,v1,0x1
  40151c:	0064102b 	sltu	v0,v1,a0
  401520:	1440fffd 	bnez	v0,401518 <__qdivrem+0x27c>
  401524:	26b50001 	addiu	s5,s5,1
  401528:	1aa00009 	blez	s5,401550 <__qdivrem+0x2b4>
  40152c:	02f32821 	addu	a1,s7,s3
  401530:	02a03021 	move	a2,s5
  401534:	0c100488 	jal	401220 <shl>
  401538:	02802021 	move	a0,s4
  40153c:	03c02021 	move	a0,s8
  401540:	26e5ffff 	addiu	a1,s7,-1
  401544:	0c100488 	jal	401220 <shl>
  401548:	02a03021 	move	a2,s5
  40154c:	8fcb0000 	lw	t3,0(s8)
  401550:	8fa20050 	lw	v0,80(sp)
  401554:	00177080 	sll	t6,s7,0x2
  401558:	8c580008 	lw	t8,8(v0)
  40155c:	02c06821 	move	t5,s6
  401560:	02804821 	move	t1,s4
  401564:	028e6021 	addu	t4,s4,t6
  401568:	00007821 	move	t7,zero
  40156c:	3416ffff 	li	s6,0xffff
  401570:	8d240000 	lw	a0,0(t1)
  401574:	8d230004 	lw	v1,4(t1)
  401578:	8d260008 	lw	a2,8(t1)
  40157c:	11640081 	beq	t3,a0,401784 <__qdivrem+0x4e8>
  401580:	00041400 	sll	v0,a0,0x10
  401584:	00621025 	or	v0,v1,v0
  401588:	15600002 	bnez	t3,401594 <__qdivrem+0x2f8>
  40158c:	004b001b 	divu	zero,v0,t3
  401590:	0007000d 	break	0x7
  401594:	00002810 	mfhi	a1
  401598:	00003812 	mflo	a3
	...
  4015a4:	00f80018 	mult	a3,t8
  4015a8:	00051400 	sll	v0,a1,0x10
  4015ac:	00c21025 	or	v0,a2,v0
  4015b0:	00001812 	mflo	v1
  4015b4:	0043182b 	sltu	v1,v0,v1
  4015b8:	10600006 	beqz	v1,4015d4 <__qdivrem+0x338>
  4015bc:	00000000 	nop
  4015c0:	24e7ffff 	addiu	a3,a3,-1
  4015c4:	00ab2821 	addu	a1,a1,t3
  4015c8:	02c5102b 	sltu	v0,s6,a1
  4015cc:	1040fff6 	beqz	v0,4015a8 <__qdivrem+0x30c>
  4015d0:	00f80018 	mult	a3,t8
  4015d4:	1ae00017 	blez	s7,401634 <__qdivrem+0x398>
  4015d8:	00004021 	move	t0,zero
  4015dc:	8fa20050 	lw	v0,80(sp)
  4015e0:	01802021 	move	a0,t4
  4015e4:	004e3021 	addu	a2,v0,t6
  4015e8:	02e02821 	move	a1,s7
  4015ec:	3c0a0001 	lui	t2,0x1
  4015f0:	8cc20000 	lw	v0,0(a2)
  4015f4:	8c830000 	lw	v1,0(a0)
  4015f8:	00e20018 	mult	a3,v0
  4015fc:	24a5ffff 	addiu	a1,a1,-1
  401600:	24c6fffc 	addiu	a2,a2,-4
  401604:	00001012 	mflo	v0
  401608:	00621823 	subu	v1,v1,v0
  40160c:	00681823 	subu	v1,v1,t0
  401610:	00031402 	srl	v0,v1,0x10
  401614:	01421023 	subu	v0,t2,v0
  401618:	3063ffff 	andi	v1,v1,0xffff
  40161c:	ac830000 	sw	v1,0(a0)
  401620:	3048ffff 	andi	t0,v0,0xffff
  401624:	14a0fff2 	bnez	a1,4015f0 <__qdivrem+0x354>
  401628:	2484fffc 	addiu	a0,a0,-4
  40162c:	8d240000 	lw	a0,0(t1)
  401630:	00000000 	nop
  401634:	00881023 	subu	v0,a0,t0
  401638:	3044ffff 	andi	a0,v0,0xffff
  40163c:	00021c02 	srl	v1,v0,0x10
  401640:	10600018 	beqz	v1,4016a4 <__qdivrem+0x408>
  401644:	ad240000 	sw	a0,0(t1)
  401648:	1ae00012 	blez	s7,401694 <__qdivrem+0x3f8>
  40164c:	00004021 	move	t0,zero
  401650:	8fa20050 	lw	v0,80(sp)
  401654:	01802021 	move	a0,t4
  401658:	004e3021 	addu	a2,v0,t6
  40165c:	02e02821 	move	a1,s7
  401660:	8c820000 	lw	v0,0(a0)
  401664:	8cc30000 	lw	v1,0(a2)
  401668:	01021021 	addu	v0,t0,v0
  40166c:	00431021 	addu	v0,v0,v1
  401670:	3043ffff 	andi	v1,v0,0xffff
  401674:	24a5ffff 	addiu	a1,a1,-1
  401678:	ac830000 	sw	v1,0(a0)
  40167c:	00024402 	srl	t0,v0,0x10
  401680:	2484fffc 	addiu	a0,a0,-4
  401684:	14a0fff6 	bnez	a1,401660 <__qdivrem+0x3c4>
  401688:	24c6fffc 	addiu	a2,a2,-4
  40168c:	8d240000 	lw	a0,0(t1)
  401690:	00000000 	nop
  401694:	01041021 	addu	v0,t0,a0
  401698:	3042ffff 	andi	v0,v0,0xffff
  40169c:	ad220000 	sw	v0,0(t1)
  4016a0:	24e7ffff 	addiu	a3,a3,-1
  4016a4:	25ef0001 	addiu	t7,t7,1
  4016a8:	026f102a 	slt	v0,s3,t7
  4016ac:	ada70000 	sw	a3,0(t5)
  4016b0:	25290004 	addiu	t1,t1,4
  4016b4:	25ad0004 	addiu	t5,t5,4
  4016b8:	1040ffad 	beqz	v0,401570 <__qdivrem+0x2d4>
  4016bc:	258c0004 	addiu	t4,t4,4
  4016c0:	12400022 	beqz	s2,40174c <__qdivrem+0x4b0>
  4016c4:	00000000 	nop
  4016c8:	12a00016 	beqz	s5,401724 <__qdivrem+0x488>
  4016cc:	02f32821 	addu	a1,s7,s3
  4016d0:	0265102a 	slt	v0,s3,a1
  4016d4:	10400011 	beqz	v0,40171c <__qdivrem+0x480>
  4016d8:	00051080 	sll	v0,a1,0x2
  4016dc:	00051880 	sll	v1,a1,0x2
  4016e0:	24020010 	li	v0,16
  4016e4:	00553823 	subu	a3,v0,s5
  4016e8:	02833021 	addu	a2,s4,v1
  4016ec:	8cc2fffc 	lw	v0,-4(a2)
  4016f0:	8cc30000 	lw	v1,0(a2)
  4016f4:	00e21004 	sllv	v0,v0,a3
  4016f8:	02a31806 	srlv	v1,v1,s5
  4016fc:	3042ffff 	andi	v0,v0,0xffff
  401700:	24a5ffff 	addiu	a1,a1,-1
  401704:	00621825 	or	v1,v1,v0
  401708:	0265202a 	slt	a0,s3,a1
  40170c:	acc30000 	sw	v1,0(a2)
  401710:	1480fff6 	bnez	a0,4016ec <__qdivrem+0x450>
  401714:	24c6fffc 	addiu	a2,a2,-4
  401718:	00051080 	sll	v0,a1,0x2
  40171c:	00541021 	addu	v0,v0,s4
  401720:	ac400000 	sw	zero,0(v0)
  401724:	8fa20014 	lw	v0,20(sp)
  401728:	8fa40018 	lw	a0,24(sp)
  40172c:	00021400 	sll	v0,v0,0x10
  401730:	8fa3001c 	lw	v1,28(sp)
  401734:	00448025 	or	s0,v0,a0
  401738:	8fa20020 	lw	v0,32(sp)
  40173c:	00031c00 	sll	v1,v1,0x10
  401740:	00628825 	or	s1,v1,v0
  401744:	ae510004 	sw	s1,4(s2)
  401748:	ae500000 	sw	s0,0(s2)
  40174c:	8fa2003c 	lw	v0,60(sp)
  401750:	8fa40040 	lw	a0,64(sp)
  401754:	00021400 	sll	v0,v0,0x10
  401758:	8fa30044 	lw	v1,68(sp)
  40175c:	00448025 	or	s0,v0,a0
  401760:	8fa20048 	lw	v0,72(sp)
  401764:	00031c00 	sll	v1,v1,0x10
  401768:	00628825 	or	s1,v1,v0
  40176c:	02201821 	move	v1,s1
  401770:	081004c2 	j	401308 <__qdivrem+0x6c>
  401774:	02001021 	move	v0,s0
  401778:	00001821 	move	v1,zero
  40177c:	081004c2 	j	401308 <__qdivrem+0x6c>
  401780:	00001021 	move	v0,zero
  401784:	00602821 	move	a1,v1
  401788:	08100571 	j	4015c4 <__qdivrem+0x328>
  40178c:	3407ffff 	li	a3,0xffff
  401790:	27a20024 	addiu	v0,sp,36
  401794:	24170004 	li	s7,4
  401798:	27be0028 	addiu	s8,sp,40
  40179c:	08100526 	j	401498 <__qdivrem+0x1fc>
  4017a0:	afa20050 	sw	v0,80(sp)
  4017a4:	24170002 	li	s7,2
  4017a8:	27be0030 	addiu	s8,sp,48
  4017ac:	08100526 	j	401498 <__qdivrem+0x1fc>
  4017b0:	afa20050 	sw	v0,80(sp)
  4017b4:	08100531 	j	4014c4 <__qdivrem+0x228>
  4017b8:	27b40010 	addiu	s4,sp,16
  4017bc:	08100554 	j	401550 <__qdivrem+0x2b4>
  4017c0:	0000a821 	move	s5,zero
  4017c4:	00042880 	sll	a1,a0,0x2
  4017c8:	0810053e 	j	4014f8 <__qdivrem+0x25c>
  4017cc:	27a60038 	addiu	a2,sp,56
