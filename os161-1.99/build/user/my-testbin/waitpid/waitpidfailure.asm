
../../../build/user/my-testbin/waitpid/waitpidfailure:     file format elf32-tradbigmips

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
  400028:	0c100075 	jal	4001d4 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c10008b 	jal	40022c <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <main>:
  400050:	27bdffe0 	addiu	sp,sp,-32
  400054:	afbf0018 	sw	ra,24(sp)
  400058:	0c10008f 	jal	40023c <getpid>
  40005c:	00000000 	nop
  400060:	00402021 	move	a0,v0
  400064:	00003021 	move	a2,zero
  400068:	0c10008d 	jal	400234 <waitpid>
  40006c:	27a50010 	addiu	a1,sp,16
  400070:	3c040040 	lui	a0,0x40
  400074:	24841560 	addiu	a0,a0,5472
  400078:	0c100047 	jal	40011c <printf>
  40007c:	00402821 	move	a1,v0
  400080:	3c031000 	lui	v1,0x1000
  400084:	8c650010 	lw	a1,16(v1)
  400088:	3c040040 	lui	a0,0x40
  40008c:	0c100047 	jal	40011c <printf>
  400090:	24841574 	addiu	a0,a0,5492
  400094:	8fbf0018 	lw	ra,24(sp)
  400098:	00001021 	move	v0,zero
  40009c:	03e00008 	jr	ra
  4000a0:	27bd0020 	addiu	sp,sp,32
	...

004000b0 <vprintf>:
  4000b0:	00803021 	move	a2,a0
  4000b4:	3c040040 	lui	a0,0x40
  4000b8:	00a03821 	move	a3,a1
  4000bc:	248400c8 	addiu	a0,a0,200
  4000c0:	081001f1 	j	4007c4 <__vprintf>
  4000c4:	00002821 	move	a1,zero

004000c8 <__printf_send>:
  4000c8:	27bdffe0 	addiu	sp,sp,-32
  4000cc:	afb20018 	sw	s2,24(sp)
  4000d0:	afb10014 	sw	s1,20(sp)
  4000d4:	afbf001c 	sw	ra,28(sp)
  4000d8:	afb00010 	sw	s0,16(sp)
  4000dc:	00c09021 	move	s2,a2
  4000e0:	10c00008 	beqz	a2,400104 <__printf_send+0x3c>
  4000e4:	00a08821 	move	s1,a1
  4000e8:	00008021 	move	s0,zero
  4000ec:	02301021 	addu	v0,s1,s0
  4000f0:	80440000 	lb	a0,0(v0)
  4000f4:	0c100054 	jal	400150 <putchar>
  4000f8:	26100001 	addiu	s0,s0,1
  4000fc:	1650fffc 	bne	s2,s0,4000f0 <__printf_send+0x28>
  400100:	02301021 	addu	v0,s1,s0
  400104:	8fbf001c 	lw	ra,28(sp)
  400108:	8fb20018 	lw	s2,24(sp)
  40010c:	8fb10014 	lw	s1,20(sp)
  400110:	8fb00010 	lw	s0,16(sp)
  400114:	03e00008 	jr	ra
  400118:	27bd0020 	addiu	sp,sp,32

0040011c <printf>:
  40011c:	27bdffe0 	addiu	sp,sp,-32
  400120:	27a20024 	addiu	v0,sp,36
  400124:	afa50024 	sw	a1,36(sp)
  400128:	00402821 	move	a1,v0
  40012c:	afbf0018 	sw	ra,24(sp)
  400130:	afa60028 	sw	a2,40(sp)
  400134:	afa7002c 	sw	a3,44(sp)
  400138:	0c10002c 	jal	4000b0 <vprintf>
  40013c:	afa20010 	sw	v0,16(sp)
  400140:	8fbf0018 	lw	ra,24(sp)
  400144:	00000000 	nop
  400148:	03e00008 	jr	ra
  40014c:	27bd0020 	addiu	sp,sp,32

00400150 <putchar>:
  400150:	27bdffe0 	addiu	sp,sp,-32
  400154:	afb00018 	sw	s0,24(sp)
  400158:	27a50010 	addiu	a1,sp,16
  40015c:	00808021 	move	s0,a0
  400160:	24060001 	li	a2,1
  400164:	24040001 	li	a0,1
  400168:	afbf001c 	sw	ra,28(sp)
  40016c:	0c1000cb 	jal	40032c <write>
  400170:	a3b00010 	sb	s0,16(sp)
  400174:	18400005 	blez	v0,40018c <putchar+0x3c>
  400178:	02001021 	move	v0,s0
  40017c:	8fbf001c 	lw	ra,28(sp)
  400180:	8fb00018 	lw	s0,24(sp)
  400184:	03e00008 	jr	ra
  400188:	27bd0020 	addiu	sp,sp,32
  40018c:	2410ffff 	li	s0,-1
  400190:	02001021 	move	v0,s0
  400194:	8fbf001c 	lw	ra,28(sp)
  400198:	8fb00018 	lw	s0,24(sp)
  40019c:	03e00008 	jr	ra
  4001a0:	27bd0020 	addiu	sp,sp,32
	...

004001b0 <__exit_hack>:
  4001b0:	27bdfff8 	addiu	sp,sp,-8
  4001b4:	24020001 	li	v0,1
  4001b8:	afa20000 	sw	v0,0(sp)
  4001bc:	8fa20000 	lw	v0,0(sp)
  4001c0:	00000000 	nop
  4001c4:	1440fffd 	bnez	v0,4001bc <__exit_hack+0xc>
  4001c8:	00000000 	nop
  4001cc:	03e00008 	jr	ra
  4001d0:	27bd0008 	addiu	sp,sp,8

004001d4 <exit>:
  4001d4:	27bdffe8 	addiu	sp,sp,-24
  4001d8:	afbf0010 	sw	ra,16(sp)
  4001dc:	0c10008b 	jal	40022c <_exit>
  4001e0:	00000000 	nop
	...

004001f0 <__syscall>:
  4001f0:	0000000c 	syscall
  4001f4:	10e00005 	beqz	a3,40020c <__syscall+0x1c>
  4001f8:	00000000 	nop
  4001fc:	3c011000 	lui	at,0x1000
  400200:	ac220010 	sw	v0,16(at)
  400204:	2403ffff 	li	v1,-1
  400208:	2402ffff 	li	v0,-1
  40020c:	03e00008 	jr	ra
  400210:	00000000 	nop

00400214 <fork>:
  400214:	0810007c 	j	4001f0 <__syscall>
  400218:	24020000 	li	v0,0

0040021c <vfork>:
  40021c:	0810007c 	j	4001f0 <__syscall>
  400220:	24020001 	li	v0,1

00400224 <execv>:
  400224:	0810007c 	j	4001f0 <__syscall>
  400228:	24020002 	li	v0,2

0040022c <_exit>:
  40022c:	0810007c 	j	4001f0 <__syscall>
  400230:	24020003 	li	v0,3

00400234 <waitpid>:
  400234:	0810007c 	j	4001f0 <__syscall>
  400238:	24020004 	li	v0,4

0040023c <getpid>:
  40023c:	0810007c 	j	4001f0 <__syscall>
  400240:	24020005 	li	v0,5

00400244 <getppid>:
  400244:	0810007c 	j	4001f0 <__syscall>
  400248:	24020006 	li	v0,6

0040024c <sbrk>:
  40024c:	0810007c 	j	4001f0 <__syscall>
  400250:	24020007 	li	v0,7

00400254 <mmap>:
  400254:	0810007c 	j	4001f0 <__syscall>
  400258:	24020008 	li	v0,8

0040025c <munmap>:
  40025c:	0810007c 	j	4001f0 <__syscall>
  400260:	24020009 	li	v0,9

00400264 <mprotect>:
  400264:	0810007c 	j	4001f0 <__syscall>
  400268:	2402000a 	li	v0,10

0040026c <umask>:
  40026c:	0810007c 	j	4001f0 <__syscall>
  400270:	24020011 	li	v0,17

00400274 <issetugid>:
  400274:	0810007c 	j	4001f0 <__syscall>
  400278:	24020012 	li	v0,18

0040027c <getresuid>:
  40027c:	0810007c 	j	4001f0 <__syscall>
  400280:	24020013 	li	v0,19

00400284 <setresuid>:
  400284:	0810007c 	j	4001f0 <__syscall>
  400288:	24020014 	li	v0,20

0040028c <getresgid>:
  40028c:	0810007c 	j	4001f0 <__syscall>
  400290:	24020015 	li	v0,21

00400294 <setresgid>:
  400294:	0810007c 	j	4001f0 <__syscall>
  400298:	24020016 	li	v0,22

0040029c <getgroups>:
  40029c:	0810007c 	j	4001f0 <__syscall>
  4002a0:	24020017 	li	v0,23

004002a4 <setgroups>:
  4002a4:	0810007c 	j	4001f0 <__syscall>
  4002a8:	24020018 	li	v0,24

004002ac <__getlogin>:
  4002ac:	0810007c 	j	4001f0 <__syscall>
  4002b0:	24020019 	li	v0,25

004002b4 <__setlogin>:
  4002b4:	0810007c 	j	4001f0 <__syscall>
  4002b8:	2402001a 	li	v0,26

004002bc <kill>:
  4002bc:	0810007c 	j	4001f0 <__syscall>
  4002c0:	2402001b 	li	v0,27

004002c4 <sigaction>:
  4002c4:	0810007c 	j	4001f0 <__syscall>
  4002c8:	2402001c 	li	v0,28

004002cc <sigpending>:
  4002cc:	0810007c 	j	4001f0 <__syscall>
  4002d0:	2402001d 	li	v0,29

004002d4 <sigprocmask>:
  4002d4:	0810007c 	j	4001f0 <__syscall>
  4002d8:	2402001e 	li	v0,30

004002dc <sigsuspend>:
  4002dc:	0810007c 	j	4001f0 <__syscall>
  4002e0:	2402001f 	li	v0,31

