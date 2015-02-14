
../../../build/user/my-testbin/waitpid/waitpid:     file format elf32-tradbigmips

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
  400028:	0c100099 	jal	400264 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c1000af 	jal	4002bc <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <main>:
  400050:	27bdffd0 	addiu	sp,sp,-48
  400054:	afbf0028 	sw	ra,40(sp)
  400058:	afb30024 	sw	s3,36(sp)
  40005c:	afb20020 	sw	s2,32(sp)
  400060:	27b30010 	addiu	s3,sp,16
  400064:	afb1001c 	sw	s1,28(sp)
  400068:	0c1000b3 	jal	4002cc <getpid>
  40006c:	afb00018 	sw	s0,24(sp)
  400070:	00402021 	move	a0,v0
  400074:	00003021 	move	a2,zero
  400078:	0c1000b1 	jal	4002c4 <waitpid>
  40007c:	02602821 	move	a1,s3
  400080:	3c040040 	lui	a0,0x40
  400084:	00408021 	move	s0,v0
  400088:	3c120040 	lui	s2,0x40
  40008c:	0c100084 	jal	400210 <puts>
  400090:	24841660 	addiu	a0,a0,5728
  400094:	3c111000 	lui	s1,0x1000
  400098:	02002821 	move	a1,s0
  40009c:	0c10005f 	jal	40017c <printf>
  4000a0:	26441668 	addiu	a0,s2,5736
  4000a4:	3c100040 	lui	s0,0x40
  4000a8:	8e250010 	lw	a1,16(s1)
  4000ac:	0c10005f 	jal	40017c <printf>
  4000b0:	2604167c 	addiu	a0,s0,5756
  4000b4:	3c040040 	lui	a0,0x40
  4000b8:	0c100084 	jal	400210 <puts>
  4000bc:	2484168c 	addiu	a0,a0,5772
  4000c0:	02602821 	move	a1,s3
  4000c4:	00003021 	move	a2,zero
  4000c8:	0c1000b1 	jal	4002c4 <waitpid>
  4000cc:	2404fffc 	li	a0,-4
  4000d0:	00402821 	move	a1,v0
  4000d4:	0c10005f 	jal	40017c <printf>
  4000d8:	26441668 	addiu	a0,s2,5736
  4000dc:	8e250010 	lw	a1,16(s1)
  4000e0:	0c10005f 	jal	40017c <printf>
  4000e4:	2604167c 	addiu	a0,s0,5756
  4000e8:	8fbf0028 	lw	ra,40(sp)
  4000ec:	8fb30024 	lw	s3,36(sp)
  4000f0:	8fb20020 	lw	s2,32(sp)
  4000f4:	8fb1001c 	lw	s1,28(sp)
  4000f8:	8fb00018 	lw	s0,24(sp)
  4000fc:	00001021 	move	v0,zero
  400100:	03e00008 	jr	ra
  400104:	27bd0030 	addiu	sp,sp,48
	...

00400110 <vprintf>:
  400110:	00803021 	move	a2,a0
  400114:	3c040040 	lui	a0,0x40
  400118:	00a03821 	move	a3,a1
  40011c:	24840128 	addiu	a0,a0,296
  400120:	08100215 	j	400854 <__vprintf>
  400124:	00002821 	move	a1,zero

00400128 <__printf_send>:
  400128:	27bdffe0 	addiu	sp,sp,-32
  40012c:	afb20018 	sw	s2,24(sp)
  400130:	afb10014 	sw	s1,20(sp)
  400134:	afbf001c 	sw	ra,28(sp)
  400138:	afb00010 	sw	s0,16(sp)
  40013c:	00c09021 	move	s2,a2
  400140:	10c00008 	beqz	a2,400164 <__printf_send+0x3c>
  400144:	00a08821 	move	s1,a1
  400148:	00008021 	move	s0,zero
  40014c:	02301021 	addu	v0,s1,s0
  400150:	80440000 	lb	a0,0(v0)
  400154:	0c10006c 	jal	4001b0 <putchar>
  400158:	26100001 	addiu	s0,s0,1
  40015c:	1650fffc 	bne	s2,s0,400150 <__printf_send+0x28>
  400160:	02301021 	addu	v0,s1,s0
  400164:	8fbf001c 	lw	ra,28(sp)
  400168:	8fb20018 	lw	s2,24(sp)
  40016c:	8fb10014 	lw	s1,20(sp)
  400170:	8fb00010 	lw	s0,16(sp)
  400174:	03e00008 	jr	ra
  400178:	27bd0020 	addiu	sp,sp,32

0040017c <printf>:
  40017c:	27bdffe0 	addiu	sp,sp,-32
  400180:	27a20024 	addiu	v0,sp,36
  400184:	afa50024 	sw	a1,36(sp)
  400188:	00402821 	move	a1,v0
  40018c:	afbf0018 	sw	ra,24(sp)
  400190:	afa60028 	sw	a2,40(sp)
  400194:	afa7002c 	sw	a3,44(sp)
  400198:	0c100044 	jal	400110 <vprintf>
  40019c:	afa20010 	sw	v0,16(sp)
  4001a0:	8fbf0018 	lw	ra,24(sp)
  4001a4:	00000000 	nop
  4001a8:	03e00008 	jr	ra
  4001ac:	27bd0020 	addiu	sp,sp,32

004001b0 <putchar>:
  4001b0:	27bdffe0 	addiu	sp,sp,-32
  4001b4:	afb00018 	sw	s0,24(sp)
  4001b8:	27a50010 	addiu	a1,sp,16
  4001bc:	00808021 	move	s0,a0
  4001c0:	24060001 	li	a2,1
  4001c4:	24040001 	li	a0,1
  4001c8:	afbf001c 	sw	ra,28(sp)
  4001cc:	0c1000ef 	jal	4003bc <write>
  4001d0:	a3b00010 	sb	s0,16(sp)
  4001d4:	18400005 	blez	v0,4001ec <putchar+0x3c>
  4001d8:	02001021 	move	v0,s0
  4001dc:	8fbf001c 	lw	ra,28(sp)
  4001e0:	8fb00018 	lw	s0,24(sp)
  4001e4:	03e00008 	jr	ra
  4001e8:	27bd0020 	addiu	sp,sp,32
  4001ec:	2410ffff 	li	s0,-1
  4001f0:	02001021 	move	v0,s0
  4001f4:	8fbf001c 	lw	ra,28(sp)
  4001f8:	8fb00018 	lw	s0,24(sp)
  4001fc:	03e00008 	jr	ra
  400200:	27bd0020 	addiu	sp,sp,32
	...

00400210 <puts>:
  400210:	27bdffe8 	addiu	sp,sp,-24
  400214:	afbf0010 	sw	ra,16(sp)
  400218:	0c100360 	jal	400d80 <__puts>
  40021c:	00000000 	nop
  400220:	0c10006c 	jal	4001b0 <putchar>
  400224:	2404000a 	li	a0,10
  400228:	8fbf0010 	lw	ra,16(sp)
  40022c:	00001021 	move	v0,zero
  400230:	03e00008 	jr	ra
  400234:	27bd0018 	addiu	sp,sp,24
	...

00400240 <__exit_hack>:
  400240:	27bdfff8 	addiu	sp,sp,-8
  400244:	24020001 	li	v0,1
  400248:	afa20000 	sw	v0,0(sp)
  40024c:	8fa20000 	lw	v0,0(sp)
  400250:	00000000 	nop
  400254:	1440fffd 	bnez	v0,40024c <__exit_hack+0xc>
  400258:	00000000 	nop
  40025c:	03e00008 	jr	ra
  400260:	27bd0008 	addiu	sp,sp,8

00400264 <exit>:
  400264:	27bdffe8 	addiu	sp,sp,-24
  400268:	afbf0010 	sw	ra,16(sp)
  40026c:	0c1000af 	jal	4002bc <_exit>
  400270:	00000000 	nop
	...

00400280 <__syscall>:
  400280:	0000000c 	syscall
  400284:	10e00005 	beqz	a3,40029c <__syscall+0x1c>
  400288:	00000000 	nop
  40028c:	3c011000 	lui	at,0x1000
  400290:	ac220010 	sw	v0,16(at)
  400294:	2403ffff 	li	v1,-1
  400298:	2402ffff 	li	v0,-1
  40029c:	03e00008 	jr	ra
  4002a0:	00000000 	nop

004002a4 <fork>:
  4002a4:	081000a0 	j	400280 <__syscall>
  4002a8:	24020000 	li	v0,0

004002ac <vfork>:
  4002ac:	081000a0 	j	400280 <__syscall>
  4002b0:	24020001 	li	v0,1

004002b4 <execv>:
  4002b4:	081000a0 	j	400280 <__syscall>
  4002b8:	24020002 	li	v0,2

004002bc <_exit>:
  4002bc:	081000a0 	j	400280 <__syscall>
  4002c0:	24020003 	li	v0,3

004002c4 <waitpid>:
  4002c4:	081000a0 	j	400280 <__syscall>
  4002c8:	24020004 	li	v0,4

004002cc <getpid>:
  4002cc:	081000a0 	j	400280 <__syscall>
  4002d0:	24020005 	li	v0,5

004002d4 <getppid>:
  4002d4:	081000a0 	j	400280 <__syscall>
  4002d8:	24020006 	li	v0,6

004002dc <sbrk>:
  4002dc:	081000a0 	j	400280 <__syscall>
  4002e0:	24020007 	li	v0,7

004002e4 <mmap>:
  4002e4:	081000a0 	j	400280 <__syscall>
  4002e8:	24020008 	li	v0,8

004002ec <munmap>:
  4002ec:	081000a0 	j	400280 <__syscall>
  4002f0:	24020009 	li	v0,9

004002f4 <mprotect>:
  4002f4:	081000a0 	j	400280 <__syscall>
  4002f8:	2402000a 	li	v0,10

004002fc <umask>:
  4002fc:	081000a0 	j	400280 <__syscall>
  400300:	24020011 	li	v0,17

00400304 <issetugid>:
  400304:	081000a0 	j	400280 <__syscall>
  400308:	24020012 	li	v0,18

0040030c <getresuid>:
  40030c:	081000a0 	j	400280 <__syscall>
  400310:	24020013 	li	v0,19

00400314 <setresuid>:
  400314:	081000a0 	j	400280 <__syscall>
  400318:	24020014 	li	v0,20

