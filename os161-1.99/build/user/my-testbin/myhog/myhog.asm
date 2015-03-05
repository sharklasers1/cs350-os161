
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
  40001c:	0c100014 	jal	400050 <main>
  400020:	00000000 	nop
  400024:	00408021 	move	s0,v0
  400028:	0c100079 	jal	4001e4 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c10008f 	jal	40023c <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <main>:
  400050:	27bdffc8 	addiu	sp,sp,-56
  400054:	afb00018 	sw	s0,24(sp)
  400058:	afbf0034 	sw	ra,52(sp)
  40005c:	afb60030 	sw	s6,48(sp)
  400060:	afb5002c 	sw	s5,44(sp)
  400064:	afb40028 	sw	s4,40(sp)
  400068:	afb30024 	sw	s3,36(sp)
  40006c:	afb20020 	sw	s2,32(sp)
  400070:	0c100089 	jal	400224 <fork>
  400074:	afb1001c 	sw	s1,28(sp)
  400078:	00408021 	move	s0,v0
  40007c:	2402ffff 	li	v0,-1
  400080:	1202003c 	beq	s0,v0,400174 <main+0x124>
  400084:	3c050040 	lui	a1,0x40
  400088:	1200003e 	beqz	s0,400184 <main+0x134>
  40008c:	3c040040 	lui	a0,0x40
  400090:	3c121000 	lui	s2,0x1000
  400094:	8e440020 	lw	a0,32(s2)
  400098:	3c031000 	lui	v1,0x1000
  40009c:	00041080 	sll	v0,a0,0x2
  4000a0:	24630030 	addiu	v1,v1,48
  4000a4:	00431021 	addu	v0,v0,v1
  4000a8:	24840001 	addiu	a0,a0,1
  4000ac:	ac500000 	sw	s0,0(v0)
  4000b0:	18800025 	blez	a0,400148 <main+0xf8>
  4000b4:	ae440020 	sw	a0,32(s2)
  4000b8:	00608021 	move	s0,v1
  4000bc:	00008821 	move	s1,zero
  4000c0:	27b40010 	addiu	s4,sp,16
  4000c4:	3c130040 	lui	s3,0x40
  4000c8:	3c150040 	lui	s5,0x40
  4000cc:	0810003a 	j	4000e8 <main+0x98>
  4000d0:	3c160040 	lui	s6,0x40
  4000d4:	8e420020 	lw	v0,32(s2)
  4000d8:	26310001 	addiu	s1,s1,1
  4000dc:	0222102a 	slt	v0,s1,v0
  4000e0:	10400019 	beqz	v0,400148 <main+0xf8>
  4000e4:	26100004 	addiu	s0,s0,4
  4000e8:	8e040000 	lw	a0,0(s0)
  4000ec:	02802821 	move	a1,s4
  4000f0:	0c100091 	jal	400244 <waitpid>
  4000f4:	00003021 	move	a2,zero
  4000f8:	0440002c 	bltz	v0,4001ac <main+0x15c>
  4000fc:	2664190c 	addiu	a0,s3,6412
  400100:	8fa30010 	lw	v1,16(sp)
  400104:	26a4191c 	addiu	a0,s5,6428
  400108:	30620003 	andi	v0,v1,0x3
  40010c:	2442ffff 	addiu	v0,v0,-1
  400110:	00033083 	sra	a2,v1,0x2
  400114:	2c420002 	sltiu	v0,v0,2
  400118:	14400003 	bnez	v0,400128 <main+0xd8>
  40011c:	00c01821 	move	v1,a2
  400120:	1060ffec 	beqz	v1,4000d4 <main+0x84>
  400124:	26c41930 	addiu	a0,s6,6448
  400128:	8e050000 	lw	a1,0(s0)
  40012c:	0c1001a6 	jal	400698 <warnx>
  400130:	26310001 	addiu	s1,s1,1
  400134:	8e420020 	lw	v0,32(s2)
  400138:	00000000 	nop
  40013c:	0222102a 	slt	v0,s1,v0
  400140:	1440ffe9 	bnez	v0,4000e8 <main+0x98>
  400144:	26100004 	addiu	s0,s0,4
  400148:	8fbf0034 	lw	ra,52(sp)
  40014c:	8fb60030 	lw	s6,48(sp)
  400150:	8fb5002c 	lw	s5,44(sp)
  400154:	8fb40028 	lw	s4,40(sp)
  400158:	8fb30024 	lw	s3,36(sp)
  40015c:	8fb20020 	lw	s2,32(sp)
  400160:	8fb1001c 	lw	s1,28(sp)
  400164:	8fb00018 	lw	s0,24(sp)
  400168:	00001021 	move	v0,zero
  40016c:	03e00008 	jr	ra
  400170:	27bd0038 	addiu	sp,sp,56
  400174:	24a518e0 	addiu	a1,a1,6368
  400178:	0c100196 	jal	400658 <err>
  40017c:	24040001 	li	a0,1
  400180:	3c040040 	lui	a0,0x40
  400184:	3c051000 	lui	a1,0x1000
  400188:	248418e8 	addiu	a0,a0,6376
  40018c:	0c10008d 	jal	400234 <execv>
  400190:	24a50000 	addiu	a1,a1,0
  400194:	3c050040 	lui	a1,0x40
  400198:	24a518fc 	addiu	a1,a1,6396
  40019c:	0c100196 	jal	400658 <err>
  4001a0:	24040001 	li	a0,1
  4001a4:	08100025 	j	400094 <main+0x44>
  4001a8:	3c121000 	lui	s2,0x1000
  4001ac:	8e050000 	lw	a1,0(s0)
  4001b0:	0c1001b7 	jal	4006dc <warn>
  4001b4:	00000000 	nop
  4001b8:	08100035 	j	4000d4 <main+0x84>
  4001bc:	00000000 	nop

004001c0 <__exit_hack>:
  4001c0:	27bdfff8 	addiu	sp,sp,-8
  4001c4:	24020001 	li	v0,1
  4001c8:	afa20000 	sw	v0,0(sp)
  4001cc:	8fa20000 	lw	v0,0(sp)
  4001d0:	00000000 	nop
  4001d4:	1440fffd 	bnez	v0,4001cc <__exit_hack+0xc>
  4001d8:	00000000 	nop
  4001dc:	03e00008 	jr	ra
  4001e0:	27bd0008 	addiu	sp,sp,8

004001e4 <exit>:
  4001e4:	27bdffe8 	addiu	sp,sp,-24
  4001e8:	afbf0010 	sw	ra,16(sp)
  4001ec:	0c10008f 	jal	40023c <_exit>
  4001f0:	00000000 	nop
	...

00400200 <__syscall>:
  400200:	0000000c 	syscall
  400204:	10e00005 	beqz	a3,40021c <__syscall+0x1c>
  400208:	00000000 	nop
  40020c:	3c011000 	lui	at,0x1000
  400210:	ac220024 	sw	v0,36(at)
  400214:	2403ffff 	li	v1,-1
  400218:	2402ffff 	li	v0,-1
  40021c:	03e00008 	jr	ra
  400220:	00000000 	nop

00400224 <fork>:
  400224:	08100080 	j	400200 <__syscall>
  400228:	24020000 	li	v0,0

0040022c <vfork>:
  40022c:	08100080 	j	400200 <__syscall>
  400230:	24020001 	li	v0,1

00400234 <execv>:
  400234:	08100080 	j	400200 <__syscall>
  400238:	24020002 	li	v0,2

0040023c <_exit>:
  40023c:	08100080 	j	400200 <__syscall>
  400240:	24020003 	li	v0,3

00400244 <waitpid>:
  400244:	08100080 	j	400200 <__syscall>
  400248:	24020004 	li	v0,4

0040024c <getpid>:
  40024c:	08100080 	j	400200 <__syscall>
  400250:	24020005 	li	v0,5

00400254 <getppid>:
  400254:	08100080 	j	400200 <__syscall>
  400258:	24020006 	li	v0,6

0040025c <sbrk>:
  40025c:	08100080 	j	400200 <__syscall>
  400260:	24020007 	li	v0,7

00400264 <mmap>:
  400264:	08100080 	j	400200 <__syscall>
  400268:	24020008 	li	v0,8

0040026c <munmap>:
  40026c:	08100080 	j	400200 <__syscall>
  400270:	24020009 	li	v0,9

00400274 <mprotect>:
  400274:	08100080 	j	400200 <__syscall>
  400278:	2402000a 	li	v0,10

0040027c <umask>:
  40027c:	08100080 	j	400200 <__syscall>
  400280:	24020011 	li	v0,17

00400284 <issetugid>:
  400284:	08100080 	j	400200 <__syscall>
  400288:	24020012 	li	v0,18

0040028c <getresuid>:
  40028c:	08100080 	j	400200 <__syscall>
  400290:	24020013 	li	v0,19

00400294 <setresuid>:
  400294:	08100080 	j	400200 <__syscall>
  400298:	24020014 	li	v0,20

0040029c <getresgid>:
  40029c:	08100080 	j	400200 <__syscall>
  4002a0:	24020015 	li	v0,21

004002a4 <setresgid>:
  4002a4:	08100080 	j	400200 <__syscall>
  4002a8:	24020016 	li	v0,22

004002ac <getgroups>:
  4002ac:	08100080 	j	400200 <__syscall>
  4002b0:	24020017 	li	v0,23

004002b4 <setgroups>:
  4002b4:	08100080 	j	400200 <__syscall>
  4002b8:	24020018 	li	v0,24

004002bc <__getlogin>:
  4002bc:	08100080 	j	400200 <__syscall>
  4002c0:	24020019 	li	v0,25

004002c4 <__setlogin>:
  4002c4:	08100080 	j	400200 <__syscall>
  4002c8:	2402001a 	li	v0,26

004002cc <kill>:
  4002cc:	08100080 	j	400200 <__syscall>
  4002d0:	2402001b 	li	v0,27

004002d4 <sigaction>:
  4002d4:	08100080 	j	400200 <__syscall>
  4002d8:	2402001c 	li	v0,28

004002dc <sigpending>:
  4002dc:	08100080 	j	400200 <__syscall>
  4002e0:	2402001d 	li	v0,29

004002e4 <sigprocmask>:
  4002e4:	08100080 	j	400200 <__syscall>
  4002e8:	2402001e 	li	v0,30

004002ec <sigsuspend>:
  4002ec:	08100080 	j	400200 <__syscall>
  4002f0:	2402001f 	li	v0,31

004002f4 <sigreturn>:
  4002f4:	08100080 	j	400200 <__syscall>
  4002f8:	24020020 	li	v0,32

004002fc <open>:
  4002fc:	08100080 	j	400200 <__syscall>
  400300:	2402002d 	li	v0,45

00400304 <pipe>:
  400304:	08100080 	j	400200 <__syscall>
  400308:	2402002e 	li	v0,46

0040030c <dup>:
  40030c:	08100080 	j	400200 <__syscall>
  400310:	2402002f 	li	v0,47

00400314 <dup2>:
  400314:	08100080 	j	400200 <__syscall>
  400318:	24020030 	li	v0,48