004002e4 <sigreturn>:
  4002e4:	0810007c 	j	4001f0 <__syscall>
  4002e8:	24020020 	li	v0,32

004002ec <open>:
  4002ec:	0810007c 	j	4001f0 <__syscall>
  4002f0:	2402002d 	li	v0,45

004002f4 <pipe>:
  4002f4:	0810007c 	j	4001f0 <__syscall>
  4002f8:	2402002e 	li	v0,46

004002fc <dup>:
  4002fc:	0810007c 	j	4001f0 <__syscall>
  400300:	2402002f 	li	v0,47

00400304 <dup2>:
  400304:	0810007c 	j	4001f0 <__syscall>
  400308:	24020030 	li	v0,48

0040030c <close>:
  40030c:	0810007c 	j	4001f0 <__syscall>
  400310:	24020031 	li	v0,49

00400314 <read>:
  400314:	0810007c 	j	4001f0 <__syscall>
  400318:	24020032 	li	v0,50

0040031c <pread>:
  40031c:	0810007c 	j	4001f0 <__syscall>
  400320:	24020033 	li	v0,51

00400324 <getdirentry>:
  400324:	0810007c 	j	4001f0 <__syscall>
  400328:	24020036 	li	v0,54

0040032c <write>:
  40032c:	0810007c 	j	4001f0 <__syscall>
  400330:	24020037 	li	v0,55

00400334 <pwrite>:
  400334:	0810007c 	j	4001f0 <__syscall>
  400338:	24020038 	li	v0,56

0040033c <lseek>:
  40033c:	0810007c 	j	4001f0 <__syscall>
  400340:	2402003b 	li	v0,59

00400344 <flock>:
  400344:	0810007c 	j	4001f0 <__syscall>
  400348:	2402003c 	li	v0,60

0040034c <ftruncate>:
  40034c:	0810007c 	j	4001f0 <__syscall>
  400350:	2402003d 	li	v0,61

00400354 <fsync>:
  400354:	0810007c 	j	4001f0 <__syscall>
  400358:	2402003e 	li	v0,62

0040035c <fcntl>:
  40035c:	0810007c 	j	4001f0 <__syscall>
  400360:	2402003f 	li	v0,63

00400364 <ioctl>:
  400364:	0810007c 	j	4001f0 <__syscall>
  400368:	24020040 	li	v0,64

0040036c <select>:
  40036c:	0810007c 	j	4001f0 <__syscall>
  400370:	24020041 	li	v0,65

00400374 <poll>:
  400374:	0810007c 	j	4001f0 <__syscall>
  400378:	24020042 	li	v0,66

0040037c <link>:
  40037c:	0810007c 	j	4001f0 <__syscall>
  400380:	24020043 	li	v0,67

00400384 <remove>:
  400384:	0810007c 	j	4001f0 <__syscall>
  400388:	24020044 	li	v0,68

0040038c <mkdir>:
  40038c:	0810007c 	j	4001f0 <__syscall>
  400390:	24020045 	li	v0,69

00400394 <rmdir>:
  400394:	0810007c 	j	4001f0 <__syscall>
  400398:	24020046 	li	v0,70

0040039c <mkfifo>:
  40039c:	0810007c 	j	4001f0 <__syscall>
  4003a0:	24020047 	li	v0,71

004003a4 <rename>:
  4003a4:	0810007c 	j	4001f0 <__syscall>
  4003a8:	24020048 	li	v0,72

004003ac <access>:
  4003ac:	0810007c 	j	4001f0 <__syscall>
  4003b0:	24020049 	li	v0,73

004003b4 <chdir>:
  4003b4:	0810007c 	j	4001f0 <__syscall>
  4003b8:	2402004a 	li	v0,74

004003bc <fchdir>:
  4003bc:	0810007c 	j	4001f0 <__syscall>
  4003c0:	2402004b 	li	v0,75

004003c4 <__getcwd>:
  4003c4:	0810007c 	j	4001f0 <__syscall>
  4003c8:	2402004c 	li	v0,76

004003cc <symlink>:
  4003cc:	0810007c 	j	4001f0 <__syscall>
  4003d0:	2402004d 	li	v0,77

004003d4 <readlink>:
  4003d4:	0810007c 	j	4001f0 <__syscall>
  4003d8:	2402004e 	li	v0,78

004003dc <mount>:
  4003dc:	0810007c 	j	4001f0 <__syscall>
  4003e0:	2402004f 	li	v0,79

004003e4 <unmount>:
  4003e4:	0810007c 	j	4001f0 <__syscall>
  4003e8:	24020050 	li	v0,80

004003ec <stat>:
  4003ec:	0810007c 	j	4001f0 <__syscall>
  4003f0:	24020051 	li	v0,81

004003f4 <fstat>:
  4003f4:	0810007c 	j	4001f0 <__syscall>
  4003f8:	24020052 	li	v0,82

004003fc <lstat>:
  4003fc:	0810007c 	j	4001f0 <__syscall>
  400400:	24020053 	li	v0,83

00400404 <utimes>:
  400404:	0810007c 	j	4001f0 <__syscall>
  400408:	24020054 	li	v0,84

0040040c <futimes>:
  40040c:	0810007c 	j	4001f0 <__syscall>
  400410:	24020055 	li	v0,85

00400414 <lutimes>:
  400414:	0810007c 	j	4001f0 <__syscall>
  400418:	24020056 	li	v0,86

0040041c <chmod>:
  40041c:	0810007c 	j	4001f0 <__syscall>
  400420:	24020057 	li	v0,87

00400424 <chown>:
  400424:	0810007c 	j	4001f0 <__syscall>
  400428:	24020058 	li	v0,88

0040042c <fchmod>:
  40042c:	0810007c 	j	4001f0 <__syscall>
  400430:	24020059 	li	v0,89

00400434 <fchown>:
  400434:	0810007c 	j	4001f0 <__syscall>
  400438:	2402005a 	li	v0,90

0040043c <lchmod>:
  40043c:	0810007c 	j	4001f0 <__syscall>
  400440:	2402005b 	li	v0,91

00400444 <lchown>:
  400444:	0810007c 	j	4001f0 <__syscall>
  400448:	2402005c 	li	v0,92

0040044c <socket>:
  40044c:	0810007c 	j	4001f0 <__syscall>
  400450:	24020062 	li	v0,98

00400454 <bind>:
  400454:	0810007c 	j	4001f0 <__syscall>
  400458:	24020063 	li	v0,99

0040045c <connect>:
  40045c:	0810007c 	j	4001f0 <__syscall>
  400460:	24020064 	li	v0,100

00400464 <listen>:
  400464:	0810007c 	j	4001f0 <__syscall>
  400468:	24020065 	li	v0,101

0040046c <accept>:
  40046c:	0810007c 	j	4001f0 <__syscall>
  400470:	24020066 	li	v0,102

00400474 <shutdown>:
  400474:	0810007c 	j	4001f0 <__syscall>
  400478:	24020068 	li	v0,104

0040047c <getsockname>:
  40047c:	0810007c 	j	4001f0 <__syscall>
  400480:	24020069 	li	v0,105

00400484 <getpeername>:
  400484:	0810007c 	j	4001f0 <__syscall>
  400488:	2402006a 	li	v0,106

0040048c <getsockopt>:
  40048c:	0810007c 	j	4001f0 <__syscall>
  400490:	2402006b 	li	v0,107

00400494 <setsockopt>:
  400494:	0810007c 	j	4001f0 <__syscall>
  400498:	2402006c 	li	v0,108

0040049c <__time>:
  40049c:	0810007c 	j	4001f0 <__syscall>
  4004a0:	24020071 	li	v0,113

004004a4 <__settime>:
  4004a4:	0810007c 	j	4001f0 <__syscall>
  4004a8:	24020072 	li	v0,114

004004ac <nanosleep>:
  4004ac:	0810007c 	j	4001f0 <__syscall>
  4004b0:	24020073 	li	v0,115

004004b4 <sync>:
  4004b4:	0810007c 	j	4001f0 <__syscall>
  4004b8:	24020076 	li	v0,118

004004bc <reboot>:
  4004bc:	0810007c 	j	4001f0 <__syscall>
  4004c0:	24020077 	li	v0,119
	...

004004d0 <__pf_print>:
  4004d0:	27bdffe0 	addiu	sp,sp,-32
  4004d4:	afbf0018 	sw	ra,24(sp)
  4004d8:	afb10014 	sw	s1,20(sp)
  4004dc:	afb00010 	sw	s0,16(sp)
  4004e0:	8c830000 	lw	v1,0(a0)
  4004e4:	00808021 	move	s0,a0
  4004e8:	8c840004 	lw	a0,4(a0)
  4004ec:	0060f809 	jalr	v1
  4004f0:	00c08821 	move	s1,a2
  4004f4:	8e02000c 	lw	v0,12(s0)
  4004f8:	00000000 	nop
  4004fc:	00511021 	addu	v0,v0,s1
  400500:	ae02000c 	sw	v0,12(s0)
  400504:	8fbf0018 	lw	ra,24(sp)
  400508:	8fb10014 	lw	s1,20(sp)
  40050c:	8fb00010 	lw	s0,16(sp)
  400510:	03e00008 	jr	ra
  400514:	27bd0020 	addiu	sp,sp,32

00400518 <__pf_endfield>:
  400518:	24020020 	li	v0,32
  40051c:	ac82002c 	sw	v0,44(a0)
  400520:	00001821 	move	v1,zero
  400524:	00001021 	move	v0,zero
  400528:	ac800038 	sw	zero,56(a0)
  40052c:	ac800010 	sw	zero,16(a0)
  400530:	ac800014 	sw	zero,20(a0)
  400534:	ac83001c 	sw	v1,28(a0)
  400538:	ac820018 	sw	v0,24(a0)
  40053c:	ac800020 	sw	zero,32(a0)
  400540:	ac800024 	sw	zero,36(a0)
  400544:	ac800028 	sw	zero,40(a0)
  400548:	ac800030 	sw	zero,48(a0)
  40054c:	03e00008 	jr	ra
  400550:	ac800034 	sw	zero,52(a0)