0040031c <getresgid>:
  40031c:	081000a0 	j	400280 <__syscall>
  400320:	24020015 	li	v0,21

00400324 <setresgid>:
  400324:	081000a0 	j	400280 <__syscall>
  400328:	24020016 	li	v0,22

0040032c <getgroups>:
  40032c:	081000a0 	j	400280 <__syscall>
  400330:	24020017 	li	v0,23

00400334 <setgroups>:
  400334:	081000a0 	j	400280 <__syscall>
  400338:	24020018 	li	v0,24

0040033c <__getlogin>:
  40033c:	081000a0 	j	400280 <__syscall>
  400340:	24020019 	li	v0,25

00400344 <__setlogin>:
  400344:	081000a0 	j	400280 <__syscall>
  400348:	2402001a 	li	v0,26

0040034c <kill>:
  40034c:	081000a0 	j	400280 <__syscall>
  400350:	2402001b 	li	v0,27

00400354 <sigaction>:
  400354:	081000a0 	j	400280 <__syscall>
  400358:	2402001c 	li	v0,28

0040035c <sigpending>:
  40035c:	081000a0 	j	400280 <__syscall>
  400360:	2402001d 	li	v0,29

00400364 <sigprocmask>:
  400364:	081000a0 	j	400280 <__syscall>
  400368:	2402001e 	li	v0,30

0040036c <sigsuspend>:
  40036c:	081000a0 	j	400280 <__syscall>
  400370:	2402001f 	li	v0,31

00400374 <sigreturn>:
  400374:	081000a0 	j	400280 <__syscall>
  400378:	24020020 	li	v0,32

0040037c <open>:
  40037c:	081000a0 	j	400280 <__syscall>
  400380:	2402002d 	li	v0,45

00400384 <pipe>:
  400384:	081000a0 	j	400280 <__syscall>
  400388:	2402002e 	li	v0,46

0040038c <dup>:
  40038c:	081000a0 	j	400280 <__syscall>
  400390:	2402002f 	li	v0,47

00400394 <dup2>:
  400394:	081000a0 	j	400280 <__syscall>
  400398:	24020030 	li	v0,48

0040039c <close>:
  40039c:	081000a0 	j	400280 <__syscall>
  4003a0:	24020031 	li	v0,49

004003a4 <read>:
  4003a4:	081000a0 	j	400280 <__syscall>
  4003a8:	24020032 	li	v0,50

004003ac <pread>:
  4003ac:	081000a0 	j	400280 <__syscall>
  4003b0:	24020033 	li	v0,51

004003b4 <getdirentry>:
  4003b4:	081000a0 	j	400280 <__syscall>
  4003b8:	24020036 	li	v0,54

004003bc <write>:
  4003bc:	081000a0 	j	400280 <__syscall>
  4003c0:	24020037 	li	v0,55

004003c4 <pwrite>:
  4003c4:	081000a0 	j	400280 <__syscall>
  4003c8:	24020038 	li	v0,56

004003cc <lseek>:
  4003cc:	081000a0 	j	400280 <__syscall>
  4003d0:	2402003b 	li	v0,59

004003d4 <flock>:
  4003d4:	081000a0 	j	400280 <__syscall>
  4003d8:	2402003c 	li	v0,60

004003dc <ftruncate>:
  4003dc:	081000a0 	j	400280 <__syscall>
  4003e0:	2402003d 	li	v0,61

004003e4 <fsync>:
  4003e4:	081000a0 	j	400280 <__syscall>
  4003e8:	2402003e 	li	v0,62

004003ec <fcntl>:
  4003ec:	081000a0 	j	400280 <__syscall>
  4003f0:	2402003f 	li	v0,63

004003f4 <ioctl>:
  4003f4:	081000a0 	j	400280 <__syscall>
  4003f8:	24020040 	li	v0,64

004003fc <select>:
  4003fc:	081000a0 	j	400280 <__syscall>
  400400:	24020041 	li	v0,65

00400404 <poll>:
  400404:	081000a0 	j	400280 <__syscall>
  400408:	24020042 	li	v0,66

0040040c <link>:
  40040c:	081000a0 	j	400280 <__syscall>
  400410:	24020043 	li	v0,67

00400414 <remove>:
  400414:	081000a0 	j	400280 <__syscall>
  400418:	24020044 	li	v0,68

0040041c <mkdir>:
  40041c:	081000a0 	j	400280 <__syscall>
  400420:	24020045 	li	v0,69

00400424 <rmdir>:
  400424:	081000a0 	j	400280 <__syscall>
  400428:	24020046 	li	v0,70

0040042c <mkfifo>:
  40042c:	081000a0 	j	400280 <__syscall>
  400430:	24020047 	li	v0,71

00400434 <rename>:
  400434:	081000a0 	j	400280 <__syscall>
  400438:	24020048 	li	v0,72

0040043c <access>:
  40043c:	081000a0 	j	400280 <__syscall>
  400440:	24020049 	li	v0,73

00400444 <chdir>:
  400444:	081000a0 	j	400280 <__syscall>
  400448:	2402004a 	li	v0,74

0040044c <fchdir>:
  40044c:	081000a0 	j	400280 <__syscall>
  400450:	2402004b 	li	v0,75

00400454 <__getcwd>:
  400454:	081000a0 	j	400280 <__syscall>
  400458:	2402004c 	li	v0,76

0040045c <symlink>:
  40045c:	081000a0 	j	400280 <__syscall>
  400460:	2402004d 	li	v0,77

00400464 <readlink>:
  400464:	081000a0 	j	400280 <__syscall>
  400468:	2402004e 	li	v0,78

0040046c <mount>:
  40046c:	081000a0 	j	400280 <__syscall>
  400470:	2402004f 	li	v0,79

00400474 <unmount>:
  400474:	081000a0 	j	400280 <__syscall>
  400478:	24020050 	li	v0,80

0040047c <stat>:
  40047c:	081000a0 	j	400280 <__syscall>
  400480:	24020051 	li	v0,81

00400484 <fstat>:
  400484:	081000a0 	j	400280 <__syscall>
  400488:	24020052 	li	v0,82

0040048c <lstat>:
  40048c:	081000a0 	j	400280 <__syscall>
  400490:	24020053 	li	v0,83

00400494 <utimes>:
  400494:	081000a0 	j	400280 <__syscall>
  400498:	24020054 	li	v0,84

0040049c <futimes>:
  40049c:	081000a0 	j	400280 <__syscall>
  4004a0:	24020055 	li	v0,85

004004a4 <lutimes>:
  4004a4:	081000a0 	j	400280 <__syscall>
  4004a8:	24020056 	li	v0,86

004004ac <chmod>:
  4004ac:	081000a0 	j	400280 <__syscall>
  4004b0:	24020057 	li	v0,87

004004b4 <chown>:
  4004b4:	081000a0 	j	400280 <__syscall>
  4004b8:	24020058 	li	v0,88

004004bc <fchmod>:
  4004bc:	081000a0 	j	400280 <__syscall>
  4004c0:	24020059 	li	v0,89

004004c4 <fchown>:
  4004c4:	081000a0 	j	400280 <__syscall>
  4004c8:	2402005a 	li	v0,90

004004cc <lchmod>:
  4004cc:	081000a0 	j	400280 <__syscall>
  4004d0:	2402005b 	li	v0,91

004004d4 <lchown>:
  4004d4:	081000a0 	j	400280 <__syscall>
  4004d8:	2402005c 	li	v0,92

004004dc <socket>:
  4004dc:	081000a0 	j	400280 <__syscall>
  4004e0:	24020062 	li	v0,98

004004e4 <bind>:
  4004e4:	081000a0 	j	400280 <__syscall>
  4004e8:	24020063 	li	v0,99

004004ec <connect>:
  4004ec:	081000a0 	j	400280 <__syscall>
  4004f0:	24020064 	li	v0,100

004004f4 <listen>:
  4004f4:	081000a0 	j	400280 <__syscall>
  4004f8:	24020065 	li	v0,101

004004fc <accept>:
  4004fc:	081000a0 	j	400280 <__syscall>
  400500:	24020066 	li	v0,102

00400504 <shutdown>:
  400504:	081000a0 	j	400280 <__syscall>
  400508:	24020068 	li	v0,104

0040050c <getsockname>:
  40050c:	081000a0 	j	400280 <__syscall>
  400510:	24020069 	li	v0,105

00400514 <getpeername>:
  400514:	081000a0 	j	400280 <__syscall>
  400518:	2402006a 	li	v0,106

0040051c <getsockopt>:
  40051c:	081000a0 	j	400280 <__syscall>
  400520:	2402006b 	li	v0,107

00400524 <setsockopt>:
  400524:	081000a0 	j	400280 <__syscall>
  400528:	2402006c 	li	v0,108

0040052c <__time>:
  40052c:	081000a0 	j	400280 <__syscall>
  400530:	24020071 	li	v0,113

00400534 <__settime>:
  400534:	081000a0 	j	400280 <__syscall>
  400538:	24020072 	li	v0,114

0040053c <nanosleep>:
  40053c:	081000a0 	j	400280 <__syscall>
  400540:	24020073 	li	v0,115

00400544 <sync>:
  400544:	081000a0 	j	400280 <__syscall>
  400548:	24020076 	li	v0,118

0040054c <reboot>:
  40054c:	081000a0 	j	400280 <__syscall>
  400550:	24020077 	li	v0,119
	...

00400560 <__pf_print>:
  400560:	27bdffe0 	addiu	sp,sp,-32
  400564:	afbf0018 	sw	ra,24(sp)
  400568:	afb10014 	sw	s1,20(sp)
  40056c:	afb00010 	sw	s0,16(sp)
  400570:	8c830000 	lw	v1,0(a0)
  400574:	00808021 	move	s0,a0
  400578:	8c840004 	lw	a0,4(a0)
  40057c:	0060f809 	jalr	v1
  400580:	00c08821 	move	s1,a2
  400584:	8e02000c 	lw	v0,12(s0)
  400588:	00000000 	nop
  40058c:	00511021 	addu	v0,v0,s1
  400590:	ae02000c 	sw	v0,12(s0)
  400594:	8fbf0018 	lw	ra,24(sp)
  400598:	8fb10014 	lw	s1,20(sp)
  40059c:	8fb00010 	lw	s0,16(sp)
  4005a0:	03e00008 	jr	ra
  4005a4:	27bd0020 	addiu	sp,sp,32