0040031c <close>:
  40031c:	08100080 	j	400200 <__syscall>
  400320:	24020031 	li	v0,49

00400324 <read>:
  400324:	08100080 	j	400200 <__syscall>
  400328:	24020032 	li	v0,50

0040032c <pread>:
  40032c:	08100080 	j	400200 <__syscall>
  400330:	24020033 	li	v0,51

00400334 <getdirentry>:
  400334:	08100080 	j	400200 <__syscall>
  400338:	24020036 	li	v0,54

0040033c <write>:
  40033c:	08100080 	j	400200 <__syscall>
  400340:	24020037 	li	v0,55

00400344 <pwrite>:
  400344:	08100080 	j	400200 <__syscall>
  400348:	24020038 	li	v0,56

0040034c <lseek>:
  40034c:	08100080 	j	400200 <__syscall>
  400350:	2402003b 	li	v0,59

00400354 <flock>:
  400354:	08100080 	j	400200 <__syscall>
  400358:	2402003c 	li	v0,60

0040035c <ftruncate>:
  40035c:	08100080 	j	400200 <__syscall>
  400360:	2402003d 	li	v0,61

00400364 <fsync>:
  400364:	08100080 	j	400200 <__syscall>
  400368:	2402003e 	li	v0,62

0040036c <fcntl>:
  40036c:	08100080 	j	400200 <__syscall>
  400370:	2402003f 	li	v0,63

00400374 <ioctl>:
  400374:	08100080 	j	400200 <__syscall>
  400378:	24020040 	li	v0,64

0040037c <select>:
  40037c:	08100080 	j	400200 <__syscall>
  400380:	24020041 	li	v0,65

00400384 <poll>:
  400384:	08100080 	j	400200 <__syscall>
  400388:	24020042 	li	v0,66

0040038c <link>:
  40038c:	08100080 	j	400200 <__syscall>
  400390:	24020043 	li	v0,67

00400394 <remove>:
  400394:	08100080 	j	400200 <__syscall>
  400398:	24020044 	li	v0,68

0040039c <mkdir>:
  40039c:	08100080 	j	400200 <__syscall>
  4003a0:	24020045 	li	v0,69

004003a4 <rmdir>:
  4003a4:	08100080 	j	400200 <__syscall>
  4003a8:	24020046 	li	v0,70

004003ac <mkfifo>:
  4003ac:	08100080 	j	400200 <__syscall>
  4003b0:	24020047 	li	v0,71

004003b4 <rename>:
  4003b4:	08100080 	j	400200 <__syscall>
  4003b8:	24020048 	li	v0,72

004003bc <access>:
  4003bc:	08100080 	j	400200 <__syscall>
  4003c0:	24020049 	li	v0,73

004003c4 <chdir>:
  4003c4:	08100080 	j	400200 <__syscall>
  4003c8:	2402004a 	li	v0,74

004003cc <fchdir>:
  4003cc:	08100080 	j	400200 <__syscall>
  4003d0:	2402004b 	li	v0,75

004003d4 <__getcwd>:
  4003d4:	08100080 	j	400200 <__syscall>
  4003d8:	2402004c 	li	v0,76

004003dc <symlink>:
  4003dc:	08100080 	j	400200 <__syscall>
  4003e0:	2402004d 	li	v0,77

004003e4 <readlink>:
  4003e4:	08100080 	j	400200 <__syscall>
  4003e8:	2402004e 	li	v0,78

004003ec <mount>:
  4003ec:	08100080 	j	400200 <__syscall>
  4003f0:	2402004f 	li	v0,79

004003f4 <unmount>:
  4003f4:	08100080 	j	400200 <__syscall>
  4003f8:	24020050 	li	v0,80

004003fc <stat>:
  4003fc:	08100080 	j	400200 <__syscall>
  400400:	24020051 	li	v0,81

00400404 <fstat>:
  400404:	08100080 	j	400200 <__syscall>
  400408:	24020052 	li	v0,82

0040040c <lstat>:
  40040c:	08100080 	j	400200 <__syscall>
  400410:	24020053 	li	v0,83

00400414 <utimes>:
  400414:	08100080 	j	400200 <__syscall>
  400418:	24020054 	li	v0,84

0040041c <futimes>:
  40041c:	08100080 	j	400200 <__syscall>
  400420:	24020055 	li	v0,85

00400424 <lutimes>:
  400424:	08100080 	j	400200 <__syscall>
  400428:	24020056 	li	v0,86

0040042c <chmod>:
  40042c:	08100080 	j	400200 <__syscall>
  400430:	24020057 	li	v0,87

00400434 <chown>:
  400434:	08100080 	j	400200 <__syscall>
  400438:	24020058 	li	v0,88

0040043c <fchmod>:
  40043c:	08100080 	j	400200 <__syscall>
  400440:	24020059 	li	v0,89

00400444 <fchown>:
  400444:	08100080 	j	400200 <__syscall>
  400448:	2402005a 	li	v0,90

0040044c <lchmod>:
  40044c:	08100080 	j	400200 <__syscall>
  400450:	2402005b 	li	v0,91

00400454 <lchown>:
  400454:	08100080 	j	400200 <__syscall>
  400458:	2402005c 	li	v0,92

0040045c <socket>:
  40045c:	08100080 	j	400200 <__syscall>
  400460:	24020062 	li	v0,98

00400464 <bind>:
  400464:	08100080 	j	400200 <__syscall>
  400468:	24020063 	li	v0,99

0040046c <connect>:
  40046c:	08100080 	j	400200 <__syscall>
  400470:	24020064 	li	v0,100

00400474 <listen>:
  400474:	08100080 	j	400200 <__syscall>
  400478:	24020065 	li	v0,101

0040047c <accept>:
  40047c:	08100080 	j	400200 <__syscall>
  400480:	24020066 	li	v0,102

00400484 <shutdown>:
  400484:	08100080 	j	400200 <__syscall>
  400488:	24020068 	li	v0,104

0040048c <getsockname>:
  40048c:	08100080 	j	400200 <__syscall>
  400490:	24020069 	li	v0,105

00400494 <getpeername>:
  400494:	08100080 	j	400200 <__syscall>
  400498:	2402006a 	li	v0,106

0040049c <getsockopt>:
  40049c:	08100080 	j	400200 <__syscall>
  4004a0:	2402006b 	li	v0,107

004004a4 <setsockopt>:
  4004a4:	08100080 	j	400200 <__syscall>
  4004a8:	2402006c 	li	v0,108

004004ac <__time>:
  4004ac:	08100080 	j	400200 <__syscall>
  4004b0:	24020071 	li	v0,113

004004b4 <__settime>:
  4004b4:	08100080 	j	400200 <__syscall>
  4004b8:	24020072 	li	v0,114

004004bc <nanosleep>:
  4004bc:	08100080 	j	400200 <__syscall>
  4004c0:	24020073 	li	v0,115

004004c4 <sync>:
  4004c4:	08100080 	j	400200 <__syscall>
  4004c8:	24020076 	li	v0,118

004004cc <reboot>:
  4004cc:	08100080 	j	400200 <__syscall>
  4004d0:	24020077 	li	v0,119
	...

004004e0 <__senderr>:
  4004e0:	081000cf 	j	40033c <write>
  4004e4:	24040002 	li	a0,2

004004e8 <__senderrstr>:
  4004e8:	27bdffe8 	addiu	sp,sp,-24
  4004ec:	afbf0014 	sw	ra,20(sp)
  4004f0:	afb00010 	sw	s0,16(sp)
  4004f4:	0c1003f0 	jal	400fc0 <strlen>
  4004f8:	00808021 	move	s0,a0
  4004fc:	00403021 	move	a2,v0
  400500:	02002821 	move	a1,s0
  400504:	8fbf0014 	lw	ra,20(sp)
  400508:	8fb00010 	lw	s0,16(sp)
  40050c:	00002021 	move	a0,zero
  400510:	08100138 	j	4004e0 <__senderr>
  400514:	27bd0018 	addiu	sp,sp,24

00400518 <__printerr>:
  400518:	27bdffd8 	addiu	sp,sp,-40
  40051c:	afb40020 	sw	s4,32(sp)
  400520:	afb3001c 	sw	s3,28(sp)
  400524:	afb20018 	sw	s2,24(sp)
  400528:	afb10014 	sw	s1,20(sp)
  40052c:	afbf0024 	sw	ra,36(sp)
  400530:	afb00010 	sw	s0,16(sp)
  400534:	3c021000 	lui	v0,0x1000
  400538:	00809821 	move	s3,a0
  40053c:	8c440024 	lw	a0,36(v0)
  400540:	00a08821 	move	s1,a1
  400544:	0c1003e4 	jal	400f90 <strerror>
  400548:	00c09021 	move	s2,a2
  40054c:	0040a021 	move	s4,v0
  400550:	3c021000 	lui	v0,0x1000
  400554:	8c420028 	lw	v0,40(v0)
  400558:	00000000 	nop
  40055c:	1040001f 	beqz	v0,4005dc <__printerr+0xc4>
  400560:	00000000 	nop
  400564:	8c420000 	lw	v0,0(v0)
  400568:	00000000 	nop
  40056c:	1040001b 	beqz	v0,4005dc <__printerr+0xc4>
  400570:	00402021 	move	a0,v0
  400574:	0c10013a 	jal	4004e8 <__senderrstr>
  400578:	3c100040 	lui	s0,0x40
  40057c:	0c10013a 	jal	4004e8 <__senderrstr>
  400580:	26041968 	addiu	a0,s0,6504
  400584:	3c040040 	lui	a0,0x40
  400588:	248404e0 	addiu	a0,a0,1248
  40058c:	02203021 	move	a2,s1
  400590:	02403821 	move	a3,s2
  400594:	0c100281 	jal	400a04 <__vprintf>
  400598:	00002821 	move	a1,zero
  40059c:	12600005 	beqz	s3,4005b4 <__printerr+0x9c>
  4005a0:	26041968 	addiu	a0,s0,6504
  4005a4:	0c10013a 	jal	4004e8 <__senderrstr>
  4005a8:	00000000 	nop
  4005ac:	0c10013a 	jal	4004e8 <__senderrstr>
  4005b0:	02802021 	move	a0,s4
  4005b4:	3c040040 	lui	a0,0x40
  4005b8:	8fbf0024 	lw	ra,36(sp)
  4005bc:	8fb40020 	lw	s4,32(sp)
  4005c0:	8fb3001c 	lw	s3,28(sp)
  4005c4:	8fb20018 	lw	s2,24(sp)
  4005c8:	8fb10014 	lw	s1,20(sp)
  4005cc:	8fb00010 	lw	s0,16(sp)
  4005d0:	2484196c 	addiu	a0,a0,6508
  4005d4:	0810013a 	j	4004e8 <__senderrstr>
  4005d8:	27bd0028 	addiu	sp,sp,40
  4005dc:	3c020040 	lui	v0,0x40
  4005e0:	0810015d 	j	400574 <__printerr+0x5c>
  4005e4:	24441950 	addiu	a0,v0,6480