00400554 <__pf_fill>:
  400554:	27bdffd0 	addiu	sp,sp,-48
  400558:	afb30024 	sw	s3,36(sp)
  40055c:	afb20020 	sw	s2,32(sp)
  400560:	afbf0028 	sw	ra,40(sp)
  400564:	afb1001c 	sw	s1,28(sp)
  400568:	afb00018 	sw	s0,24(sp)
  40056c:	00809821 	move	s3,a0
  400570:	8c82002c 	lw	v0,44(a0)
  400574:	18a0000b 	blez	a1,4005a4 <__pf_fill+0x50>
  400578:	00a09021 	move	s2,a1
  40057c:	a3a20010 	sb	v0,16(sp)
  400580:	00008021 	move	s0,zero
  400584:	27b10010 	addiu	s1,sp,16
  400588:	26100001 	addiu	s0,s0,1
  40058c:	02602021 	move	a0,s3
  400590:	02202821 	move	a1,s1
  400594:	0c100134 	jal	4004d0 <__pf_print>
  400598:	24060001 	li	a2,1
  40059c:	1650fffb 	bne	s2,s0,40058c <__pf_fill+0x38>
  4005a0:	26100001 	addiu	s0,s0,1
  4005a4:	8fbf0028 	lw	ra,40(sp)
  4005a8:	8fb30024 	lw	s3,36(sp)
  4005ac:	8fb20020 	lw	s2,32(sp)
  4005b0:	8fb1001c 	lw	s1,28(sp)
  4005b4:	8fb00018 	lw	s0,24(sp)
  4005b8:	03e00008 	jr	ra
  4005bc:	27bd0030 	addiu	sp,sp,48

004005c0 <__pf_printstuff>:
  4005c0:	27bdffd0 	addiu	sp,sp,-48
  4005c4:	afbf0028 	sw	ra,40(sp)
  4005c8:	afb50024 	sw	s5,36(sp)
  4005cc:	afb40020 	sw	s4,32(sp)
  4005d0:	afb3001c 	sw	s3,28(sp)
  4005d4:	afb20018 	sw	s2,24(sp)
  4005d8:	00c09821 	move	s3,a2
  4005dc:	afb10014 	sw	s1,20(sp)
  4005e0:	afb00010 	sw	s0,16(sp)
  4005e4:	00808821 	move	s1,a0
  4005e8:	00a02021 	move	a0,a1
  4005ec:	00a0a021 	move	s4,a1
  4005f0:	0c100354 	jal	400d50 <strlen>
  4005f4:	00e0a821 	move	s5,a3
  4005f8:	02602021 	move	a0,s3
  4005fc:	0c100354 	jal	400d50 <strlen>
  400600:	00409021 	move	s2,v0
  400604:	02a02021 	move	a0,s5
  400608:	0c100354 	jal	400d50 <strlen>
  40060c:	02428021 	addu	s0,s2,v0
  400610:	8e230024 	lw	v1,36(s1)
  400614:	02022821 	addu	a1,s0,v0
  400618:	00a3102a 	slt	v0,a1,v1
  40061c:	10400040 	beqz	v0,400720 <__pf_printstuff+0x160>
  400620:	00658023 	subu	s0,v1,a1
  400624:	1a000056 	blez	s0,400780 <__pf_printstuff+0x1c0>
  400628:	02403021 	move	a2,s2
  40062c:	8e220028 	lw	v0,40(s1)
  400630:	00000000 	nop
  400634:	10400028 	beqz	v0,4006d8 <__pf_printstuff+0x118>
  400638:	24020030 	li	v0,48
  40063c:	0c100354 	jal	400d50 <strlen>
  400640:	02802021 	move	a0,s4
  400644:	00403021 	move	a2,v0
  400648:	02802821 	move	a1,s4
  40064c:	0c100134 	jal	4004d0 <__pf_print>
  400650:	02202021 	move	a0,s1
  400654:	0c100354 	jal	400d50 <strlen>
  400658:	02602021 	move	a0,s3
  40065c:	00403021 	move	a2,v0
  400660:	02202021 	move	a0,s1
  400664:	0c100134 	jal	4004d0 <__pf_print>
  400668:	02602821 	move	a1,s3
  40066c:	8e220028 	lw	v0,40(s1)
  400670:	00000000 	nop
  400674:	14400005 	bnez	v0,40068c <__pf_printstuff+0xcc>
  400678:	24020030 	li	v0,48
  40067c:	8e23002c 	lw	v1,44(s1)
  400680:	00000000 	nop
  400684:	1062004b 	beq	v1,v0,4007b4 <__pf_printstuff+0x1f4>
  400688:	02202021 	move	a0,s1
  40068c:	0c100354 	jal	400d50 <strlen>
  400690:	02a02021 	move	a0,s5
  400694:	00403021 	move	a2,v0
  400698:	02202021 	move	a0,s1
  40069c:	0c100134 	jal	4004d0 <__pf_print>
  4006a0:	02a02821 	move	a1,s5
  4006a4:	8e220028 	lw	v0,40(s1)
  4006a8:	00000000 	nop
  4006ac:	14400012 	bnez	v0,4006f8 <__pf_printstuff+0x138>
  4006b0:	02202021 	move	a0,s1
  4006b4:	8fbf0028 	lw	ra,40(sp)
  4006b8:	8fb50024 	lw	s5,36(sp)
  4006bc:	8fb40020 	lw	s4,32(sp)
  4006c0:	8fb3001c 	lw	s3,28(sp)
  4006c4:	8fb20018 	lw	s2,24(sp)
  4006c8:	8fb10014 	lw	s1,20(sp)
  4006cc:	8fb00010 	lw	s0,16(sp)
  4006d0:	03e00008 	jr	ra
  4006d4:	27bd0030 	addiu	sp,sp,48
  4006d8:	8e23002c 	lw	v1,44(s1)
  4006dc:	00000000 	nop
  4006e0:	1062ffd6 	beq	v1,v0,40063c <__pf_printstuff+0x7c>
  4006e4:	02202021 	move	a0,s1
  4006e8:	0c100155 	jal	400554 <__pf_fill>
  4006ec:	02002821 	move	a1,s0
  4006f0:	0810018f 	j	40063c <__pf_printstuff+0x7c>
  4006f4:	00000000 	nop
  4006f8:	02002821 	move	a1,s0
  4006fc:	8fbf0028 	lw	ra,40(sp)
  400700:	8fb50024 	lw	s5,36(sp)
  400704:	8fb40020 	lw	s4,32(sp)
  400708:	8fb3001c 	lw	s3,28(sp)
  40070c:	8fb20018 	lw	s2,24(sp)
  400710:	8fb10014 	lw	s1,20(sp)
  400714:	8fb00010 	lw	s0,16(sp)
  400718:	08100155 	j	400554 <__pf_fill>
  40071c:	27bd0030 	addiu	sp,sp,48
  400720:	02802821 	move	a1,s4
  400724:	02403021 	move	a2,s2
  400728:	0c100134 	jal	4004d0 <__pf_print>
  40072c:	02202021 	move	a0,s1
  400730:	0c100354 	jal	400d50 <strlen>
  400734:	02602021 	move	a0,s3
  400738:	00403021 	move	a2,v0
  40073c:	02202021 	move	a0,s1
  400740:	0c100134 	jal	4004d0 <__pf_print>
  400744:	02602821 	move	a1,s3
  400748:	0c100354 	jal	400d50 <strlen>
  40074c:	02a02021 	move	a0,s5
  400750:	02202021 	move	a0,s1
  400754:	02a02821 	move	a1,s5
  400758:	8fbf0028 	lw	ra,40(sp)
  40075c:	8fb50024 	lw	s5,36(sp)
  400760:	8fb40020 	lw	s4,32(sp)
  400764:	8fb3001c 	lw	s3,28(sp)
  400768:	8fb20018 	lw	s2,24(sp)
  40076c:	8fb10014 	lw	s1,20(sp)
  400770:	8fb00010 	lw	s0,16(sp)
  400774:	00403021 	move	a2,v0
  400778:	08100134 	j	4004d0 <__pf_print>
  40077c:	27bd0030 	addiu	sp,sp,48
  400780:	02802821 	move	a1,s4
  400784:	0c100134 	jal	4004d0 <__pf_print>
  400788:	02202021 	move	a0,s1
  40078c:	0c100354 	jal	400d50 <strlen>
  400790:	02602021 	move	a0,s3
  400794:	00403021 	move	a2,v0
  400798:	02202021 	move	a0,s1
  40079c:	0c100134 	jal	4004d0 <__pf_print>
  4007a0:	02602821 	move	a1,s3
  4007a4:	0c100354 	jal	400d50 <strlen>
  4007a8:	02a02021 	move	a0,s5
  4007ac:	081001d5 	j	400754 <__pf_printstuff+0x194>
  4007b0:	02202021 	move	a0,s1
  4007b4:	0c100155 	jal	400554 <__pf_fill>
  4007b8:	02002821 	move	a1,s0
  4007bc:	081001a3 	j	40068c <__pf_printstuff+0xcc>
  4007c0:	00000000 	nop

