
../../../build/user/my-testbin/getpid/getpid:     file format elf32-tradbigmips

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
  400028:	0c100069 	jal	4001a4 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c10007f 	jal	4001fc <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <main>:
  400050:	27bdffe8 	addiu	sp,sp,-24
  400054:	afbf0010 	sw	ra,16(sp)
  400058:	0c100083 	jal	40020c <getpid>
  40005c:	00000000 	nop
  400060:	3c040040 	lui	a0,0x40
  400064:	24841530 	addiu	a0,a0,5424
  400068:	0c10003b 	jal	4000ec <printf>
  40006c:	00402821 	move	a1,v0
  400070:	8fbf0010 	lw	ra,16(sp)
  400074:	00001021 	move	v0,zero
  400078:	03e00008 	jr	ra
  40007c:	27bd0018 	addiu	sp,sp,24

00400080 <vprintf>:
  400080:	00803021 	move	a2,a0
  400084:	3c040040 	lui	a0,0x40
  400088:	00a03821 	move	a3,a1
  40008c:	24840098 	addiu	a0,a0,152
  400090:	081001e5 	j	400794 <__vprintf>
  400094:	00002821 	move	a1,zero

00400098 <__printf_send>:
  400098:	27bdffe0 	addiu	sp,sp,-32
  40009c:	afb20018 	sw	s2,24(sp)
  4000a0:	afb10014 	sw	s1,20(sp)
  4000a4:	afbf001c 	sw	ra,28(sp)
  4000a8:	afb00010 	sw	s0,16(sp)
  4000ac:	00c09021 	move	s2,a2
  4000b0:	10c00008 	beqz	a2,4000d4 <__printf_send+0x3c>
  4000b4:	00a08821 	move	s1,a1
  4000b8:	00008021 	move	s0,zero
  4000bc:	02301021 	addu	v0,s1,s0
  4000c0:	80440000 	lb	a0,0(v0)
  4000c4:	0c100048 	jal	400120 <putchar>
  4000c8:	26100001 	addiu	s0,s0,1
  4000cc:	1650fffc 	bne	s2,s0,4000c0 <__printf_send+0x28>
  4000d0:	02301021 	addu	v0,s1,s0
  4000d4:	8fbf001c 	lw	ra,28(sp)
  4000d8:	8fb20018 	lw	s2,24(sp)
  4000dc:	8fb10014 	lw	s1,20(sp)
  4000e0:	8fb00010 	lw	s0,16(sp)
  4000e4:	03e00008 	jr	ra
  4000e8:	27bd0020 	addiu	sp,sp,32

004000ec <printf>:
  4000ec:	27bdffe0 	addiu	sp,sp,-32
  4000f0:	27a20024 	addiu	v0,sp,36
  4000f4:	afa50024 	sw	a1,36(sp)
  4000f8:	00402821 	move	a1,v0
  4000fc:	afbf0018 	sw	ra,24(sp)
  400100:	afa60028 	sw	a2,40(sp)
  400104:	afa7002c 	sw	a3,44(sp)
  400108:	0c100020 	jal	400080 <vprintf>
  40010c:	afa20010 	sw	v0,16(sp)
  400110:	8fbf0018 	lw	ra,24(sp)
  400114:	00000000 	nop
  400118:	03e00008 	jr	ra
  40011c:	27bd0020 	addiu	sp,sp,32

00400120 <putchar>:
  400120:	27bdffe0 	addiu	sp,sp,-32
  400124:	afb00018 	sw	s0,24(sp)
  400128:	27a50010 	addiu	a1,sp,16
  40012c:	00808021 	move	s0,a0
  400130:	24060001 	li	a2,1
  400134:	24040001 	li	a0,1
  400138:	afbf001c 	sw	ra,28(sp)
  40013c:	0c1000bf 	jal	4002fc <write>
  400140:	a3b00010 	sb	s0,16(sp)
  400144:	18400005 	blez	v0,40015c <putchar+0x3c>
  400148:	02001021 	move	v0,s0
  40014c:	8fbf001c 	lw	ra,28(sp)
  400150:	8fb00018 	lw	s0,24(sp)
  400154:	03e00008 	jr	ra
  400158:	27bd0020 	addiu	sp,sp,32
  40015c:	2410ffff 	li	s0,-1
  400160:	02001021 	move	v0,s0
  400164:	8fbf001c 	lw	ra,28(sp)
  400168:	8fb00018 	lw	s0,24(sp)
  40016c:	03e00008 	jr	ra
  400170:	27bd0020 	addiu	sp,sp,32
	...

00400180 <__exit_hack>:
  400180:	27bdfff8 	addiu	sp,sp,-8
  400184:	24020001 	li	v0,1
  400188:	afa20000 	sw	v0,0(sp)
  40018c:	8fa20000 	lw	v0,0(sp)
  400190:	00000000 	nop
  400194:	1440fffd 	bnez	v0,40018c <__exit_hack+0xc>
  400198:	00000000 	nop
  40019c:	03e00008 	jr	ra
  4001a0:	27bd0008 	addiu	sp,sp,8

004001a4 <exit>:
  4001a4:	27bdffe8 	addiu	sp,sp,-24
  4001a8:	afbf0010 	sw	ra,16(sp)
  4001ac:	0c10007f 	jal	4001fc <_exit>
  4001b0:	00000000 	nop
	...

004001c0 <__syscall>:
  4001c0:	0000000c 	syscall
  4001c4:	10e00005 	beqz	a3,4001dc <__syscall+0x1c>
  4001c8:	00000000 	nop
  4001cc:	3c011000 	lui	at,0x1000
  4001d0:	ac220010 	sw	v0,16(at)
  4001d4:	2403ffff 	li	v1,-1
  4001d8:	2402ffff 	li	v0,-1
  4001dc:	03e00008 	jr	ra
  4001e0:	00000000 	nop

004001e4 <fork>:
  4001e4:	08100070 	j	4001c0 <__syscall>
  4001e8:	24020000 	li	v0,0

004001ec <vfork>:
  4001ec:	08100070 	j	4001c0 <__syscall>
  4001f0:	24020001 	li	v0,1

004001f4 <execv>:
  4001f4:	08100070 	j	4001c0 <__syscall>
  4001f8:	24020002 	li	v0,2

004001fc <_exit>:
  4001fc:	08100070 	j	4001c0 <__syscall>
  400200:	24020003 	li	v0,3

00400204 <waitpid>:
  400204:	08100070 	j	4001c0 <__syscall>
  400208:	24020004 	li	v0,4

0040020c <getpid>:
  40020c:	08100070 	j	4001c0 <__syscall>
  400210:	24020005 	li	v0,5

00400214 <getppid>:
  400214:	08100070 	j	4001c0 <__syscall>
  400218:	24020006 	li	v0,6

0040021c <sbrk>:
  40021c:	08100070 	j	4001c0 <__syscall>
  400220:	24020007 	li	v0,7

00400224 <mmap>:
  400224:	08100070 	j	4001c0 <__syscall>
  400228:	24020008 	li	v0,8

0040022c <munmap>:
  40022c:	08100070 	j	4001c0 <__syscall>
  400230:	24020009 	li	v0,9

00400234 <mprotect>:
  400234:	08100070 	j	4001c0 <__syscall>
  400238:	2402000a 	li	v0,10

0040023c <umask>:
  40023c:	08100070 	j	4001c0 <__syscall>
  400240:	24020011 	li	v0,17

00400244 <issetugid>:
  400244:	08100070 	j	4001c0 <__syscall>
  400248:	24020012 	li	v0,18

0040024c <getresuid>:
  40024c:	08100070 	j	4001c0 <__syscall>
  400250:	24020013 	li	v0,19

00400254 <setresuid>:
  400254:	08100070 	j	4001c0 <__syscall>
  400258:	24020014 	li	v0,20

0040025c <getresgid>:
  40025c:	08100070 	j	4001c0 <__syscall>
  400260:	24020015 	li	v0,21

00400264 <setresgid>:
  400264:	08100070 	j	4001c0 <__syscall>
  400268:	24020016 	li	v0,22

0040026c <getgroups>:
  40026c:	08100070 	j	4001c0 <__syscall>
  400270:	24020017 	li	v0,23

00400274 <setgroups>:
  400274:	08100070 	j	4001c0 <__syscall>
  400278:	24020018 	li	v0,24

0040027c <__getlogin>:
  40027c:	08100070 	j	4001c0 <__syscall>
  400280:	24020019 	li	v0,25

00400284 <__setlogin>:
  400284:	08100070 	j	4001c0 <__syscall>
  400288:	2402001a 	li	v0,26

0040028c <kill>:
  40028c:	08100070 	j	4001c0 <__syscall>
  400290:	2402001b 	li	v0,27

00400294 <sigaction>:
  400294:	08100070 	j	4001c0 <__syscall>
  400298:	2402001c 	li	v0,28

0040029c <sigpending>:
  40029c:	08100070 	j	4001c0 <__syscall>
  4002a0:	2402001d 	li	v0,29

004002a4 <sigprocmask>:
  4002a4:	08100070 	j	4001c0 <__syscall>
  4002a8:	2402001e 	li	v0,30

004002ac <sigsuspend>:
  4002ac:	08100070 	j	4001c0 <__syscall>
  4002b0:	2402001f 	li	v0,31

004002b4 <sigreturn>:
  4002b4:	08100070 	j	4001c0 <__syscall>
  4002b8:	24020020 	li	v0,32

004002bc <open>:
  4002bc:	08100070 	j	4001c0 <__syscall>
  4002c0:	2402002d 	li	v0,45

004002c4 <pipe>:
  4002c4:	08100070 	j	4001c0 <__syscall>
  4002c8:	2402002e 	li	v0,46

004002cc <dup>:
  4002cc:	08100070 	j	4001c0 <__syscall>
  4002d0:	2402002f 	li	v0,47

004002d4 <dup2>:
  4002d4:	08100070 	j	4001c0 <__syscall>
  4002d8:	24020030 	li	v0,48