004005e8 <verrx>:
  4005e8:	27bdffe8 	addiu	sp,sp,-24
  4005ec:	afb00010 	sw	s0,16(sp)
  4005f0:	00808021 	move	s0,a0
  4005f4:	afbf0014 	sw	ra,20(sp)
  4005f8:	0c100146 	jal	400518 <__printerr>
  4005fc:	00002021 	move	a0,zero
  400600:	0c100079 	jal	4001e4 <exit>
  400604:	02002021 	move	a0,s0

00400608 <errx>:
  400608:	27bdffe0 	addiu	sp,sp,-32
  40060c:	27a20028 	addiu	v0,sp,40
  400610:	afa60028 	sw	a2,40(sp)
  400614:	00403021 	move	a2,v0
  400618:	afbf0018 	sw	ra,24(sp)
  40061c:	afa7002c 	sw	a3,44(sp)
  400620:	0c10017a 	jal	4005e8 <verrx>
  400624:	afa20010 	sw	v0,16(sp)
  400628:	8fbf0018 	lw	ra,24(sp)
  40062c:	00000000 	nop
  400630:	03e00008 	jr	ra
  400634:	27bd0020 	addiu	sp,sp,32

00400638 <verr>:
  400638:	27bdffe8 	addiu	sp,sp,-24
  40063c:	afb00010 	sw	s0,16(sp)
  400640:	00808021 	move	s0,a0
  400644:	afbf0014 	sw	ra,20(sp)
  400648:	0c100146 	jal	400518 <__printerr>
  40064c:	24040001 	li	a0,1
  400650:	0c100079 	jal	4001e4 <exit>
  400654:	02002021 	move	a0,s0

00400658 <err>:
  400658:	27bdffe0 	addiu	sp,sp,-32
  40065c:	27a20028 	addiu	v0,sp,40
  400660:	afa60028 	sw	a2,40(sp)
  400664:	00403021 	move	a2,v0
  400668:	afbf0018 	sw	ra,24(sp)
  40066c:	afa7002c 	sw	a3,44(sp)
  400670:	0c10018e 	jal	400638 <verr>
  400674:	afa20010 	sw	v0,16(sp)
  400678:	8fbf0018 	lw	ra,24(sp)
  40067c:	00000000 	nop
  400680:	03e00008 	jr	ra
  400684:	27bd0020 	addiu	sp,sp,32

00400688 <vwarnx>:
  400688:	00a03021 	move	a2,a1
  40068c:	00802821 	move	a1,a0
  400690:	08100146 	j	400518 <__printerr>
  400694:	00002021 	move	a0,zero

00400698 <warnx>:
  400698:	27bdffe0 	addiu	sp,sp,-32
  40069c:	27a20024 	addiu	v0,sp,36
  4006a0:	afa50024 	sw	a1,36(sp)
  4006a4:	00402821 	move	a1,v0
  4006a8:	afbf0018 	sw	ra,24(sp)
  4006ac:	afa60028 	sw	a2,40(sp)
  4006b0:	afa7002c 	sw	a3,44(sp)
  4006b4:	0c1001a2 	jal	400688 <vwarnx>
  4006b8:	afa20010 	sw	v0,16(sp)
  4006bc:	8fbf0018 	lw	ra,24(sp)
  4006c0:	00000000 	nop
  4006c4:	03e00008 	jr	ra
  4006c8:	27bd0020 	addiu	sp,sp,32

004006cc <vwarn>:
  4006cc:	00a03021 	move	a2,a1
  4006d0:	00802821 	move	a1,a0
  4006d4:	08100146 	j	400518 <__printerr>
  4006d8:	24040001 	li	a0,1

004006dc <warn>:
  4006dc:	27bdffe0 	addiu	sp,sp,-32
  4006e0:	27a20024 	addiu	v0,sp,36
  4006e4:	afa50024 	sw	a1,36(sp)
  4006e8:	00402821 	move	a1,v0
  4006ec:	afbf0018 	sw	ra,24(sp)
  4006f0:	afa60028 	sw	a2,40(sp)
  4006f4:	afa7002c 	sw	a3,44(sp)
  4006f8:	0c1001b3 	jal	4006cc <vwarn>
  4006fc:	afa20010 	sw	v0,16(sp)
  400700:	8fbf0018 	lw	ra,24(sp)
  400704:	00000000 	nop
  400708:	03e00008 	jr	ra
  40070c:	27bd0020 	addiu	sp,sp,32

00400710 <__pf_print>:
  400710:	27bdffe0 	addiu	sp,sp,-32
  400714:	afbf0018 	sw	ra,24(sp)
  400718:	afb10014 	sw	s1,20(sp)
  40071c:	afb00010 	sw	s0,16(sp)
  400720:	8c830000 	lw	v1,0(a0)
  400724:	00808021 	move	s0,a0
  400728:	8c840004 	lw	a0,4(a0)
  40072c:	0060f809 	jalr	v1
  400730:	00c08821 	move	s1,a2
  400734:	8e02000c 	lw	v0,12(s0)
  400738:	00000000 	nop
  40073c:	00511021 	addu	v0,v0,s1
  400740:	ae02000c 	sw	v0,12(s0)
  400744:	8fbf0018 	lw	ra,24(sp)
  400748:	8fb10014 	lw	s1,20(sp)
  40074c:	8fb00010 	lw	s0,16(sp)
  400750:	03e00008 	jr	ra
  400754:	27bd0020 	addiu	sp,sp,32

00400758 <__pf_endfield>:
  400758:	24020020 	li	v0,32
  40075c:	ac82002c 	sw	v0,44(a0)
  400760:	00001821 	move	v1,zero
  400764:	00001021 	move	v0,zero
  400768:	ac800038 	sw	zero,56(a0)
  40076c:	ac800010 	sw	zero,16(a0)
  400770:	ac800014 	sw	zero,20(a0)
  400774:	ac83001c 	sw	v1,28(a0)
  400778:	ac820018 	sw	v0,24(a0)
  40077c:	ac800020 	sw	zero,32(a0)
  400780:	ac800024 	sw	zero,36(a0)
  400784:	ac800028 	sw	zero,40(a0)
  400788:	ac800030 	sw	zero,48(a0)
  40078c:	03e00008 	jr	ra
  400790:	ac800034 	sw	zero,52(a0)

00400794 <__pf_fill>:
  400794:	27bdffd0 	addiu	sp,sp,-48
  400798:	afb30024 	sw	s3,36(sp)
  40079c:	afb20020 	sw	s2,32(sp)
  4007a0:	afbf0028 	sw	ra,40(sp)
  4007a4:	afb1001c 	sw	s1,28(sp)
  4007a8:	afb00018 	sw	s0,24(sp)
  4007ac:	00809821 	move	s3,a0
  4007b0:	8c82002c 	lw	v0,44(a0)
  4007b4:	18a0000b 	blez	a1,4007e4 <__pf_fill+0x50>
  4007b8:	00a09021 	move	s2,a1
  4007bc:	a3a20010 	sb	v0,16(sp)
  4007c0:	00008021 	move	s0,zero
  4007c4:	27b10010 	addiu	s1,sp,16
  4007c8:	26100001 	addiu	s0,s0,1
  4007cc:	02602021 	move	a0,s3
  4007d0:	02202821 	move	a1,s1
  4007d4:	0c1001c4 	jal	400710 <__pf_print>
  4007d8:	24060001 	li	a2,1
  4007dc:	1650fffb 	bne	s2,s0,4007cc <__pf_fill+0x38>
  4007e0:	26100001 	addiu	s0,s0,1
  4007e4:	8fbf0028 	lw	ra,40(sp)
  4007e8:	8fb30024 	lw	s3,36(sp)
  4007ec:	8fb20020 	lw	s2,32(sp)
  4007f0:	8fb1001c 	lw	s1,28(sp)
  4007f4:	8fb00018 	lw	s0,24(sp)
  4007f8:	03e00008 	jr	ra
  4007fc:	27bd0030 	addiu	sp,sp,48