004007c4 <__vprintf>:
  4007c4:	27bdff68 	addiu	sp,sp,-152
  4007c8:	afbe0090 	sw	s8,144(sp)
  4007cc:	27be0030 	addiu	s8,sp,48
  4007d0:	afb10074 	sw	s1,116(sp)
  4007d4:	afa40030 	sw	a0,48(sp)
  4007d8:	00c08821 	move	s1,a2
  4007dc:	03c02021 	move	a0,s8
  4007e0:	afb00070 	sw	s0,112(sp)
  4007e4:	afbf0094 	sw	ra,148(sp)
  4007e8:	afb7008c 	sw	s7,140(sp)
  4007ec:	afb60088 	sw	s6,136(sp)
  4007f0:	afb50084 	sw	s5,132(sp)
  4007f4:	afb40080 	sw	s4,128(sp)
  4007f8:	afb3007c 	sw	s3,124(sp)
  4007fc:	afb20078 	sw	s2,120(sp)
  400800:	afa50034 	sw	a1,52(sp)
  400804:	afa70038 	sw	a3,56(sp)
  400808:	0c100146 	jal	400518 <__pf_endfield>
  40080c:	afa0003c 	sw	zero,60(sp)
  400810:	82300000 	lb	s0,0(s1)
  400814:	00000000 	nop
  400818:	12000017 	beqz	s0,400878 <__vprintf+0xb4>
  40081c:	0220a021 	move	s4,s1
  400820:	08100212 	j	400848 <__vprintf+0x84>
  400824:	00000000 	nop
  400828:	27a50010 	addiu	a1,sp,16
  40082c:	24060001 	li	a2,1
  400830:	0c100134 	jal	4004d0 <__pf_print>
  400834:	a3b00010 	sb	s0,16(sp)
  400838:	82900001 	lb	s0,1(s4)
  40083c:	00000000 	nop
  400840:	1200000d 	beqz	s0,400878 <__vprintf+0xb4>
  400844:	26940001 	addiu	s4,s4,1
  400848:	8fa20040 	lw	v0,64(sp)
  40084c:	00000000 	nop
  400850:	14400016 	bnez	v0,4008ac <__vprintf+0xe8>
  400854:	24020025 	li	v0,37
  400858:	1602fff3 	bne	s0,v0,400828 <__vprintf+0x64>
  40085c:	03c02021 	move	a0,s8
  400860:	24020001 	li	v0,1
  400864:	afa20040 	sw	v0,64(sp)
  400868:	82900001 	lb	s0,1(s4)
  40086c:	00000000 	nop
  400870:	1600fff5 	bnez	s0,400848 <__vprintf+0x84>
  400874:	26940001 	addiu	s4,s4,1
  400878:	8fa2003c 	lw	v0,60(sp)
  40087c:	8fbf0094 	lw	ra,148(sp)
  400880:	8fbe0090 	lw	s8,144(sp)
  400884:	8fb7008c 	lw	s7,140(sp)
  400888:	8fb60088 	lw	s6,136(sp)
  40088c:	8fb50084 	lw	s5,132(sp)
  400890:	8fb40080 	lw	s4,128(sp)
  400894:	8fb3007c 	lw	s3,124(sp)
  400898:	8fb20078 	lw	s2,120(sp)
  40089c:	8fb10074 	lw	s1,116(sp)
  4008a0:	8fb00070 	lw	s0,112(sp)
  4008a4:	03e00008 	jr	ra
  4008a8:	27bd0098 	addiu	sp,sp,152
  4008ac:	3c040040 	lui	a0,0x40
  4008b0:	24841590 	addiu	a0,a0,5520
  4008b4:	0c10033c 	jal	400cf0 <strchr>
  4008b8:	02002821 	move	a1,s0
  4008bc:	10400031 	beqz	v0,400984 <__vprintf+0x1c0>
  4008c0:	24020030 	li	v0,48
  4008c4:	1202001d 	beq	s0,v0,40093c <__vprintf+0x178>
  4008c8:	2a020031 	slti	v0,s0,49
  4008cc:	10400013 	beqz	v0,40091c <__vprintf+0x158>
  4008d0:	2402006c 	li	v0,108
  4008d4:	24020023 	li	v0,35
  4008d8:	12020027 	beq	s0,v0,400978 <__vprintf+0x1b4>
  4008dc:	2402002d 	li	v0,45
  4008e0:	1202004a 	beq	s0,v0,400a0c <__vprintf+0x248>
  4008e4:	24020001 	li	v0,1
  4008e8:	2602ffcf 	addiu	v0,s0,-49
  4008ec:	2c420009 	sltiu	v0,v0,9
  4008f0:	1040001a 	beqz	v0,40095c <__vprintf+0x198>
  4008f4:	3c040040 	lui	a0,0x40
  4008f8:	8fa20054 	lw	v0,84(sp)
  4008fc:	00000000 	nop
  400900:	000218c0 	sll	v1,v0,0x3
  400904:	00021040 	sll	v0,v0,0x1
  400908:	00431021 	addu	v0,v0,v1
  40090c:	02021021 	addu	v0,s0,v0
  400910:	2442ffd0 	addiu	v0,v0,-48
  400914:	0810020e 	j	400838 <__vprintf+0x74>
  400918:	afa20054 	sw	v0,84(sp)
  40091c:	1602fff3 	bne	s0,v0,4008ec <__vprintf+0x128>
  400920:	2602ffcf 	addiu	v0,s0,-49
  400924:	8fa20044 	lw	v0,68(sp)
  400928:	24030001 	li	v1,1
  40092c:	10430039 	beq	v0,v1,400a14 <__vprintf+0x250>
  400930:	24020002 	li	v0,2
  400934:	0810020e 	j	400838 <__vprintf+0x74>
  400938:	afa30044 	sw	v1,68(sp)
  40093c:	8fa20054 	lw	v0,84(sp)
  400940:	00000000 	nop
  400944:	1840008c 	blez	v0,400b78 <__vprintf+0x3b4>
  400948:	000218c0 	sll	v1,v0,0x3
  40094c:	00021040 	sll	v0,v0,0x1
  400950:	00431021 	addu	v0,v0,v1
  400954:	0810020e 	j	400838 <__vprintf+0x74>
  400958:	afa20054 	sw	v0,84(sp)
  40095c:	3c060040 	lui	a2,0x40
  400960:	248415a0 	addiu	a0,a0,5536
  400964:	24c615c8 	addiu	a2,a2,5576
  400968:	0c100378 	jal	400de0 <__bad_assert>
  40096c:	240500dc 	li	a1,220
  400970:	0810023e 	j	4008f8 <__vprintf+0x134>
  400974:	00000000 	nop
  400978:	24020001 	li	v0,1
  40097c:	0810020e 	j	400838 <__vprintf+0x74>
  400980:	afa20068 	sw	v0,104(sp)
  400984:	3c040040 	lui	a0,0x40
  400988:	248415dc 	addiu	a0,a0,5596
  40098c:	0c10033c 	jal	400cf0 <strchr>
  400990:	02002821 	move	a1,s0
  400994:	10400091 	beqz	v0,400bdc <__vprintf+0x418>
  400998:	24020070 	li	v0,112
  40099c:	1202001f 	beq	s0,v0,400a1c <__vprintf+0x258>
  4009a0:	24020064 	li	v0,100
  4009a4:	1202009e 	beq	s0,v0,400c20 <__vprintf+0x45c>
  4009a8:	24020001 	li	v0,1
  4009ac:	8fa30044 	lw	v1,68(sp)
  4009b0:	00000000 	nop
  4009b4:	10620003 	beq	v1,v0,4009c4 <__vprintf+0x200>
  4009b8:	00000000 	nop
  4009bc:	14600074 	bnez	v1,400b90 <__vprintf+0x3cc>
  4009c0:	24020002 	li	v0,2
  4009c4:	8fa20038 	lw	v0,56(sp)
  4009c8:	afa00048 	sw	zero,72(sp)
  4009cc:	8c430000 	lw	v1,0(v0)
  4009d0:	24420004 	addiu	v0,v0,4
  4009d4:	afa20038 	sw	v0,56(sp)
  4009d8:	afa3004c 	sw	v1,76(sp)
  4009dc:	2602ff9c 	addiu	v0,s0,-100
  4009e0:	304200ff 	andi	v0,v0,0xff
  4009e4:	2c430015 	sltiu	v1,v0,21
  4009e8:	10600015 	beqz	v1,400a40 <__vprintf+0x27c>
  4009ec:	3c030040 	lui	v1,0x40
  4009f0:	00021080 	sll	v0,v0,0x2
  4009f4:	24631500 	addiu	v1,v1,5376
  4009f8:	00431021 	addu	v0,v0,v1
  4009fc:	8c440000 	lw	a0,0(v0)
  400a00:	00000000 	nop
  400a04:	00800008 	jr	a0
  400a08:	00000000 	nop
  400a0c:	0810020e 	j	400838 <__vprintf+0x74>
  400a10:	afa20058 	sw	v0,88(sp)
  400a14:	0810020e 	j	400838 <__vprintf+0x74>
  400a18:	afa20044 	sw	v0,68(sp)
  400a1c:	8fa20038 	lw	v0,56(sp)
  400a20:	afa00048 	sw	zero,72(sp)
  400a24:	24430004 	addiu	v1,v0,4
  400a28:	afa30038 	sw	v1,56(sp)
  400a2c:	8c440000 	lw	a0,0(v0)
  400a30:	00000000 	nop
  400a34:	afa4004c 	sw	a0,76(sp)
  400a38:	24020010 	li	v0,16
  400a3c:	afa20060 	sw	v0,96(sp)
  400a40:	8fa20068 	lw	v0,104(sp)
  400a44:	00000000 	nop
  400a48:	1440004d 	bnez	v0,400b80 <__vprintf+0x3bc>
  400a4c:	24020001 	li	v0,1
  400a50:	24020070 	li	v0,112
  400a54:	1202004a 	beq	s0,v0,400b80 <__vprintf+0x3bc>
  400a58:	24020001 	li	v0,1
  400a5c:	8fb60060 	lw	s6,96(sp)
  400a60:	3c020040 	lui	v0,0x40
  400a64:	8fb1004c 	lw	s1,76(sp)
  400a68:	8fb00048 	lw	s0,72(sp)
  400a6c:	a3a00029 	sb	zero,41(sp)
  400a70:	245715e4 	addiu	s7,v0,5604
  400a74:	27b50028 	addiu	s5,sp,40
  400a78:	02c09821 	move	s3,s6
  400a7c:	001697c3 	sra	s2,s6,0x1f
  400a80:	02202821 	move	a1,s1
  400a84:	02002021 	move	a0,s0
  400a88:	02603821 	move	a3,s3
  400a8c:	0c10036c 	jal	400db0 <__umoddi3>
  400a90:	02403021 	move	a2,s2
  400a94:	02e31821 	addu	v1,s7,v1
  400a98:	90620000 	lbu	v0,0(v1)
  400a9c:	02202821 	move	a1,s1
  400aa0:	02002021 	move	a0,s0
  400aa4:	02603821 	move	a3,s3
  400aa8:	02403021 	move	a2,s2
  400aac:	0c100364 	jal	400d90 <__udivdi3>
  400ab0:	a2a20000 	sb	v0,0(s5)
  400ab4:	00408021 	move	s0,v0
  400ab8:	02031025 	or	v0,s0,v1
  400abc:	00608821 	move	s1,v1
  400ac0:	1440ffef 	bnez	v0,400a80 <__vprintf+0x2bc>
  400ac4:	26b5ffff 	addiu	s5,s5,-1
  400ac8:	8fa20064 	lw	v0,100(sp)
  400acc:	00000000 	nop
  400ad0:	10400006 	beqz	v0,400aec <__vprintf+0x328>
  400ad4:	3c020040 	lui	v0,0x40
  400ad8:	24020010 	li	v0,16
  400adc:	12c2005e 	beq	s6,v0,400c58 <__vprintf+0x494>
  400ae0:	24020008 	li	v0,8
  400ae4:	12c20037 	beq	s6,v0,400bc4 <__vprintf+0x400>
  400ae8:	3c020040 	lui	v0,0x40
  400aec:	244615f4 	addiu	a2,v0,5620
  400af0:	8fa20050 	lw	v0,80(sp)
  400af4:	00000000 	nop
  400af8:	10400023 	beqz	v0,400b88 <__vprintf+0x3c4>
  400afc:	3c020040 	lui	v0,0x40
  400b00:	3c020040 	lui	v0,0x40
  400b04:	24451584 	addiu	a1,v0,5508
  400b08:	03c02021 	move	a0,s8
  400b0c:	0c100170 	jal	4005c0 <__pf_printstuff>
  400b10:	26a70001 	addiu	a3,s5,1
  400b14:	0c100146 	jal	400518 <__pf_endfield>
  400b18:	03c02021 	move	a0,s8
  400b1c:	0810020e 	j	400838 <__vprintf+0x74>
  400b20:	00000000 	nop
  400b24:	8fa20038 	lw	v0,56(sp)
  400b28:	2403fff8 	li	v1,-8
  400b2c:	24420007 	addiu	v0,v0,7
  400b30:	00431024 	and	v0,v0,v1
  400b34:	8c470004 	lw	a3,4(v0)
  400b38:	8c460000 	lw	a2,0(v0)
  400b3c:	24420008 	addiu	v0,v0,8
  400b40:	afa20038 	sw	v0,56(sp)
  400b44:	04c10040 	bgez	a2,400c48 <__vprintf+0x484>
  400b48:	2402000a 	li	v0,10
  400b4c:	00071823 	negu	v1,a3
  400b50:	0003282b 	sltu	a1,zero,v1
  400b54:	00061023 	negu	v0,a2
  400b58:	00451023 	subu	v0,v0,a1
  400b5c:	2404ffff 	li	a0,-1
  400b60:	afa40050 	sw	a0,80(sp)
  400b64:	afa3004c 	sw	v1,76(sp)
  400b68:	afa20048 	sw	v0,72(sp)
  400b6c:	2402000a 	li	v0,10
  400b70:	08100290 	j	400a40 <__vprintf+0x27c>
  400b74:	afa20060 	sw	v0,96(sp)
  400b78:	0810020e 	j	400838 <__vprintf+0x74>
  400b7c:	afb0005c 	sw	s0,92(sp)
  400b80:	08100297 	j	400a5c <__vprintf+0x298>
  400b84:	afa20064 	sw	v0,100(sp)
  400b88:	081002c2 	j	400b08 <__vprintf+0x344>
  400b8c:	244515f4 	addiu	a1,v0,5620
  400b90:	1462ff93 	bne	v1,v0,4009e0 <__vprintf+0x21c>
  400b94:	2602ff9c 	addiu	v0,s0,-100
  400b98:	8fa20038 	lw	v0,56(sp)
  400b9c:	2403fff8 	li	v1,-8
  400ba0:	24420007 	addiu	v0,v0,7
  400ba4:	00431024 	and	v0,v0,v1
  400ba8:	8c450004 	lw	a1,4(v0)
  400bac:	8c440000 	lw	a0,0(v0)
  400bb0:	24420008 	addiu	v0,v0,8
  400bb4:	afa20038 	sw	v0,56(sp)
  400bb8:	afa5004c 	sw	a1,76(sp)
  400bbc:	08100277 	j	4009dc <__vprintf+0x218>
  400bc0:	afa40048 	sw	a0,72(sp)
  400bc4:	3c020040 	lui	v0,0x40
  400bc8:	081002bc 	j	400af0 <__vprintf+0x32c>
  400bcc:	244615fc 	addiu	a2,v0,5628
  400bd0:	24020008 	li	v0,8
  400bd4:	08100290 	j	400a40 <__vprintf+0x27c>
  400bd8:	afa20060 	sw	v0,96(sp)
  400bdc:	24020073 	li	v0,115
  400be0:	12020028 	beq	s0,v0,400c84 <__vprintf+0x4c0>
  400be4:	24020063 	li	v0,99
  400be8:	12020037 	beq	s0,v0,400cc8 <__vprintf+0x504>
  400bec:	00000000 	nop
  400bf0:	a3b00011 	sb	s0,17(sp)
  400bf4:	3c050040 	lui	a1,0x40
  400bf8:	24a515f4 	addiu	a1,a1,5620
  400bfc:	03c02021 	move	a0,s8
  400c00:	00a03021 	move	a2,a1
  400c04:	27a70011 	addiu	a3,sp,17
  400c08:	0c100170 	jal	4005c0 <__pf_printstuff>
  400c0c:	a3a00012 	sb	zero,18(sp)
  400c10:	0c100146 	jal	400518 <__pf_endfield>
  400c14:	03c02021 	move	a0,s8
  400c18:	0810020e 	j	400838 <__vprintf+0x74>
  400c1c:	00000000 	nop
  400c20:	8fa30044 	lw	v1,68(sp)
  400c24:	00000000 	nop
  400c28:	1062000e 	beq	v1,v0,400c64 <__vprintf+0x4a0>
  400c2c:	00000000 	nop
  400c30:	1060000c 	beqz	v1,400c64 <__vprintf+0x4a0>
  400c34:	24020002 	li	v0,2
  400c38:	1062ffba 	beq	v1,v0,400b24 <__vprintf+0x360>
  400c3c:	00003821 	move	a3,zero
  400c40:	00003021 	move	a2,zero
  400c44:	2402000a 	li	v0,10
  400c48:	afa7004c 	sw	a3,76(sp)
  400c4c:	afa60048 	sw	a2,72(sp)
  400c50:	08100290 	j	400a40 <__vprintf+0x27c>
  400c54:	afa20060 	sw	v0,96(sp)
  400c58:	3c020040 	lui	v0,0x40
  400c5c:	081002bc 	j	400af0 <__vprintf+0x32c>
  400c60:	244615f8 	addiu	a2,v0,5624
  400c64:	8fa20038 	lw	v0,56(sp)
  400c68:	00000000 	nop
  400c6c:	8c430000 	lw	v1,0(v0)
  400c70:	24420004 	addiu	v0,v0,4
  400c74:	00603821 	move	a3,v1
  400c78:	000337c3 	sra	a2,v1,0x1f
  400c7c:	081002d1 	j	400b44 <__vprintf+0x380>
  400c80:	afa20038 	sw	v0,56(sp)
  400c84:	8fa30038 	lw	v1,56(sp)
  400c88:	00000000 	nop
  400c8c:	8c670000 	lw	a3,0(v1)
  400c90:	00000000 	nop
  400c94:	10e00013 	beqz	a3,400ce4 <__vprintf+0x520>
  400c98:	3c020040 	lui	v0,0x40
  400c9c:	3c050040 	lui	a1,0x40
  400ca0:	24a515f4 	addiu	a1,a1,5620
  400ca4:	24620004 	addiu	v0,v1,4
  400ca8:	03c02021 	move	a0,s8
  400cac:	00a03021 	move	a2,a1
  400cb0:	0c100170 	jal	4005c0 <__pf_printstuff>
  400cb4:	afa20038 	sw	v0,56(sp)
  400cb8:	0c100146 	jal	400518 <__pf_endfield>
  400cbc:	03c02021 	move	a0,s8
  400cc0:	0810020e 	j	400838 <__vprintf+0x74>
  400cc4:	00000000 	nop
  400cc8:	8fa20038 	lw	v0,56(sp)
  400ccc:	00000000 	nop
  400cd0:	8c430000 	lw	v1,0(v0)
  400cd4:	24420004 	addiu	v0,v0,4
  400cd8:	afa20038 	sw	v0,56(sp)
  400cdc:	081002fd 	j	400bf4 <__vprintf+0x430>
  400ce0:	a3a30011 	sb	v1,17(sp)
  400ce4:	08100327 	j	400c9c <__vprintf+0x4d8>
  400ce8:	24471588 	addiu	a3,v0,5512
  400cec:	00000000 	nop