004002dc <close>:
  4002dc:	08100070 	j	4001c0 <__syscall>
  4002e0:	24020031 	li	v0,49

004002e4 <read>:
  4002e4:	08100070 	j	4001c0 <__syscall>
  4002e8:	24020032 	li	v0,50

004002ec <pread>:
  4002ec:	08100070 	j	4001c0 <__syscall>
  4002f0:	24020033 	li	v0,51

004002f4 <getdirentry>:
  4002f4:	08100070 	j	4001c0 <__syscall>
  4002f8:	24020036 	li	v0,54

004002fc <write>:
  4002fc:	08100070 	j	4001c0 <__syscall>
  400300:	24020037 	li	v0,55

00400304 <pwrite>:
  400304:	08100070 	j	4001c0 <__syscall>
  400308:	24020038 	li	v0,56

0040030c <lseek>:
  40030c:	08100070 	j	4001c0 <__syscall>
  400310:	2402003b 	li	v0,59

00400314 <flock>:
  400314:	08100070 	j	4001c0 <__syscall>
  400318:	2402003c 	li	v0,60

0040031c <ftruncate>:
  40031c:	08100070 	j	4001c0 <__syscall>
  400320:	2402003d 	li	v0,61

00400324 <fsync>:
  400324:	08100070 	j	4001c0 <__syscall>
  400328:	2402003e 	li	v0,62

0040032c <fcntl>:
  40032c:	08100070 	j	4001c0 <__syscall>
  400330:	2402003f 	li	v0,63

00400334 <ioctl>:
  400334:	08100070 	j	4001c0 <__syscall>
  400338:	24020040 	li	v0,64

0040033c <select>:
  40033c:	08100070 	j	4001c0 <__syscall>
  400340:	24020041 	li	v0,65

00400344 <poll>:
  400344:	08100070 	j	4001c0 <__syscall>
  400348:	24020042 	li	v0,66

0040034c <link>:
  40034c:	08100070 	j	4001c0 <__syscall>
  400350:	24020043 	li	v0,67

00400354 <remove>:
  400354:	08100070 	j	4001c0 <__syscall>
  400358:	24020044 	li	v0,68

0040035c <mkdir>:
  40035c:	08100070 	j	4001c0 <__syscall>
  400360:	24020045 	li	v0,69

00400364 <rmdir>:
  400364:	08100070 	j	4001c0 <__syscall>
  400368:	24020046 	li	v0,70

0040036c <mkfifo>:
  40036c:	08100070 	j	4001c0 <__syscall>
  400370:	24020047 	li	v0,71

00400374 <rename>:
  400374:	08100070 	j	4001c0 <__syscall>
  400378:	24020048 	li	v0,72

0040037c <access>:
  40037c:	08100070 	j	4001c0 <__syscall>
  400380:	24020049 	li	v0,73

00400384 <chdir>:
  400384:	08100070 	j	4001c0 <__syscall>
  400388:	2402004a 	li	v0,74

0040038c <fchdir>:
  40038c:	08100070 	j	4001c0 <__syscall>
  400390:	2402004b 	li	v0,75

00400394 <__getcwd>:
  400394:	08100070 	j	4001c0 <__syscall>
  400398:	2402004c 	li	v0,76

0040039c <symlink>:
  40039c:	08100070 	j	4001c0 <__syscall>
  4003a0:	2402004d 	li	v0,77

004003a4 <readlink>:
  4003a4:	08100070 	j	4001c0 <__syscall>
  4003a8:	2402004e 	li	v0,78

004003ac <mount>:
  4003ac:	08100070 	j	4001c0 <__syscall>
  4003b0:	2402004f 	li	v0,79

004003b4 <unmount>:
  4003b4:	08100070 	j	4001c0 <__syscall>
  4003b8:	24020050 	li	v0,80

004003bc <stat>:
  4003bc:	08100070 	j	4001c0 <__syscall>
  4003c0:	24020051 	li	v0,81

004003c4 <fstat>:
  4003c4:	08100070 	j	4001c0 <__syscall>
  4003c8:	24020052 	li	v0,82

004003cc <lstat>:
  4003cc:	08100070 	j	4001c0 <__syscall>
  4003d0:	24020053 	li	v0,83

004003d4 <utimes>:
  4003d4:	08100070 	j	4001c0 <__syscall>
  4003d8:	24020054 	li	v0,84

004003dc <futimes>:
  4003dc:	08100070 	j	4001c0 <__syscall>
  4003e0:	24020055 	li	v0,85

004003e4 <lutimes>:
  4003e4:	08100070 	j	4001c0 <__syscall>
  4003e8:	24020056 	li	v0,86

004003ec <chmod>:
  4003ec:	08100070 	j	4001c0 <__syscall>
  4003f0:	24020057 	li	v0,87

004003f4 <chown>:
  4003f4:	08100070 	j	4001c0 <__syscall>
  4003f8:	24020058 	li	v0,88

004003fc <fchmod>:
  4003fc:	08100070 	j	4001c0 <__syscall>
  400400:	24020059 	li	v0,89

00400404 <fchown>:
  400404:	08100070 	j	4001c0 <__syscall>
  400408:	2402005a 	li	v0,90

0040040c <lchmod>:
  40040c:	08100070 	j	4001c0 <__syscall>
  400410:	2402005b 	li	v0,91

00400414 <lchown>:
  400414:	08100070 	j	4001c0 <__syscall>
  400418:	2402005c 	li	v0,92

0040041c <socket>:
  40041c:	08100070 	j	4001c0 <__syscall>
  400420:	24020062 	li	v0,98

00400424 <bind>:
  400424:	08100070 	j	4001c0 <__syscall>
  400428:	24020063 	li	v0,99

0040042c <connect>:
  40042c:	08100070 	j	4001c0 <__syscall>
  400430:	24020064 	li	v0,100

00400434 <listen>:
  400434:	08100070 	j	4001c0 <__syscall>
  400438:	24020065 	li	v0,101

0040043c <accept>:
  40043c:	08100070 	j	4001c0 <__syscall>
  400440:	24020066 	li	v0,102

00400444 <shutdown>:
  400444:	08100070 	j	4001c0 <__syscall>
  400448:	24020068 	li	v0,104

0040044c <getsockname>:
  40044c:	08100070 	j	4001c0 <__syscall>
  400450:	24020069 	li	v0,105

00400454 <getpeername>:
  400454:	08100070 	j	4001c0 <__syscall>
  400458:	2402006a 	li	v0,106

0040045c <getsockopt>:
  40045c:	08100070 	j	4001c0 <__syscall>
  400460:	2402006b 	li	v0,107

00400464 <setsockopt>:
  400464:	08100070 	j	4001c0 <__syscall>
  400468:	2402006c 	li	v0,108

0040046c <__time>:
  40046c:	08100070 	j	4001c0 <__syscall>
  400470:	24020071 	li	v0,113

00400474 <__settime>:
  400474:	08100070 	j	4001c0 <__syscall>
  400478:	24020072 	li	v0,114

0040047c <nanosleep>:
  40047c:	08100070 	j	4001c0 <__syscall>
  400480:	24020073 	li	v0,115

00400484 <sync>:
  400484:	08100070 	j	4001c0 <__syscall>
  400488:	24020076 	li	v0,118

0040048c <reboot>:
  40048c:	08100070 	j	4001c0 <__syscall>
  400490:	24020077 	li	v0,119
	...

004004a0 <__pf_print>:
  4004a0:	27bdffe0 	addiu	sp,sp,-32
  4004a4:	afbf0018 	sw	ra,24(sp)
  4004a8:	afb10014 	sw	s1,20(sp)
  4004ac:	afb00010 	sw	s0,16(sp)
  4004b0:	8c830000 	lw	v1,0(a0)
  4004b4:	00808021 	move	s0,a0
  4004b8:	8c840004 	lw	a0,4(a0)
  4004bc:	0060f809 	jalr	v1
  4004c0:	00c08821 	move	s1,a2
  4004c4:	8e02000c 	lw	v0,12(s0)
  4004c8:	00000000 	nop
  4004cc:	00511021 	addu	v0,v0,s1
  4004d0:	ae02000c 	sw	v0,12(s0)
  4004d4:	8fbf0018 	lw	ra,24(sp)
  4004d8:	8fb10014 	lw	s1,20(sp)
  4004dc:	8fb00010 	lw	s0,16(sp)
  4004e0:	03e00008 	jr	ra
  4004e4:	27bd0020 	addiu	sp,sp,32

004004e8 <__pf_endfield>:
  4004e8:	24020020 	li	v0,32
  4004ec:	ac82002c 	sw	v0,44(a0)
  4004f0:	00001821 	move	v1,zero
  4004f4:	00001021 	move	v0,zero
  4004f8:	ac800038 	sw	zero,56(a0)
  4004fc:	ac800010 	sw	zero,16(a0)
  400500:	ac800014 	sw	zero,20(a0)
  400504:	ac83001c 	sw	v1,28(a0)
  400508:	ac820018 	sw	v0,24(a0)
  40050c:	ac800020 	sw	zero,32(a0)
  400510:	ac800024 	sw	zero,36(a0)
  400514:	ac800028 	sw	zero,40(a0)
  400518:	ac800030 	sw	zero,48(a0)
  40051c:	03e00008 	jr	ra
  400520:	ac800034 	sw	zero,52(a0)