004005a8 <__pf_endfield>:
  4005a8:	24020020 	li	v0,32
  4005ac:	ac82002c 	sw	v0,44(a0)
  4005b0:	00001821 	move	v1,zero
  4005b4:	00001021 	move	v0,zero
  4005b8:	ac800038 	sw	zero,56(a0)
  4005bc:	ac800010 	sw	zero,16(a0)
  4005c0:	ac800014 	sw	zero,20(a0)
  4005c4:	ac83001c 	sw	v1,28(a0)
  4005c8:	ac820018 	sw	v0,24(a0)
  4005cc:	ac800020 	sw	zero,32(a0)
  4005d0:	ac800024 	sw	zero,36(a0)
  4005d4:	ac800028 	sw	zero,40(a0)
  4005d8:	ac800030 	sw	zero,48(a0)
  4005dc:	03e00008 	jr	ra
  4005e0:	ac800034 	sw	zero,52(a0)

004005e4 <__pf_fill>:
  4005e4:	27bdffd0 	addiu	sp,sp,-48
  4005e8:	afb30024 	sw	s3,36(sp)
  4005ec:	afb20020 	sw	s2,32(sp)
  4005f0:	afbf0028 	sw	ra,40(sp)
  4005f4:	afb1001c 	sw	s1,28(sp)
  4005f8:	afb00018 	sw	s0,24(sp)
  4005fc:	00809821 	move	s3,a0
  400600:	8c82002c 	lw	v0,44(a0)
  400604:	18a0000b 	blez	a1,400634 <__pf_fill+0x50>
  400608:	00a09021 	move	s2,a1
  40060c:	a3a20010 	sb	v0,16(sp)
  400610:	00008021 	move	s0,zero
  400614:	27b10010 	addiu	s1,sp,16
  400618:	26100001 	addiu	s0,s0,1
  40061c:	02602021 	move	a0,s3
  400620:	02202821 	move	a1,s1
  400624:	0c100158 	jal	400560 <__pf_print>
  400628:	24060001 	li	a2,1
  40062c:	1650fffb 	bne	s2,s0,40061c <__pf_fill+0x38>
  400630:	26100001 	addiu	s0,s0,1
  400634:	8fbf0028 	lw	ra,40(sp)
  400638:	8fb30024 	lw	s3,36(sp)
  40063c:	8fb20020 	lw	s2,32(sp)
  400640:	8fb1001c 	lw	s1,28(sp)
  400644:	8fb00018 	lw	s0,24(sp)
  400648:	03e00008 	jr	ra
  40064c:	27bd0030 	addiu	sp,sp,48

00400650 <__pf_printstuff>:
  400650:	27bdffd0 	addiu	sp,sp,-48
  400654:	afbf0028 	sw	ra,40(sp)
  400658:	afb50024 	sw	s5,36(sp)
  40065c:	afb40020 	sw	s4,32(sp)
  400660:	afb3001c 	sw	s3,28(sp)
  400664:	afb20018 	sw	s2,24(sp)
  400668:	00c09821 	move	s3,a2
  40066c:	afb10014 	sw	s1,20(sp)
  400670:	afb00010 	sw	s0,16(sp)
  400674:	00808821 	move	s1,a0
  400678:	00a02021 	move	a0,a1
  40067c:	00a0a021 	move	s4,a1
  400680:	0c100394 	jal	400e50 <strlen>
  400684:	00e0a821 	move	s5,a3
  400688:	02602021 	move	a0,s3
  40068c:	0c100394 	jal	400e50 <strlen>
  400690:	00409021 	move	s2,v0
  400694:	02a02021 	move	a0,s5
  400698:	0c100394 	jal	400e50 <strlen>
  40069c:	02428021 	addu	s0,s2,v0
  4006a0:	8e230024 	lw	v1,36(s1)
  4006a4:	02022821 	addu	a1,s0,v0
  4006a8:	00a3102a 	slt	v0,a1,v1
  4006ac:	10400040 	beqz	v0,4007b0 <__pf_printstuff+0x160>
  4006b0:	00658023 	subu	s0,v1,a1
  4006b4:	1a000056 	blez	s0,400810 <__pf_printstuff+0x1c0>
  4006b8:	02403021 	move	a2,s2
  4006bc:	8e220028 	lw	v0,40(s1)
  4006c0:	00000000 	nop
  4006c4:	10400028 	beqz	v0,400768 <__pf_printstuff+0x118>
  4006c8:	24020030 	li	v0,48
  4006cc:	0c100394 	jal	400e50 <strlen>
  4006d0:	02802021 	move	a0,s4
  4006d4:	00403021 	move	a2,v0
  4006d8:	02802821 	move	a1,s4
  4006dc:	0c100158 	jal	400560 <__pf_print>
  4006e0:	02202021 	move	a0,s1
  4006e4:	0c100394 	jal	400e50 <strlen>
  4006e8:	02602021 	move	a0,s3
  4006ec:	00403021 	move	a2,v0
  4006f0:	02202021 	move	a0,s1
  4006f4:	0c100158 	jal	400560 <__pf_print>
  4006f8:	02602821 	move	a1,s3
  4006fc:	8e220028 	lw	v0,40(s1)
  400700:	00000000 	nop
  400704:	14400005 	bnez	v0,40071c <__pf_printstuff+0xcc>
  400708:	24020030 	li	v0,48
  40070c:	8e23002c 	lw	v1,44(s1)
  400710:	00000000 	nop
  400714:	1062004b 	beq	v1,v0,400844 <__pf_printstuff+0x1f4>
  400718:	02202021 	move	a0,s1
  40071c:	0c100394 	jal	400e50 <strlen>
  400720:	02a02021 	move	a0,s5
  400724:	00403021 	move	a2,v0
  400728:	02202021 	move	a0,s1
  40072c:	0c100158 	jal	400560 <__pf_print>
  400730:	02a02821 	move	a1,s5
  400734:	8e220028 	lw	v0,40(s1)
  400738:	00000000 	nop
  40073c:	14400012 	bnez	v0,400788 <__pf_printstuff+0x138>
  400740:	02202021 	move	a0,s1
  400744:	8fbf0028 	lw	ra,40(sp)
  400748:	8fb50024 	lw	s5,36(sp)
  40074c:	8fb40020 	lw	s4,32(sp)
  400750:	8fb3001c 	lw	s3,28(sp)
  400754:	8fb20018 	lw	s2,24(sp)
  400758:	8fb10014 	lw	s1,20(sp)
  40075c:	8fb00010 	lw	s0,16(sp)
  400760:	03e00008 	jr	ra
  400764:	27bd0030 	addiu	sp,sp,48
  400768:	8e23002c 	lw	v1,44(s1)
  40076c:	00000000 	nop
  400770:	1062ffd6 	beq	v1,v0,4006cc <__pf_printstuff+0x7c>
  400774:	02202021 	move	a0,s1
  400778:	0c100179 	jal	4005e4 <__pf_fill>
  40077c:	02002821 	move	a1,s0
  400780:	081001b3 	j	4006cc <__pf_printstuff+0x7c>
  400784:	00000000 	nop
  400788:	02002821 	move	a1,s0
  40078c:	8fbf0028 	lw	ra,40(sp)
  400790:	8fb50024 	lw	s5,36(sp)
  400794:	8fb40020 	lw	s4,32(sp)
  400798:	8fb3001c 	lw	s3,28(sp)
  40079c:	8fb20018 	lw	s2,24(sp)
  4007a0:	8fb10014 	lw	s1,20(sp)
  4007a4:	8fb00010 	lw	s0,16(sp)
  4007a8:	08100179 	j	4005e4 <__pf_fill>
  4007ac:	27bd0030 	addiu	sp,sp,48
  4007b0:	02802821 	move	a1,s4
  4007b4:	02403021 	move	a2,s2
  4007b8:	0c100158 	jal	400560 <__pf_print>
  4007bc:	02202021 	move	a0,s1
  4007c0:	0c100394 	jal	400e50 <strlen>
  4007c4:	02602021 	move	a0,s3
  4007c8:	00403021 	move	a2,v0
  4007cc:	02202021 	move	a0,s1
  4007d0:	0c100158 	jal	400560 <__pf_print>
  4007d4:	02602821 	move	a1,s3
  4007d8:	0c100394 	jal	400e50 <strlen>
  4007dc:	02a02021 	move	a0,s5
  4007e0:	02202021 	move	a0,s1
  4007e4:	02a02821 	move	a1,s5
  4007e8:	8fbf0028 	lw	ra,40(sp)
  4007ec:	8fb50024 	lw	s5,36(sp)
  4007f0:	8fb40020 	lw	s4,32(sp)
  4007f4:	8fb3001c 	lw	s3,28(sp)
  4007f8:	8fb20018 	lw	s2,24(sp)
  4007fc:	8fb10014 	lw	s1,20(sp)
  400800:	8fb00010 	lw	s0,16(sp)
  400804:	00403021 	move	a2,v0
  400808:	08100158 	j	400560 <__pf_print>
  40080c:	27bd0030 	addiu	sp,sp,48
  400810:	02802821 	move	a1,s4
  400814:	0c100158 	jal	400560 <__pf_print>
  400818:	02202021 	move	a0,s1
  40081c:	0c100394 	jal	400e50 <strlen>
  400820:	02602021 	move	a0,s3
  400824:	00403021 	move	a2,v0
  400828:	02202021 	move	a0,s1
  40082c:	0c100158 	jal	400560 <__pf_print>
  400830:	02602821 	move	a1,s3
  400834:	0c100394 	jal	400e50 <strlen>
  400838:	02a02021 	move	a0,s5
  40083c:	081001f9 	j	4007e4 <__pf_printstuff+0x194>
  400840:	02202021 	move	a0,s1
  400844:	0c100179 	jal	4005e4 <__pf_fill>
  400848:	02002821 	move	a1,s0
  40084c:	081001c7 	j	40071c <__pf_printstuff+0xcc>
  400850:	00000000 	nop