00400cf0 <strchr>:
  400cf0:	80830000 	lb	v1,0(a0)
  400cf4:	00052e00 	sll	a1,a1,0x18
  400cf8:	00801021 	move	v0,a0
  400cfc:	1060000c 	beqz	v1,400d30 <strchr+0x40>
  400d00:	00052e03 	sra	a1,a1,0x18
  400d04:	14a30006 	bne	a1,v1,400d20 <strchr+0x30>
  400d08:	24420001 	addiu	v0,v0,1
  400d0c:	03e00008 	jr	ra
  400d10:	2442ffff 	addiu	v0,v0,-1
  400d14:	10a3000c 	beq	a1,v1,400d48 <strchr+0x58>
  400d18:	00000000 	nop
  400d1c:	24420001 	addiu	v0,v0,1
  400d20:	80430000 	lb	v1,0(v0)
  400d24:	00000000 	nop
  400d28:	1460fffa 	bnez	v1,400d14 <strchr+0x24>
  400d2c:	00000000 	nop
  400d30:	14a00003 	bnez	a1,400d40 <strchr+0x50>
  400d34:	00000000 	nop
  400d38:	03e00008 	jr	ra
  400d3c:	00000000 	nop
  400d40:	03e00008 	jr	ra
  400d44:	00001021 	move	v0,zero
  400d48:	03e00008 	jr	ra
  400d4c:	00000000 	nop