00400524 <__pf_fill>:
  400524:	27bdffd0 	addiu	sp,sp,-48
  400528:	afb30024 	sw	s3,36(sp)
  40052c:	afb20020 	sw	s2,32(sp)
  400530:	afbf0028 	sw	ra,40(sp)
  400534:	afb1001c 	sw	s1,28(sp)
  400538:	afb00018 	sw	s0,24(sp)
  40053c:	00809821 	move	s3,a0
  400540:	8c82002c 	lw	v0,44(a0)
  400544:	18a0000b 	blez	a1,400574 <__pf_fill+0x50>
  400548:	00a09021 	move	s2,a1
  40054c:	a3a20010 	sb	v0,16(sp)
  400550:	00008021 	move	s0,zero
  400554:	27b10010 	addiu	s1,sp,16
  400558:	26100001 	addiu	s0,s0,1
  40055c:	02602021 	move	a0,s3
  400560:	02202821 	move	a1,s1
  400564:	0c100128 	jal	4004a0 <__pf_print>
  400568:	24060001 	li	a2,1
  40056c:	1650fffb 	bne	s2,s0,40055c <__pf_fill+0x38>
  400570:	26100001 	addiu	s0,s0,1
  400574:	8fbf0028 	lw	ra,40(sp)
  400578:	8fb30024 	lw	s3,36(sp)
  40057c:	8fb20020 	lw	s2,32(sp)
  400580:	8fb1001c 	lw	s1,28(sp)
  400584:	8fb00018 	lw	s0,24(sp)
  400588:	03e00008 	jr	ra
  40058c:	27bd0030 	addiu	sp,sp,48

00400590 <__pf_printstuff>:
  400590:	27bdffd0 	addiu	sp,sp,-48
  400594:	afbf0028 	sw	ra,40(sp)
  400598:	afb50024 	sw	s5,36(sp)
  40059c:	afb40020 	sw	s4,32(sp)
  4005a0:	afb3001c 	sw	s3,28(sp)
  4005a4:	afb20018 	sw	s2,24(sp)
  4005a8:	00c09821 	move	s3,a2
  4005ac:	afb10014 	sw	s1,20(sp)
  4005b0:	afb00010 	sw	s0,16(sp)
  4005b4:	00808821 	move	s1,a0
  4005b8:	00a02021 	move	a0,a1
  4005bc:	00a0a021 	move	s4,a1
  4005c0:	0c100348 	jal	400d20 <strlen>
  4005c4:	00e0a821 	move	s5,a3
  4005c8:	02602021 	move	a0,s3
  4005cc:	0c100348 	jal	400d20 <strlen>
  4005d0:	00409021 	move	s2,v0
  4005d4:	02a02021 	move	a0,s5
  4005d8:	0c100348 	jal	400d20 <strlen>
  4005dc:	02428021 	addu	s0,s2,v0
  4005e0:	8e230024 	lw	v1,36(s1)
  4005e4:	02022821 	addu	a1,s0,v0
  4005e8:	00a3102a 	slt	v0,a1,v1
  4005ec:	10400040 	beqz	v0,4006f0 <__pf_printstuff+0x160>
  4005f0:	00658023 	subu	s0,v1,a1
  4005f4:	1a000056 	blez	s0,400750 <__pf_printstuff+0x1c0>
  4005f8:	02403021 	move	a2,s2
  4005fc:	8e220028 	lw	v0,40(s1)
  400600:	00000000 	nop
  400604:	10400028 	beqz	v0,4006a8 <__pf_printstuff+0x118>
  400608:	24020030 	li	v0,48
  40060c:	0c100348 	jal	400d20 <strlen>
  400610:	02802021 	move	a0,s4
  400614:	00403021 	move	a2,v0
  400618:	02802821 	move	a1,s4
  40061c:	0c100128 	jal	4004a0 <__pf_print>
  400620:	02202021 	move	a0,s1
  400624:	0c100348 	jal	400d20 <strlen>
  400628:	02602021 	move	a0,s3
  40062c:	00403021 	move	a2,v0
  400630:	02202021 	move	a0,s1
  400634:	0c100128 	jal	4004a0 <__pf_print>
  400638:	02602821 	move	a1,s3
  40063c:	8e220028 	lw	v0,40(s1)
  400640:	00000000 	nop
  400644:	14400005 	bnez	v0,40065c <__pf_printstuff+0xcc>
  400648:	24020030 	li	v0,48
  40064c:	8e23002c 	lw	v1,44(s1)
  400650:	00000000 	nop
  400654:	1062004b 	beq	v1,v0,400784 <__pf_printstuff+0x1f4>
  400658:	02202021 	move	a0,s1
  40065c:	0c100348 	jal	400d20 <strlen>
  400660:	02a02021 	move	a0,s5
  400664:	00403021 	move	a2,v0
  400668:	02202021 	move	a0,s1
  40066c:	0c100128 	jal	4004a0 <__pf_print>
  400670:	02a02821 	move	a1,s5
  400674:	8e220028 	lw	v0,40(s1)
  400678:	00000000 	nop
  40067c:	14400012 	bnez	v0,4006c8 <__pf_printstuff+0x138>
  400680:	02202021 	move	a0,s1
  400684:	8fbf0028 	lw	ra,40(sp)
  400688:	8fb50024 	lw	s5,36(sp)
  40068c:	8fb40020 	lw	s4,32(sp)
  400690:	8fb3001c 	lw	s3,28(sp)
  400694:	8fb20018 	lw	s2,24(sp)
  400698:	8fb10014 	lw	s1,20(sp)
  40069c:	8fb00010 	lw	s0,16(sp)
  4006a0:	03e00008 	jr	ra
  4006a4:	27bd0030 	addiu	sp,sp,48
  4006a8:	8e23002c 	lw	v1,44(s1)
  4006ac:	00000000 	nop
  4006b0:	1062ffd6 	beq	v1,v0,40060c <__pf_printstuff+0x7c>
  4006b4:	02202021 	move	a0,s1
  4006b8:	0c100149 	jal	400524 <__pf_fill>
  4006bc:	02002821 	move	a1,s0
  4006c0:	08100183 	j	40060c <__pf_printstuff+0x7c>
  4006c4:	00000000 	nop
  4006c8:	02002821 	move	a1,s0
  4006cc:	8fbf0028 	lw	ra,40(sp)
  4006d0:	8fb50024 	lw	s5,36(sp)
  4006d4:	8fb40020 	lw	s4,32(sp)
  4006d8:	8fb3001c 	lw	s3,28(sp)
  4006dc:	8fb20018 	lw	s2,24(sp)
  4006e0:	8fb10014 	lw	s1,20(sp)
  4006e4:	8fb00010 	lw	s0,16(sp)
  4006e8:	08100149 	j	400524 <__pf_fill>
  4006ec:	27bd0030 	addiu	sp,sp,48
  4006f0:	02802821 	move	a1,s4
  4006f4:	02403021 	move	a2,s2
  4006f8:	0c100128 	jal	4004a0 <__pf_print>
  4006fc:	02202021 	move	a0,s1
  400700:	0c100348 	jal	400d20 <strlen>
  400704:	02602021 	move	a0,s3
  400708:	00403021 	move	a2,v0
  40070c:	02202021 	move	a0,s1
  400710:	0c100128 	jal	4004a0 <__pf_print>
  400714:	02602821 	move	a1,s3
  400718:	0c100348 	jal	400d20 <strlen>
  40071c:	02a02021 	move	a0,s5
  400720:	02202021 	move	a0,s1
  400724:	02a02821 	move	a1,s5
  400728:	8fbf0028 	lw	ra,40(sp)
  40072c:	8fb50024 	lw	s5,36(sp)
  400730:	8fb40020 	lw	s4,32(sp)
  400734:	8fb3001c 	lw	s3,28(sp)
  400738:	8fb20018 	lw	s2,24(sp)
  40073c:	8fb10014 	lw	s1,20(sp)
  400740:	8fb00010 	lw	s0,16(sp)
  400744:	00403021 	move	a2,v0
  400748:	08100128 	j	4004a0 <__pf_print>
  40074c:	27bd0030 	addiu	sp,sp,48
  400750:	02802821 	move	a1,s4
  400754:	0c100128 	jal	4004a0 <__pf_print>
  400758:	02202021 	move	a0,s1
  40075c:	0c100348 	jal	400d20 <strlen>
  400760:	02602021 	move	a0,s3
  400764:	00403021 	move	a2,v0
  400768:	02202021 	move	a0,s1
  40076c:	0c100128 	jal	4004a0 <__pf_print>
  400770:	02602821 	move	a1,s3
  400774:	0c100348 	jal	400d20 <strlen>
  400778:	02a02021 	move	a0,s5
  40077c:	081001c9 	j	400724 <__pf_printstuff+0x194>
  400780:	02202021 	move	a0,s1
  400784:	0c100149 	jal	400524 <__pf_fill>
  400788:	02002821 	move	a1,s0
  40078c:	08100197 	j	40065c <__pf_printstuff+0xcc>
  400790:	00000000 	nop