00400854 <__vprintf>:
  400854:	27bdff68 	addiu	sp,sp,-152
  400858:	afbe0090 	sw	s8,144(sp)
  40085c:	27be0030 	addiu	s8,sp,48
  400860:	afb10074 	sw	s1,116(sp)
  400864:	afa40030 	sw	a0,48(sp)
  400868:	00c08821 	move	s1,a2
  40086c:	03c02021 	move	a0,s8
  400870:	afb00070 	sw	s0,112(sp)
  400874:	afbf0094 	sw	ra,148(sp)
  400878:	afb7008c 	sw	s7,140(sp)
  40087c:	afb60088 	sw	s6,136(sp)
  400880:	afb50084 	sw	s5,132(sp)
  400884:	afb40080 	sw	s4,128(sp)
  400888:	afb3007c 	sw	s3,124(sp)
  40088c:	afb20078 	sw	s2,120(sp)
  400890:	afa50034 	sw	a1,52(sp)
  400894:	afa70038 	sw	a3,56(sp)
  400898:	0c10016a 	jal	4005a8 <__pf_endfield>
  40089c:	afa0003c 	sw	zero,60(sp)
  4008a0:	82300000 	lb	s0,0(s1)
  4008a4:	00000000 	nop
  4008a8:	12000017 	beqz	s0,400908 <__vprintf+0xb4>
  4008ac:	0220a021 	move	s4,s1
  4008b0:	08100236 	j	4008d8 <__vprintf+0x84>
  4008b4:	00000000 	nop
  4008b8:	27a50010 	addiu	a1,sp,16
  4008bc:	24060001 	li	a2,1
  4008c0:	0c100158 	jal	400560 <__pf_print>
  4008c4:	a3b00010 	sb	s0,16(sp)
  4008c8:	82900001 	lb	s0,1(s4)
  4008cc:	00000000 	nop
  4008d0:	1200000d 	beqz	s0,400908 <__vprintf+0xb4>
  4008d4:	26940001 	addiu	s4,s4,1
  4008d8:	8fa20040 	lw	v0,64(sp)
  4008dc:	00000000 	nop
  4008e0:	14400016 	bnez	v0,40093c <__vprintf+0xe8>
  4008e4:	24020025 	li	v0,37
  4008e8:	1602fff3 	bne	s0,v0,4008b8 <__vprintf+0x64>
  4008ec:	03c02021 	move	a0,s8
  4008f0:	24020001 	li	v0,1
  4008f4:	afa20040 	sw	v0,64(sp)
  4008f8:	82900001 	lb	s0,1(s4)
  4008fc:	00000000 	nop
  400900:	1600fff5 	bnez	s0,4008d8 <__vprintf+0x84>
  400904:	26940001 	addiu	s4,s4,1
  400908:	8fa2003c 	lw	v0,60(sp)
  40090c:	8fbf0094 	lw	ra,148(sp)
  400910:	8fbe0090 	lw	s8,144(sp)
  400914:	8fb7008c 	lw	s7,140(sp)
  400918:	8fb60088 	lw	s6,136(sp)
  40091c:	8fb50084 	lw	s5,132(sp)
  400920:	8fb40080 	lw	s4,128(sp)
  400924:	8fb3007c 	lw	s3,124(sp)
  400928:	8fb20078 	lw	s2,120(sp)
  40092c:	8fb10074 	lw	s1,116(sp)
  400930:	8fb00070 	lw	s0,112(sp)
  400934:	03e00008 	jr	ra
  400938:	27bd0098 	addiu	sp,sp,152
  40093c:	3c040040 	lui	a0,0x40
  400940:	248416a0 	addiu	a0,a0,5792
  400944:	0c10037c 	jal	400df0 <strchr>
  400948:	02002821 	move	a1,s0
  40094c:	10400031 	beqz	v0,400a14 <__vprintf+0x1c0>
  400950:	24020030 	li	v0,48
  400954:	1202001d 	beq	s0,v0,4009cc <__vprintf+0x178>
  400958:	2a020031 	slti	v0,s0,49
  40095c:	10400013 	beqz	v0,4009ac <__vprintf+0x158>
  400960:	2402006c 	li	v0,108
  400964:	24020023 	li	v0,35
  400968:	12020027 	beq	s0,v0,400a08 <__vprintf+0x1b4>
  40096c:	2402002d 	li	v0,45
  400970:	1202004a 	beq	s0,v0,400a9c <__vprintf+0x248>
  400974:	24020001 	li	v0,1
  400978:	2602ffcf 	addiu	v0,s0,-49
  40097c:	2c420009 	sltiu	v0,v0,9
  400980:	1040001a 	beqz	v0,4009ec <__vprintf+0x198>
  400984:	3c040040 	lui	a0,0x40
  400988:	8fa20054 	lw	v0,84(sp)
  40098c:	00000000 	nop
  400990:	000218c0 	sll	v1,v0,0x3
  400994:	00021040 	sll	v0,v0,0x1
  400998:	00431021 	addu	v0,v0,v1
  40099c:	02021021 	addu	v0,s0,v0
  4009a0:	2442ffd0 	addiu	v0,v0,-48
  4009a4:	08100232 	j	4008c8 <__vprintf+0x74>
  4009a8:	afa20054 	sw	v0,84(sp)
  4009ac:	1602fff3 	bne	s0,v0,40097c <__vprintf+0x128>
  4009b0:	2602ffcf 	addiu	v0,s0,-49
  4009b4:	8fa20044 	lw	v0,68(sp)
  4009b8:	24030001 	li	v1,1
  4009bc:	10430039 	beq	v0,v1,400aa4 <__vprintf+0x250>
  4009c0:	24020002 	li	v0,2
  4009c4:	08100232 	j	4008c8 <__vprintf+0x74>
  4009c8:	afa30044 	sw	v1,68(sp)
  4009cc:	8fa20054 	lw	v0,84(sp)
  4009d0:	00000000 	nop
  4009d4:	1840008c 	blez	v0,400c08 <__vprintf+0x3b4>
  4009d8:	000218c0 	sll	v1,v0,0x3
  4009dc:	00021040 	sll	v0,v0,0x1
  4009e0:	00431021 	addu	v0,v0,v1
  4009e4:	08100232 	j	4008c8 <__vprintf+0x74>
  4009e8:	afa20054 	sw	v0,84(sp)
  4009ec:	3c060040 	lui	a2,0x40
  4009f0:	248416b0 	addiu	a0,a0,5808
  4009f4:	24c616d8 	addiu	a2,a2,5848
  4009f8:	0c1003b8 	jal	400ee0 <__bad_assert>
  4009fc:	240500dc 	li	a1,220
  400a00:	08100262 	j	400988 <__vprintf+0x134>
  400a04:	00000000 	nop
  400a08:	24020001 	li	v0,1
  400a0c:	08100232 	j	4008c8 <__vprintf+0x74>
  400a10:	afa20068 	sw	v0,104(sp)
  400a14:	3c040040 	lui	a0,0x40
  400a18:	248416ec 	addiu	a0,a0,5868
  400a1c:	0c10037c 	jal	400df0 <strchr>
  400a20:	02002821 	move	a1,s0
  400a24:	10400091 	beqz	v0,400c6c <__vprintf+0x418>
  400a28:	24020070 	li	v0,112
  400a2c:	1202001f 	beq	s0,v0,400aac <__vprintf+0x258>
  400a30:	24020064 	li	v0,100
  400a34:	1202009e 	beq	s0,v0,400cb0 <__vprintf+0x45c>
  400a38:	24020001 	li	v0,1
  400a3c:	8fa30044 	lw	v1,68(sp)
  400a40:	00000000 	nop
  400a44:	10620003 	beq	v1,v0,400a54 <__vprintf+0x200>
  400a48:	00000000 	nop
  400a4c:	14600074 	bnez	v1,400c20 <__vprintf+0x3cc>
  400a50:	24020002 	li	v0,2
  400a54:	8fa20038 	lw	v0,56(sp)
  400a58:	afa00048 	sw	zero,72(sp)
  400a5c:	8c430000 	lw	v1,0(v0)
  400a60:	24420004 	addiu	v0,v0,4
  400a64:	afa20038 	sw	v0,56(sp)
  400a68:	afa3004c 	sw	v1,76(sp)
  400a6c:	2602ff9c 	addiu	v0,s0,-100
  400a70:	304200ff 	andi	v0,v0,0xff
  400a74:	2c430015 	sltiu	v1,v0,21
  400a78:	10600015 	beqz	v1,400ad0 <__vprintf+0x27c>
  400a7c:	3c030040 	lui	v1,0x40
  400a80:	00021080 	sll	v0,v0,0x2
  400a84:	24631600 	addiu	v1,v1,5632
  400a88:	00431021 	addu	v0,v0,v1
  400a8c:	8c440000 	lw	a0,0(v0)
  400a90:	00000000 	nop
  400a94:	00800008 	jr	a0
  400a98:	00000000 	nop
  400a9c:	08100232 	j	4008c8 <__vprintf+0x74>
  400aa0:	afa20058 	sw	v0,88(sp)
  400aa4:	08100232 	j	4008c8 <__vprintf+0x74>
  400aa8:	afa20044 	sw	v0,68(sp)
  400aac:	8fa20038 	lw	v0,56(sp)
  400ab0:	afa00048 	sw	zero,72(sp)
  400ab4:	24430004 	addiu	v1,v0,4
  400ab8:	afa30038 	sw	v1,56(sp)
  400abc:	8c440000 	lw	a0,0(v0)
  400ac0:	00000000 	nop
  400ac4:	afa4004c 	sw	a0,76(sp)
  400ac8:	24020010 	li	v0,16
  400acc:	afa20060 	sw	v0,96(sp)
  400ad0:	8fa20068 	lw	v0,104(sp)
  400ad4:	00000000 	nop
  400ad8:	1440004d 	bnez	v0,400c10 <__vprintf+0x3bc>
  400adc:	24020001 	li	v0,1
  400ae0:	24020070 	li	v0,112
  400ae4:	1202004a 	beq	s0,v0,400c10 <__vprintf+0x3bc>
  400ae8:	24020001 	li	v0,1
  400aec:	8fb60060 	lw	s6,96(sp)
  400af0:	3c020040 	lui	v0,0x40
  400af4:	8fb1004c 	lw	s1,76(sp)
  400af8:	8fb00048 	lw	s0,72(sp)
  400afc:	a3a00029 	sb	zero,41(sp)
  400b00:	245716f4 	addiu	s7,v0,5876
  400b04:	27b50028 	addiu	s5,sp,40
  400b08:	02c09821 	move	s3,s6
  400b0c:	001697c3 	sra	s2,s6,0x1f
  400b10:	02202821 	move	a1,s1
  400b14:	02002021 	move	a0,s0
  400b18:	02603821 	move	a3,s3
  400b1c:	0c1003ac 	jal	400eb0 <__umoddi3>
  400b20:	02403021 	move	a2,s2
  400b24:	02e31821 	addu	v1,s7,v1
  400b28:	90620000 	lbu	v0,0(v1)
  400b2c:	02202821 	move	a1,s1
  400b30:	02002021 	move	a0,s0
  400b34:	02603821 	move	a3,s3
  400b38:	02403021 	move	a2,s2
  400b3c:	0c1003a4 	jal	400e90 <__udivdi3>
  400b40:	a2a20000 	sb	v0,0(s5)
  400b44:	00408021 	move	s0,v0
  400b48:	02031025 	or	v0,s0,v1
  400b4c:	00608821 	move	s1,v1
  400b50:	1440ffef 	bnez	v0,400b10 <__vprintf+0x2bc>
  400b54:	26b5ffff 	addiu	s5,s5,-1
  400b58:	8fa20064 	lw	v0,100(sp)
  400b5c:	00000000 	nop
  400b60:	10400006 	beqz	v0,400b7c <__vprintf+0x328>
  400b64:	3c020040 	lui	v0,0x40
  400b68:	24020010 	li	v0,16
  400b6c:	12c2005e 	beq	s6,v0,400ce8 <__vprintf+0x494>
  400b70:	24020008 	li	v0,8
  400b74:	12c20037 	beq	s6,v0,400c54 <__vprintf+0x400>
  400b78:	3c020040 	lui	v0,0x40
  400b7c:	24461704 	addiu	a2,v0,5892
  400b80:	8fa20050 	lw	v0,80(sp)
  400b84:	00000000 	nop
  400b88:	10400023 	beqz	v0,400c18 <__vprintf+0x3c4>
  400b8c:	3c020040 	lui	v0,0x40
  400b90:	3c020040 	lui	v0,0x40
  400b94:	24451694 	addiu	a1,v0,5780
  400b98:	03c02021 	move	a0,s8
  400b9c:	0c100194 	jal	400650 <__pf_printstuff>
  400ba0:	26a70001 	addiu	a3,s5,1
  400ba4:	0c10016a 	jal	4005a8 <__pf_endfield>
  400ba8:	03c02021 	move	a0,s8
  400bac:	08100232 	j	4008c8 <__vprintf+0x74>
  400bb0:	00000000 	nop
  400bb4:	8fa20038 	lw	v0,56(sp)
  400bb8:	2403fff8 	li	v1,-8
  400bbc:	24420007 	addiu	v0,v0,7
  400bc0:	00431024 	and	v0,v0,v1
  400bc4:	8c470004 	lw	a3,4(v0)
  400bc8:	8c460000 	lw	a2,0(v0)
  400bcc:	24420008 	addiu	v0,v0,8
  400bd0:	afa20038 	sw	v0,56(sp)
  400bd4:	04c10040 	bgez	a2,400cd8 <__vprintf+0x484>
  400bd8:	2402000a 	li	v0,10
  400bdc:	00071823 	negu	v1,a3
  400be0:	0003282b 	sltu	a1,zero,v1
  400be4:	00061023 	negu	v0,a2
  400be8:	00451023 	subu	v0,v0,a1
  400bec:	2404ffff 	li	a0,-1
  400bf0:	afa40050 	sw	a0,80(sp)
  400bf4:	afa3004c 	sw	v1,76(sp)
  400bf8:	afa20048 	sw	v0,72(sp)
  400bfc:	2402000a 	li	v0,10
  400c00:	081002b4 	j	400ad0 <__vprintf+0x27c>
  400c04:	afa20060 	sw	v0,96(sp)
  400c08:	08100232 	j	4008c8 <__vprintf+0x74>
  400c0c:	afb0005c 	sw	s0,92(sp)
  400c10:	081002bb 	j	400aec <__vprintf+0x298>
  400c14:	afa20064 	sw	v0,100(sp)
  400c18:	081002e6 	j	400b98 <__vprintf+0x344>
  400c1c:	24451704 	addiu	a1,v0,5892
  400c20:	1462ff93 	bne	v1,v0,400a70 <__vprintf+0x21c>
  400c24:	2602ff9c 	addiu	v0,s0,-100
  400c28:	8fa20038 	lw	v0,56(sp)
  400c2c:	2403fff8 	li	v1,-8
  400c30:	24420007 	addiu	v0,v0,7
  400c34:	00431024 	and	v0,v0,v1
  400c38:	8c450004 	lw	a1,4(v0)
  400c3c:	8c440000 	lw	a0,0(v0)
  400c40:	24420008 	addiu	v0,v0,8
  400c44:	afa20038 	sw	v0,56(sp)
  400c48:	afa5004c 	sw	a1,76(sp)
  400c4c:	0810029b 	j	400a6c <__vprintf+0x218>
  400c50:	afa40048 	sw	a0,72(sp)
  400c54:	3c020040 	lui	v0,0x40
  400c58:	081002e0 	j	400b80 <__vprintf+0x32c>
  400c5c:	2446170c 	addiu	a2,v0,5900
  400c60:	24020008 	li	v0,8
  400c64:	081002b4 	j	400ad0 <__vprintf+0x27c>
  400c68:	afa20060 	sw	v0,96(sp)
  400c6c:	24020073 	li	v0,115
  400c70:	12020028 	beq	s0,v0,400d14 <__vprintf+0x4c0>
  400c74:	24020063 	li	v0,99
  400c78:	12020037 	beq	s0,v0,400d58 <__vprintf+0x504>
  400c7c:	00000000 	nop
  400c80:	a3b00011 	sb	s0,17(sp)
  400c84:	3c050040 	lui	a1,0x40
  400c88:	24a51704 	addiu	a1,a1,5892
  400c8c:	03c02021 	move	a0,s8
  400c90:	00a03021 	move	a2,a1
  400c94:	27a70011 	addiu	a3,sp,17
  400c98:	0c100194 	jal	400650 <__pf_printstuff>
  400c9c:	a3a00012 	sb	zero,18(sp)
  400ca0:	0c10016a 	jal	4005a8 <__pf_endfield>
  400ca4:	03c02021 	move	a0,s8
  400ca8:	08100232 	j	4008c8 <__vprintf+0x74>
  400cac:	00000000 	nop
  400cb0:	8fa30044 	lw	v1,68(sp)
  400cb4:	00000000 	nop
  400cb8:	1062000e 	beq	v1,v0,400cf4 <__vprintf+0x4a0>
  400cbc:	00000000 	nop
  400cc0:	1060000c 	beqz	v1,400cf4 <__vprintf+0x4a0>
  400cc4:	24020002 	li	v0,2
  400cc8:	1062ffba 	beq	v1,v0,400bb4 <__vprintf+0x360>
  400ccc:	00003821 	move	a3,zero
  400cd0:	00003021 	move	a2,zero
  400cd4:	2402000a 	li	v0,10
  400cd8:	afa7004c 	sw	a3,76(sp)
  400cdc:	afa60048 	sw	a2,72(sp)
  400ce0:	081002b4 	j	400ad0 <__vprintf+0x27c>
  400ce4:	afa20060 	sw	v0,96(sp)
  400ce8:	3c020040 	lui	v0,0x40
  400cec:	081002e0 	j	400b80 <__vprintf+0x32c>
  400cf0:	24461708 	addiu	a2,v0,5896
  400cf4:	8fa20038 	lw	v0,56(sp)
  400cf8:	00000000 	nop
  400cfc:	8c430000 	lw	v1,0(v0)
  400d00:	24420004 	addiu	v0,v0,4
  400d04:	00603821 	move	a3,v1
  400d08:	000337c3 	sra	a2,v1,0x1f
  400d0c:	081002f5 	j	400bd4 <__vprintf+0x380>
  400d10:	afa20038 	sw	v0,56(sp)
  400d14:	8fa30038 	lw	v1,56(sp)
  400d18:	00000000 	nop
  400d1c:	8c670000 	lw	a3,0(v1)
  400d20:	00000000 	nop
  400d24:	10e00013 	beqz	a3,400d74 <__vprintf+0x520>
  400d28:	3c020040 	lui	v0,0x40
  400d2c:	3c050040 	lui	a1,0x40
  400d30:	24a51704 	addiu	a1,a1,5892
  400d34:	24620004 	addiu	v0,v1,4
  400d38:	03c02021 	move	a0,s8
  400d3c:	00a03021 	move	a2,a1
  400d40:	0c100194 	jal	400650 <__pf_printstuff>
  400d44:	afa20038 	sw	v0,56(sp)
  400d48:	0c10016a 	jal	4005a8 <__pf_endfield>
  400d4c:	03c02021 	move	a0,s8
  400d50:	08100232 	j	4008c8 <__vprintf+0x74>
  400d54:	00000000 	nop
  400d58:	8fa20038 	lw	v0,56(sp)
  400d5c:	00000000 	nop
  400d60:	8c430000 	lw	v1,0(v0)
  400d64:	24420004 	addiu	v0,v0,4
  400d68:	afa20038 	sw	v0,56(sp)
  400d6c:	08100321 	j	400c84 <__vprintf+0x430>
  400d70:	a3a30011 	sb	v1,17(sp)
  400d74:	0810034b 	j	400d2c <__vprintf+0x4d8>
  400d78:	24471698 	addiu	a3,v0,5784
  400d7c:	00000000 	nop