00400800 <__pf_printstuff>:
  400800:	27bdffd0 	addiu	sp,sp,-48
  400804:	afbf0028 	sw	ra,40(sp)
  400808:	afb50024 	sw	s5,36(sp)
  40080c:	afb40020 	sw	s4,32(sp)
  400810:	afb3001c 	sw	s3,28(sp)
  400814:	afb20018 	sw	s2,24(sp)
  400818:	00c09821 	move	s3,a2
  40081c:	afb10014 	sw	s1,20(sp)
  400820:	afb00010 	sw	s0,16(sp)
  400824:	00808821 	move	s1,a0
  400828:	00a02021 	move	a0,a1
  40082c:	00a0a021 	move	s4,a1
  400830:	0c1003f0 	jal	400fc0 <strlen>
  400834:	00e0a821 	move	s5,a3
  400838:	02602021 	move	a0,s3
  40083c:	0c1003f0 	jal	400fc0 <strlen>
  400840:	00409021 	move	s2,v0
  400844:	02a02021 	move	a0,s5
  400848:	0c1003f0 	jal	400fc0 <strlen>
  40084c:	02428021 	addu	s0,s2,v0
  400850:	8e230024 	lw	v1,36(s1)
  400854:	02022821 	addu	a1,s0,v0
  400858:	00a3102a 	slt	v0,a1,v1
  40085c:	10400040 	beqz	v0,400960 <__pf_printstuff+0x160>
  400860:	00658023 	subu	s0,v1,a1
  400864:	1a000056 	blez	s0,4009c0 <__pf_printstuff+0x1c0>
  400868:	02403021 	move	a2,s2
  40086c:	8e220028 	lw	v0,40(s1)
  400870:	00000000 	nop
  400874:	10400028 	beqz	v0,400918 <__pf_printstuff+0x118>
  400878:	24020030 	li	v0,48
  40087c:	0c1003f0 	jal	400fc0 <strlen>
  400880:	02802021 	move	a0,s4
  400884:	00403021 	move	a2,v0
  400888:	02802821 	move	a1,s4
  40088c:	0c1001c4 	jal	400710 <__pf_print>
  400890:	02202021 	move	a0,s1
  400894:	0c1003f0 	jal	400fc0 <strlen>
  400898:	02602021 	move	a0,s3
  40089c:	00403021 	move	a2,v0
  4008a0:	02202021 	move	a0,s1
  4008a4:	0c1001c4 	jal	400710 <__pf_print>
  4008a8:	02602821 	move	a1,s3
  4008ac:	8e220028 	lw	v0,40(s1)
  4008b0:	00000000 	nop
  4008b4:	14400005 	bnez	v0,4008cc <__pf_printstuff+0xcc>
  4008b8:	24020030 	li	v0,48
  4008bc:	8e23002c 	lw	v1,44(s1)
  4008c0:	00000000 	nop
  4008c4:	1062004b 	beq	v1,v0,4009f4 <__pf_printstuff+0x1f4>
  4008c8:	02202021 	move	a0,s1
  4008cc:	0c1003f0 	jal	400fc0 <strlen>
  4008d0:	02a02021 	move	a0,s5
  4008d4:	00403021 	move	a2,v0
  4008d8:	02202021 	move	a0,s1
  4008dc:	0c1001c4 	jal	400710 <__pf_print>
  4008e0:	02a02821 	move	a1,s5
  4008e4:	8e220028 	lw	v0,40(s1)
  4008e8:	00000000 	nop
  4008ec:	14400012 	bnez	v0,400938 <__pf_printstuff+0x138>
  4008f0:	02202021 	move	a0,s1
  4008f4:	8fbf0028 	lw	ra,40(sp)
  4008f8:	8fb50024 	lw	s5,36(sp)
  4008fc:	8fb40020 	lw	s4,32(sp)
  400900:	8fb3001c 	lw	s3,28(sp)
  400904:	8fb20018 	lw	s2,24(sp)
  400908:	8fb10014 	lw	s1,20(sp)
  40090c:	8fb00010 	lw	s0,16(sp)
  400910:	03e00008 	jr	ra
  400914:	27bd0030 	addiu	sp,sp,48
  400918:	8e23002c 	lw	v1,44(s1)
  40091c:	00000000 	nop
  400920:	1062ffd6 	beq	v1,v0,40087c <__pf_printstuff+0x7c>
  400924:	02202021 	move	a0,s1
  400928:	0c1001e5 	jal	400794 <__pf_fill>
  40092c:	02002821 	move	a1,s0
  400930:	0810021f 	j	40087c <__pf_printstuff+0x7c>
  400934:	00000000 	nop
  400938:	02002821 	move	a1,s0
  40093c:	8fbf0028 	lw	ra,40(sp)
  400940:	8fb50024 	lw	s5,36(sp)
  400944:	8fb40020 	lw	s4,32(sp)
  400948:	8fb3001c 	lw	s3,28(sp)
  40094c:	8fb20018 	lw	s2,24(sp)
  400950:	8fb10014 	lw	s1,20(sp)
  400954:	8fb00010 	lw	s0,16(sp)
  400958:	081001e5 	j	400794 <__pf_fill>
  40095c:	27bd0030 	addiu	sp,sp,48
  400960:	02802821 	move	a1,s4
  400964:	02403021 	move	a2,s2
  400968:	0c1001c4 	jal	400710 <__pf_print>
  40096c:	02202021 	move	a0,s1
  400970:	0c1003f0 	jal	400fc0 <strlen>
  400974:	02602021 	move	a0,s3
  400978:	00403021 	move	a2,v0
  40097c:	02202021 	move	a0,s1
  400980:	0c1001c4 	jal	400710 <__pf_print>
  400984:	02602821 	move	a1,s3
  400988:	0c1003f0 	jal	400fc0 <strlen>
  40098c:	02a02021 	move	a0,s5
  400990:	02202021 	move	a0,s1
  400994:	02a02821 	move	a1,s5
  400998:	8fbf0028 	lw	ra,40(sp)
  40099c:	8fb50024 	lw	s5,36(sp)
  4009a0:	8fb40020 	lw	s4,32(sp)
  4009a4:	8fb3001c 	lw	s3,28(sp)
  4009a8:	8fb20018 	lw	s2,24(sp)
  4009ac:	8fb10014 	lw	s1,20(sp)
  4009b0:	8fb00010 	lw	s0,16(sp)
  4009b4:	00403021 	move	a2,v0
  4009b8:	081001c4 	j	400710 <__pf_print>
  4009bc:	27bd0030 	addiu	sp,sp,48
  4009c0:	02802821 	move	a1,s4
  4009c4:	0c1001c4 	jal	400710 <__pf_print>
  4009c8:	02202021 	move	a0,s1
  4009cc:	0c1003f0 	jal	400fc0 <strlen>
  4009d0:	02602021 	move	a0,s3
  4009d4:	00403021 	move	a2,v0
  4009d8:	02202021 	move	a0,s1
  4009dc:	0c1001c4 	jal	400710 <__pf_print>
  4009e0:	02602821 	move	a1,s3
  4009e4:	0c1003f0 	jal	400fc0 <strlen>
  4009e8:	02a02021 	move	a0,s5
  4009ec:	08100265 	j	400994 <__pf_printstuff+0x194>
  4009f0:	02202021 	move	a0,s1
  4009f4:	0c1001e5 	jal	400794 <__pf_fill>
  4009f8:	02002821 	move	a1,s0
  4009fc:	08100233 	j	4008cc <__pf_printstuff+0xcc>
  400a00:	00000000 	nop