00400794 <__vprintf>:
  400794:	27bdff68 	addiu	sp,sp,-152
  400798:	afbe0090 	sw	s8,144(sp)
  40079c:	27be0030 	addiu	s8,sp,48
  4007a0:	afb10074 	sw	s1,116(sp)
  4007a4:	afa40030 	sw	a0,48(sp)
  4007a8:	00c08821 	move	s1,a2
  4007ac:	03c02021 	move	a0,s8
  4007b0:	afb00070 	sw	s0,112(sp)
  4007b4:	afbf0094 	sw	ra,148(sp)
  4007b8:	afb7008c 	sw	s7,140(sp)
  4007bc:	afb60088 	sw	s6,136(sp)
  4007c0:	afb50084 	sw	s5,132(sp)
  4007c4:	afb40080 	sw	s4,128(sp)
  4007c8:	afb3007c 	sw	s3,124(sp)
  4007cc:	afb20078 	sw	s2,120(sp)
  4007d0:	afa50034 	sw	a1,52(sp)
  4007d4:	afa70038 	sw	a3,56(sp)
  4007d8:	0c10013a 	jal	4004e8 <__pf_endfield>
  4007dc:	afa0003c 	sw	zero,60(sp)
  4007e0:	82300000 	lb	s0,0(s1)
  4007e4:	00000000 	nop
  4007e8:	12000017 	beqz	s0,400848 <__vprintf+0xb4>
  4007ec:	0220a021 	move	s4,s1
  4007f0:	08100206 	j	400818 <__vprintf+0x84>
  4007f4:	00000000 	nop
  4007f8:	27a50010 	addiu	a1,sp,16
  4007fc:	24060001 	li	a2,1
  400800:	0c100128 	jal	4004a0 <__pf_print>
  400804:	a3b00010 	sb	s0,16(sp)
  400808:	82900001 	lb	s0,1(s4)
  40080c:	00000000 	nop
  400810:	1200000d 	beqz	s0,400848 <__vprintf+0xb4>
  400814:	26940001 	addiu	s4,s4,1
  400818:	8fa20040 	lw	v0,64(sp)
  40081c:	00000000 	nop
  400820:	14400016 	bnez	v0,40087c <__vprintf+0xe8>
  400824:	24020025 	li	v0,37
  400828:	1602fff3 	bne	s0,v0,4007f8 <__vprintf+0x64>
  40082c:	03c02021 	move	a0,s8
  400830:	24020001 	li	v0,1
  400834:	afa20040 	sw	v0,64(sp)
  400838:	82900001 	lb	s0,1(s4)
  40083c:	00000000 	nop
  400840:	1600fff5 	bnez	s0,400818 <__vprintf+0x84>
  400844:	26940001 	addiu	s4,s4,1
  400848:	8fa2003c 	lw	v0,60(sp)
  40084c:	8fbf0094 	lw	ra,148(sp)
  400850:	8fbe0090 	lw	s8,144(sp)
  400854:	8fb7008c 	lw	s7,140(sp)
  400858:	8fb60088 	lw	s6,136(sp)
  40085c:	8fb50084 	lw	s5,132(sp)
  400860:	8fb40080 	lw	s4,128(sp)
  400864:	8fb3007c 	lw	s3,124(sp)
  400868:	8fb20078 	lw	s2,120(sp)
  40086c:	8fb10074 	lw	s1,116(sp)
  400870:	8fb00070 	lw	s0,112(sp)
  400874:	03e00008 	jr	ra
  400878:	27bd0098 	addiu	sp,sp,152
  40087c:	3c040040 	lui	a0,0x40
  400880:	24841550 	addiu	a0,a0,5456
  400884:	0c100330 	jal	400cc0 <strchr>
  400888:	02002821 	move	a1,s0
  40088c:	10400031 	beqz	v0,400954 <__vprintf+0x1c0>
  400890:	24020030 	li	v0,48
  400894:	1202001d 	beq	s0,v0,40090c <__vprintf+0x178>
  400898:	2a020031 	slti	v0,s0,49
  40089c:	10400013 	beqz	v0,4008ec <__vprintf+0x158>
  4008a0:	2402006c 	li	v0,108
  4008a4:	24020023 	li	v0,35
  4008a8:	12020027 	beq	s0,v0,400948 <__vprintf+0x1b4>
  4008ac:	2402002d 	li	v0,45
  4008b0:	1202004a 	beq	s0,v0,4009dc <__vprintf+0x248>
  4008b4:	24020001 	li	v0,1
  4008b8:	2602ffcf 	addiu	v0,s0,-49
  4008bc:	2c420009 	sltiu	v0,v0,9
  4008c0:	1040001a 	beqz	v0,40092c <__vprintf+0x198>
  4008c4:	3c040040 	lui	a0,0x40
  4008c8:	8fa20054 	lw	v0,84(sp)
  4008cc:	00000000 	nop
  4008d0:	000218c0 	sll	v1,v0,0x3
  4008d4:	00021040 	sll	v0,v0,0x1
  4008d8:	00431021 	addu	v0,v0,v1
  4008dc:	02021021 	addu	v0,s0,v0
  4008e0:	2442ffd0 	addiu	v0,v0,-48
  4008e4:	08100202 	j	400808 <__vprintf+0x74>
  4008e8:	afa20054 	sw	v0,84(sp)
  4008ec:	1602fff3 	bne	s0,v0,4008bc <__vprintf+0x128>
  4008f0:	2602ffcf 	addiu	v0,s0,-49
  4008f4:	8fa20044 	lw	v0,68(sp)
  4008f8:	24030001 	li	v1,1
  4008fc:	10430039 	beq	v0,v1,4009e4 <__vprintf+0x250>
  400900:	24020002 	li	v0,2
  400904:	08100202 	j	400808 <__vprintf+0x74>
  400908:	afa30044 	sw	v1,68(sp)
  40090c:	8fa20054 	lw	v0,84(sp)
  400910:	00000000 	nop
  400914:	1840008c 	blez	v0,400b48 <__vprintf+0x3b4>
  400918:	000218c0 	sll	v1,v0,0x3
  40091c:	00021040 	sll	v0,v0,0x1
  400920:	00431021 	addu	v0,v0,v1
  400924:	08100202 	j	400808 <__vprintf+0x74>
  400928:	afa20054 	sw	v0,84(sp)
  40092c:	3c060040 	lui	a2,0x40
  400930:	24841560 	addiu	a0,a0,5472
  400934:	24c61588 	addiu	a2,a2,5512
  400938:	0c10036c 	jal	400db0 <__bad_assert>
  40093c:	240500dc 	li	a1,220
  400940:	08100232 	j	4008c8 <__vprintf+0x134>
  400944:	00000000 	nop
  400948:	24020001 	li	v0,1
  40094c:	08100202 	j	400808 <__vprintf+0x74>
  400950:	afa20068 	sw	v0,104(sp)
  400954:	3c040040 	lui	a0,0x40
  400958:	2484159c 	addiu	a0,a0,5532
  40095c:	0c100330 	jal	400cc0 <strchr>
  400960:	02002821 	move	a1,s0
  400964:	10400091 	beqz	v0,400bac <__vprintf+0x418>
  400968:	24020070 	li	v0,112
  40096c:	1202001f 	beq	s0,v0,4009ec <__vprintf+0x258>
  400970:	24020064 	li	v0,100
  400974:	1202009e 	beq	s0,v0,400bf0 <__vprintf+0x45c>
  400978:	24020001 	li	v0,1
  40097c:	8fa30044 	lw	v1,68(sp)
  400980:	00000000 	nop
  400984:	10620003 	beq	v1,v0,400994 <__vprintf+0x200>
  400988:	00000000 	nop
  40098c:	14600074 	bnez	v1,400b60 <__vprintf+0x3cc>
  400990:	24020002 	li	v0,2
  400994:	8fa20038 	lw	v0,56(sp)
  400998:	afa00048 	sw	zero,72(sp)
  40099c:	8c430000 	lw	v1,0(v0)
  4009a0:	24420004 	addiu	v0,v0,4
  4009a4:	afa20038 	sw	v0,56(sp)
  4009a8:	afa3004c 	sw	v1,76(sp)
  4009ac:	2602ff9c 	addiu	v0,s0,-100
  4009b0:	304200ff 	andi	v0,v0,0xff
  4009b4:	2c430015 	sltiu	v1,v0,21
  4009b8:	10600015 	beqz	v1,400a10 <__vprintf+0x27c>
  4009bc:	3c030040 	lui	v1,0x40
  4009c0:	00021080 	sll	v0,v0,0x2
  4009c4:	246314d0 	addiu	v1,v1,5328
  4009c8:	00431021 	addu	v0,v0,v1
  4009cc:	8c440000 	lw	a0,0(v0)
  4009d0:	00000000 	nop
  4009d4:	00800008 	jr	a0
  4009d8:	00000000 	nop
  4009dc:	08100202 	j	400808 <__vprintf+0x74>
  4009e0:	afa20058 	sw	v0,88(sp)
  4009e4:	08100202 	j	400808 <__vprintf+0x74>
  4009e8:	afa20044 	sw	v0,68(sp)
  4009ec:	8fa20038 	lw	v0,56(sp)
  4009f0:	afa00048 	sw	zero,72(sp)
  4009f4:	24430004 	addiu	v1,v0,4
  4009f8:	afa30038 	sw	v1,56(sp)
  4009fc:	8c440000 	lw	a0,0(v0)
  400a00:	00000000 	nop
  400a04:	afa4004c 	sw	a0,76(sp)
  400a08:	24020010 	li	v0,16
  400a0c:	afa20060 	sw	v0,96(sp)
  400a10:	8fa20068 	lw	v0,104(sp)
  400a14:	00000000 	nop
  400a18:	1440004d 	bnez	v0,400b50 <__vprintf+0x3bc>
  400a1c:	24020001 	li	v0,1
  400a20:	24020070 	li	v0,112
  400a24:	1202004a 	beq	s0,v0,400b50 <__vprintf+0x3bc>
  400a28:	24020001 	li	v0,1
  400a2c:	8fb60060 	lw	s6,96(sp)
  400a30:	3c020040 	lui	v0,0x40
  400a34:	8fb1004c 	lw	s1,76(sp)
  400a38:	8fb00048 	lw	s0,72(sp)
  400a3c:	a3a00029 	sb	zero,41(sp)
  400a40:	245715a4 	addiu	s7,v0,5540
  400a44:	27b50028 	addiu	s5,sp,40
  400a48:	02c09821 	move	s3,s6
  400a4c:	001697c3 	sra	s2,s6,0x1f
  400a50:	02202821 	move	a1,s1
  400a54:	02002021 	move	a0,s0
  400a58:	02603821 	move	a3,s3
  400a5c:	0c100360 	jal	400d80 <__umoddi3>
  400a60:	02403021 	move	a2,s2
  400a64:	02e31821 	addu	v1,s7,v1
  400a68:	90620000 	lbu	v0,0(v1)
  400a6c:	02202821 	move	a1,s1
  400a70:	02002021 	move	a0,s0
  400a74:	02603821 	move	a3,s3
  400a78:	02403021 	move	a2,s2
  400a7c:	0c100358 	jal	400d60 <__udivdi3>
  400a80:	a2a20000 	sb	v0,0(s5)
  400a84:	00408021 	move	s0,v0
  400a88:	02031025 	or	v0,s0,v1
  400a8c:	00608821 	move	s1,v1
  400a90:	1440ffef 	bnez	v0,400a50 <__vprintf+0x2bc>
  400a94:	26b5ffff 	addiu	s5,s5,-1
  400a98:	8fa20064 	lw	v0,100(sp)
  400a9c:	00000000 	nop
  400aa0:	10400006 	beqz	v0,400abc <__vprintf+0x328>
  400aa4:	3c020040 	lui	v0,0x40
  400aa8:	24020010 	li	v0,16
  400aac:	12c2005e 	beq	s6,v0,400c28 <__vprintf+0x494>
  400ab0:	24020008 	li	v0,8
  400ab4:	12c20037 	beq	s6,v0,400b94 <__vprintf+0x400>
  400ab8:	3c020040 	lui	v0,0x40
  400abc:	24461540 	addiu	a2,v0,5440
  400ac0:	8fa20050 	lw	v0,80(sp)
  400ac4:	00000000 	nop
  400ac8:	10400023 	beqz	v0,400b58 <__vprintf+0x3c4>
  400acc:	3c020040 	lui	v0,0x40
  400ad0:	3c020040 	lui	v0,0x40
  400ad4:	24451544 	addiu	a1,v0,5444
  400ad8:	03c02021 	move	a0,s8
  400adc:	0c100164 	jal	400590 <__pf_printstuff>
  400ae0:	26a70001 	addiu	a3,s5,1
  400ae4:	0c10013a 	jal	4004e8 <__pf_endfield>
  400ae8:	03c02021 	move	a0,s8
  400aec:	08100202 	j	400808 <__vprintf+0x74>
  400af0:	00000000 	nop
  400af4:	8fa20038 	lw	v0,56(sp)
  400af8:	2403fff8 	li	v1,-8
  400afc:	24420007 	addiu	v0,v0,7
  400b00:	00431024 	and	v0,v0,v1
  400b04:	8c470004 	lw	a3,4(v0)
  400b08:	8c460000 	lw	a2,0(v0)
  400b0c:	24420008 	addiu	v0,v0,8
  400b10:	afa20038 	sw	v0,56(sp)
  400b14:	04c10040 	bgez	a2,400c18 <__vprintf+0x484>
  400b18:	2402000a 	li	v0,10
  400b1c:	00071823 	negu	v1,a3
  400b20:	0003282b 	sltu	a1,zero,v1
  400b24:	00061023 	negu	v0,a2
  400b28:	00451023 	subu	v0,v0,a1
  400b2c:	2404ffff 	li	a0,-1
  400b30:	afa40050 	sw	a0,80(sp)
  400b34:	afa3004c 	sw	v1,76(sp)
  400b38:	afa20048 	sw	v0,72(sp)
  400b3c:	2402000a 	li	v0,10
  400b40:	08100284 	j	400a10 <__vprintf+0x27c>
  400b44:	afa20060 	sw	v0,96(sp)
  400b48:	08100202 	j	400808 <__vprintf+0x74>
  400b4c:	afb0005c 	sw	s0,92(sp)
  400b50:	0810028b 	j	400a2c <__vprintf+0x298>
  400b54:	afa20064 	sw	v0,100(sp)
  400b58:	081002b6 	j	400ad8 <__vprintf+0x344>
  400b5c:	24451540 	addiu	a1,v0,5440
  400b60:	1462ff93 	bne	v1,v0,4009b0 <__vprintf+0x21c>
  400b64:	2602ff9c 	addiu	v0,s0,-100
  400b68:	8fa20038 	lw	v0,56(sp)
  400b6c:	2403fff8 	li	v1,-8
  400b70:	24420007 	addiu	v0,v0,7
  400b74:	00431024 	and	v0,v0,v1
  400b78:	8c450004 	lw	a1,4(v0)
  400b7c:	8c440000 	lw	a0,0(v0)
  400b80:	24420008 	addiu	v0,v0,8
  400b84:	afa20038 	sw	v0,56(sp)
  400b88:	afa5004c 	sw	a1,76(sp)
  400b8c:	0810026b 	j	4009ac <__vprintf+0x218>
  400b90:	afa40048 	sw	a0,72(sp)
  400b94:	3c020040 	lui	v0,0x40
  400b98:	081002b0 	j	400ac0 <__vprintf+0x32c>
  400b9c:	244615bc 	addiu	a2,v0,5564
  400ba0:	24020008 	li	v0,8
  400ba4:	08100284 	j	400a10 <__vprintf+0x27c>
  400ba8:	afa20060 	sw	v0,96(sp)
  400bac:	24020073 	li	v0,115
  400bb0:	12020028 	beq	s0,v0,400c54 <__vprintf+0x4c0>
  400bb4:	24020063 	li	v0,99
  400bb8:	12020037 	beq	s0,v0,400c98 <__vprintf+0x504>
  400bbc:	00000000 	nop
  400bc0:	a3b00011 	sb	s0,17(sp)
  400bc4:	3c050040 	lui	a1,0x40
  400bc8:	24a51540 	addiu	a1,a1,5440
  400bcc:	03c02021 	move	a0,s8
  400bd0:	00a03021 	move	a2,a1
  400bd4:	27a70011 	addiu	a3,sp,17
  400bd8:	0c100164 	jal	400590 <__pf_printstuff>
  400bdc:	a3a00012 	sb	zero,18(sp)
  400be0:	0c10013a 	jal	4004e8 <__pf_endfield>
  400be4:	03c02021 	move	a0,s8
  400be8:	08100202 	j	400808 <__vprintf+0x74>
  400bec:	00000000 	nop
  400bf0:	8fa30044 	lw	v1,68(sp)
  400bf4:	00000000 	nop
  400bf8:	1062000e 	beq	v1,v0,400c34 <__vprintf+0x4a0>
  400bfc:	00000000 	nop
  400c00:	1060000c 	beqz	v1,400c34 <__vprintf+0x4a0>
  400c04:	24020002 	li	v0,2
  400c08:	1062ffba 	beq	v1,v0,400af4 <__vprintf+0x360>
  400c0c:	00003821 	move	a3,zero
  400c10:	00003021 	move	a2,zero
  400c14:	2402000a 	li	v0,10
  400c18:	afa7004c 	sw	a3,76(sp)
  400c1c:	afa60048 	sw	a2,72(sp)
  400c20:	08100284 	j	400a10 <__vprintf+0x27c>
  400c24:	afa20060 	sw	v0,96(sp)
  400c28:	3c020040 	lui	v0,0x40
  400c2c:	081002b0 	j	400ac0 <__vprintf+0x32c>
  400c30:	244615b8 	addiu	a2,v0,5560
  400c34:	8fa20038 	lw	v0,56(sp)
  400c38:	00000000 	nop
  400c3c:	8c430000 	lw	v1,0(v0)
  400c40:	24420004 	addiu	v0,v0,4
  400c44:	00603821 	move	a3,v1
  400c48:	000337c3 	sra	a2,v1,0x1f
  400c4c:	081002c5 	j	400b14 <__vprintf+0x380>
  400c50:	afa20038 	sw	v0,56(sp)
  400c54:	8fa30038 	lw	v1,56(sp)
  400c58:	00000000 	nop
  400c5c:	8c670000 	lw	a3,0(v1)
  400c60:	00000000 	nop
  400c64:	10e00013 	beqz	a3,400cb4 <__vprintf+0x520>
  400c68:	3c020040 	lui	v0,0x40
  400c6c:	3c050040 	lui	a1,0x40
  400c70:	24a51540 	addiu	a1,a1,5440
  400c74:	24620004 	addiu	v0,v1,4
  400c78:	03c02021 	move	a0,s8
  400c7c:	00a03021 	move	a2,a1
  400c80:	0c100164 	jal	400590 <__pf_printstuff>
  400c84:	afa20038 	sw	v0,56(sp)
  400c88:	0c10013a 	jal	4004e8 <__pf_endfield>
  400c8c:	03c02021 	move	a0,s8
  400c90:	08100202 	j	400808 <__vprintf+0x74>
  400c94:	00000000 	nop
  400c98:	8fa20038 	lw	v0,56(sp)
  400c9c:	00000000 	nop
  400ca0:	8c430000 	lw	v1,0(v0)
  400ca4:	24420004 	addiu	v0,v0,4
  400ca8:	afa20038 	sw	v0,56(sp)
  400cac:	081002f1 	j	400bc4 <__vprintf+0x430>
  400cb0:	a3a30011 	sb	v1,17(sp)
  400cb4:	0810031b 	j	400c6c <__vprintf+0x4d8>
  400cb8:	24471548 	addiu	a3,v0,5448
  400cbc:	00000000 	nop