00400d50 <strlen>:
  400d50:	80820000 	lb	v0,0(a0)
  400d54:	00000000 	nop
  400d58:	1040000a 	beqz	v0,400d84 <strlen+0x34>
  400d5c:	00002821 	move	a1,zero
  400d60:	24a50001 	addiu	a1,a1,1
  400d64:	00851021 	addu	v0,a0,a1
  400d68:	80430000 	lb	v1,0(v0)
  400d6c:	00000000 	nop
  400d70:	1460fffc 	bnez	v1,400d64 <strlen+0x14>
  400d74:	24a50001 	addiu	a1,a1,1
  400d78:	24a5ffff 	addiu	a1,a1,-1
  400d7c:	03e00008 	jr	ra
  400d80:	00a01021 	move	v0,a1
  400d84:	03e00008 	jr	ra
  400d88:	00a01021 	move	v0,a1
  400d8c:	00000000 	nop

00400d90 <__udivdi3>:
  400d90:	27bdffe0 	addiu	sp,sp,-32
  400d94:	afbf0018 	sw	ra,24(sp)
  400d98:	0c1003f3 	jal	400fcc <__qdivrem>
  400d9c:	afa00010 	sw	zero,16(sp)
  400da0:	8fbf0018 	lw	ra,24(sp)
  400da4:	00000000 	nop
  400da8:	03e00008 	jr	ra
  400dac:	27bd0020 	addiu	sp,sp,32

00400db0 <__umoddi3>:
  400db0:	27bdffd8 	addiu	sp,sp,-40
  400db4:	27a20018 	addiu	v0,sp,24
  400db8:	afbf0020 	sw	ra,32(sp)
  400dbc:	0c1003f3 	jal	400fcc <__qdivrem>
  400dc0:	afa20010 	sw	v0,16(sp)
  400dc4:	8fa3001c 	lw	v1,28(sp)
  400dc8:	8fa20018 	lw	v0,24(sp)
  400dcc:	8fbf0020 	lw	ra,32(sp)
  400dd0:	00000000 	nop
  400dd4:	03e00008 	jr	ra
  400dd8:	27bd0028 	addiu	sp,sp,40
  400ddc:	00000000 	nop

00400de0 <__bad_assert>:
  400de0:	27bdfee0 	addiu	sp,sp,-288
  400de4:	00c03821 	move	a3,a2
  400de8:	afb00118 	sw	s0,280(sp)
  400dec:	3c060040 	lui	a2,0x40
  400df0:	27b00018 	addiu	s0,sp,24
  400df4:	24c61600 	addiu	a2,a2,5632
  400df8:	afa40010 	sw	a0,16(sp)
  400dfc:	afa50014 	sw	a1,20(sp)
  400e00:	02002021 	move	a0,s0
  400e04:	afbf011c 	sw	ra,284(sp)
  400e08:	0c1003c4 	jal	400f10 <snprintf>
  400e0c:	24050100 	li	a1,256
  400e10:	0c100354 	jal	400d50 <strlen>
  400e14:	02002021 	move	a0,s0
  400e18:	00403021 	move	a2,v0
  400e1c:	02002821 	move	a1,s0
  400e20:	0c1000cb 	jal	40032c <write>
  400e24:	24040002 	li	a0,2
  400e28:	0c1003d0 	jal	400f40 <abort>
  400e2c:	00000000 	nop

00400e30 <__snprintf_send>:
  400e30:	10c00012 	beqz	a2,400e7c <__snprintf_send+0x4c>
  400e34:	00004021 	move	t0,zero
  400e38:	8c870008 	lw	a3,8(a0)
  400e3c:	8c820004 	lw	v0,4(a0)
  400e40:	00a81821 	addu	v1,a1,t0
  400e44:	00e2102b 	sltu	v0,a3,v0
  400e48:	1040000a 	beqz	v0,400e74 <__snprintf_send+0x44>
  400e4c:	25080001 	addiu	t0,t0,1
  400e50:	8c820000 	lw	v0,0(a0)
  400e54:	90630000 	lbu	v1,0(v1)
  400e58:	00471021 	addu	v0,v0,a3
  400e5c:	a0430000 	sb	v1,0(v0)
  400e60:	8c870008 	lw	a3,8(a0)
  400e64:	00000000 	nop
  400e68:	24e20001 	addiu	v0,a3,1
  400e6c:	00403821 	move	a3,v0
  400e70:	ac820008 	sw	v0,8(a0)
  400e74:	14c8fff1 	bne	a2,t0,400e3c <__snprintf_send+0xc>
  400e78:	00000000 	nop
  400e7c:	03e00008 	jr	ra
  400e80:	00000000 	nop

00400e84 <vsnprintf>:
  400e84:	27bdffd8 	addiu	sp,sp,-40
  400e88:	afb00020 	sw	s0,32(sp)
  400e8c:	00a01021 	move	v0,a1
  400e90:	00808021 	move	s0,a0
  400e94:	3c040040 	lui	a0,0x40
  400e98:	24a3ffff 	addiu	v1,a1,-1
  400e9c:	afbf0024 	sw	ra,36(sp)
  400ea0:	24840e30 	addiu	a0,a0,3632
  400ea4:	27a50010 	addiu	a1,sp,16
  400ea8:	1440000c 	bnez	v0,400edc <vsnprintf+0x58>
  400eac:	afb00010 	sw	s0,16(sp)
  400eb0:	3c040040 	lui	a0,0x40
  400eb4:	24840e30 	addiu	a0,a0,3632
  400eb8:	afa00014 	sw	zero,20(sp)
  400ebc:	0c1001f1 	jal	4007c4 <__vprintf>
  400ec0:	afa00018 	sw	zero,24(sp)
  400ec4:	00401821 	move	v1,v0
  400ec8:	8fbf0024 	lw	ra,36(sp)
  400ecc:	8fb00020 	lw	s0,32(sp)
  400ed0:	00601021 	move	v0,v1
  400ed4:	03e00008 	jr	ra
  400ed8:	27bd0028 	addiu	sp,sp,40
  400edc:	afa30014 	sw	v1,20(sp)
  400ee0:	0c1001f1 	jal	4007c4 <__vprintf>
  400ee4:	afa00018 	sw	zero,24(sp)
  400ee8:	00401821 	move	v1,v0
  400eec:	8fa20018 	lw	v0,24(sp)
  400ef0:	00000000 	nop
  400ef4:	02021021 	addu	v0,s0,v0
  400ef8:	a0400000 	sb	zero,0(v0)
  400efc:	8fbf0024 	lw	ra,36(sp)
  400f00:	8fb00020 	lw	s0,32(sp)
  400f04:	00601021 	move	v0,v1
  400f08:	03e00008 	jr	ra
  400f0c:	27bd0028 	addiu	sp,sp,40

00400f10 <snprintf>:
  400f10:	27bdffe0 	addiu	sp,sp,-32
  400f14:	27a2002c 	addiu	v0,sp,44
  400f18:	afa7002c 	sw	a3,44(sp)
  400f1c:	00403821 	move	a3,v0
  400f20:	afbf0018 	sw	ra,24(sp)
  400f24:	0c1003a1 	jal	400e84 <vsnprintf>
  400f28:	afa20010 	sw	v0,16(sp)
  400f2c:	8fbf0018 	lw	ra,24(sp)
  400f30:	00000000 	nop
  400f34:	03e00008 	jr	ra
  400f38:	27bd0020 	addiu	sp,sp,32
  400f3c:	00000000 	nop

00400f40 <abort>:
  400f40:	27bdffe8 	addiu	sp,sp,-24
  400f44:	afbf0010 	sw	ra,16(sp)
  400f48:	0c10008b 	jal	40022c <_exit>
  400f4c:	240400ff 	li	a0,255

00400f50 <shl>:
  400f50:	18a00016 	blez	a1,400fac <shl+0x5c>
  400f54:	24020010 	li	v0,16
  400f58:	00464823 	subu	t1,v0,a2
  400f5c:	00803821 	move	a3,a0
  400f60:	00004021 	move	t0,zero
  400f64:	8ce20000 	lw	v0,0(a3)
  400f68:	8ce30004 	lw	v1,4(a3)
  400f6c:	00c21004 	sllv	v0,v0,a2
  400f70:	3042ffff 	andi	v0,v0,0xffff
  400f74:	01231806 	srlv	v1,v1,t1
  400f78:	00431025 	or	v0,v0,v1
  400f7c:	25080001 	addiu	t0,t0,1
  400f80:	ace20000 	sw	v0,0(a3)
  400f84:	14a8fff7 	bne	a1,t0,400f64 <shl+0x14>
  400f88:	24e70004 	addiu	a3,a3,4
  400f8c:	00051880 	sll	v1,a1,0x2
  400f90:	00831821 	addu	v1,a0,v1
  400f94:	8c620000 	lw	v0,0(v1)
  400f98:	00000000 	nop
  400f9c:	00c21004 	sllv	v0,v0,a2
  400fa0:	3042ffff 	andi	v0,v0,0xffff
  400fa4:	03e00008 	jr	ra
  400fa8:	ac620000 	sw	v0,0(v1)
  400fac:	00001821 	move	v1,zero
  400fb0:	00831821 	addu	v1,a0,v1
  400fb4:	8c620000 	lw	v0,0(v1)
  400fb8:	00000000 	nop
  400fbc:	00c21004 	sllv	v0,v0,a2
  400fc0:	3042ffff 	andi	v0,v0,0xffff
  400fc4:	03e00008 	jr	ra
  400fc8:	ac620000 	sw	v0,0(v1)