00400a04 <__vprintf>:
  400a04:	27bdff68 	addiu	sp,sp,-152
  400a08:	afbe0090 	sw	s8,144(sp)
  400a0c:	27be0030 	addiu	s8,sp,48
  400a10:	afb10074 	sw	s1,116(sp)
  400a14:	afa40030 	sw	a0,48(sp)
  400a18:	00c08821 	move	s1,a2
  400a1c:	03c02021 	move	a0,s8
  400a20:	afb00070 	sw	s0,112(sp)
  400a24:	afbf0094 	sw	ra,148(sp)
  400a28:	afb7008c 	sw	s7,140(sp)
  400a2c:	afb60088 	sw	s6,136(sp)
  400a30:	afb50084 	sw	s5,132(sp)
  400a34:	afb40080 	sw	s4,128(sp)
  400a38:	afb3007c 	sw	s3,124(sp)
  400a3c:	afb20078 	sw	s2,120(sp)
  400a40:	afa50034 	sw	a1,52(sp)
  400a44:	afa70038 	sw	a3,56(sp)
  400a48:	0c1001d6 	jal	400758 <__pf_endfield>
  400a4c:	afa0003c 	sw	zero,60(sp)
  400a50:	82300000 	lb	s0,0(s1)
  400a54:	00000000 	nop
  400a58:	12000017 	beqz	s0,400ab8 <__vprintf+0xb4>
  400a5c:	0220a021 	move	s4,s1
  400a60:	081002a2 	j	400a88 <__vprintf+0x84>
  400a64:	00000000 	nop
  400a68:	27a50010 	addiu	a1,sp,16
  400a6c:	24060001 	li	a2,1
  400a70:	0c1001c4 	jal	400710 <__pf_print>
  400a74:	a3b00010 	sb	s0,16(sp)
  400a78:	82900001 	lb	s0,1(s4)
  400a7c:	00000000 	nop
  400a80:	1200000d 	beqz	s0,400ab8 <__vprintf+0xb4>
  400a84:	26940001 	addiu	s4,s4,1
  400a88:	8fa20040 	lw	v0,64(sp)
  400a8c:	00000000 	nop
  400a90:	14400016 	bnez	v0,400aec <__vprintf+0xe8>
  400a94:	24020025 	li	v0,37
  400a98:	1602fff3 	bne	s0,v0,400a68 <__vprintf+0x64>
  400a9c:	03c02021 	move	a0,s8
  400aa0:	24020001 	li	v0,1
  400aa4:	afa20040 	sw	v0,64(sp)
  400aa8:	82900001 	lb	s0,1(s4)
  400aac:	00000000 	nop
  400ab0:	1600fff5 	bnez	s0,400a88 <__vprintf+0x84>
  400ab4:	26940001 	addiu	s4,s4,1
  400ab8:	8fa2003c 	lw	v0,60(sp)
  400abc:	8fbf0094 	lw	ra,148(sp)
  400ac0:	8fbe0090 	lw	s8,144(sp)
  400ac4:	8fb7008c 	lw	s7,140(sp)
  400ac8:	8fb60088 	lw	s6,136(sp)
  400acc:	8fb50084 	lw	s5,132(sp)
  400ad0:	8fb40080 	lw	s4,128(sp)
  400ad4:	8fb3007c 	lw	s3,124(sp)
  400ad8:	8fb20078 	lw	s2,120(sp)
  400adc:	8fb10074 	lw	s1,116(sp)
  400ae0:	8fb00070 	lw	s0,112(sp)
  400ae4:	03e00008 	jr	ra
  400ae8:	27bd0098 	addiu	sp,sp,152
  400aec:	3c040040 	lui	a0,0x40
  400af0:	2484197c 	addiu	a0,a0,6524
  400af4:	0c1003cc 	jal	400f30 <strchr>
  400af8:	02002821 	move	a1,s0
  400afc:	10400031 	beqz	v0,400bc4 <__vprintf+0x1c0>
  400b00:	24020030 	li	v0,48
  400b04:	1202001d 	beq	s0,v0,400b7c <__vprintf+0x178>
  400b08:	2a020031 	slti	v0,s0,49
  400b0c:	10400013 	beqz	v0,400b5c <__vprintf+0x158>
  400b10:	2402006c 	li	v0,108
  400b14:	24020023 	li	v0,35
  400b18:	12020027 	beq	s0,v0,400bb8 <__vprintf+0x1b4>
  400b1c:	2402002d 	li	v0,45
  400b20:	1202004a 	beq	s0,v0,400c4c <__vprintf+0x248>
  400b24:	24020001 	li	v0,1
  400b28:	2602ffcf 	addiu	v0,s0,-49
  400b2c:	2c420009 	sltiu	v0,v0,9
  400b30:	1040001a 	beqz	v0,400b9c <__vprintf+0x198>
  400b34:	3c040040 	lui	a0,0x40
  400b38:	8fa20054 	lw	v0,84(sp)
  400b3c:	00000000 	nop
  400b40:	000218c0 	sll	v1,v0,0x3
  400b44:	00021040 	sll	v0,v0,0x1
  400b48:	00431021 	addu	v0,v0,v1
  400b4c:	02021021 	addu	v0,s0,v0
  400b50:	2442ffd0 	addiu	v0,v0,-48
  400b54:	0810029e 	j	400a78 <__vprintf+0x74>
  400b58:	afa20054 	sw	v0,84(sp)
  400b5c:	1602fff3 	bne	s0,v0,400b2c <__vprintf+0x128>
  400b60:	2602ffcf 	addiu	v0,s0,-49
  400b64:	8fa20044 	lw	v0,68(sp)
  400b68:	24030001 	li	v1,1
  400b6c:	10430039 	beq	v0,v1,400c54 <__vprintf+0x250>
  400b70:	24020002 	li	v0,2
  400b74:	0810029e 	j	400a78 <__vprintf+0x74>
  400b78:	afa30044 	sw	v1,68(sp)
  400b7c:	8fa20054 	lw	v0,84(sp)
  400b80:	00000000 	nop
  400b84:	1840008c 	blez	v0,400db8 <__vprintf+0x3b4>
  400b88:	000218c0 	sll	v1,v0,0x3
  400b8c:	00021040 	sll	v0,v0,0x1
  400b90:	00431021 	addu	v0,v0,v1
  400b94:	0810029e 	j	400a78 <__vprintf+0x74>
  400b98:	afa20054 	sw	v0,84(sp)
  400b9c:	3c060040 	lui	a2,0x40
  400ba0:	2484198c 	addiu	a0,a0,6540
  400ba4:	24c619b4 	addiu	a2,a2,6580
  400ba8:	0c100414 	jal	401050 <__bad_assert>
  400bac:	240500dc 	li	a1,220
  400bb0:	081002ce 	j	400b38 <__vprintf+0x134>
  400bb4:	00000000 	nop
  400bb8:	24020001 	li	v0,1
  400bbc:	0810029e 	j	400a78 <__vprintf+0x74>
  400bc0:	afa20068 	sw	v0,104(sp)
  400bc4:	3c040040 	lui	a0,0x40
  400bc8:	248419c8 	addiu	a0,a0,6600
  400bcc:	0c1003cc 	jal	400f30 <strchr>
  400bd0:	02002821 	move	a1,s0
  400bd4:	10400091 	beqz	v0,400e1c <__vprintf+0x418>
  400bd8:	24020070 	li	v0,112
  400bdc:	1202001f 	beq	s0,v0,400c5c <__vprintf+0x258>
  400be0:	24020064 	li	v0,100
  400be4:	1202009e 	beq	s0,v0,400e60 <__vprintf+0x45c>
  400be8:	24020001 	li	v0,1
  400bec:	8fa30044 	lw	v1,68(sp)
  400bf0:	00000000 	nop
  400bf4:	10620003 	beq	v1,v0,400c04 <__vprintf+0x200>
  400bf8:	00000000 	nop
  400bfc:	14600074 	bnez	v1,400dd0 <__vprintf+0x3cc>
  400c00:	24020002 	li	v0,2
  400c04:	8fa20038 	lw	v0,56(sp)
  400c08:	afa00048 	sw	zero,72(sp)
  400c0c:	8c430000 	lw	v1,0(v0)
  400c10:	24420004 	addiu	v0,v0,4
  400c14:	afa20038 	sw	v0,56(sp)
  400c18:	afa3004c 	sw	v1,76(sp)
  400c1c:	2602ff9c 	addiu	v0,s0,-100
  400c20:	304200ff 	andi	v0,v0,0xff
  400c24:	2c430015 	sltiu	v1,v0,21
  400c28:	10600015 	beqz	v1,400c80 <__vprintf+0x27c>
  400c2c:	3c030040 	lui	v1,0x40
  400c30:	00021080 	sll	v0,v0,0x2
  400c34:	24631770 	addiu	v1,v1,6000
  400c38:	00431021 	addu	v0,v0,v1
  400c3c:	8c440000 	lw	a0,0(v0)
  400c40:	00000000 	nop
  400c44:	00800008 	jr	a0
  400c48:	00000000 	nop
  400c4c:	0810029e 	j	400a78 <__vprintf+0x74>
  400c50:	afa20058 	sw	v0,88(sp)
  400c54:	0810029e 	j	400a78 <__vprintf+0x74>
  400c58:	afa20044 	sw	v0,68(sp)
  400c5c:	8fa20038 	lw	v0,56(sp)
  400c60:	afa00048 	sw	zero,72(sp)
  400c64:	24430004 	addiu	v1,v0,4
  400c68:	afa30038 	sw	v1,56(sp)
  400c6c:	8c440000 	lw	a0,0(v0)
  400c70:	00000000 	nop
  400c74:	afa4004c 	sw	a0,76(sp)
  400c78:	24020010 	li	v0,16
  400c7c:	afa20060 	sw	v0,96(sp)
  400c80:	8fa20068 	lw	v0,104(sp)
  400c84:	00000000 	nop
  400c88:	1440004d 	bnez	v0,400dc0 <__vprintf+0x3bc>
  400c8c:	24020001 	li	v0,1
  400c90:	24020070 	li	v0,112
  400c94:	1202004a 	beq	s0,v0,400dc0 <__vprintf+0x3bc>
  400c98:	24020001 	li	v0,1
  400c9c:	8fb60060 	lw	s6,96(sp)
  400ca0:	3c020040 	lui	v0,0x40
  400ca4:	8fb1004c 	lw	s1,76(sp)
  400ca8:	8fb00048 	lw	s0,72(sp)
  400cac:	a3a00029 	sb	zero,41(sp)
  400cb0:	245719d0 	addiu	s7,v0,6608
  400cb4:	27b50028 	addiu	s5,sp,40
  400cb8:	02c09821 	move	s3,s6
  400cbc:	001697c3 	sra	s2,s6,0x1f
  400cc0:	02202821 	move	a1,s1
  400cc4:	02002021 	move	a0,s0
  400cc8:	02603821 	move	a3,s3
  400ccc:	0c100408 	jal	401020 <__umoddi3>
  400cd0:	02403021 	move	a2,s2
  400cd4:	02e31821 	addu	v1,s7,v1
  400cd8:	90620000 	lbu	v0,0(v1)
  400cdc:	02202821 	move	a1,s1
  400ce0:	02002021 	move	a0,s0
  400ce4:	02603821 	move	a3,s3
  400ce8:	02403021 	move	a2,s2
  400cec:	0c100400 	jal	401000 <__udivdi3>
  400cf0:	a2a20000 	sb	v0,0(s5)
  400cf4:	00408021 	move	s0,v0
  400cf8:	02031025 	or	v0,s0,v1
  400cfc:	00608821 	move	s1,v1
  400d00:	1440ffef 	bnez	v0,400cc0 <__vprintf+0x2bc>
  400d04:	26b5ffff 	addiu	s5,s5,-1
  400d08:	8fa20064 	lw	v0,100(sp)
  400d0c:	00000000 	nop
  400d10:	10400006 	beqz	v0,400d2c <__vprintf+0x328>
  400d14:	3c020040 	lui	v0,0x40
  400d18:	24020010 	li	v0,16
  400d1c:	12c2005e 	beq	s6,v0,400e98 <__vprintf+0x494>
  400d20:	24020008 	li	v0,8
  400d24:	12c20037 	beq	s6,v0,400e04 <__vprintf+0x400>
  400d28:	3c020040 	lui	v0,0x40
  400d2c:	24461a98 	addiu	a2,v0,6808
  400d30:	8fa20050 	lw	v0,80(sp)
  400d34:	00000000 	nop
  400d38:	10400023 	beqz	v0,400dc8 <__vprintf+0x3c4>
  400d3c:	3c020040 	lui	v0,0x40
  400d40:	3c020040 	lui	v0,0x40
  400d44:	24451970 	addiu	a1,v0,6512
  400d48:	03c02021 	move	a0,s8
  400d4c:	0c100200 	jal	400800 <__pf_printstuff>
  400d50:	26a70001 	addiu	a3,s5,1
  400d54:	0c1001d6 	jal	400758 <__pf_endfield>
  400d58:	03c02021 	move	a0,s8
  400d5c:	0810029e 	j	400a78 <__vprintf+0x74>
  400d60:	00000000 	nop
  400d64:	8fa20038 	lw	v0,56(sp)
  400d68:	2403fff8 	li	v1,-8
  400d6c:	24420007 	addiu	v0,v0,7
  400d70:	00431024 	and	v0,v0,v1
  400d74:	8c470004 	lw	a3,4(v0)
  400d78:	8c460000 	lw	a2,0(v0)
  400d7c:	24420008 	addiu	v0,v0,8
  400d80:	afa20038 	sw	v0,56(sp)
  400d84:	04c10040 	bgez	a2,400e88 <__vprintf+0x484>
  400d88:	2402000a 	li	v0,10
  400d8c:	00071823 	negu	v1,a3
  400d90:	0003282b 	sltu	a1,zero,v1
  400d94:	00061023 	negu	v0,a2
  400d98:	00451023 	subu	v0,v0,a1
  400d9c:	2404ffff 	li	a0,-1
  400da0:	afa40050 	sw	a0,80(sp)
  400da4:	afa3004c 	sw	v1,76(sp)
  400da8:	afa20048 	sw	v0,72(sp)
  400dac:	2402000a 	li	v0,10
  400db0:	08100320 	j	400c80 <__vprintf+0x27c>
  400db4:	afa20060 	sw	v0,96(sp)
  400db8:	0810029e 	j	400a78 <__vprintf+0x74>
  400dbc:	afb0005c 	sw	s0,92(sp)
  400dc0:	08100327 	j	400c9c <__vprintf+0x298>
  400dc4:	afa20064 	sw	v0,100(sp)
  400dc8:	08100352 	j	400d48 <__vprintf+0x344>
  400dcc:	24451a98 	addiu	a1,v0,6808
  400dd0:	1462ff93 	bne	v1,v0,400c20 <__vprintf+0x21c>
  400dd4:	2602ff9c 	addiu	v0,s0,-100
  400dd8:	8fa20038 	lw	v0,56(sp)
  400ddc:	2403fff8 	li	v1,-8
  400de0:	24420007 	addiu	v0,v0,7
  400de4:	00431024 	and	v0,v0,v1
  400de8:	8c450004 	lw	a1,4(v0)
  400dec:	8c440000 	lw	a0,0(v0)
  400df0:	24420008 	addiu	v0,v0,8
  400df4:	afa20038 	sw	v0,56(sp)
  400df8:	afa5004c 	sw	a1,76(sp)
  400dfc:	08100307 	j	400c1c <__vprintf+0x218>
  400e00:	afa40048 	sw	a0,72(sp)
  400e04:	3c020040 	lui	v0,0x40
  400e08:	0810034c 	j	400d30 <__vprintf+0x32c>
  400e0c:	244619e8 	addiu	a2,v0,6632
  400e10:	24020008 	li	v0,8
  400e14:	08100320 	j	400c80 <__vprintf+0x27c>
  400e18:	afa20060 	sw	v0,96(sp)
  400e1c:	24020073 	li	v0,115
  400e20:	12020028 	beq	s0,v0,400ec4 <__vprintf+0x4c0>
  400e24:	24020063 	li	v0,99
  400e28:	12020037 	beq	s0,v0,400f08 <__vprintf+0x504>
  400e2c:	00000000 	nop
  400e30:	a3b00011 	sb	s0,17(sp)
  400e34:	3c050040 	lui	a1,0x40
  400e38:	24a51a98 	addiu	a1,a1,6808
  400e3c:	03c02021 	move	a0,s8
  400e40:	00a03021 	move	a2,a1
  400e44:	27a70011 	addiu	a3,sp,17
  400e48:	0c100200 	jal	400800 <__pf_printstuff>
  400e4c:	a3a00012 	sb	zero,18(sp)
  400e50:	0c1001d6 	jal	400758 <__pf_endfield>
  400e54:	03c02021 	move	a0,s8
  400e58:	0810029e 	j	400a78 <__vprintf+0x74>
  400e5c:	00000000 	nop
  400e60:	8fa30044 	lw	v1,68(sp)
  400e64:	00000000 	nop
  400e68:	1062000e 	beq	v1,v0,400ea4 <__vprintf+0x4a0>
  400e6c:	00000000 	nop
  400e70:	1060000c 	beqz	v1,400ea4 <__vprintf+0x4a0>
  400e74:	24020002 	li	v0,2
  400e78:	1062ffba 	beq	v1,v0,400d64 <__vprintf+0x360>
  400e7c:	00003821 	move	a3,zero
  400e80:	00003021 	move	a2,zero
  400e84:	2402000a 	li	v0,10
  400e88:	afa7004c 	sw	a3,76(sp)
  400e8c:	afa60048 	sw	a2,72(sp)
  400e90:	08100320 	j	400c80 <__vprintf+0x27c>
  400e94:	afa20060 	sw	v0,96(sp)
  400e98:	3c020040 	lui	v0,0x40
  400e9c:	0810034c 	j	400d30 <__vprintf+0x32c>
  400ea0:	244619e4 	addiu	a2,v0,6628
  400ea4:	8fa20038 	lw	v0,56(sp)
  400ea8:	00000000 	nop
  400eac:	8c430000 	lw	v1,0(v0)
  400eb0:	24420004 	addiu	v0,v0,4
  400eb4:	00603821 	move	a3,v1
  400eb8:	000337c3 	sra	a2,v1,0x1f
  400ebc:	08100361 	j	400d84 <__vprintf+0x380>
  400ec0:	afa20038 	sw	v0,56(sp)
  400ec4:	8fa30038 	lw	v1,56(sp)
  400ec8:	00000000 	nop
  400ecc:	8c670000 	lw	a3,0(v1)
  400ed0:	00000000 	nop
  400ed4:	10e00013 	beqz	a3,400f24 <__vprintf+0x520>
  400ed8:	3c020040 	lui	v0,0x40
  400edc:	3c050040 	lui	a1,0x40
  400ee0:	24a51a98 	addiu	a1,a1,6808
  400ee4:	24620004 	addiu	v0,v1,4
  400ee8:	03c02021 	move	a0,s8
  400eec:	00a03021 	move	a2,a1
  400ef0:	0c100200 	jal	400800 <__pf_printstuff>
  400ef4:	afa20038 	sw	v0,56(sp)
  400ef8:	0c1001d6 	jal	400758 <__pf_endfield>
  400efc:	03c02021 	move	a0,s8
  400f00:	0810029e 	j	400a78 <__vprintf+0x74>
  400f04:	00000000 	nop
  400f08:	8fa20038 	lw	v0,56(sp)
  400f0c:	00000000 	nop
  400f10:	8c430000 	lw	v1,0(v0)
  400f14:	24420004 	addiu	v0,v0,4
  400f18:	afa20038 	sw	v0,56(sp)
  400f1c:	0810038d 	j	400e34 <__vprintf+0x430>
  400f20:	a3a30011 	sb	v1,17(sp)
  400f24:	081003b7 	j	400edc <__vprintf+0x4d8>
  400f28:	24471974 	addiu	a3,v0,6516
  400f2c:	00000000 	nop