00400cc0 <strchr>:
  400cc0:	80830000 	lb	v1,0(a0)
  400cc4:	00052e00 	sll	a1,a1,0x18
  400cc8:	00801021 	move	v0,a0
  400ccc:	1060000c 	beqz	v1,400d00 <strchr+0x40>
  400cd0:	00052e03 	sra	a1,a1,0x18
  400cd4:	14a30006 	bne	a1,v1,400cf0 <strchr+0x30>
  400cd8:	24420001 	addiu	v0,v0,1
  400cdc:	03e00008 	jr	ra
  400ce0:	2442ffff 	addiu	v0,v0,-1
  400ce4:	10a3000c 	beq	a1,v1,400d18 <strchr+0x58>
  400ce8:	00000000 	nop
  400cec:	24420001 	addiu	v0,v0,1
  400cf0:	80430000 	lb	v1,0(v0)
  400cf4:	00000000 	nop
  400cf8:	1460fffa 	bnez	v1,400ce4 <strchr+0x24>
  400cfc:	00000000 	nop
  400d00:	14a00003 	bnez	a1,400d10 <strchr+0x50>
  400d04:	00000000 	nop
  400d08:	03e00008 	jr	ra
  400d0c:	00000000 	nop
  400d10:	03e00008 	jr	ra
  400d14:	00001021 	move	v0,zero
  400d18:	03e00008 	jr	ra
  400d1c:	00000000 	nop