00400d80 <__puts>:
  400d80:	27bdffe0 	addiu	sp,sp,-32
  400d84:	afb00010 	sw	s0,16(sp)
  400d88:	afbf0018 	sw	ra,24(sp)
  400d8c:	afb10014 	sw	s1,20(sp)
  400d90:	00808021 	move	s0,a0
  400d94:	80840000 	lb	a0,0(a0)
  400d98:	00000000 	nop
  400d9c:	1080000d 	beqz	a0,400dd4 <__puts+0x54>
  400da0:	00008821 	move	s1,zero
  400da4:	0c10006c 	jal	4001b0 <putchar>
  400da8:	26100001 	addiu	s0,s0,1
  400dac:	82040000 	lb	a0,0(s0)
  400db0:	00000000 	nop
  400db4:	1480fffb 	bnez	a0,400da4 <__puts+0x24>
  400db8:	26310001 	addiu	s1,s1,1
  400dbc:	02201021 	move	v0,s1
  400dc0:	8fbf0018 	lw	ra,24(sp)
  400dc4:	8fb10014 	lw	s1,20(sp)
  400dc8:	8fb00010 	lw	s0,16(sp)
  400dcc:	03e00008 	jr	ra
  400dd0:	27bd0020 	addiu	sp,sp,32
  400dd4:	02201021 	move	v0,s1
  400dd8:	8fbf0018 	lw	ra,24(sp)
  400ddc:	8fb10014 	lw	s1,20(sp)
  400de0:	8fb00010 	lw	s0,16(sp)
  400de4:	03e00008 	jr	ra
  400de8:	27bd0020 	addiu	sp,sp,32
  400dec:	00000000 	nop