00400f30 <strchr>:
  400f30:	80830000 	lb	v1,0(a0)
  400f34:	00052e00 	sll	a1,a1,0x18
  400f38:	00801021 	move	v0,a0
  400f3c:	1060000c 	beqz	v1,400f70 <strchr+0x40>
  400f40:	00052e03 	sra	a1,a1,0x18
  400f44:	14a30006 	bne	a1,v1,400f60 <strchr+0x30>
  400f48:	24420001 	addiu	v0,v0,1
  400f4c:	03e00008 	jr	ra
  400f50:	2442ffff 	addiu	v0,v0,-1
  400f54:	10a3000c 	beq	a1,v1,400f88 <strchr+0x58>
  400f58:	00000000 	nop
  400f5c:	24420001 	addiu	v0,v0,1
  400f60:	80430000 	lb	v1,0(v0)
  400f64:	00000000 	nop
  400f68:	1460fffa 	bnez	v1,400f54 <strchr+0x24>
  400f6c:	00000000 	nop
  400f70:	14a00003 	bnez	a1,400f80 <strchr+0x50>
  400f74:	00000000 	nop
  400f78:	03e00008 	jr	ra
  400f7c:	00000000 	nop
  400f80:	03e00008 	jr	ra
  400f84:	00001021 	move	v0,zero
  400f88:	03e00008 	jr	ra
  400f8c:	00000000 	nop

00400f90 <strerror>:
  400f90:	3c020040 	lui	v0,0x40
  400f94:	00042880 	sll	a1,a0,0x2
  400f98:	244217d0 	addiu	v0,v0,6096
  400f9c:	3c030040 	lui	v1,0x40
  400fa0:	2c840041 	sltiu	a0,a0,65
  400fa4:	00a22821 	addu	a1,a1,v0
  400fa8:	10800002 	beqz	a0,400fb4 <strerror+0x24>
  400fac:	246219ec 	addiu	v0,v1,6636
  400fb0:	8ca20000 	lw	v0,0(a1)
  400fb4:	03e00008 	jr	ra
  400fb8:	00000000 	nop
  400fbc:	00000000 	nop

00400fc0 <strlen>:
  400fc0:	80820000 	lb	v0,0(a0)
  400fc4:	00000000 	nop
  400fc8:	1040000a 	beqz	v0,400ff4 <strlen+0x34>
  400fcc:	00002821 	move	a1,zero
  400fd0:	24a50001 	addiu	a1,a1,1
  400fd4:	00851021 	addu	v0,a0,a1
  400fd8:	80430000 	lb	v1,0(v0)
  400fdc:	00000000 	nop
  400fe0:	1460fffc 	bnez	v1,400fd4 <strlen+0x14>
  400fe4:	24a50001 	addiu	a1,a1,1
  400fe8:	24a5ffff 	addiu	a1,a1,-1
  400fec:	03e00008 	jr	ra
  400ff0:	00a01021 	move	v0,a1
  400ff4:	03e00008 	jr	ra
  400ff8:	00a01021 	move	v0,a1
  400ffc:	00000000 	nop

00401000 <__udivdi3>:
  401000:	27bdffe0 	addiu	sp,sp,-32
  401004:	afbf0018 	sw	ra,24(sp)
  401008:	0c10048f 	jal	40123c <__qdivrem>
  40100c:	afa00010 	sw	zero,16(sp)
  401010:	8fbf0018 	lw	ra,24(sp)
  401014:	00000000 	nop
  401018:	03e00008 	jr	ra
  40101c:	27bd0020 	addiu	sp,sp,32

00401020 <__umoddi3>:
  401020:	27bdffd8 	addiu	sp,sp,-40
  401024:	27a20018 	addiu	v0,sp,24
  401028:	afbf0020 	sw	ra,32(sp)
  40102c:	0c10048f 	jal	40123c <__qdivrem>
  401030:	afa20010 	sw	v0,16(sp)
  401034:	8fa3001c 	lw	v1,28(sp)
  401038:	8fa20018 	lw	v0,24(sp)
  40103c:	8fbf0020 	lw	ra,32(sp)
  401040:	00000000 	nop
  401044:	03e00008 	jr	ra
  401048:	27bd0028 	addiu	sp,sp,40
  40104c:	00000000 	nop

00401050 <__bad_assert>:
  401050:	27bdfee0 	addiu	sp,sp,-288
  401054:	00c03821 	move	a3,a2
  401058:	afb00118 	sw	s0,280(sp)
  40105c:	3c060040 	lui	a2,0x40
  401060:	27b00018 	addiu	s0,sp,24
  401064:	24c61ff0 	addiu	a2,a2,8176
  401068:	afa40010 	sw	a0,16(sp)
  40106c:	afa50014 	sw	a1,20(sp)
  401070:	02002021 	move	a0,s0
  401074:	afbf011c 	sw	ra,284(sp)
  401078:	0c100460 	jal	401180 <snprintf>
  40107c:	24050100 	li	a1,256
  401080:	0c1003f0 	jal	400fc0 <strlen>
  401084:	02002021 	move	a0,s0
  401088:	00403021 	move	a2,v0
  40108c:	02002821 	move	a1,s0
  401090:	0c1000cf 	jal	40033c <write>
  401094:	24040002 	li	a0,2
  401098:	0c10046c 	jal	4011b0 <abort>
  40109c:	00000000 	nop

004010a0 <__snprintf_send>:
  4010a0:	10c00012 	beqz	a2,4010ec <__snprintf_send+0x4c>
  4010a4:	00004021 	move	t0,zero
  4010a8:	8c870008 	lw	a3,8(a0)
  4010ac:	8c820004 	lw	v0,4(a0)
  4010b0:	00a81821 	addu	v1,a1,t0
  4010b4:	00e2102b 	sltu	v0,a3,v0
  4010b8:	1040000a 	beqz	v0,4010e4 <__snprintf_send+0x44>
  4010bc:	25080001 	addiu	t0,t0,1
  4010c0:	8c820000 	lw	v0,0(a0)
  4010c4:	90630000 	lbu	v1,0(v1)
  4010c8:	00471021 	addu	v0,v0,a3
  4010cc:	a0430000 	sb	v1,0(v0)
  4010d0:	8c870008 	lw	a3,8(a0)
  4010d4:	00000000 	nop
  4010d8:	24e20001 	addiu	v0,a3,1
  4010dc:	00403821 	move	a3,v0
  4010e0:	ac820008 	sw	v0,8(a0)
  4010e4:	14c8fff1 	bne	a2,t0,4010ac <__snprintf_send+0xc>
  4010e8:	00000000 	nop
  4010ec:	03e00008 	jr	ra
  4010f0:	00000000 	nop

004010f4 <vsnprintf>:
  4010f4:	27bdffd8 	addiu	sp,sp,-40
  4010f8:	afb00020 	sw	s0,32(sp)
  4010fc:	00a01021 	move	v0,a1
  401100:	00808021 	move	s0,a0
  401104:	3c040040 	lui	a0,0x40
  401108:	24a3ffff 	addiu	v1,a1,-1
  40110c:	afbf0024 	sw	ra,36(sp)
  401110:	248410a0 	addiu	a0,a0,4256
  401114:	27a50010 	addiu	a1,sp,16
  401118:	1440000c 	bnez	v0,40114c <vsnprintf+0x58>
  40111c:	afb00010 	sw	s0,16(sp)
  401120:	3c040040 	lui	a0,0x40
  401124:	248410a0 	addiu	a0,a0,4256
  401128:	afa00014 	sw	zero,20(sp)
  40112c:	0c100281 	jal	400a04 <__vprintf>
  401130:	afa00018 	sw	zero,24(sp)
  401134:	00401821 	move	v1,v0
  401138:	8fbf0024 	lw	ra,36(sp)
  40113c:	8fb00020 	lw	s0,32(sp)
  401140:	00601021 	move	v0,v1
  401144:	03e00008 	jr	ra
  401148:	27bd0028 	addiu	sp,sp,40
  40114c:	afa30014 	sw	v1,20(sp)
  401150:	0c100281 	jal	400a04 <__vprintf>
  401154:	afa00018 	sw	zero,24(sp)
  401158:	00401821 	move	v1,v0
  40115c:	8fa20018 	lw	v0,24(sp)
  401160:	00000000 	nop
  401164:	02021021 	addu	v0,s0,v0
  401168:	a0400000 	sb	zero,0(v0)
  40116c:	8fbf0024 	lw	ra,36(sp)
  401170:	8fb00020 	lw	s0,32(sp)
  401174:	00601021 	move	v0,v1
  401178:	03e00008 	jr	ra
  40117c:	27bd0028 	addiu	sp,sp,40

00401180 <snprintf>:
  401180:	27bdffe0 	addiu	sp,sp,-32
  401184:	27a2002c 	addiu	v0,sp,44
  401188:	afa7002c 	sw	a3,44(sp)
  40118c:	00403821 	move	a3,v0
  401190:	afbf0018 	sw	ra,24(sp)
  401194:	0c10043d 	jal	4010f4 <vsnprintf>
  401198:	afa20010 	sw	v0,16(sp)
  40119c:	8fbf0018 	lw	ra,24(sp)
  4011a0:	00000000 	nop
  4011a4:	03e00008 	jr	ra
  4011a8:	27bd0020 	addiu	sp,sp,32
  4011ac:	00000000 	nop