00400d20 <strlen>:
  400d20:	80820000 	lb	v0,0(a0)
  400d24:	00000000 	nop
  400d28:	1040000a 	beqz	v0,400d54 <strlen+0x34>
  400d2c:	00002821 	move	a1,zero
  400d30:	24a50001 	addiu	a1,a1,1
  400d34:	00851021 	addu	v0,a0,a1
  400d38:	80430000 	lb	v1,0(v0)
  400d3c:	00000000 	nop
  400d40:	1460fffc 	bnez	v1,400d34 <strlen+0x14>
  400d44:	24a50001 	addiu	a1,a1,1
  400d48:	24a5ffff 	addiu	a1,a1,-1
  400d4c:	03e00008 	jr	ra
  400d50:	00a01021 	move	v0,a1
  400d54:	03e00008 	jr	ra
  400d58:	00a01021 	move	v0,a1
  400d5c:	00000000 	nop

00400d60 <__udivdi3>:
  400d60:	27bdffe0 	addiu	sp,sp,-32
  400d64:	afbf0018 	sw	ra,24(sp)
  400d68:	0c1003e7 	jal	400f9c <__qdivrem>
  400d6c:	afa00010 	sw	zero,16(sp)
  400d70:	8fbf0018 	lw	ra,24(sp)
  400d74:	00000000 	nop
  400d78:	03e00008 	jr	ra
  400d7c:	27bd0020 	addiu	sp,sp,32

00400d80 <__umoddi3>:
  400d80:	27bdffd8 	addiu	sp,sp,-40
  400d84:	27a20018 	addiu	v0,sp,24
  400d88:	afbf0020 	sw	ra,32(sp)
  400d8c:	0c1003e7 	jal	400f9c <__qdivrem>
  400d90:	afa20010 	sw	v0,16(sp)
  400d94:	8fa3001c 	lw	v1,28(sp)
  400d98:	8fa20018 	lw	v0,24(sp)
  400d9c:	8fbf0020 	lw	ra,32(sp)
  400da0:	00000000 	nop
  400da4:	03e00008 	jr	ra
  400da8:	27bd0028 	addiu	sp,sp,40
  400dac:	00000000 	nop

00400db0 <__bad_assert>:
  400db0:	27bdfee0 	addiu	sp,sp,-288
  400db4:	00c03821 	move	a3,a2
  400db8:	afb00118 	sw	s0,280(sp)
  400dbc:	3c060040 	lui	a2,0x40
  400dc0:	27b00018 	addiu	s0,sp,24
  400dc4:	24c615c0 	addiu	a2,a2,5568
  400dc8:	afa40010 	sw	a0,16(sp)
  400dcc:	afa50014 	sw	a1,20(sp)
  400dd0:	02002021 	move	a0,s0
  400dd4:	afbf011c 	sw	ra,284(sp)
  400dd8:	0c1003b8 	jal	400ee0 <snprintf>
  400ddc:	24050100 	li	a1,256
  400de0:	0c100348 	jal	400d20 <strlen>
  400de4:	02002021 	move	a0,s0
  400de8:	00403021 	move	a2,v0
  400dec:	02002821 	move	a1,s0
  400df0:	0c1000bf 	jal	4002fc <write>
  400df4:	24040002 	li	a0,2
  400df8:	0c1003c4 	jal	400f10 <abort>
  400dfc:	00000000 	nop

00400e00 <__snprintf_send>:
  400e00:	10c00012 	beqz	a2,400e4c <__snprintf_send+0x4c>
  400e04:	00004021 	move	t0,zero
  400e08:	8c870008 	lw	a3,8(a0)
  400e0c:	8c820004 	lw	v0,4(a0)
  400e10:	00a81821 	addu	v1,a1,t0
  400e14:	00e2102b 	sltu	v0,a3,v0
  400e18:	1040000a 	beqz	v0,400e44 <__snprintf_send+0x44>
  400e1c:	25080001 	addiu	t0,t0,1
  400e20:	8c820000 	lw	v0,0(a0)
  400e24:	90630000 	lbu	v1,0(v1)
  400e28:	00471021 	addu	v0,v0,a3
  400e2c:	a0430000 	sb	v1,0(v0)
  400e30:	8c870008 	lw	a3,8(a0)
  400e34:	00000000 	nop
  400e38:	24e20001 	addiu	v0,a3,1
  400e3c:	00403821 	move	a3,v0
  400e40:	ac820008 	sw	v0,8(a0)
  400e44:	14c8fff1 	bne	a2,t0,400e0c <__snprintf_send+0xc>
  400e48:	00000000 	nop
  400e4c:	03e00008 	jr	ra
  400e50:	00000000 	nop

00400e54 <vsnprintf>:
  400e54:	27bdffd8 	addiu	sp,sp,-40
  400e58:	afb00020 	sw	s0,32(sp)
  400e5c:	00a01021 	move	v0,a1
  400e60:	00808021 	move	s0,a0
  400e64:	3c040040 	lui	a0,0x40
  400e68:	24a3ffff 	addiu	v1,a1,-1
  400e6c:	afbf0024 	sw	ra,36(sp)
  400e70:	24840e00 	addiu	a0,a0,3584
  400e74:	27a50010 	addiu	a1,sp,16
  400e78:	1440000c 	bnez	v0,400eac <vsnprintf+0x58>
  400e7c:	afb00010 	sw	s0,16(sp)
  400e80:	3c040040 	lui	a0,0x40
  400e84:	24840e00 	addiu	a0,a0,3584
  400e88:	afa00014 	sw	zero,20(sp)
  400e8c:	0c1001e5 	jal	400794 <__vprintf>
  400e90:	afa00018 	sw	zero,24(sp)
  400e94:	00401821 	move	v1,v0
  400e98:	8fbf0024 	lw	ra,36(sp)
  400e9c:	8fb00020 	lw	s0,32(sp)
  400ea0:	00601021 	move	v0,v1
  400ea4:	03e00008 	jr	ra
  400ea8:	27bd0028 	addiu	sp,sp,40
  400eac:	afa30014 	sw	v1,20(sp)
  400eb0:	0c1001e5 	jal	400794 <__vprintf>
  400eb4:	afa00018 	sw	zero,24(sp)
  400eb8:	00401821 	move	v1,v0
  400ebc:	8fa20018 	lw	v0,24(sp)
  400ec0:	00000000 	nop
  400ec4:	02021021 	addu	v0,s0,v0
  400ec8:	a0400000 	sb	zero,0(v0)
  400ecc:	8fbf0024 	lw	ra,36(sp)
  400ed0:	8fb00020 	lw	s0,32(sp)
  400ed4:	00601021 	move	v0,v1
  400ed8:	03e00008 	jr	ra
  400edc:	27bd0028 	addiu	sp,sp,40

00400ee0 <snprintf>:
  400ee0:	27bdffe0 	addiu	sp,sp,-32
  400ee4:	27a2002c 	addiu	v0,sp,44
  400ee8:	afa7002c 	sw	a3,44(sp)
  400eec:	00403821 	move	a3,v0
  400ef0:	afbf0018 	sw	ra,24(sp)
  400ef4:	0c100395 	jal	400e54 <vsnprintf>
  400ef8:	afa20010 	sw	v0,16(sp)
  400efc:	8fbf0018 	lw	ra,24(sp)
  400f00:	00000000 	nop
  400f04:	03e00008 	jr	ra
  400f08:	27bd0020 	addiu	sp,sp,32
  400f0c:	00000000 	nop

00400f10 <abort>:
  400f10:	27bdffe8 	addiu	sp,sp,-24
  400f14:	afbf0010 	sw	ra,16(sp)
  400f18:	0c10007f 	jal	4001fc <_exit>
  400f1c:	240400ff 	li	a0,255

00400f20 <shl>:
  400f20:	18a00016 	blez	a1,400f7c <shl+0x5c>
  400f24:	24020010 	li	v0,16
  400f28:	00464823 	subu	t1,v0,a2
  400f2c:	00803821 	move	a3,a0
  400f30:	00004021 	move	t0,zero
  400f34:	8ce20000 	lw	v0,0(a3)
  400f38:	8ce30004 	lw	v1,4(a3)
  400f3c:	00c21004 	sllv	v0,v0,a2
  400f40:	3042ffff 	andi	v0,v0,0xffff
  400f44:	01231806 	srlv	v1,v1,t1
  400f48:	00431025 	or	v0,v0,v1
  400f4c:	25080001 	addiu	t0,t0,1
  400f50:	ace20000 	sw	v0,0(a3)
  400f54:	14a8fff7 	bne	a1,t0,400f34 <shl+0x14>
  400f58:	24e70004 	addiu	a3,a3,4
  400f5c:	00051880 	sll	v1,a1,0x2
  400f60:	00831821 	addu	v1,a0,v1
  400f64:	8c620000 	lw	v0,0(v1)
  400f68:	00000000 	nop
  400f6c:	00c21004 	sllv	v0,v0,a2
  400f70:	3042ffff 	andi	v0,v0,0xffff
  400f74:	03e00008 	jr	ra
  400f78:	ac620000 	sw	v0,0(v1)
  400f7c:	00001821 	move	v1,zero
  400f80:	00831821 	addu	v1,a0,v1
  400f84:	8c620000 	lw	v0,0(v1)
  400f88:	00000000 	nop
  400f8c:	00c21004 	sllv	v0,v0,a2
  400f90:	3042ffff 	andi	v0,v0,0xffff
  400f94:	03e00008 	jr	ra
  400f98:	ac620000 	sw	v0,0(v1)