00400df0 <strchr>:
  400df0:	80830000 	lb	v1,0(a0)
  400df4:	00052e00 	sll	a1,a1,0x18
  400df8:	00801021 	move	v0,a0
  400dfc:	1060000c 	beqz	v1,400e30 <strchr+0x40>
  400e00:	00052e03 	sra	a1,a1,0x18
  400e04:	14a30006 	bne	a1,v1,400e20 <strchr+0x30>
  400e08:	24420001 	addiu	v0,v0,1
  400e0c:	03e00008 	jr	ra
  400e10:	2442ffff 	addiu	v0,v0,-1
  400e14:	10a3000c 	beq	a1,v1,400e48 <strchr+0x58>
  400e18:	00000000 	nop
  400e1c:	24420001 	addiu	v0,v0,1
  400e20:	80430000 	lb	v1,0(v0)
  400e24:	00000000 	nop
  400e28:	1460fffa 	bnez	v1,400e14 <strchr+0x24>
  400e2c:	00000000 	nop
  400e30:	14a00003 	bnez	a1,400e40 <strchr+0x50>
  400e34:	00000000 	nop
  400e38:	03e00008 	jr	ra
  400e3c:	00000000 	nop
  400e40:	03e00008 	jr	ra
  400e44:	00001021 	move	v0,zero
  400e48:	03e00008 	jr	ra
  400e4c:	00000000 	nop

00400e50 <strlen>:
  400e50:	80820000 	lb	v0,0(a0)
  400e54:	00000000 	nop
  400e58:	1040000a 	beqz	v0,400e84 <strlen+0x34>
  400e5c:	00002821 	move	a1,zero
  400e60:	24a50001 	addiu	a1,a1,1
  400e64:	00851021 	addu	v0,a0,a1
  400e68:	80430000 	lb	v1,0(v0)
  400e6c:	00000000 	nop
  400e70:	1460fffc 	bnez	v1,400e64 <strlen+0x14>
  400e74:	24a50001 	addiu	a1,a1,1
  400e78:	24a5ffff 	addiu	a1,a1,-1
  400e7c:	03e00008 	jr	ra
  400e80:	00a01021 	move	v0,a1
  400e84:	03e00008 	jr	ra
  400e88:	00a01021 	move	v0,a1
  400e8c:	00000000 	nop

00400e90 <__udivdi3>:
  400e90:	27bdffe0 	addiu	sp,sp,-32
  400e94:	afbf0018 	sw	ra,24(sp)
  400e98:	0c100433 	jal	4010cc <__qdivrem>
  400e9c:	afa00010 	sw	zero,16(sp)
  400ea0:	8fbf0018 	lw	ra,24(sp)
  400ea4:	00000000 	nop
  400ea8:	03e00008 	jr	ra
  400eac:	27bd0020 	addiu	sp,sp,32

00400eb0 <__umoddi3>:
  400eb0:	27bdffd8 	addiu	sp,sp,-40
  400eb4:	27a20018 	addiu	v0,sp,24
  400eb8:	afbf0020 	sw	ra,32(sp)
  400ebc:	0c100433 	jal	4010cc <__qdivrem>
  400ec0:	afa20010 	sw	v0,16(sp)
  400ec4:	8fa3001c 	lw	v1,28(sp)
  400ec8:	8fa20018 	lw	v0,24(sp)
  400ecc:	8fbf0020 	lw	ra,32(sp)
  400ed0:	00000000 	nop
  400ed4:	03e00008 	jr	ra
  400ed8:	27bd0028 	addiu	sp,sp,40
  400edc:	00000000 	nop

00400ee0 <__bad_assert>:
  400ee0:	27bdfee0 	addiu	sp,sp,-288
  400ee4:	00c03821 	move	a3,a2
  400ee8:	afb00118 	sw	s0,280(sp)
  400eec:	3c060040 	lui	a2,0x40
  400ef0:	27b00018 	addiu	s0,sp,24
  400ef4:	24c61710 	addiu	a2,a2,5904
  400ef8:	afa40010 	sw	a0,16(sp)
  400efc:	afa50014 	sw	a1,20(sp)
  400f00:	02002021 	move	a0,s0
  400f04:	afbf011c 	sw	ra,284(sp)
  400f08:	0c100404 	jal	401010 <snprintf>
  400f0c:	24050100 	li	a1,256
  400f10:	0c100394 	jal	400e50 <strlen>
  400f14:	02002021 	move	a0,s0
  400f18:	00403021 	move	a2,v0
  400f1c:	02002821 	move	a1,s0
  400f20:	0c1000ef 	jal	4003bc <write>
  400f24:	24040002 	li	a0,2
  400f28:	0c100410 	jal	401040 <abort>
  400f2c:	00000000 	nop

00400f30 <__snprintf_send>:
  400f30:	10c00012 	beqz	a2,400f7c <__snprintf_send+0x4c>
  400f34:	00004021 	move	t0,zero
  400f38:	8c870008 	lw	a3,8(a0)
  400f3c:	8c820004 	lw	v0,4(a0)
  400f40:	00a81821 	addu	v1,a1,t0
  400f44:	00e2102b 	sltu	v0,a3,v0
  400f48:	1040000a 	beqz	v0,400f74 <__snprintf_send+0x44>
  400f4c:	25080001 	addiu	t0,t0,1
  400f50:	8c820000 	lw	v0,0(a0)
  400f54:	90630000 	lbu	v1,0(v1)
  400f58:	00471021 	addu	v0,v0,a3
  400f5c:	a0430000 	sb	v1,0(v0)
  400f60:	8c870008 	lw	a3,8(a0)
  400f64:	00000000 	nop
  400f68:	24e20001 	addiu	v0,a3,1
  400f6c:	00403821 	move	a3,v0
  400f70:	ac820008 	sw	v0,8(a0)
  400f74:	14c8fff1 	bne	a2,t0,400f3c <__snprintf_send+0xc>
  400f78:	00000000 	nop
  400f7c:	03e00008 	jr	ra
  400f80:	00000000 	nop

00400f84 <vsnprintf>:
  400f84:	27bdffd8 	addiu	sp,sp,-40
  400f88:	afb00020 	sw	s0,32(sp)
  400f8c:	00a01021 	move	v0,a1
  400f90:	00808021 	move	s0,a0
  400f94:	3c040040 	lui	a0,0x40
  400f98:	24a3ffff 	addiu	v1,a1,-1
  400f9c:	afbf0024 	sw	ra,36(sp)
  400fa0:	24840f30 	addiu	a0,a0,3888
  400fa4:	27a50010 	addiu	a1,sp,16
  400fa8:	1440000c 	bnez	v0,400fdc <vsnprintf+0x58>
  400fac:	afb00010 	sw	s0,16(sp)
  400fb0:	3c040040 	lui	a0,0x40
  400fb4:	24840f30 	addiu	a0,a0,3888
  400fb8:	afa00014 	sw	zero,20(sp)
  400fbc:	0c100215 	jal	400854 <__vprintf>
  400fc0:	afa00018 	sw	zero,24(sp)
  400fc4:	00401821 	move	v1,v0
  400fc8:	8fbf0024 	lw	ra,36(sp)
  400fcc:	8fb00020 	lw	s0,32(sp)
  400fd0:	00601021 	move	v0,v1
  400fd4:	03e00008 	jr	ra
  400fd8:	27bd0028 	addiu	sp,sp,40
  400fdc:	afa30014 	sw	v1,20(sp)
  400fe0:	0c100215 	jal	400854 <__vprintf>
  400fe4:	afa00018 	sw	zero,24(sp)
  400fe8:	00401821 	move	v1,v0
  400fec:	8fa20018 	lw	v0,24(sp)
  400ff0:	00000000 	nop
  400ff4:	02021021 	addu	v0,s0,v0
  400ff8:	a0400000 	sb	zero,0(v0)
  400ffc:	8fbf0024 	lw	ra,36(sp)
  401000:	8fb00020 	lw	s0,32(sp)
  401004:	00601021 	move	v0,v1
  401008:	03e00008 	jr	ra
  40100c:	27bd0028 	addiu	sp,sp,40

00401010 <snprintf>:
  401010:	27bdffe0 	addiu	sp,sp,-32
  401014:	27a2002c 	addiu	v0,sp,44
  401018:	afa7002c 	sw	a3,44(sp)
  40101c:	00403821 	move	a3,v0
  401020:	afbf0018 	sw	ra,24(sp)
  401024:	0c1003e1 	jal	400f84 <vsnprintf>
  401028:	afa20010 	sw	v0,16(sp)
  40102c:	8fbf0018 	lw	ra,24(sp)
  401030:	00000000 	nop
  401034:	03e00008 	jr	ra
  401038:	27bd0020 	addiu	sp,sp,32
  40103c:	00000000 	nop

00401040 <abort>:
  401040:	27bdffe8 	addiu	sp,sp,-24
  401044:	afbf0010 	sw	ra,16(sp)
  401048:	0c1000af 	jal	4002bc <_exit>
  40104c:	240400ff 	li	a0,255

00401050 <shl>:
  401050:	18a00016 	blez	a1,4010ac <shl+0x5c>
  401054:	24020010 	li	v0,16
  401058:	00464823 	subu	t1,v0,a2
  40105c:	00803821 	move	a3,a0
  401060:	00004021 	move	t0,zero
  401064:	8ce20000 	lw	v0,0(a3)
  401068:	8ce30004 	lw	v1,4(a3)
  40106c:	00c21004 	sllv	v0,v0,a2
  401070:	3042ffff 	andi	v0,v0,0xffff
  401074:	01231806 	srlv	v1,v1,t1
  401078:	00431025 	or	v0,v0,v1
  40107c:	25080001 	addiu	t0,t0,1
  401080:	ace20000 	sw	v0,0(a3)
  401084:	14a8fff7 	bne	a1,t0,401064 <shl+0x14>
  401088:	24e70004 	addiu	a3,a3,4
  40108c:	00051880 	sll	v1,a1,0x2
  401090:	00831821 	addu	v1,a0,v1
  401094:	8c620000 	lw	v0,0(v1)
  401098:	00000000 	nop
  40109c:	00c21004 	sllv	v0,v0,a2
  4010a0:	3042ffff 	andi	v0,v0,0xffff
  4010a4:	03e00008 	jr	ra
  4010a8:	ac620000 	sw	v0,0(v1)
  4010ac:	00001821 	move	v1,zero
  4010b0:	00831821 	addu	v1,a0,v1
  4010b4:	8c620000 	lw	v0,0(v1)
  4010b8:	00000000 	nop
  4010bc:	00c21004 	sllv	v0,v0,a2
  4010c0:	3042ffff 	andi	v0,v0,0xffff
  4010c4:	03e00008 	jr	ra
  4010c8:	ac620000 	sw	v0,0(v1)