004011b0 <abort>:
  4011b0:	27bdffe8 	addiu	sp,sp,-24
  4011b4:	afbf0010 	sw	ra,16(sp)
  4011b8:	0c10008f 	jal	40023c <_exit>
  4011bc:	240400ff 	li	a0,255

004011c0 <shl>:
  4011c0:	18a00016 	blez	a1,40121c <shl+0x5c>
  4011c4:	24020010 	li	v0,16
  4011c8:	00464823 	subu	t1,v0,a2
  4011cc:	00803821 	move	a3,a0
  4011d0:	00004021 	move	t0,zero
  4011d4:	8ce20000 	lw	v0,0(a3)
  4011d8:	8ce30004 	lw	v1,4(a3)
  4011dc:	00c21004 	sllv	v0,v0,a2
  4011e0:	3042ffff 	andi	v0,v0,0xffff
  4011e4:	01231806 	srlv	v1,v1,t1
  4011e8:	00431025 	or	v0,v0,v1
  4011ec:	25080001 	addiu	t0,t0,1
  4011f0:	ace20000 	sw	v0,0(a3)
  4011f4:	14a8fff7 	bne	a1,t0,4011d4 <shl+0x14>
  4011f8:	24e70004 	addiu	a3,a3,4
  4011fc:	00051880 	sll	v1,a1,0x2
  401200:	00831821 	addu	v1,a0,v1
  401204:	8c620000 	lw	v0,0(v1)
  401208:	00000000 	nop
  40120c:	00c21004 	sllv	v0,v0,a2
  401210:	3042ffff 	andi	v0,v0,0xffff
  401214:	03e00008 	jr	ra
  401218:	ac620000 	sw	v0,0(v1)
  40121c:	00001821 	move	v1,zero
  401220:	00831821 	addu	v1,a0,v1
  401224:	8c620000 	lw	v0,0(v1)
  401228:	00000000 	nop
  40122c:	00c21004 	sllv	v0,v0,a2
  401230:	3042ffff 	andi	v0,v0,0xffff
  401234:	03e00008 	jr	ra
  401238:	ac620000 	sw	v0,0(v1)