00400f9c <__qdivrem>:
  400f9c:	27bdff80 	addiu	sp,sp,-128
  400fa0:	00c71025 	or	v0,a2,a3
  400fa4:	afb20060 	sw	s2,96(sp)
  400fa8:	afbf007c 	sw	ra,124(sp)
  400fac:	afbe0078 	sw	s8,120(sp)
  400fb0:	afb70074 	sw	s7,116(sp)
  400fb4:	afb60070 	sw	s6,112(sp)
  400fb8:	afb5006c 	sw	s5,108(sp)
  400fbc:	afb40068 	sw	s4,104(sp)
  400fc0:	afb30064 	sw	s3,100(sp)
  400fc4:	afb1005c 	sw	s1,92(sp)
  400fc8:	afb00058 	sw	s0,88(sp)
  400fcc:	00a04821 	move	t1,a1
  400fd0:	8fb20090 	lw	s2,144(sp)
  400fd4:	14400018 	bnez	v0,401038 <__qdivrem+0x9c>
  400fd8:	00804021 	move	t0,a0
  400fdc:	3c031000 	lui	v1,0x1000
  400fe0:	8c640000 	lw	a0,0(v1)
  400fe4:	24020001 	li	v0,1
  400fe8:	14800002 	bnez	a0,400ff4 <__qdivrem+0x58>
  400fec:	0044001b 	divu	zero,v0,a0
  400ff0:	0007000d 	break	0x7
  400ff4:	00001012 	mflo	v0
  400ff8:	12400003 	beqz	s2,401008 <__qdivrem+0x6c>
  400ffc:	00401821 	move	v1,v0
  401000:	ae450004 	sw	a1,4(s2)
  401004:	ae480000 	sw	t0,0(s2)
  401008:	8fbf007c 	lw	ra,124(sp)
  40100c:	8fbe0078 	lw	s8,120(sp)
  401010:	8fb70074 	lw	s7,116(sp)
  401014:	8fb60070 	lw	s6,112(sp)
  401018:	8fb5006c 	lw	s5,108(sp)
  40101c:	8fb40068 	lw	s4,104(sp)
  401020:	8fb30064 	lw	s3,100(sp)
  401024:	8fb20060 	lw	s2,96(sp)
  401028:	8fb1005c 	lw	s1,92(sp)
  40102c:	8fb00058 	lw	s0,88(sp)
  401030:	03e00008 	jr	ra
  401034:	27bd0080 	addiu	sp,sp,128
  401038:	0086102b 	sltu	v0,a0,a2
  40103c:	10400008 	beqz	v0,401060 <__qdivrem+0xc4>
  401040:	00000000 	nop
  401044:	1240010c 	beqz	s2,401478 <__qdivrem+0x4dc>
  401048:	00000000 	nop
  40104c:	00001821 	move	v1,zero
  401050:	00001021 	move	v0,zero
  401054:	ae490004 	sw	t1,4(s2)
  401058:	08100402 	j	401008 <__qdivrem+0x6c>
  40105c:	ae480000 	sw	t0,0(s2)
  401060:	10860046 	beq	a0,a2,40117c <__qdivrem+0x1e0>
  401064:	00a7102b 	sltu	v0,a1,a3
  401068:	00e08821 	move	s1,a3
  40106c:	01001821 	move	v1,t0
  401070:	00c08021 	move	s0,a2
  401074:	30c7ffff 	andi	a3,a2,0xffff
  401078:	3108ffff 	andi	t0,t0,0xffff
  40107c:	312affff 	andi	t2,t1,0xffff
  401080:	3226ffff 	andi	a2,s1,0xffff
  401084:	00031c02 	srl	v1,v1,0x10
  401088:	00092c02 	srl	a1,t1,0x10
  40108c:	00101402 	srl	v0,s0,0x10
  401090:	00112402 	srl	a0,s1,0x10
  401094:	afa00010 	sw	zero,16(sp)
  401098:	afa30014 	sw	v1,20(sp)
  40109c:	afa80018 	sw	t0,24(sp)
  4010a0:	afa5001c 	sw	a1,28(sp)
  4010a4:	afaa0020 	sw	t2,32(sp)
  4010a8:	afa20028 	sw	v0,40(sp)
  4010ac:	afa7002c 	sw	a3,44(sp)
  4010b0:	afa40030 	sw	a0,48(sp)
  4010b4:	144000f6 	bnez	v0,401490 <__qdivrem+0x4f4>
  4010b8:	afa60034 	sw	a2,52(sp)
  4010bc:	14e00033 	bnez	a3,40118c <__qdivrem+0x1f0>
  4010c0:	27a20028 	addiu	v0,sp,40
  4010c4:	148000f7 	bnez	a0,4014a4 <__qdivrem+0x508>
  4010c8:	27a2002c 	addiu	v0,sp,44
  4010cc:	14c00002 	bnez	a2,4010d8 <__qdivrem+0x13c>
  4010d0:	0066001b 	divu	zero,v1,a2
  4010d4:	0007000d 	break	0x7
  4010d8:	00001010 	mfhi	v0
  4010dc:	00021400 	sll	v0,v0,0x10
  4010e0:	00481025 	or	v0,v0,t0
  4010e4:	00004812 	mflo	t1
	...
  4010f0:	14c00002 	bnez	a2,4010fc <__qdivrem+0x160>
  4010f4:	0046001b 	divu	zero,v0,a2
  4010f8:	0007000d 	break	0x7
  4010fc:	00001810 	mfhi	v1
  401100:	00031c00 	sll	v1,v1,0x10
  401104:	00651825 	or	v1,v1,a1
  401108:	00003812 	mflo	a3
	...
  401114:	14c00002 	bnez	a2,401120 <__qdivrem+0x184>
  401118:	0066001b 	divu	zero,v1,a2
  40111c:	0007000d 	break	0x7
  401120:	00001010 	mfhi	v0
  401124:	00021400 	sll	v0,v0,0x10
  401128:	00001812 	mflo	v1
  40112c:	12400008 	beqz	s2,401150 <__qdivrem+0x1b4>
  401130:	01422025 	or	a0,t2,v0
  401134:	14c00002 	bnez	a2,401140 <__qdivrem+0x1a4>
  401138:	0086001b 	divu	zero,a0,a2
  40113c:	0007000d 	break	0x7
  401140:	ae400000 	sw	zero,0(s2)
  401144:	00001010 	mfhi	v0
  401148:	ae420004 	sw	v0,4(s2)
  40114c:	00000000 	nop
  401150:	14c00002 	bnez	a2,40115c <__qdivrem+0x1c0>
  401154:	0086001b 	divu	zero,a0,a2
  401158:	0007000d 	break	0x7
  40115c:	00091400 	sll	v0,t1,0x10
  401160:	00031c00 	sll	v1,v1,0x10
  401164:	00e28025 	or	s0,a3,v0
  401168:	02001021 	move	v0,s0
  40116c:	00002012 	mflo	a0
  401170:	00838825 	or	s1,a0,v1
  401174:	08100402 	j	401008 <__qdivrem+0x6c>
  401178:	02201821 	move	v1,s1
  40117c:	1040ffbb 	beqz	v0,40106c <__qdivrem+0xd0>
  401180:	00e08821 	move	s1,a3
  401184:	08100411 	j	401044 <__qdivrem+0xa8>
  401188:	00000000 	nop
  40118c:	afa20050 	sw	v0,80(sp)
  401190:	24170003 	li	s7,3
  401194:	27be002c 	addiu	s8,sp,44
  401198:	8fa30014 	lw	v1,20(sp)
  40119c:	24020004 	li	v0,4
  4011a0:	146000c4 	bnez	v1,4014b4 <__qdivrem+0x518>
  4011a4:	00579823 	subu	s3,v0,s7
  4011a8:	0810046d 	j	4011b4 <__qdivrem+0x218>
  4011ac:	27b40014 	addiu	s4,sp,20
  4011b0:	0060a021 	move	s4,v1
  4011b4:	8e820004 	lw	v0,4(s4)
  4011b8:	2673ffff 	addiu	s3,s3,-1
  4011bc:	1040fffc 	beqz	v0,4011b0 <__qdivrem+0x214>
  4011c0:	26830004 	addiu	v1,s4,4
  4011c4:	24020004 	li	v0,4
  4011c8:	00532023 	subu	a0,v0,s3
  4011cc:	2483ffff 	addiu	v1,a0,-1
  4011d0:	046000bc 	bltz	v1,4014c4 <__qdivrem+0x528>
  4011d4:	00001821 	move	v1,zero
  4011d8:	27a60038 	addiu	a2,sp,56
  4011dc:	00042880 	sll	a1,a0,0x2
  4011e0:	00c51021 	addu	v0,a2,a1
  4011e4:	2442fffc 	addiu	v0,v0,-4
  4011e8:	24630001 	addiu	v1,v1,1
  4011ec:	ac400000 	sw	zero,0(v0)
  4011f0:	1464fffd 	bne	v1,a0,4011e8 <__qdivrem+0x24c>
  4011f4:	2442fffc 	addiu	v0,v0,-4
  4011f8:	8fcb0000 	lw	t3,0(s8)
  4011fc:	34028000 	li	v0,0x8000
  401200:	0162102b 	sltu	v0,t3,v0
  401204:	00c5b021 	addu	s6,a2,a1
  401208:	104000ac 	beqz	v0,4014bc <__qdivrem+0x520>
  40120c:	01601821 	move	v1,t3
  401210:	0000a821 	move	s5,zero
  401214:	34048000 	li	a0,0x8000
  401218:	00031840 	sll	v1,v1,0x1
  40121c:	0064102b 	sltu	v0,v1,a0
  401220:	1440fffd 	bnez	v0,401218 <__qdivrem+0x27c>
  401224:	26b50001 	addiu	s5,s5,1
  401228:	1aa00009 	blez	s5,401250 <__qdivrem+0x2b4>
  40122c:	02f32821 	addu	a1,s7,s3
  401230:	02a03021 	move	a2,s5
  401234:	0c1003c8 	jal	400f20 <shl>
  401238:	02802021 	move	a0,s4
  40123c:	03c02021 	move	a0,s8
  401240:	26e5ffff 	addiu	a1,s7,-1
  401244:	0c1003c8 	jal	400f20 <shl>
  401248:	02a03021 	move	a2,s5
  40124c:	8fcb0000 	lw	t3,0(s8)
  401250:	8fa20050 	lw	v0,80(sp)
  401254:	00177080 	sll	t6,s7,0x2
  401258:	8c580008 	lw	t8,8(v0)
  40125c:	02c06821 	move	t5,s6
  401260:	02804821 	move	t1,s4
  401264:	028e6021 	addu	t4,s4,t6
  401268:	00007821 	move	t7,zero
  40126c:	3416ffff 	li	s6,0xffff
  401270:	8d240000 	lw	a0,0(t1)
  401274:	8d230004 	lw	v1,4(t1)
  401278:	8d260008 	lw	a2,8(t1)
  40127c:	11640081 	beq	t3,a0,401484 <__qdivrem+0x4e8>
  401280:	00041400 	sll	v0,a0,0x10
  401284:	00621025 	or	v0,v1,v0
  401288:	15600002 	bnez	t3,401294 <__qdivrem+0x2f8>
  40128c:	004b001b 	divu	zero,v0,t3
  401290:	0007000d 	break	0x7
  401294:	00002810 	mfhi	a1
  401298:	00003812 	mflo	a3
	...
  4012a4:	00f80018 	mult	a3,t8
  4012a8:	00051400 	sll	v0,a1,0x10
  4012ac:	00c21025 	or	v0,a2,v0
  4012b0:	00001812 	mflo	v1
  4012b4:	0043182b 	sltu	v1,v0,v1
  4012b8:	10600006 	beqz	v1,4012d4 <__qdivrem+0x338>
  4012bc:	00000000 	nop
  4012c0:	24e7ffff 	addiu	a3,a3,-1
  4012c4:	00ab2821 	addu	a1,a1,t3
  4012c8:	02c5102b 	sltu	v0,s6,a1
  4012cc:	1040fff6 	beqz	v0,4012a8 <__qdivrem+0x30c>
  4012d0:	00f80018 	mult	a3,t8
  4012d4:	1ae00017 	blez	s7,401334 <__qdivrem+0x398>
  4012d8:	00004021 	move	t0,zero
  4012dc:	8fa20050 	lw	v0,80(sp)
  4012e0:	01802021 	move	a0,t4
  4012e4:	004e3021 	addu	a2,v0,t6
  4012e8:	02e02821 	move	a1,s7
  4012ec:	3c0a0001 	lui	t2,0x1
  4012f0:	8cc20000 	lw	v0,0(a2)
  4012f4:	8c830000 	lw	v1,0(a0)
  4012f8:	00e20018 	mult	a3,v0
  4012fc:	24a5ffff 	addiu	a1,a1,-1
  401300:	24c6fffc 	addiu	a2,a2,-4
  401304:	00001012 	mflo	v0
  401308:	00621823 	subu	v1,v1,v0
  40130c:	00681823 	subu	v1,v1,t0
  401310:	00031402 	srl	v0,v1,0x10
  401314:	01421023 	subu	v0,t2,v0
  401318:	3063ffff 	andi	v1,v1,0xffff
  40131c:	ac830000 	sw	v1,0(a0)
  401320:	3048ffff 	andi	t0,v0,0xffff
  401324:	14a0fff2 	bnez	a1,4012f0 <__qdivrem+0x354>
  401328:	2484fffc 	addiu	a0,a0,-4
  40132c:	8d240000 	lw	a0,0(t1)
  401330:	00000000 	nop
  401334:	00881023 	subu	v0,a0,t0
  401338:	3044ffff 	andi	a0,v0,0xffff
  40133c:	00021c02 	srl	v1,v0,0x10
  401340:	10600018 	beqz	v1,4013a4 <__qdivrem+0x408>
  401344:	ad240000 	sw	a0,0(t1)
  401348:	1ae00012 	blez	s7,401394 <__qdivrem+0x3f8>
  40134c:	00004021 	move	t0,zero
  401350:	8fa20050 	lw	v0,80(sp)
  401354:	01802021 	move	a0,t4
  401358:	004e3021 	addu	a2,v0,t6
  40135c:	02e02821 	move	a1,s7
  401360:	8c820000 	lw	v0,0(a0)
  401364:	8cc30000 	lw	v1,0(a2)
  401368:	01021021 	addu	v0,t0,v0
  40136c:	00431021 	addu	v0,v0,v1
  401370:	3043ffff 	andi	v1,v0,0xffff
  401374:	24a5ffff 	addiu	a1,a1,-1
  401378:	ac830000 	sw	v1,0(a0)
  40137c:	00024402 	srl	t0,v0,0x10
  401380:	2484fffc 	addiu	a0,a0,-4
  401384:	14a0fff6 	bnez	a1,401360 <__qdivrem+0x3c4>
  401388:	24c6fffc 	addiu	a2,a2,-4
  40138c:	8d240000 	lw	a0,0(t1)
  401390:	00000000 	nop
  401394:	01041021 	addu	v0,t0,a0
  401398:	3042ffff 	andi	v0,v0,0xffff
  40139c:	ad220000 	sw	v0,0(t1)
  4013a0:	24e7ffff 	addiu	a3,a3,-1
  4013a4:	25ef0001 	addiu	t7,t7,1
  4013a8:	026f102a 	slt	v0,s3,t7
  4013ac:	ada70000 	sw	a3,0(t5)
  4013b0:	25290004 	addiu	t1,t1,4
  4013b4:	25ad0004 	addiu	t5,t5,4
  4013b8:	1040ffad 	beqz	v0,401270 <__qdivrem+0x2d4>
  4013bc:	258c0004 	addiu	t4,t4,4
  4013c0:	12400022 	beqz	s2,40144c <__qdivrem+0x4b0>
  4013c4:	00000000 	nop
  4013c8:	12a00016 	beqz	s5,401424 <__qdivrem+0x488>
  4013cc:	02f32821 	addu	a1,s7,s3
  4013d0:	0265102a 	slt	v0,s3,a1
  4013d4:	10400011 	beqz	v0,40141c <__qdivrem+0x480>
  4013d8:	00051080 	sll	v0,a1,0x2
  4013dc:	00051880 	sll	v1,a1,0x2
  4013e0:	24020010 	li	v0,16
  4013e4:	00553823 	subu	a3,v0,s5
  4013e8:	02833021 	addu	a2,s4,v1
  4013ec:	8cc2fffc 	lw	v0,-4(a2)
  4013f0:	8cc30000 	lw	v1,0(a2)
  4013f4:	00e21004 	sllv	v0,v0,a3
  4013f8:	02a31806 	srlv	v1,v1,s5
  4013fc:	3042ffff 	andi	v0,v0,0xffff
  401400:	24a5ffff 	addiu	a1,a1,-1
  401404:	00621825 	or	v1,v1,v0
  401408:	0265202a 	slt	a0,s3,a1
  40140c:	acc30000 	sw	v1,0(a2)
  401410:	1480fff6 	bnez	a0,4013ec <__qdivrem+0x450>
  401414:	24c6fffc 	addiu	a2,a2,-4
  401418:	00051080 	sll	v0,a1,0x2
  40141c:	00541021 	addu	v0,v0,s4
  401420:	ac400000 	sw	zero,0(v0)
  401424:	8fa20014 	lw	v0,20(sp)
  401428:	8fa40018 	lw	a0,24(sp)
  40142c:	00021400 	sll	v0,v0,0x10
  401430:	8fa3001c 	lw	v1,28(sp)
  401434:	00448025 	or	s0,v0,a0
  401438:	8fa20020 	lw	v0,32(sp)
  40143c:	00031c00 	sll	v1,v1,0x10
  401440:	00628825 	or	s1,v1,v0
  401444:	ae510004 	sw	s1,4(s2)
  401448:	ae500000 	sw	s0,0(s2)
  40144c:	8fa2003c 	lw	v0,60(sp)
  401450:	8fa40040 	lw	a0,64(sp)
  401454:	00021400 	sll	v0,v0,0x10
  401458:	8fa30044 	lw	v1,68(sp)
  40145c:	00448025 	or	s0,v0,a0
  401460:	8fa20048 	lw	v0,72(sp)
  401464:	00031c00 	sll	v1,v1,0x10
  401468:	00628825 	or	s1,v1,v0
  40146c:	02201821 	move	v1,s1
  401470:	08100402 	j	401008 <__qdivrem+0x6c>
  401474:	02001021 	move	v0,s0
  401478:	00001821 	move	v1,zero
  40147c:	08100402 	j	401008 <__qdivrem+0x6c>
  401480:	00001021 	move	v0,zero
  401484:	00602821 	move	a1,v1
  401488:	081004b1 	j	4012c4 <__qdivrem+0x328>
  40148c:	3407ffff 	li	a3,0xffff
  401490:	27a20024 	addiu	v0,sp,36
  401494:	24170004 	li	s7,4
  401498:	27be0028 	addiu	s8,sp,40
  40149c:	08100466 	j	401198 <__qdivrem+0x1fc>
  4014a0:	afa20050 	sw	v0,80(sp)
  4014a4:	24170002 	li	s7,2
  4014a8:	27be0030 	addiu	s8,sp,48
  4014ac:	08100466 	j	401198 <__qdivrem+0x1fc>
  4014b0:	afa20050 	sw	v0,80(sp)
  4014b4:	08100471 	j	4011c4 <__qdivrem+0x228>
  4014b8:	27b40010 	addiu	s4,sp,16
  4014bc:	08100494 	j	401250 <__qdivrem+0x2b4>
  4014c0:	0000a821 	move	s5,zero
  4014c4:	00042880 	sll	a1,a0,0x2
  4014c8:	0810047e 	j	4011f8 <__qdivrem+0x25c>
  4014cc:	27a60038 	addiu	a2,sp,56