004010cc <__qdivrem>:
  4010cc:	27bdff80 	addiu	sp,sp,-128
  4010d0:	00c71025 	or	v0,a2,a3
  4010d4:	afb20060 	sw	s2,96(sp)
  4010d8:	afbf007c 	sw	ra,124(sp)
  4010dc:	afbe0078 	sw	s8,120(sp)
  4010e0:	afb70074 	sw	s7,116(sp)
  4010e4:	afb60070 	sw	s6,112(sp)
  4010e8:	afb5006c 	sw	s5,108(sp)
  4010ec:	afb40068 	sw	s4,104(sp)
  4010f0:	afb30064 	sw	s3,100(sp)
  4010f4:	afb1005c 	sw	s1,92(sp)
  4010f8:	afb00058 	sw	s0,88(sp)
  4010fc:	00a04821 	move	t1,a1
  401100:	8fb20090 	lw	s2,144(sp)
  401104:	14400018 	bnez	v0,401168 <__qdivrem+0x9c>
  401108:	00804021 	move	t0,a0
  40110c:	3c031000 	lui	v1,0x1000
  401110:	8c640000 	lw	a0,0(v1)
  401114:	24020001 	li	v0,1
  401118:	14800002 	bnez	a0,401124 <__qdivrem+0x58>
  40111c:	0044001b 	divu	zero,v0,a0
  401120:	0007000d 	break	0x7
  401124:	00001012 	mflo	v0
  401128:	12400003 	beqz	s2,401138 <__qdivrem+0x6c>
  40112c:	00401821 	move	v1,v0
  401130:	ae450004 	sw	a1,4(s2)
  401134:	ae480000 	sw	t0,0(s2)
  401138:	8fbf007c 	lw	ra,124(sp)
  40113c:	8fbe0078 	lw	s8,120(sp)
  401140:	8fb70074 	lw	s7,116(sp)
  401144:	8fb60070 	lw	s6,112(sp)
  401148:	8fb5006c 	lw	s5,108(sp)
  40114c:	8fb40068 	lw	s4,104(sp)
  401150:	8fb30064 	lw	s3,100(sp)
  401154:	8fb20060 	lw	s2,96(sp)
  401158:	8fb1005c 	lw	s1,92(sp)
  40115c:	8fb00058 	lw	s0,88(sp)
  401160:	03e00008 	jr	ra
  401164:	27bd0080 	addiu	sp,sp,128
  401168:	0086102b 	sltu	v0,a0,a2
  40116c:	10400008 	beqz	v0,401190 <__qdivrem+0xc4>
  401170:	00000000 	nop
  401174:	1240010c 	beqz	s2,4015a8 <__qdivrem+0x4dc>
  401178:	00000000 	nop
  40117c:	00001821 	move	v1,zero
  401180:	00001021 	move	v0,zero
  401184:	ae490004 	sw	t1,4(s2)
  401188:	0810044e 	j	401138 <__qdivrem+0x6c>
  40118c:	ae480000 	sw	t0,0(s2)
  401190:	10860046 	beq	a0,a2,4012ac <__qdivrem+0x1e0>
  401194:	00a7102b 	sltu	v0,a1,a3
  401198:	00e08821 	move	s1,a3
  40119c:	01001821 	move	v1,t0
  4011a0:	00c08021 	move	s0,a2
  4011a4:	30c7ffff 	andi	a3,a2,0xffff
  4011a8:	3108ffff 	andi	t0,t0,0xffff
  4011ac:	312affff 	andi	t2,t1,0xffff
  4011b0:	3226ffff 	andi	a2,s1,0xffff
  4011b4:	00031c02 	srl	v1,v1,0x10
  4011b8:	00092c02 	srl	a1,t1,0x10
  4011bc:	00101402 	srl	v0,s0,0x10
  4011c0:	00112402 	srl	a0,s1,0x10
  4011c4:	afa00010 	sw	zero,16(sp)
  4011c8:	afa30014 	sw	v1,20(sp)
  4011cc:	afa80018 	sw	t0,24(sp)
  4011d0:	afa5001c 	sw	a1,28(sp)
  4011d4:	afaa0020 	sw	t2,32(sp)
  4011d8:	afa20028 	sw	v0,40(sp)
  4011dc:	afa7002c 	sw	a3,44(sp)
  4011e0:	afa40030 	sw	a0,48(sp)
  4011e4:	144000f6 	bnez	v0,4015c0 <__qdivrem+0x4f4>
  4011e8:	afa60034 	sw	a2,52(sp)
  4011ec:	14e00033 	bnez	a3,4012bc <__qdivrem+0x1f0>
  4011f0:	27a20028 	addiu	v0,sp,40
  4011f4:	148000f7 	bnez	a0,4015d4 <__qdivrem+0x508>
  4011f8:	27a2002c 	addiu	v0,sp,44
  4011fc:	14c00002 	bnez	a2,401208 <__qdivrem+0x13c>
  401200:	0066001b 	divu	zero,v1,a2
  401204:	0007000d 	break	0x7
  401208:	00001010 	mfhi	v0
  40120c:	00021400 	sll	v0,v0,0x10
  401210:	00481025 	or	v0,v0,t0
  401214:	00004812 	mflo	t1
	...
  401220:	14c00002 	bnez	a2,40122c <__qdivrem+0x160>
  401224:	0046001b 	divu	zero,v0,a2
  401228:	0007000d 	break	0x7
  40122c:	00001810 	mfhi	v1
  401230:	00031c00 	sll	v1,v1,0x10
  401234:	00651825 	or	v1,v1,a1
  401238:	00003812 	mflo	a3
	...
  401244:	14c00002 	bnez	a2,401250 <__qdivrem+0x184>
  401248:	0066001b 	divu	zero,v1,a2
  40124c:	0007000d 	break	0x7
  401250:	00001010 	mfhi	v0
  401254:	00021400 	sll	v0,v0,0x10
  401258:	00001812 	mflo	v1
  40125c:	12400008 	beqz	s2,401280 <__qdivrem+0x1b4>
  401260:	01422025 	or	a0,t2,v0
  401264:	14c00002 	bnez	a2,401270 <__qdivrem+0x1a4>
  401268:	0086001b 	divu	zero,a0,a2
  40126c:	0007000d 	break	0x7
  401270:	ae400000 	sw	zero,0(s2)
  401274:	00001010 	mfhi	v0
  401278:	ae420004 	sw	v0,4(s2)
  40127c:	00000000 	nop
  401280:	14c00002 	bnez	a2,40128c <__qdivrem+0x1c0>
  401284:	0086001b 	divu	zero,a0,a2
  401288:	0007000d 	break	0x7
  40128c:	00091400 	sll	v0,t1,0x10
  401290:	00031c00 	sll	v1,v1,0x10
  401294:	00e28025 	or	s0,a3,v0
  401298:	02001021 	move	v0,s0
  40129c:	00002012 	mflo	a0
  4012a0:	00838825 	or	s1,a0,v1
  4012a4:	0810044e 	j	401138 <__qdivrem+0x6c>
  4012a8:	02201821 	move	v1,s1
  4012ac:	1040ffbb 	beqz	v0,40119c <__qdivrem+0xd0>
  4012b0:	00e08821 	move	s1,a3
  4012b4:	0810045d 	j	401174 <__qdivrem+0xa8>
  4012b8:	00000000 	nop
  4012bc:	afa20050 	sw	v0,80(sp)
  4012c0:	24170003 	li	s7,3
  4012c4:	27be002c 	addiu	s8,sp,44
  4012c8:	8fa30014 	lw	v1,20(sp)
  4012cc:	24020004 	li	v0,4
  4012d0:	146000c4 	bnez	v1,4015e4 <__qdivrem+0x518>
  4012d4:	00579823 	subu	s3,v0,s7
  4012d8:	081004b9 	j	4012e4 <__qdivrem+0x218>
  4012dc:	27b40014 	addiu	s4,sp,20
  4012e0:	0060a021 	move	s4,v1
  4012e4:	8e820004 	lw	v0,4(s4)
  4012e8:	2673ffff 	addiu	s3,s3,-1
  4012ec:	1040fffc 	beqz	v0,4012e0 <__qdivrem+0x214>
  4012f0:	26830004 	addiu	v1,s4,4
  4012f4:	24020004 	li	v0,4
  4012f8:	00532023 	subu	a0,v0,s3
  4012fc:	2483ffff 	addiu	v1,a0,-1
  401300:	046000bc 	bltz	v1,4015f4 <__qdivrem+0x528>
  401304:	00001821 	move	v1,zero
  401308:	27a60038 	addiu	a2,sp,56
  40130c:	00042880 	sll	a1,a0,0x2
  401310:	00c51021 	addu	v0,a2,a1
  401314:	2442fffc 	addiu	v0,v0,-4
  401318:	24630001 	addiu	v1,v1,1
  40131c:	ac400000 	sw	zero,0(v0)
  401320:	1464fffd 	bne	v1,a0,401318 <__qdivrem+0x24c>
  401324:	2442fffc 	addiu	v0,v0,-4
  401328:	8fcb0000 	lw	t3,0(s8)
  40132c:	34028000 	li	v0,0x8000
  401330:	0162102b 	sltu	v0,t3,v0
  401334:	00c5b021 	addu	s6,a2,a1
  401338:	104000ac 	beqz	v0,4015ec <__qdivrem+0x520>
  40133c:	01601821 	move	v1,t3
  401340:	0000a821 	move	s5,zero
  401344:	34048000 	li	a0,0x8000
  401348:	00031840 	sll	v1,v1,0x1
  40134c:	0064102b 	sltu	v0,v1,a0
  401350:	1440fffd 	bnez	v0,401348 <__qdivrem+0x27c>
  401354:	26b50001 	addiu	s5,s5,1
  401358:	1aa00009 	blez	s5,401380 <__qdivrem+0x2b4>
  40135c:	02f32821 	addu	a1,s7,s3
  401360:	02a03021 	move	a2,s5
  401364:	0c100414 	jal	401050 <shl>
  401368:	02802021 	move	a0,s4
  40136c:	03c02021 	move	a0,s8
  401370:	26e5ffff 	addiu	a1,s7,-1
  401374:	0c100414 	jal	401050 <shl>
  401378:	02a03021 	move	a2,s5
  40137c:	8fcb0000 	lw	t3,0(s8)
  401380:	8fa20050 	lw	v0,80(sp)
  401384:	00177080 	sll	t6,s7,0x2
  401388:	8c580008 	lw	t8,8(v0)
  40138c:	02c06821 	move	t5,s6
  401390:	02804821 	move	t1,s4
  401394:	028e6021 	addu	t4,s4,t6
  401398:	00007821 	move	t7,zero
  40139c:	3416ffff 	li	s6,0xffff
  4013a0:	8d240000 	lw	a0,0(t1)
  4013a4:	8d230004 	lw	v1,4(t1)
  4013a8:	8d260008 	lw	a2,8(t1)
  4013ac:	11640081 	beq	t3,a0,4015b4 <__qdivrem+0x4e8>
  4013b0:	00041400 	sll	v0,a0,0x10
  4013b4:	00621025 	or	v0,v1,v0
  4013b8:	15600002 	bnez	t3,4013c4 <__qdivrem+0x2f8>
  4013bc:	004b001b 	divu	zero,v0,t3
  4013c0:	0007000d 	break	0x7
  4013c4:	00002810 	mfhi	a1
  4013c8:	00003812 	mflo	a3
	...
  4013d4:	00f80018 	mult	a3,t8
  4013d8:	00051400 	sll	v0,a1,0x10
  4013dc:	00c21025 	or	v0,a2,v0
  4013e0:	00001812 	mflo	v1
  4013e4:	0043182b 	sltu	v1,v0,v1
  4013e8:	10600006 	beqz	v1,401404 <__qdivrem+0x338>
  4013ec:	00000000 	nop
  4013f0:	24e7ffff 	addiu	a3,a3,-1
  4013f4:	00ab2821 	addu	a1,a1,t3
  4013f8:	02c5102b 	sltu	v0,s6,a1
  4013fc:	1040fff6 	beqz	v0,4013d8 <__qdivrem+0x30c>
  401400:	00f80018 	mult	a3,t8
  401404:	1ae00017 	blez	s7,401464 <__qdivrem+0x398>
  401408:	00004021 	move	t0,zero
  40140c:	8fa20050 	lw	v0,80(sp)
  401410:	01802021 	move	a0,t4
  401414:	004e3021 	addu	a2,v0,t6
  401418:	02e02821 	move	a1,s7
  40141c:	3c0a0001 	lui	t2,0x1
  401420:	8cc20000 	lw	v0,0(a2)
  401424:	8c830000 	lw	v1,0(a0)
  401428:	00e20018 	mult	a3,v0
  40142c:	24a5ffff 	addiu	a1,a1,-1
  401430:	24c6fffc 	addiu	a2,a2,-4
  401434:	00001012 	mflo	v0
  401438:	00621823 	subu	v1,v1,v0
  40143c:	00681823 	subu	v1,v1,t0
  401440:	00031402 	srl	v0,v1,0x10
  401444:	01421023 	subu	v0,t2,v0
  401448:	3063ffff 	andi	v1,v1,0xffff
  40144c:	ac830000 	sw	v1,0(a0)
  401450:	3048ffff 	andi	t0,v0,0xffff
  401454:	14a0fff2 	bnez	a1,401420 <__qdivrem+0x354>
  401458:	2484fffc 	addiu	a0,a0,-4
  40145c:	8d240000 	lw	a0,0(t1)
  401460:	00000000 	nop
  401464:	00881023 	subu	v0,a0,t0
  401468:	3044ffff 	andi	a0,v0,0xffff
  40146c:	00021c02 	srl	v1,v0,0x10
  401470:	10600018 	beqz	v1,4014d4 <__qdivrem+0x408>
  401474:	ad240000 	sw	a0,0(t1)
  401478:	1ae00012 	blez	s7,4014c4 <__qdivrem+0x3f8>
  40147c:	00004021 	move	t0,zero
  401480:	8fa20050 	lw	v0,80(sp)
  401484:	01802021 	move	a0,t4
  401488:	004e3021 	addu	a2,v0,t6
  40148c:	02e02821 	move	a1,s7
  401490:	8c820000 	lw	v0,0(a0)
  401494:	8cc30000 	lw	v1,0(a2)
  401498:	01021021 	addu	v0,t0,v0
  40149c:	00431021 	addu	v0,v0,v1
  4014a0:	3043ffff 	andi	v1,v0,0xffff
  4014a4:	24a5ffff 	addiu	a1,a1,-1
  4014a8:	ac830000 	sw	v1,0(a0)
  4014ac:	00024402 	srl	t0,v0,0x10
  4014b0:	2484fffc 	addiu	a0,a0,-4
  4014b4:	14a0fff6 	bnez	a1,401490 <__qdivrem+0x3c4>
  4014b8:	24c6fffc 	addiu	a2,a2,-4
  4014bc:	8d240000 	lw	a0,0(t1)
  4014c0:	00000000 	nop
  4014c4:	01041021 	addu	v0,t0,a0
  4014c8:	3042ffff 	andi	v0,v0,0xffff
  4014cc:	ad220000 	sw	v0,0(t1)
  4014d0:	24e7ffff 	addiu	a3,a3,-1
  4014d4:	25ef0001 	addiu	t7,t7,1
  4014d8:	026f102a 	slt	v0,s3,t7
  4014dc:	ada70000 	sw	a3,0(t5)
  4014e0:	25290004 	addiu	t1,t1,4
  4014e4:	25ad0004 	addiu	t5,t5,4
  4014e8:	1040ffad 	beqz	v0,4013a0 <__qdivrem+0x2d4>
  4014ec:	258c0004 	addiu	t4,t4,4
  4014f0:	12400022 	beqz	s2,40157c <__qdivrem+0x4b0>
  4014f4:	00000000 	nop
  4014f8:	12a00016 	beqz	s5,401554 <__qdivrem+0x488>
  4014fc:	02f32821 	addu	a1,s7,s3
  401500:	0265102a 	slt	v0,s3,a1
  401504:	10400011 	beqz	v0,40154c <__qdivrem+0x480>
  401508:	00051080 	sll	v0,a1,0x2
  40150c:	00051880 	sll	v1,a1,0x2
  401510:	24020010 	li	v0,16
  401514:	00553823 	subu	a3,v0,s5
  401518:	02833021 	addu	a2,s4,v1
  40151c:	8cc2fffc 	lw	v0,-4(a2)
  401520:	8cc30000 	lw	v1,0(a2)
  401524:	00e21004 	sllv	v0,v0,a3
  401528:	02a31806 	srlv	v1,v1,s5
  40152c:	3042ffff 	andi	v0,v0,0xffff
  401530:	24a5ffff 	addiu	a1,a1,-1
  401534:	00621825 	or	v1,v1,v0
  401538:	0265202a 	slt	a0,s3,a1
  40153c:	acc30000 	sw	v1,0(a2)
  401540:	1480fff6 	bnez	a0,40151c <__qdivrem+0x450>
  401544:	24c6fffc 	addiu	a2,a2,-4
  401548:	00051080 	sll	v0,a1,0x2
  40154c:	00541021 	addu	v0,v0,s4
  401550:	ac400000 	sw	zero,0(v0)
  401554:	8fa20014 	lw	v0,20(sp)
  401558:	8fa40018 	lw	a0,24(sp)
  40155c:	00021400 	sll	v0,v0,0x10
  401560:	8fa3001c 	lw	v1,28(sp)
  401564:	00448025 	or	s0,v0,a0
  401568:	8fa20020 	lw	v0,32(sp)
  40156c:	00031c00 	sll	v1,v1,0x10
  401570:	00628825 	or	s1,v1,v0
  401574:	ae510004 	sw	s1,4(s2)
  401578:	ae500000 	sw	s0,0(s2)
  40157c:	8fa2003c 	lw	v0,60(sp)
  401580:	8fa40040 	lw	a0,64(sp)
  401584:	00021400 	sll	v0,v0,0x10
  401588:	8fa30044 	lw	v1,68(sp)
  40158c:	00448025 	or	s0,v0,a0
  401590:	8fa20048 	lw	v0,72(sp)
  401594:	00031c00 	sll	v1,v1,0x10
  401598:	00628825 	or	s1,v1,v0
  40159c:	02201821 	move	v1,s1
  4015a0:	0810044e 	j	401138 <__qdivrem+0x6c>
  4015a4:	02001021 	move	v0,s0
  4015a8:	00001821 	move	v1,zero
  4015ac:	0810044e 	j	401138 <__qdivrem+0x6c>
  4015b0:	00001021 	move	v0,zero
  4015b4:	00602821 	move	a1,v1
  4015b8:	081004fd 	j	4013f4 <__qdivrem+0x328>
  4015bc:	3407ffff 	li	a3,0xffff
  4015c0:	27a20024 	addiu	v0,sp,36
  4015c4:	24170004 	li	s7,4
  4015c8:	27be0028 	addiu	s8,sp,40
  4015cc:	081004b2 	j	4012c8 <__qdivrem+0x1fc>
  4015d0:	afa20050 	sw	v0,80(sp)
  4015d4:	24170002 	li	s7,2
  4015d8:	27be0030 	addiu	s8,sp,48
  4015dc:	081004b2 	j	4012c8 <__qdivrem+0x1fc>
  4015e0:	afa20050 	sw	v0,80(sp)
  4015e4:	081004bd 	j	4012f4 <__qdivrem+0x228>
  4015e8:	27b40010 	addiu	s4,sp,16
  4015ec:	081004e0 	j	401380 <__qdivrem+0x2b4>
  4015f0:	0000a821 	move	s5,zero
  4015f4:	00042880 	sll	a1,a0,0x2
  4015f8:	081004ca 	j	401328 <__qdivrem+0x25c>
  4015fc:	27a60038 	addiu	a2,sp,56