00400fcc <__qdivrem>:
  400fcc:	27bdff80 	addiu	sp,sp,-128
  400fd0:	00c71025 	or	v0,a2,a3
  400fd4:	afb20060 	sw	s2,96(sp)
  400fd8:	afbf007c 	sw	ra,124(sp)
  400fdc:	afbe0078 	sw	s8,120(sp)
  400fe0:	afb70074 	sw	s7,116(sp)
  400fe4:	afb60070 	sw	s6,112(sp)
  400fe8:	afb5006c 	sw	s5,108(sp)
  400fec:	afb40068 	sw	s4,104(sp)
  400ff0:	afb30064 	sw	s3,100(sp)
  400ff4:	afb1005c 	sw	s1,92(sp)
  400ff8:	afb00058 	sw	s0,88(sp)
  400ffc:	00a04821 	move	t1,a1
  401000:	8fb20090 	lw	s2,144(sp)
  401004:	14400018 	bnez	v0,401068 <__qdivrem+0x9c>
  401008:	00804021 	move	t0,a0
  40100c:	3c031000 	lui	v1,0x1000
  401010:	8c640000 	lw	a0,0(v1)
  401014:	24020001 	li	v0,1
  401018:	14800002 	bnez	a0,401024 <__qdivrem+0x58>
  40101c:	0044001b 	divu	zero,v0,a0
  401020:	0007000d 	break	0x7
  401024:	00001012 	mflo	v0
  401028:	12400003 	beqz	s2,401038 <__qdivrem+0x6c>
  40102c:	00401821 	move	v1,v0
  401030:	ae450004 	sw	a1,4(s2)
  401034:	ae480000 	sw	t0,0(s2)
  401038:	8fbf007c 	lw	ra,124(sp)
  40103c:	8fbe0078 	lw	s8,120(sp)
  401040:	8fb70074 	lw	s7,116(sp)
  401044:	8fb60070 	lw	s6,112(sp)
  401048:	8fb5006c 	lw	s5,108(sp)
  40104c:	8fb40068 	lw	s4,104(sp)
  401050:	8fb30064 	lw	s3,100(sp)
  401054:	8fb20060 	lw	s2,96(sp)
  401058:	8fb1005c 	lw	s1,92(sp)
  40105c:	8fb00058 	lw	s0,88(sp)
  401060:	03e00008 	jr	ra
  401064:	27bd0080 	addiu	sp,sp,128
  401068:	0086102b 	sltu	v0,a0,a2
  40106c:	10400008 	beqz	v0,401090 <__qdivrem+0xc4>
  401070:	00000000 	nop
  401074:	1240010c 	beqz	s2,4014a8 <__qdivrem+0x4dc>
  401078:	00000000 	nop
  40107c:	00001821 	move	v1,zero
  401080:	00001021 	move	v0,zero
  401084:	ae490004 	sw	t1,4(s2)
  401088:	0810040e 	j	401038 <__qdivrem+0x6c>
  40108c:	ae480000 	sw	t0,0(s2)
  401090:	10860046 	beq	a0,a2,4011ac <__qdivrem+0x1e0>
  401094:	00a7102b 	sltu	v0,a1,a3
  401098:	00e08821 	move	s1,a3
  40109c:	01001821 	move	v1,t0
  4010a0:	00c08021 	move	s0,a2
  4010a4:	30c7ffff 	andi	a3,a2,0xffff
  4010a8:	3108ffff 	andi	t0,t0,0xffff
  4010ac:	312affff 	andi	t2,t1,0xffff
  4010b0:	3226ffff 	andi	a2,s1,0xffff
  4010b4:	00031c02 	srl	v1,v1,0x10
  4010b8:	00092c02 	srl	a1,t1,0x10
  4010bc:	00101402 	srl	v0,s0,0x10
  4010c0:	00112402 	srl	a0,s1,0x10
  4010c4:	afa00010 	sw	zero,16(sp)
  4010c8:	afa30014 	sw	v1,20(sp)
  4010cc:	afa80018 	sw	t0,24(sp)
  4010d0:	afa5001c 	sw	a1,28(sp)
  4010d4:	afaa0020 	sw	t2,32(sp)
  4010d8:	afa20028 	sw	v0,40(sp)
  4010dc:	afa7002c 	sw	a3,44(sp)
  4010e0:	afa40030 	sw	a0,48(sp)
  4010e4:	144000f6 	bnez	v0,4014c0 <__qdivrem+0x4f4>
  4010e8:	afa60034 	sw	a2,52(sp)
  4010ec:	14e00033 	bnez	a3,4011bc <__qdivrem+0x1f0>
  4010f0:	27a20028 	addiu	v0,sp,40
  4010f4:	148000f7 	bnez	a0,4014d4 <__qdivrem+0x508>
  4010f8:	27a2002c 	addiu	v0,sp,44
  4010fc:	14c00002 	bnez	a2,401108 <__qdivrem+0x13c>
  401100:	0066001b 	divu	zero,v1,a2
  401104:	0007000d 	break	0x7
  401108:	00001010 	mfhi	v0
  40110c:	00021400 	sll	v0,v0,0x10
  401110:	00481025 	or	v0,v0,t0
  401114:	00004812 	mflo	t1
	...
  401120:	14c00002 	bnez	a2,40112c <__qdivrem+0x160>
  401124:	0046001b 	divu	zero,v0,a2
  401128:	0007000d 	break	0x7
  40112c:	00001810 	mfhi	v1
  401130:	00031c00 	sll	v1,v1,0x10
  401134:	00651825 	or	v1,v1,a1
  401138:	00003812 	mflo	a3
	...
  401144:	14c00002 	bnez	a2,401150 <__qdivrem+0x184>
  401148:	0066001b 	divu	zero,v1,a2
  40114c:	0007000d 	break	0x7
  401150:	00001010 	mfhi	v0
  401154:	00021400 	sll	v0,v0,0x10
  401158:	00001812 	mflo	v1
  40115c:	12400008 	beqz	s2,401180 <__qdivrem+0x1b4>
  401160:	01422025 	or	a0,t2,v0
  401164:	14c00002 	bnez	a2,401170 <__qdivrem+0x1a4>
  401168:	0086001b 	divu	zero,a0,a2
  40116c:	0007000d 	break	0x7
  401170:	ae400000 	sw	zero,0(s2)
  401174:	00001010 	mfhi	v0
  401178:	ae420004 	sw	v0,4(s2)
  40117c:	00000000 	nop
  401180:	14c00002 	bnez	a2,40118c <__qdivrem+0x1c0>
  401184:	0086001b 	divu	zero,a0,a2
  401188:	0007000d 	break	0x7
  40118c:	00091400 	sll	v0,t1,0x10
  401190:	00031c00 	sll	v1,v1,0x10
  401194:	00e28025 	or	s0,a3,v0
  401198:	02001021 	move	v0,s0
  40119c:	00002012 	mflo	a0
  4011a0:	00838825 	or	s1,a0,v1
  4011a4:	0810040e 	j	401038 <__qdivrem+0x6c>
  4011a8:	02201821 	move	v1,s1
  4011ac:	1040ffbb 	beqz	v0,40109c <__qdivrem+0xd0>
  4011b0:	00e08821 	move	s1,a3
  4011b4:	0810041d 	j	401074 <__qdivrem+0xa8>
  4011b8:	00000000 	nop
  4011bc:	afa20050 	sw	v0,80(sp)
  4011c0:	24170003 	li	s7,3
  4011c4:	27be002c 	addiu	s8,sp,44
  4011c8:	8fa30014 	lw	v1,20(sp)
  4011cc:	24020004 	li	v0,4
  4011d0:	146000c4 	bnez	v1,4014e4 <__qdivrem+0x518>
  4011d4:	00579823 	subu	s3,v0,s7
  4011d8:	08100479 	j	4011e4 <__qdivrem+0x218>
  4011dc:	27b40014 	addiu	s4,sp,20
  4011e0:	0060a021 	move	s4,v1
  4011e4:	8e820004 	lw	v0,4(s4)
  4011e8:	2673ffff 	addiu	s3,s3,-1
  4011ec:	1040fffc 	beqz	v0,4011e0 <__qdivrem+0x214>
  4011f0:	26830004 	addiu	v1,s4,4
  4011f4:	24020004 	li	v0,4
  4011f8:	00532023 	subu	a0,v0,s3
  4011fc:	2483ffff 	addiu	v1,a0,-1
  401200:	046000bc 	bltz	v1,4014f4 <__qdivrem+0x528>
  401204:	00001821 	move	v1,zero
  401208:	27a60038 	addiu	a2,sp,56
  40120c:	00042880 	sll	a1,a0,0x2
  401210:	00c51021 	addu	v0,a2,a1
  401214:	2442fffc 	addiu	v0,v0,-4
  401218:	24630001 	addiu	v1,v1,1
  40121c:	ac400000 	sw	zero,0(v0)
  401220:	1464fffd 	bne	v1,a0,401218 <__qdivrem+0x24c>
  401224:	2442fffc 	addiu	v0,v0,-4
  401228:	8fcb0000 	lw	t3,0(s8)
  40122c:	34028000 	li	v0,0x8000
  401230:	0162102b 	sltu	v0,t3,v0
  401234:	00c5b021 	addu	s6,a2,a1
  401238:	104000ac 	beqz	v0,4014ec <__qdivrem+0x520>
  40123c:	01601821 	move	v1,t3
  401240:	0000a821 	move	s5,zero
  401244:	34048000 	li	a0,0x8000
  401248:	00031840 	sll	v1,v1,0x1
  40124c:	0064102b 	sltu	v0,v1,a0
  401250:	1440fffd 	bnez	v0,401248 <__qdivrem+0x27c>
  401254:	26b50001 	addiu	s5,s5,1
  401258:	1aa00009 	blez	s5,401280 <__qdivrem+0x2b4>
  40125c:	02f32821 	addu	a1,s7,s3
  401260:	02a03021 	move	a2,s5
  401264:	0c1003d4 	jal	400f50 <shl>
  401268:	02802021 	move	a0,s4
  40126c:	03c02021 	move	a0,s8
  401270:	26e5ffff 	addiu	a1,s7,-1
  401274:	0c1003d4 	jal	400f50 <shl>
  401278:	02a03021 	move	a2,s5
  40127c:	8fcb0000 	lw	t3,0(s8)
  401280:	8fa20050 	lw	v0,80(sp)
  401284:	00177080 	sll	t6,s7,0x2
  401288:	8c580008 	lw	t8,8(v0)
  40128c:	02c06821 	move	t5,s6
  401290:	02804821 	move	t1,s4
  401294:	028e6021 	addu	t4,s4,t6
  401298:	00007821 	move	t7,zero
  40129c:	3416ffff 	li	s6,0xffff
  4012a0:	8d240000 	lw	a0,0(t1)
  4012a4:	8d230004 	lw	v1,4(t1)
  4012a8:	8d260008 	lw	a2,8(t1)
  4012ac:	11640081 	beq	t3,a0,4014b4 <__qdivrem+0x4e8>
  4012b0:	00041400 	sll	v0,a0,0x10
  4012b4:	00621025 	or	v0,v1,v0
  4012b8:	15600002 	bnez	t3,4012c4 <__qdivrem+0x2f8>
  4012bc:	004b001b 	divu	zero,v0,t3
  4012c0:	0007000d 	break	0x7
  4012c4:	00002810 	mfhi	a1
  4012c8:	00003812 	mflo	a3
	...
  4012d4:	00f80018 	mult	a3,t8
  4012d8:	00051400 	sll	v0,a1,0x10
  4012dc:	00c21025 	or	v0,a2,v0
  4012e0:	00001812 	mflo	v1
  4012e4:	0043182b 	sltu	v1,v0,v1
  4012e8:	10600006 	beqz	v1,401304 <__qdivrem+0x338>
  4012ec:	00000000 	nop
  4012f0:	24e7ffff 	addiu	a3,a3,-1
  4012f4:	00ab2821 	addu	a1,a1,t3
  4012f8:	02c5102b 	sltu	v0,s6,a1
  4012fc:	1040fff6 	beqz	v0,4012d8 <__qdivrem+0x30c>
  401300:	00f80018 	mult	a3,t8
  401304:	1ae00017 	blez	s7,401364 <__qdivrem+0x398>
  401308:	00004021 	move	t0,zero
  40130c:	8fa20050 	lw	v0,80(sp)
  401310:	01802021 	move	a0,t4
  401314:	004e3021 	addu	a2,v0,t6
  401318:	02e02821 	move	a1,s7
  40131c:	3c0a0001 	lui	t2,0x1
  401320:	8cc20000 	lw	v0,0(a2)
  401324:	8c830000 	lw	v1,0(a0)
  401328:	00e20018 	mult	a3,v0
  40132c:	24a5ffff 	addiu	a1,a1,-1
  401330:	24c6fffc 	addiu	a2,a2,-4
  401334:	00001012 	mflo	v0
  401338:	00621823 	subu	v1,v1,v0
  40133c:	00681823 	subu	v1,v1,t0
  401340:	00031402 	srl	v0,v1,0x10
  401344:	01421023 	subu	v0,t2,v0
  401348:	3063ffff 	andi	v1,v1,0xffff
  40134c:	ac830000 	sw	v1,0(a0)
  401350:	3048ffff 	andi	t0,v0,0xffff
  401354:	14a0fff2 	bnez	a1,401320 <__qdivrem+0x354>
  401358:	2484fffc 	addiu	a0,a0,-4
  40135c:	8d240000 	lw	a0,0(t1)
  401360:	00000000 	nop
  401364:	00881023 	subu	v0,a0,t0
  401368:	3044ffff 	andi	a0,v0,0xffff
  40136c:	00021c02 	srl	v1,v0,0x10
  401370:	10600018 	beqz	v1,4013d4 <__qdivrem+0x408>
  401374:	ad240000 	sw	a0,0(t1)
  401378:	1ae00012 	blez	s7,4013c4 <__qdivrem+0x3f8>
  40137c:	00004021 	move	t0,zero
  401380:	8fa20050 	lw	v0,80(sp)
  401384:	01802021 	move	a0,t4
  401388:	004e3021 	addu	a2,v0,t6
  40138c:	02e02821 	move	a1,s7
  401390:	8c820000 	lw	v0,0(a0)
  401394:	8cc30000 	lw	v1,0(a2)
  401398:	01021021 	addu	v0,t0,v0
  40139c:	00431021 	addu	v0,v0,v1
  4013a0:	3043ffff 	andi	v1,v0,0xffff
  4013a4:	24a5ffff 	addiu	a1,a1,-1
  4013a8:	ac830000 	sw	v1,0(a0)
  4013ac:	00024402 	srl	t0,v0,0x10
  4013b0:	2484fffc 	addiu	a0,a0,-4
  4013b4:	14a0fff6 	bnez	a1,401390 <__qdivrem+0x3c4>
  4013b8:	24c6fffc 	addiu	a2,a2,-4
  4013bc:	8d240000 	lw	a0,0(t1)
  4013c0:	00000000 	nop
  4013c4:	01041021 	addu	v0,t0,a0
  4013c8:	3042ffff 	andi	v0,v0,0xffff
  4013cc:	ad220000 	sw	v0,0(t1)
  4013d0:	24e7ffff 	addiu	a3,a3,-1
  4013d4:	25ef0001 	addiu	t7,t7,1
  4013d8:	026f102a 	slt	v0,s3,t7
  4013dc:	ada70000 	sw	a3,0(t5)
  4013e0:	25290004 	addiu	t1,t1,4
  4013e4:	25ad0004 	addiu	t5,t5,4
  4013e8:	1040ffad 	beqz	v0,4012a0 <__qdivrem+0x2d4>
  4013ec:	258c0004 	addiu	t4,t4,4
  4013f0:	12400022 	beqz	s2,40147c <__qdivrem+0x4b0>
  4013f4:	00000000 	nop
  4013f8:	12a00016 	beqz	s5,401454 <__qdivrem+0x488>
  4013fc:	02f32821 	addu	a1,s7,s3
  401400:	0265102a 	slt	v0,s3,a1
  401404:	10400011 	beqz	v0,40144c <__qdivrem+0x480>
  401408:	00051080 	sll	v0,a1,0x2
  40140c:	00051880 	sll	v1,a1,0x2
  401410:	24020010 	li	v0,16
  401414:	00553823 	subu	a3,v0,s5
  401418:	02833021 	addu	a2,s4,v1
  40141c:	8cc2fffc 	lw	v0,-4(a2)
  401420:	8cc30000 	lw	v1,0(a2)
  401424:	00e21004 	sllv	v0,v0,a3
  401428:	02a31806 	srlv	v1,v1,s5
  40142c:	3042ffff 	andi	v0,v0,0xffff
  401430:	24a5ffff 	addiu	a1,a1,-1
  401434:	00621825 	or	v1,v1,v0
  401438:	0265202a 	slt	a0,s3,a1
  40143c:	acc30000 	sw	v1,0(a2)
  401440:	1480fff6 	bnez	a0,40141c <__qdivrem+0x450>
  401444:	24c6fffc 	addiu	a2,a2,-4
  401448:	00051080 	sll	v0,a1,0x2
  40144c:	00541021 	addu	v0,v0,s4
  401450:	ac400000 	sw	zero,0(v0)
  401454:	8fa20014 	lw	v0,20(sp)
  401458:	8fa40018 	lw	a0,24(sp)
  40145c:	00021400 	sll	v0,v0,0x10
  401460:	8fa3001c 	lw	v1,28(sp)
  401464:	00448025 	or	s0,v0,a0
  401468:	8fa20020 	lw	v0,32(sp)
  40146c:	00031c00 	sll	v1,v1,0x10
  401470:	00628825 	or	s1,v1,v0
  401474:	ae510004 	sw	s1,4(s2)
  401478:	ae500000 	sw	s0,0(s2)
  40147c:	8fa2003c 	lw	v0,60(sp)
  401480:	8fa40040 	lw	a0,64(sp)
  401484:	00021400 	sll	v0,v0,0x10
  401488:	8fa30044 	lw	v1,68(sp)
  40148c:	00448025 	or	s0,v0,a0
  401490:	8fa20048 	lw	v0,72(sp)
  401494:	00031c00 	sll	v1,v1,0x10
  401498:	00628825 	or	s1,v1,v0
  40149c:	02201821 	move	v1,s1
  4014a0:	0810040e 	j	401038 <__qdivrem+0x6c>
  4014a4:	02001021 	move	v0,s0
  4014a8:	00001821 	move	v1,zero
  4014ac:	0810040e 	j	401038 <__qdivrem+0x6c>
  4014b0:	00001021 	move	v0,zero
  4014b4:	00602821 	move	a1,v1
  4014b8:	081004bd 	j	4012f4 <__qdivrem+0x328>
  4014bc:	3407ffff 	li	a3,0xffff
  4014c0:	27a20024 	addiu	v0,sp,36
  4014c4:	24170004 	li	s7,4
  4014c8:	27be0028 	addiu	s8,sp,40
  4014cc:	08100472 	j	4011c8 <__qdivrem+0x1fc>
  4014d0:	afa20050 	sw	v0,80(sp)
  4014d4:	24170002 	li	s7,2
  4014d8:	27be0030 	addiu	s8,sp,48
  4014dc:	08100472 	j	4011c8 <__qdivrem+0x1fc>
  4014e0:	afa20050 	sw	v0,80(sp)
  4014e4:	0810047d 	j	4011f4 <__qdivrem+0x228>
  4014e8:	27b40010 	addiu	s4,sp,16
  4014ec:	081004a0 	j	401280 <__qdivrem+0x2b4>
  4014f0:	0000a821 	move	s5,zero
  4014f4:	00042880 	sll	a1,a0,0x2
  4014f8:	0810048a 	j	401228 <__qdivrem+0x25c>
  4014fc:	27a60038 	addiu	a2,sp,56