0040123c <__qdivrem>:
  40123c:	27bdff80 	addiu	sp,sp,-128
  401240:	00c71025 	or	v0,a2,a3
  401244:	afb20060 	sw	s2,96(sp)
  401248:	afbf007c 	sw	ra,124(sp)
  40124c:	afbe0078 	sw	s8,120(sp)
  401250:	afb70074 	sw	s7,116(sp)
  401254:	afb60070 	sw	s6,112(sp)
  401258:	afb5006c 	sw	s5,108(sp)
  40125c:	afb40068 	sw	s4,104(sp)
  401260:	afb30064 	sw	s3,100(sp)
  401264:	afb1005c 	sw	s1,92(sp)
  401268:	afb00058 	sw	s0,88(sp)
  40126c:	00a04821 	move	t1,a1
  401270:	8fb20090 	lw	s2,144(sp)
  401274:	14400018 	bnez	v0,4012d8 <__qdivrem+0x9c>
  401278:	00804021 	move	t0,a0
  40127c:	3c031000 	lui	v1,0x1000
  401280:	8c640010 	lw	a0,16(v1)
  401284:	24020001 	li	v0,1
  401288:	14800002 	bnez	a0,401294 <__qdivrem+0x58>
  40128c:	0044001b 	divu	zero,v0,a0
  401290:	0007000d 	break	0x7
  401294:	00001012 	mflo	v0
  401298:	12400003 	beqz	s2,4012a8 <__qdivrem+0x6c>
  40129c:	00401821 	move	v1,v0
  4012a0:	ae450004 	sw	a1,4(s2)
  4012a4:	ae480000 	sw	t0,0(s2)
  4012a8:	8fbf007c 	lw	ra,124(sp)
  4012ac:	8fbe0078 	lw	s8,120(sp)
  4012b0:	8fb70074 	lw	s7,116(sp)
  4012b4:	8fb60070 	lw	s6,112(sp)
  4012b8:	8fb5006c 	lw	s5,108(sp)
  4012bc:	8fb40068 	lw	s4,104(sp)
  4012c0:	8fb30064 	lw	s3,100(sp)
  4012c4:	8fb20060 	lw	s2,96(sp)
  4012c8:	8fb1005c 	lw	s1,92(sp)
  4012cc:	8fb00058 	lw	s0,88(sp)
  4012d0:	03e00008 	jr	ra
  4012d4:	27bd0080 	addiu	sp,sp,128
  4012d8:	0086102b 	sltu	v0,a0,a2
  4012dc:	10400008 	beqz	v0,401300 <__qdivrem+0xc4>
  4012e0:	00000000 	nop
  4012e4:	1240010c 	beqz	s2,401718 <__qdivrem+0x4dc>
  4012e8:	00000000 	nop
  4012ec:	00001821 	move	v1,zero
  4012f0:	00001021 	move	v0,zero
  4012f4:	ae490004 	sw	t1,4(s2)
  4012f8:	081004aa 	j	4012a8 <__qdivrem+0x6c>
  4012fc:	ae480000 	sw	t0,0(s2)
  401300:	10860046 	beq	a0,a2,40141c <__qdivrem+0x1e0>
  401304:	00a7102b 	sltu	v0,a1,a3
  401308:	00e08821 	move	s1,a3
  40130c:	01001821 	move	v1,t0
  401310:	00c08021 	move	s0,a2
  401314:	30c7ffff 	andi	a3,a2,0xffff
  401318:	3108ffff 	andi	t0,t0,0xffff
  40131c:	312affff 	andi	t2,t1,0xffff
  401320:	3226ffff 	andi	a2,s1,0xffff
  401324:	00031c02 	srl	v1,v1,0x10
  401328:	00092c02 	srl	a1,t1,0x10
  40132c:	00101402 	srl	v0,s0,0x10
  401330:	00112402 	srl	a0,s1,0x10
  401334:	afa00010 	sw	zero,16(sp)
  401338:	afa30014 	sw	v1,20(sp)
  40133c:	afa80018 	sw	t0,24(sp)
  401340:	afa5001c 	sw	a1,28(sp)
  401344:	afaa0020 	sw	t2,32(sp)
  401348:	afa20028 	sw	v0,40(sp)
  40134c:	afa7002c 	sw	a3,44(sp)
  401350:	afa40030 	sw	a0,48(sp)
  401354:	144000f6 	bnez	v0,401730 <__qdivrem+0x4f4>
  401358:	afa60034 	sw	a2,52(sp)
  40135c:	14e00033 	bnez	a3,40142c <__qdivrem+0x1f0>
  401360:	27a20028 	addiu	v0,sp,40
  401364:	148000f7 	bnez	a0,401744 <__qdivrem+0x508>
  401368:	27a2002c 	addiu	v0,sp,44
  40136c:	14c00002 	bnez	a2,401378 <__qdivrem+0x13c>
  401370:	0066001b 	divu	zero,v1,a2
  401374:	0007000d 	break	0x7
  401378:	00001010 	mfhi	v0
  40137c:	00021400 	sll	v0,v0,0x10
  401380:	00481025 	or	v0,v0,t0
  401384:	00004812 	mflo	t1
	...
  401390:	14c00002 	bnez	a2,40139c <__qdivrem+0x160>
  401394:	0046001b 	divu	zero,v0,a2
  401398:	0007000d 	break	0x7
  40139c:	00001810 	mfhi	v1
  4013a0:	00031c00 	sll	v1,v1,0x10
  4013a4:	00651825 	or	v1,v1,a1
  4013a8:	00003812 	mflo	a3
	...
  4013b4:	14c00002 	bnez	a2,4013c0 <__qdivrem+0x184>
  4013b8:	0066001b 	divu	zero,v1,a2
  4013bc:	0007000d 	break	0x7
  4013c0:	00001010 	mfhi	v0
  4013c4:	00021400 	sll	v0,v0,0x10
  4013c8:	00001812 	mflo	v1
  4013cc:	12400008 	beqz	s2,4013f0 <__qdivrem+0x1b4>
  4013d0:	01422025 	or	a0,t2,v0
  4013d4:	14c00002 	bnez	a2,4013e0 <__qdivrem+0x1a4>
  4013d8:	0086001b 	divu	zero,a0,a2
  4013dc:	0007000d 	break	0x7
  4013e0:	ae400000 	sw	zero,0(s2)
  4013e4:	00001010 	mfhi	v0
  4013e8:	ae420004 	sw	v0,4(s2)
  4013ec:	00000000 	nop
  4013f0:	14c00002 	bnez	a2,4013fc <__qdivrem+0x1c0>
  4013f4:	0086001b 	divu	zero,a0,a2
  4013f8:	0007000d 	break	0x7
  4013fc:	00091400 	sll	v0,t1,0x10
  401400:	00031c00 	sll	v1,v1,0x10
  401404:	00e28025 	or	s0,a3,v0
  401408:	02001021 	move	v0,s0
  40140c:	00002012 	mflo	a0
  401410:	00838825 	or	s1,a0,v1
  401414:	081004aa 	j	4012a8 <__qdivrem+0x6c>
  401418:	02201821 	move	v1,s1
  40141c:	1040ffbb 	beqz	v0,40130c <__qdivrem+0xd0>
  401420:	00e08821 	move	s1,a3
  401424:	081004b9 	j	4012e4 <__qdivrem+0xa8>
  401428:	00000000 	nop
  40142c:	afa20050 	sw	v0,80(sp)
  401430:	24170003 	li	s7,3
  401434:	27be002c 	addiu	s8,sp,44
  401438:	8fa30014 	lw	v1,20(sp)
  40143c:	24020004 	li	v0,4
  401440:	146000c4 	bnez	v1,401754 <__qdivrem+0x518>
  401444:	00579823 	subu	s3,v0,s7
  401448:	08100515 	j	401454 <__qdivrem+0x218>
  40144c:	27b40014 	addiu	s4,sp,20
  401450:	0060a021 	move	s4,v1
  401454:	8e820004 	lw	v0,4(s4)
  401458:	2673ffff 	addiu	s3,s3,-1
  40145c:	1040fffc 	beqz	v0,401450 <__qdivrem+0x214>
  401460:	26830004 	addiu	v1,s4,4
  401464:	24020004 	li	v0,4
  401468:	00532023 	subu	a0,v0,s3
  40146c:	2483ffff 	addiu	v1,a0,-1
  401470:	046000bc 	bltz	v1,401764 <__qdivrem+0x528>
  401474:	00001821 	move	v1,zero
  401478:	27a60038 	addiu	a2,sp,56
  40147c:	00042880 	sll	a1,a0,0x2
  401480:	00c51021 	addu	v0,a2,a1
  401484:	2442fffc 	addiu	v0,v0,-4
  401488:	24630001 	addiu	v1,v1,1
  40148c:	ac400000 	sw	zero,0(v0)
  401490:	1464fffd 	bne	v1,a0,401488 <__qdivrem+0x24c>
  401494:	2442fffc 	addiu	v0,v0,-4
  401498:	8fcb0000 	lw	t3,0(s8)
  40149c:	34028000 	li	v0,0x8000
  4014a0:	0162102b 	sltu	v0,t3,v0
  4014a4:	00c5b021 	addu	s6,a2,a1
  4014a8:	104000ac 	beqz	v0,40175c <__qdivrem+0x520>
  4014ac:	01601821 	move	v1,t3
  4014b0:	0000a821 	move	s5,zero
  4014b4:	34048000 	li	a0,0x8000
  4014b8:	00031840 	sll	v1,v1,0x1
  4014bc:	0064102b 	sltu	v0,v1,a0
  4014c0:	1440fffd 	bnez	v0,4014b8 <__qdivrem+0x27c>
  4014c4:	26b50001 	addiu	s5,s5,1
  4014c8:	1aa00009 	blez	s5,4014f0 <__qdivrem+0x2b4>
  4014cc:	02f32821 	addu	a1,s7,s3
  4014d0:	02a03021 	move	a2,s5
  4014d4:	0c100470 	jal	4011c0 <shl>
  4014d8:	02802021 	move	a0,s4
  4014dc:	03c02021 	move	a0,s8
  4014e0:	26e5ffff 	addiu	a1,s7,-1
  4014e4:	0c100470 	jal	4011c0 <shl>
  4014e8:	02a03021 	move	a2,s5
  4014ec:	8fcb0000 	lw	t3,0(s8)
  4014f0:	8fa20050 	lw	v0,80(sp)
  4014f4:	00177080 	sll	t6,s7,0x2
  4014f8:	8c580008 	lw	t8,8(v0)
  4014fc:	02c06821 	move	t5,s6
  401500:	02804821 	move	t1,s4
  401504:	028e6021 	addu	t4,s4,t6
  401508:	00007821 	move	t7,zero
  40150c:	3416ffff 	li	s6,0xffff
  401510:	8d240000 	lw	a0,0(t1)
  401514:	8d230004 	lw	v1,4(t1)
  401518:	8d260008 	lw	a2,8(t1)
  40151c:	11640081 	beq	t3,a0,401724 <__qdivrem+0x4e8>
  401520:	00041400 	sll	v0,a0,0x10
  401524:	00621025 	or	v0,v1,v0
  401528:	15600002 	bnez	t3,401534 <__qdivrem+0x2f8>
  40152c:	004b001b 	divu	zero,v0,t3
  401530:	0007000d 	break	0x7
  401534:	00002810 	mfhi	a1
  401538:	00003812 	mflo	a3
	...
  401544:	00f80018 	mult	a3,t8
  401548:	00051400 	sll	v0,a1,0x10
  40154c:	00c21025 	or	v0,a2,v0
  401550:	00001812 	mflo	v1
  401554:	0043182b 	sltu	v1,v0,v1
  401558:	10600006 	beqz	v1,401574 <__qdivrem+0x338>
  40155c:	00000000 	nop
  401560:	24e7ffff 	addiu	a3,a3,-1
  401564:	00ab2821 	addu	a1,a1,t3
  401568:	02c5102b 	sltu	v0,s6,a1
  40156c:	1040fff6 	beqz	v0,401548 <__qdivrem+0x30c>
  401570:	00f80018 	mult	a3,t8
  401574:	1ae00017 	blez	s7,4015d4 <__qdivrem+0x398>
  401578:	00004021 	move	t0,zero
  40157c:	8fa20050 	lw	v0,80(sp)
  401580:	01802021 	move	a0,t4
  401584:	004e3021 	addu	a2,v0,t6
  401588:	02e02821 	move	a1,s7
  40158c:	3c0a0001 	lui	t2,0x1
  401590:	8cc20000 	lw	v0,0(a2)
  401594:	8c830000 	lw	v1,0(a0)
  401598:	00e20018 	mult	a3,v0
  40159c:	24a5ffff 	addiu	a1,a1,-1
  4015a0:	24c6fffc 	addiu	a2,a2,-4
  4015a4:	00001012 	mflo	v0
  4015a8:	00621823 	subu	v1,v1,v0
  4015ac:	00681823 	subu	v1,v1,t0
  4015b0:	00031402 	srl	v0,v1,0x10
  4015b4:	01421023 	subu	v0,t2,v0
  4015b8:	3063ffff 	andi	v1,v1,0xffff
  4015bc:	ac830000 	sw	v1,0(a0)
  4015c0:	3048ffff 	andi	t0,v0,0xffff
  4015c4:	14a0fff2 	bnez	a1,401590 <__qdivrem+0x354>
  4015c8:	2484fffc 	addiu	a0,a0,-4
  4015cc:	8d240000 	lw	a0,0(t1)
  4015d0:	00000000 	nop
  4015d4:	00881023 	subu	v0,a0,t0
  4015d8:	3044ffff 	andi	a0,v0,0xffff
  4015dc:	00021c02 	srl	v1,v0,0x10
  4015e0:	10600018 	beqz	v1,401644 <__qdivrem+0x408>
  4015e4:	ad240000 	sw	a0,0(t1)
  4015e8:	1ae00012 	blez	s7,401634 <__qdivrem+0x3f8>
  4015ec:	00004021 	move	t0,zero
  4015f0:	8fa20050 	lw	v0,80(sp)
  4015f4:	01802021 	move	a0,t4
  4015f8:	004e3021 	addu	a2,v0,t6
  4015fc:	02e02821 	move	a1,s7
  401600:	8c820000 	lw	v0,0(a0)
  401604:	8cc30000 	lw	v1,0(a2)
  401608:	01021021 	addu	v0,t0,v0
  40160c:	00431021 	addu	v0,v0,v1
  401610:	3043ffff 	andi	v1,v0,0xffff
  401614:	24a5ffff 	addiu	a1,a1,-1
  401618:	ac830000 	sw	v1,0(a0)
  40161c:	00024402 	srl	t0,v0,0x10
  401620:	2484fffc 	addiu	a0,a0,-4
  401624:	14a0fff6 	bnez	a1,401600 <__qdivrem+0x3c4>
  401628:	24c6fffc 	addiu	a2,a2,-4
  40162c:	8d240000 	lw	a0,0(t1)
  401630:	00000000 	nop
  401634:	01041021 	addu	v0,t0,a0
  401638:	3042ffff 	andi	v0,v0,0xffff
  40163c:	ad220000 	sw	v0,0(t1)
  401640:	24e7ffff 	addiu	a3,a3,-1
  401644:	25ef0001 	addiu	t7,t7,1
  401648:	026f102a 	slt	v0,s3,t7
  40164c:	ada70000 	sw	a3,0(t5)
  401650:	25290004 	addiu	t1,t1,4
  401654:	25ad0004 	addiu	t5,t5,4
  401658:	1040ffad 	beqz	v0,401510 <__qdivrem+0x2d4>
  40165c:	258c0004 	addiu	t4,t4,4
  401660:	12400022 	beqz	s2,4016ec <__qdivrem+0x4b0>
  401664:	00000000 	nop
  401668:	12a00016 	beqz	s5,4016c4 <__qdivrem+0x488>
  40166c:	02f32821 	addu	a1,s7,s3
  401670:	0265102a 	slt	v0,s3,a1
  401674:	10400011 	beqz	v0,4016bc <__qdivrem+0x480>
  401678:	00051080 	sll	v0,a1,0x2
  40167c:	00051880 	sll	v1,a1,0x2
  401680:	24020010 	li	v0,16
  401684:	00553823 	subu	a3,v0,s5
  401688:	02833021 	addu	a2,s4,v1
  40168c:	8cc2fffc 	lw	v0,-4(a2)
  401690:	8cc30000 	lw	v1,0(a2)
  401694:	00e21004 	sllv	v0,v0,a3
  401698:	02a31806 	srlv	v1,v1,s5
  40169c:	3042ffff 	andi	v0,v0,0xffff
  4016a0:	24a5ffff 	addiu	a1,a1,-1
  4016a4:	00621825 	or	v1,v1,v0
  4016a8:	0265202a 	slt	a0,s3,a1
  4016ac:	acc30000 	sw	v1,0(a2)
  4016b0:	1480fff6 	bnez	a0,40168c <__qdivrem+0x450>
  4016b4:	24c6fffc 	addiu	a2,a2,-4
  4016b8:	00051080 	sll	v0,a1,0x2
  4016bc:	00541021 	addu	v0,v0,s4
  4016c0:	ac400000 	sw	zero,0(v0)
  4016c4:	8fa20014 	lw	v0,20(sp)
  4016c8:	8fa40018 	lw	a0,24(sp)
  4016cc:	00021400 	sll	v0,v0,0x10
  4016d0:	8fa3001c 	lw	v1,28(sp)
  4016d4:	00448025 	or	s0,v0,a0
  4016d8:	8fa20020 	lw	v0,32(sp)
  4016dc:	00031c00 	sll	v1,v1,0x10
  4016e0:	00628825 	or	s1,v1,v0
  4016e4:	ae510004 	sw	s1,4(s2)
  4016e8:	ae500000 	sw	s0,0(s2)
  4016ec:	8fa2003c 	lw	v0,60(sp)
  4016f0:	8fa40040 	lw	a0,64(sp)
  4016f4:	00021400 	sll	v0,v0,0x10
  4016f8:	8fa30044 	lw	v1,68(sp)
  4016fc:	00448025 	or	s0,v0,a0
  401700:	8fa20048 	lw	v0,72(sp)
  401704:	00031c00 	sll	v1,v1,0x10
  401708:	00628825 	or	s1,v1,v0
  40170c:	02201821 	move	v1,s1
  401710:	081004aa 	j	4012a8 <__qdivrem+0x6c>
  401714:	02001021 	move	v0,s0
  401718:	00001821 	move	v1,zero
  40171c:	081004aa 	j	4012a8 <__qdivrem+0x6c>
  401720:	00001021 	move	v0,zero
  401724:	00602821 	move	a1,v1
  401728:	08100559 	j	401564 <__qdivrem+0x328>
  40172c:	3407ffff 	li	a3,0xffff
  401730:	27a20024 	addiu	v0,sp,36
  401734:	24170004 	li	s7,4
  401738:	27be0028 	addiu	s8,sp,40
  40173c:	0810050e 	j	401438 <__qdivrem+0x1fc>
  401740:	afa20050 	sw	v0,80(sp)
  401744:	24170002 	li	s7,2
  401748:	27be0030 	addiu	s8,sp,48
  40174c:	0810050e 	j	401438 <__qdivrem+0x1fc>
  401750:	afa20050 	sw	v0,80(sp)
  401754:	08100519 	j	401464 <__qdivrem+0x228>
  401758:	27b40010 	addiu	s4,sp,16
  40175c:	0810053c 	j	4014f0 <__qdivrem+0x2b4>
  401760:	0000a821 	move	s5,zero
  401764:	00042880 	sll	a1,a0,0x2
  401768:	08100526 	j	401498 <__qdivrem+0x25c>
  40176c:	27a60038 	addiu	a2,sp,56
