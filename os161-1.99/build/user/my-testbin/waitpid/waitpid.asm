
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
  400028:	0c1000c5 	jal	400314 <exit>
  40002c:	02002021 	move	a0,s0
  400030:	0c1000db 	jal	40036c <_exit>
  400034:	02002021 	move	a0,s0
  400038:	02002021 	move	a0,s0
  40003c:	24020003 	li	v0,3
  400040:	0000000c 	syscall
  400044:	0810000e 	j	400038 <__start+0x38>
  400048:	00000000 	nop
  40004c:	00000000 	nop

00400050 <main>:
  400050:	27bdffd0 	addiu	sp,sp,-48
  400054:	afbf002c 	sw	ra,44(sp)
  400058:	afb40028 	sw	s4,40(sp)
  40005c:	afb30024 	sw	s3,36(sp)
  400060:	afb20020 	sw	s2,32(sp)
  400064:	afb1001c 	sw	s1,28(sp)
  400068:	afb00018 	sw	s0,24(sp)
  40006c:	27b10010 	addiu	s1,sp,16
  400070:	0c1000df 	jal	40037c <getpid>
  400074:	afa00010 	sw	zero,16(sp)
  400078:	00402021 	move	a0,v0
  40007c:	00003021 	move	a2,zero
  400080:	0c1000dd 	jal	400374 <waitpid>
  400084:	02202821 	move	a1,s1
  400088:	3c040040 	lui	a0,0x40
  40008c:	00408021 	move	s0,v0
  400090:	24841710 	addiu	a0,a0,5904
  400094:	0c1000b0 	jal	4002c0 <puts>
  400098:	3c140040 	lui	s4,0x40
  40009c:	3c131000 	lui	s3,0x1000
  4000a0:	02002821 	move	a1,s0
  4000a4:	0c10008b 	jal	40022c <printf>
  4000a8:	26841718 	addiu	a0,s4,5912
  4000ac:	3c120040 	lui	s2,0x40
  4000b0:	8e650010 	lw	a1,16(s3)
  4000b4:	0c10008b 	jal	40022c <printf>
  4000b8:	2644172c 	addiu	a0,s2,5932
  4000bc:	3c040040 	lui	a0,0x40
  4000c0:	0c1000b0 	jal	4002c0 <puts>
  4000c4:	2484173c 	addiu	a0,a0,5948
  4000c8:	00003021 	move	a2,zero
  4000cc:	02202821 	move	a1,s1
  4000d0:	0c1000dd 	jal	400374 <waitpid>
  4000d4:	2404fffc 	li	a0,-4
  4000d8:	00402821 	move	a1,v0
  4000dc:	0c10008b 	jal	40022c <printf>
  4000e0:	26841718 	addiu	a0,s4,5912
  4000e4:	8e650010 	lw	a1,16(s3)
  4000e8:	0c10008b 	jal	40022c <printf>
  4000ec:	2644172c 	addiu	a0,s2,5932
  4000f0:	0c1000d5 	jal	400354 <fork>
  4000f4:	00000000 	nop
  4000f8:	3c040040 	lui	a0,0x40
  4000fc:	00408021 	move	s0,v0
  400100:	04400029 	bltz	v0,4001a8 <main+0x158>
  400104:	24841744 	addiu	a0,a0,5956
  400108:	3c040040 	lui	a0,0x40
  40010c:	1040001b 	beqz	v0,40017c <main+0x12c>
  400110:	24841754 	addiu	a0,a0,5972
  400114:	3c040040 	lui	a0,0x40
  400118:	02002821 	move	a1,s0
  40011c:	0c10008b 	jal	40022c <printf>
  400120:	24841760 	addiu	a0,a0,5984
  400124:	3c040040 	lui	a0,0x40
  400128:	0c1000b0 	jal	4002c0 <puts>
  40012c:	24841784 	addiu	a0,a0,6020
  400130:	02002021 	move	a0,s0
  400134:	00003021 	move	a2,zero
  400138:	0c1000dd 	jal	400374 <waitpid>
  40013c:	3c054000 	lui	a1,0x4000
  400140:	00402821 	move	a1,v0
  400144:	0c10008b 	jal	40022c <printf>
  400148:	26841718 	addiu	a0,s4,5912
  40014c:	8e650010 	lw	a1,16(s3)
  400150:	0c10008b 	jal	40022c <printf>
  400154:	2644172c 	addiu	a0,s2,5932
  400158:	8fbf002c 	lw	ra,44(sp)
  40015c:	8fb40028 	lw	s4,40(sp)
  400160:	8fb30024 	lw	s3,36(sp)
  400164:	8fb20020 	lw	s2,32(sp)
  400168:	8fb1001c 	lw	s1,28(sp)
  40016c:	8fb00018 	lw	s0,24(sp)
  400170:	00001021 	move	v0,zero
  400174:	03e00008 	jr	ra
  400178:	27bd0030 	addiu	sp,sp,48
  40017c:	0c1000b0 	jal	4002c0 <puts>
  400180:	00000000 	nop
  400184:	8fbf002c 	lw	ra,44(sp)
  400188:	8fb40028 	lw	s4,40(sp)
  40018c:	8fb30024 	lw	s3,36(sp)
  400190:	8fb20020 	lw	s2,32(sp)
  400194:	8fb1001c 	lw	s1,28(sp)
  400198:	8fb00018 	lw	s0,24(sp)
  40019c:	00001021 	move	v0,zero
  4001a0:	03e00008 	jr	ra
  4001a4:	27bd0030 	addiu	sp,sp,48
  4001a8:	0c1000b0 	jal	4002c0 <puts>
  4001ac:	00000000 	nop
  4001b0:	08100046 	j	400118 <main+0xc8>
  4001b4:	3c040040 	lui	a0,0x40
	...

004001c0 <vprintf>:
  4001c0:	00803021 	move	a2,a0
  4001c4:	3c040040 	lui	a0,0x40
  4001c8:	00a03821 	move	a3,a1
  4001cc:	248401d8 	addiu	a0,a0,472
  4001d0:	08100241 	j	400904 <__vprintf>
  4001d4:	00002821 	move	a1,zero

004001d8 <__printf_send>:
  4001d8:	27bdffe0 	addiu	sp,sp,-32
  4001dc:	afb20018 	sw	s2,24(sp)
  4001e0:	afb10014 	sw	s1,20(sp)
  4001e4:	afbf001c 	sw	ra,28(sp)
  4001e8:	afb00010 	sw	s0,16(sp)
  4001ec:	00c09021 	move	s2,a2
  4001f0:	10c00008 	beqz	a2,400214 <__printf_send+0x3c>
  4001f4:	00a08821 	move	s1,a1
  4001f8:	00008021 	move	s0,zero
  4001fc:	02301021 	addu	v0,s1,s0
  400200:	80440000 	lb	a0,0(v0)
  400204:	0c100098 	jal	400260 <putchar>
  400208:	26100001 	addiu	s0,s0,1
  40020c:	1650fffc 	bne	s2,s0,400200 <__printf_send+0x28>
  400210:	02301021 	addu	v0,s1,s0
  400214:	8fbf001c 	lw	ra,28(sp)
  400218:	8fb20018 	lw	s2,24(sp)
  40021c:	8fb10014 	lw	s1,20(sp)
  400220:	8fb00010 	lw	s0,16(sp)
  400224:	03e00008 	jr	ra
  400228:	27bd0020 	addiu	sp,sp,32

0040022c <printf>:
  40022c:	27bdffe0 	addiu	sp,sp,-32
  400230:	27a20024 	addiu	v0,sp,36
  400234:	afa50024 	sw	a1,36(sp)
  400238:	00402821 	move	a1,v0
  40023c:	afbf0018 	sw	ra,24(sp)
  400240:	afa60028 	sw	a2,40(sp)
  400244:	afa7002c 	sw	a3,44(sp)
  400248:	0c100070 	jal	4001c0 <vprintf>
  40024c:	afa20010 	sw	v0,16(sp)
  400250:	8fbf0018 	lw	ra,24(sp)
  400254:	00000000 	nop
  400258:	03e00008 	jr	ra
  40025c:	27bd0020 	addiu	sp,sp,32

00400260 <putchar>:
  400260:	27bdffe0 	addiu	sp,sp,-32
  400264:	afb00018 	sw	s0,24(sp)
  400268:	27a50010 	addiu	a1,sp,16
  40026c:	00808021 	move	s0,a0
  400270:	24060001 	li	a2,1
  400274:	24040001 	li	a0,1
  400278:	afbf001c 	sw	ra,28(sp)
  40027c:	0c10011b 	jal	40046c <write>
  400280:	a3b00010 	sb	s0,16(sp)
  400284:	18400005 	blez	v0,40029c <putchar+0x3c>
  400288:	02001021 	move	v0,s0
  40028c:	8fbf001c 	lw	ra,28(sp)
  400290:	8fb00018 	lw	s0,24(sp)
  400294:	03e00008 	jr	ra
  400298:	27bd0020 	addiu	sp,sp,32
  40029c:	2410ffff 	li	s0,-1
  4002a0:	02001021 	move	v0,s0
  4002a4:	8fbf001c 	lw	ra,28(sp)
  4002a8:	8fb00018 	lw	s0,24(sp)
  4002ac:	03e00008 	jr	ra
  4002b0:	27bd0020 	addiu	sp,sp,32
	...

004002c0 <puts>:
  4002c0:	27bdffe8 	addiu	sp,sp,-24
  4002c4:	afbf0010 	sw	ra,16(sp)
  4002c8:	0c10038c 	jal	400e30 <__puts>
  4002cc:	00000000 	nop
  4002d0:	0c100098 	jal	400260 <putchar>
  4002d4:	2404000a 	li	a0,10
  4002d8:	8fbf0010 	lw	ra,16(sp)
  4002dc:	00001021 	move	v0,zero
  4002e0:	03e00008 	jr	ra
  4002e4:	27bd0018 	addiu	sp,sp,24
	...

004002f0 <__exit_hack>:
  4002f0:	27bdfff8 	addiu	sp,sp,-8
  4002f4:	24020001 	li	v0,1
  4002f8:	afa20000 	sw	v0,0(sp)
  4002fc:	8fa20000 	lw	v0,0(sp)
  400300:	00000000 	nop
  400304:	1440fffd 	bnez	v0,4002fc <__exit_hack+0xc>
  400308:	00000000 	nop
  40030c:	03e00008 	jr	ra
  400310:	27bd0008 	addiu	sp,sp,8

00400314 <exit>:
  400314:	27bdffe8 	addiu	sp,sp,-24
  400318:	afbf0010 	sw	ra,16(sp)
  40031c:	0c1000db 	jal	40036c <_exit>
  400320:	00000000 	nop
	...

00400330 <__syscall>:
  400330:	0000000c 	syscall
  400334:	10e00005 	beqz	a3,40034c <__syscall+0x1c>
  400338:	00000000 	nop
  40033c:	3c011000 	lui	at,0x1000
  400340:	ac220010 	sw	v0,16(at)
  400344:	2403ffff 	li	v1,-1
  400348:	2402ffff 	li	v0,-1
  40034c:	03e00008 	jr	ra
  400350:	00000000 	nop

00400354 <fork>:
  400354:	081000cc 	j	400330 <__syscall>
  400358:	24020000 	li	v0,0

0040035c <vfork>:
  40035c:	081000cc 	j	400330 <__syscall>
  400360:	24020001 	li	v0,1

00400364 <execv>:
  400364:	081000cc 	j	400330 <__syscall>
  400368:	24020002 	li	v0,2

0040036c <_exit>:
  40036c:	081000cc 	j	400330 <__syscall>
  400370:	24020003 	li	v0,3

00400374 <waitpid>:
  400374:	081000cc 	j	400330 <__syscall>
  400378:	24020004 	li	v0,4

0040037c <getpid>:
  40037c:	081000cc 	j	400330 <__syscall>
  400380:	24020005 	li	v0,5

00400384 <getppid>:
  400384:	081000cc 	j	400330 <__syscall>
  400388:	24020006 	li	v0,6

0040038c <sbrk>:
  40038c:	081000cc 	j	400330 <__syscall>
  400390:	24020007 	li	v0,7

00400394 <mmap>:
  400394:	081000cc 	j	400330 <__syscall>
  400398:	24020008 	li	v0,8

0040039c <munmap>:
  40039c:	081000cc 	j	400330 <__syscall>
  4003a0:	24020009 	li	v0,9

004003a4 <mprotect>:
  4003a4:	081000cc 	j	400330 <__syscall>
  4003a8:	2402000a 	li	v0,10

004003ac <umask>:
  4003ac:	081000cc 	j	400330 <__syscall>
  4003b0:	24020011 	li	v0,17

004003b4 <issetugid>:
  4003b4:	081000cc 	j	400330 <__syscall>
  4003b8:	24020012 	li	v0,18

004003bc <getresuid>:
  4003bc:	081000cc 	j	400330 <__syscall>
  4003c0:	24020013 	li	v0,19

004003c4 <setresuid>:
  4003c4:	081000cc 	j	400330 <__syscall>
  4003c8:	24020014 	li	v0,20

004003cc <getresgid>:
  4003cc:	081000cc 	j	400330 <__syscall>
  4003d0:	24020015 	li	v0,21

004003d4 <setresgid>:
  4003d4:	081000cc 	j	400330 <__syscall>
  4003d8:	24020016 	li	v0,22

004003dc <getgroups>:
  4003dc:	081000cc 	j	400330 <__syscall>
  4003e0:	24020017 	li	v0,23

004003e4 <setgroups>:
  4003e4:	081000cc 	j	400330 <__syscall>
  4003e8:	24020018 	li	v0,24

004003ec <__getlogin>:
  4003ec:	081000cc 	j	400330 <__syscall>
  4003f0:	24020019 	li	v0,25

004003f4 <__setlogin>:
  4003f4:	081000cc 	j	400330 <__syscall>
  4003f8:	2402001a 	li	v0,26

004003fc <kill>:
  4003fc:	081000cc 	j	400330 <__syscall>
  400400:	2402001b 	li	v0,27

00400404 <sigaction>:
  400404:	081000cc 	j	400330 <__syscall>
  400408:	2402001c 	li	v0,28

0040040c <sigpending>:
  40040c:	081000cc 	j	400330 <__syscall>
  400410:	2402001d 	li	v0,29

00400414 <sigprocmask>:
  400414:	081000cc 	j	400330 <__syscall>
  400418:	2402001e 	li	v0,30

0040041c <sigsuspend>:
  40041c:	081000cc 	j	400330 <__syscall>
  400420:	2402001f 	li	v0,31

00400424 <sigreturn>:
  400424:	081000cc 	j	400330 <__syscall>
  400428:	24020020 	li	v0,32

0040042c <open>:
  40042c:	081000cc 	j	400330 <__syscall>
  400430:	2402002d 	li	v0,45

00400434 <pipe>:
  400434:	081000cc 	j	400330 <__syscall>
  400438:	2402002e 	li	v0,46

0040043c <dup>:
  40043c:	081000cc 	j	400330 <__syscall>
  400440:	2402002f 	li	v0,47

00400444 <dup2>:
  400444:	081000cc 	j	400330 <__syscall>
  400448:	24020030 	li	v0,48

0040044c <close>:
  40044c:	081000cc 	j	400330 <__syscall>
  400450:	24020031 	li	v0,49

00400454 <read>:
  400454:	081000cc 	j	400330 <__syscall>
  400458:	24020032 	li	v0,50

0040045c <pread>:
  40045c:	081000cc 	j	400330 <__syscall>
  400460:	24020033 	li	v0,51

00400464 <getdirentry>:
  400464:	081000cc 	j	400330 <__syscall>
  400468:	24020036 	li	v0,54

0040046c <write>:
  40046c:	081000cc 	j	400330 <__syscall>
  400470:	24020037 	li	v0,55

00400474 <pwrite>:
  400474:	081000cc 	j	400330 <__syscall>
  400478:	24020038 	li	v0,56

0040047c <lseek>:
  40047c:	081000cc 	j	400330 <__syscall>
  400480:	2402003b 	li	v0,59

00400484 <flock>:
  400484:	081000cc 	j	400330 <__syscall>
  400488:	2402003c 	li	v0,60

0040048c <ftruncate>:
  40048c:	081000cc 	j	400330 <__syscall>
  400490:	2402003d 	li	v0,61

00400494 <fsync>:
  400494:	081000cc 	j	400330 <__syscall>
  400498:	2402003e 	li	v0,62

0040049c <fcntl>:
  40049c:	081000cc 	j	400330 <__syscall>
  4004a0:	2402003f 	li	v0,63

004004a4 <ioctl>:
  4004a4:	081000cc 	j	400330 <__syscall>
  4004a8:	24020040 	li	v0,64

004004ac <select>:
  4004ac:	081000cc 	j	400330 <__syscall>
  4004b0:	24020041 	li	v0,65

004004b4 <poll>:
  4004b4:	081000cc 	j	400330 <__syscall>
  4004b8:	24020042 	li	v0,66

004004bc <link>:
  4004bc:	081000cc 	j	400330 <__syscall>
  4004c0:	24020043 	li	v0,67

004004c4 <remove>:
  4004c4:	081000cc 	j	400330 <__syscall>
  4004c8:	24020044 	li	v0,68

004004cc <mkdir>:
  4004cc:	081000cc 	j	400330 <__syscall>
  4004d0:	24020045 	li	v0,69

004004d4 <rmdir>:
  4004d4:	081000cc 	j	400330 <__syscall>
  4004d8:	24020046 	li	v0,70

004004dc <mkfifo>:
  4004dc:	081000cc 	j	400330 <__syscall>
  4004e0:	24020047 	li	v0,71

004004e4 <rename>:
  4004e4:	081000cc 	j	400330 <__syscall>
  4004e8:	24020048 	li	v0,72

004004ec <access>:
  4004ec:	081000cc 	j	400330 <__syscall>
  4004f0:	24020049 	li	v0,73

004004f4 <chdir>:
  4004f4:	081000cc 	j	400330 <__syscall>
  4004f8:	2402004a 	li	v0,74

004004fc <fchdir>:
  4004fc:	081000cc 	j	400330 <__syscall>
  400500:	2402004b 	li	v0,75

00400504 <__getcwd>:
  400504:	081000cc 	j	400330 <__syscall>
  400508:	2402004c 	li	v0,76

0040050c <symlink>:
  40050c:	081000cc 	j	400330 <__syscall>
  400510:	2402004d 	li	v0,77

00400514 <readlink>:
  400514:	081000cc 	j	400330 <__syscall>
  400518:	2402004e 	li	v0,78

0040051c <mount>:
  40051c:	081000cc 	j	400330 <__syscall>
  400520:	2402004f 	li	v0,79

00400524 <unmount>:
  400524:	081000cc 	j	400330 <__syscall>
  400528:	24020050 	li	v0,80

0040052c <stat>:
  40052c:	081000cc 	j	400330 <__syscall>
  400530:	24020051 	li	v0,81

00400534 <fstat>:
  400534:	081000cc 	j	400330 <__syscall>
  400538:	24020052 	li	v0,82

0040053c <lstat>:
  40053c:	081000cc 	j	400330 <__syscall>
  400540:	24020053 	li	v0,83

00400544 <utimes>:
  400544:	081000cc 	j	400330 <__syscall>
  400548:	24020054 	li	v0,84

0040054c <futimes>:
  40054c:	081000cc 	j	400330 <__syscall>
  400550:	24020055 	li	v0,85

00400554 <lutimes>:
  400554:	081000cc 	j	400330 <__syscall>
  400558:	24020056 	li	v0,86

0040055c <chmod>:
  40055c:	081000cc 	j	400330 <__syscall>
  400560:	24020057 	li	v0,87

00400564 <chown>:
  400564:	081000cc 	j	400330 <__syscall>
  400568:	24020058 	li	v0,88

0040056c <fchmod>:
  40056c:	081000cc 	j	400330 <__syscall>
  400570:	24020059 	li	v0,89

00400574 <fchown>:
  400574:	081000cc 	j	400330 <__syscall>
  400578:	2402005a 	li	v0,90

0040057c <lchmod>:
  40057c:	081000cc 	j	400330 <__syscall>
  400580:	2402005b 	li	v0,91

00400584 <lchown>:
  400584:	081000cc 	j	400330 <__syscall>
  400588:	2402005c 	li	v0,92

0040058c <socket>:
  40058c:	081000cc 	j	400330 <__syscall>
  400590:	24020062 	li	v0,98

00400594 <bind>:
  400594:	081000cc 	j	400330 <__syscall>
  400598:	24020063 	li	v0,99

0040059c <connect>:
  40059c:	081000cc 	j	400330 <__syscall>
  4005a0:	24020064 	li	v0,100

004005a4 <listen>:
  4005a4:	081000cc 	j	400330 <__syscall>
  4005a8:	24020065 	li	v0,101

004005ac <accept>:
  4005ac:	081000cc 	j	400330 <__syscall>
  4005b0:	24020066 	li	v0,102

004005b4 <shutdown>:
  4005b4:	081000cc 	j	400330 <__syscall>
  4005b8:	24020068 	li	v0,104

004005bc <getsockname>:
  4005bc:	081000cc 	j	400330 <__syscall>
  4005c0:	24020069 	li	v0,105

004005c4 <getpeername>:
  4005c4:	081000cc 	j	400330 <__syscall>
  4005c8:	2402006a 	li	v0,106

004005cc <getsockopt>:
  4005cc:	081000cc 	j	400330 <__syscall>
  4005d0:	2402006b 	li	v0,107

004005d4 <setsockopt>:
  4005d4:	081000cc 	j	400330 <__syscall>
  4005d8:	2402006c 	li	v0,108

004005dc <__time>:
  4005dc:	081000cc 	j	400330 <__syscall>
  4005e0:	24020071 	li	v0,113

004005e4 <__settime>:
  4005e4:	081000cc 	j	400330 <__syscall>
  4005e8:	24020072 	li	v0,114

004005ec <nanosleep>:
  4005ec:	081000cc 	j	400330 <__syscall>
  4005f0:	24020073 	li	v0,115

004005f4 <sync>:
  4005f4:	081000cc 	j	400330 <__syscall>
  4005f8:	24020076 	li	v0,118

004005fc <reboot>:
  4005fc:	081000cc 	j	400330 <__syscall>
  400600:	24020077 	li	v0,119
	...

00400610 <__pf_print>:
  400610:	27bdffe0 	addiu	sp,sp,-32
  400614:	afbf0018 	sw	ra,24(sp)
  400618:	afb10014 	sw	s1,20(sp)
  40061c:	afb00010 	sw	s0,16(sp)
  400620:	8c830000 	lw	v1,0(a0)
  400624:	00808021 	move	s0,a0
  400628:	8c840004 	lw	a0,4(a0)
  40062c:	0060f809 	jalr	v1
  400630:	00c08821 	move	s1,a2
  400634:	8e02000c 	lw	v0,12(s0)
  400638:	00000000 	nop
  40063c:	00511021 	addu	v0,v0,s1
  400640:	ae02000c 	sw	v0,12(s0)
  400644:	8fbf0018 	lw	ra,24(sp)
  400648:	8fb10014 	lw	s1,20(sp)
  40064c:	8fb00010 	lw	s0,16(sp)
  400650:	03e00008 	jr	ra
  400654:	27bd0020 	addiu	sp,sp,32

00400658 <__pf_endfield>:
  400658:	24020020 	li	v0,32
  40065c:	ac82002c 	sw	v0,44(a0)
  400660:	00001821 	move	v1,zero
  400664:	00001021 	move	v0,zero
  400668:	ac800038 	sw	zero,56(a0)
  40066c:	ac800010 	sw	zero,16(a0)
  400670:	ac800014 	sw	zero,20(a0)
  400674:	ac83001c 	sw	v1,28(a0)
  400678:	ac820018 	sw	v0,24(a0)
  40067c:	ac800020 	sw	zero,32(a0)
  400680:	ac800024 	sw	zero,36(a0)
  400684:	ac800028 	sw	zero,40(a0)
  400688:	ac800030 	sw	zero,48(a0)
  40068c:	03e00008 	jr	ra
  400690:	ac800034 	sw	zero,52(a0)

00400694 <__pf_fill>:
  400694:	27bdffd0 	addiu	sp,sp,-48
  400698:	afb30024 	sw	s3,36(sp)
  40069c:	afb20020 	sw	s2,32(sp)
  4006a0:	afbf0028 	sw	ra,40(sp)
  4006a4:	afb1001c 	sw	s1,28(sp)
  4006a8:	afb00018 	sw	s0,24(sp)
  4006ac:	00809821 	move	s3,a0
  4006b0:	8c82002c 	lw	v0,44(a0)
  4006b4:	18a0000b 	blez	a1,4006e4 <__pf_fill+0x50>
  4006b8:	00a09021 	move	s2,a1
  4006bc:	a3a20010 	sb	v0,16(sp)
  4006c0:	00008021 	move	s0,zero
  4006c4:	27b10010 	addiu	s1,sp,16
  4006c8:	26100001 	addiu	s0,s0,1
  4006cc:	02602021 	move	a0,s3
  4006d0:	02202821 	move	a1,s1
  4006d4:	0c100184 	jal	400610 <__pf_print>
  4006d8:	24060001 	li	a2,1
  4006dc:	1650fffb 	bne	s2,s0,4006cc <__pf_fill+0x38>
  4006e0:	26100001 	addiu	s0,s0,1
  4006e4:	8fbf0028 	lw	ra,40(sp)
  4006e8:	8fb30024 	lw	s3,36(sp)
  4006ec:	8fb20020 	lw	s2,32(sp)
  4006f0:	8fb1001c 	lw	s1,28(sp)
  4006f4:	8fb00018 	lw	s0,24(sp)
  4006f8:	03e00008 	jr	ra
  4006fc:	27bd0030 	addiu	sp,sp,48

00400700 <__pf_printstuff>:
  400700:	27bdffd0 	addiu	sp,sp,-48
  400704:	afbf0028 	sw	ra,40(sp)
  400708:	afb50024 	sw	s5,36(sp)
  40070c:	afb40020 	sw	s4,32(sp)
  400710:	afb3001c 	sw	s3,28(sp)
  400714:	afb20018 	sw	s2,24(sp)
  400718:	00c09821 	move	s3,a2
  40071c:	afb10014 	sw	s1,20(sp)
  400720:	afb00010 	sw	s0,16(sp)
  400724:	00808821 	move	s1,a0
  400728:	00a02021 	move	a0,a1
  40072c:	00a0a021 	move	s4,a1
  400730:	0c1003c0 	jal	400f00 <strlen>
  400734:	00e0a821 	move	s5,a3
  400738:	02602021 	move	a0,s3
  40073c:	0c1003c0 	jal	400f00 <strlen>
  400740:	00409021 	move	s2,v0
  400744:	02a02021 	move	a0,s5
  400748:	0c1003c0 	jal	400f00 <strlen>
  40074c:	02428021 	addu	s0,s2,v0
  400750:	8e230024 	lw	v1,36(s1)
  400754:	02022821 	addu	a1,s0,v0
  400758:	00a3102a 	slt	v0,a1,v1
  40075c:	10400040 	beqz	v0,400860 <__pf_printstuff+0x160>
  400760:	00658023 	subu	s0,v1,a1
  400764:	1a000056 	blez	s0,4008c0 <__pf_printstuff+0x1c0>
  400768:	02403021 	move	a2,s2
  40076c:	8e220028 	lw	v0,40(s1)
  400770:	00000000 	nop
  400774:	10400028 	beqz	v0,400818 <__pf_printstuff+0x118>
  400778:	24020030 	li	v0,48
  40077c:	0c1003c0 	jal	400f00 <strlen>
  400780:	02802021 	move	a0,s4
  400784:	00403021 	move	a2,v0
  400788:	02802821 	move	a1,s4
  40078c:	0c100184 	jal	400610 <__pf_print>
  400790:	02202021 	move	a0,s1
  400794:	0c1003c0 	jal	400f00 <strlen>
  400798:	02602021 	move	a0,s3
  40079c:	00403021 	move	a2,v0
  4007a0:	02202021 	move	a0,s1
  4007a4:	0c100184 	jal	400610 <__pf_print>
  4007a8:	02602821 	move	a1,s3
  4007ac:	8e220028 	lw	v0,40(s1)
  4007b0:	00000000 	nop
  4007b4:	14400005 	bnez	v0,4007cc <__pf_printstuff+0xcc>
  4007b8:	24020030 	li	v0,48
  4007bc:	8e23002c 	lw	v1,44(s1)
  4007c0:	00000000 	nop
  4007c4:	1062004b 	beq	v1,v0,4008f4 <__pf_printstuff+0x1f4>
  4007c8:	02202021 	move	a0,s1
  4007cc:	0c1003c0 	jal	400f00 <strlen>
  4007d0:	02a02021 	move	a0,s5
  4007d4:	00403021 	move	a2,v0
  4007d8:	02202021 	move	a0,s1
  4007dc:	0c100184 	jal	400610 <__pf_print>
  4007e0:	02a02821 	move	a1,s5
  4007e4:	8e220028 	lw	v0,40(s1)
  4007e8:	00000000 	nop
  4007ec:	14400012 	bnez	v0,400838 <__pf_printstuff+0x138>
  4007f0:	02202021 	move	a0,s1
  4007f4:	8fbf0028 	lw	ra,40(sp)
  4007f8:	8fb50024 	lw	s5,36(sp)
  4007fc:	8fb40020 	lw	s4,32(sp)
  400800:	8fb3001c 	lw	s3,28(sp)
  400804:	8fb20018 	lw	s2,24(sp)
  400808:	8fb10014 	lw	s1,20(sp)
  40080c:	8fb00010 	lw	s0,16(sp)
  400810:	03e00008 	jr	ra
  400814:	27bd0030 	addiu	sp,sp,48
  400818:	8e23002c 	lw	v1,44(s1)
  40081c:	00000000 	nop
  400820:	1062ffd6 	beq	v1,v0,40077c <__pf_printstuff+0x7c>
  400824:	02202021 	move	a0,s1
  400828:	0c1001a5 	jal	400694 <__pf_fill>
  40082c:	02002821 	move	a1,s0
  400830:	081001df 	j	40077c <__pf_printstuff+0x7c>
  400834:	00000000 	nop
  400838:	02002821 	move	a1,s0
  40083c:	8fbf0028 	lw	ra,40(sp)
  400840:	8fb50024 	lw	s5,36(sp)
  400844:	8fb40020 	lw	s4,32(sp)
  400848:	8fb3001c 	lw	s3,28(sp)
  40084c:	8fb20018 	lw	s2,24(sp)
  400850:	8fb10014 	lw	s1,20(sp)
  400854:	8fb00010 	lw	s0,16(sp)
  400858:	081001a5 	j	400694 <__pf_fill>
  40085c:	27bd0030 	addiu	sp,sp,48
  400860:	02802821 	move	a1,s4
  400864:	02403021 	move	a2,s2
  400868:	0c100184 	jal	400610 <__pf_print>
  40086c:	02202021 	move	a0,s1
  400870:	0c1003c0 	jal	400f00 <strlen>
  400874:	02602021 	move	a0,s3
  400878:	00403021 	move	a2,v0
  40087c:	02202021 	move	a0,s1
  400880:	0c100184 	jal	400610 <__pf_print>
  400884:	02602821 	move	a1,s3
  400888:	0c1003c0 	jal	400f00 <strlen>
  40088c:	02a02021 	move	a0,s5
  400890:	02202021 	move	a0,s1
  400894:	02a02821 	move	a1,s5
  400898:	8fbf0028 	lw	ra,40(sp)
  40089c:	8fb50024 	lw	s5,36(sp)
  4008a0:	8fb40020 	lw	s4,32(sp)
  4008a4:	8fb3001c 	lw	s3,28(sp)
  4008a8:	8fb20018 	lw	s2,24(sp)
  4008ac:	8fb10014 	lw	s1,20(sp)
  4008b0:	8fb00010 	lw	s0,16(sp)
  4008b4:	00403021 	move	a2,v0
  4008b8:	08100184 	j	400610 <__pf_print>
  4008bc:	27bd0030 	addiu	sp,sp,48
  4008c0:	02802821 	move	a1,s4
  4008c4:	0c100184 	jal	400610 <__pf_print>
  4008c8:	02202021 	move	a0,s1
  4008cc:	0c1003c0 	jal	400f00 <strlen>
  4008d0:	02602021 	move	a0,s3
  4008d4:	00403021 	move	a2,v0
  4008d8:	02202021 	move	a0,s1
  4008dc:	0c100184 	jal	400610 <__pf_print>
  4008e0:	02602821 	move	a1,s3
  4008e4:	0c1003c0 	jal	400f00 <strlen>
  4008e8:	02a02021 	move	a0,s5
  4008ec:	08100225 	j	400894 <__pf_printstuff+0x194>
  4008f0:	02202021 	move	a0,s1
  4008f4:	0c1001a5 	jal	400694 <__pf_fill>
  4008f8:	02002821 	move	a1,s0
  4008fc:	081001f3 	j	4007cc <__pf_printstuff+0xcc>
  400900:	00000000 	nop

00400904 <__vprintf>:
  400904:	27bdff68 	addiu	sp,sp,-152
  400908:	afbe0090 	sw	s8,144(sp)
  40090c:	27be0030 	addiu	s8,sp,48
  400910:	afb10074 	sw	s1,116(sp)
  400914:	afa40030 	sw	a0,48(sp)
  400918:	00c08821 	move	s1,a2
  40091c:	03c02021 	move	a0,s8
  400920:	afb00070 	sw	s0,112(sp)
  400924:	afbf0094 	sw	ra,148(sp)
  400928:	afb7008c 	sw	s7,140(sp)
  40092c:	afb60088 	sw	s6,136(sp)
  400930:	afb50084 	sw	s5,132(sp)
  400934:	afb40080 	sw	s4,128(sp)
  400938:	afb3007c 	sw	s3,124(sp)
  40093c:	afb20078 	sw	s2,120(sp)
  400940:	afa50034 	sw	a1,52(sp)
  400944:	afa70038 	sw	a3,56(sp)
  400948:	0c100196 	jal	400658 <__pf_endfield>
  40094c:	afa0003c 	sw	zero,60(sp)
  400950:	82300000 	lb	s0,0(s1)
  400954:	00000000 	nop
  400958:	12000017 	beqz	s0,4009b8 <__vprintf+0xb4>
  40095c:	0220a021 	move	s4,s1
  400960:	08100262 	j	400988 <__vprintf+0x84>
  400964:	00000000 	nop
  400968:	27a50010 	addiu	a1,sp,16
  40096c:	24060001 	li	a2,1
  400970:	0c100184 	jal	400610 <__pf_print>
  400974:	a3b00010 	sb	s0,16(sp)
  400978:	82900001 	lb	s0,1(s4)
  40097c:	00000000 	nop
  400980:	1200000d 	beqz	s0,4009b8 <__vprintf+0xb4>
  400984:	26940001 	addiu	s4,s4,1
  400988:	8fa20040 	lw	v0,64(sp)
  40098c:	00000000 	nop
  400990:	14400016 	bnez	v0,4009ec <__vprintf+0xe8>
  400994:	24020025 	li	v0,37
  400998:	1602fff3 	bne	s0,v0,400968 <__vprintf+0x64>
  40099c:	03c02021 	move	a0,s8
  4009a0:	24020001 	li	v0,1
  4009a4:	afa20040 	sw	v0,64(sp)
  4009a8:	82900001 	lb	s0,1(s4)
  4009ac:	00000000 	nop
  4009b0:	1600fff5 	bnez	s0,400988 <__vprintf+0x84>
  4009b4:	26940001 	addiu	s4,s4,1
  4009b8:	8fa2003c 	lw	v0,60(sp)
  4009bc:	8fbf0094 	lw	ra,148(sp)
  4009c0:	8fbe0090 	lw	s8,144(sp)
  4009c4:	8fb7008c 	lw	s7,140(sp)
  4009c8:	8fb60088 	lw	s6,136(sp)
  4009cc:	8fb50084 	lw	s5,132(sp)
  4009d0:	8fb40080 	lw	s4,128(sp)
  4009d4:	8fb3007c 	lw	s3,124(sp)
  4009d8:	8fb20078 	lw	s2,120(sp)
  4009dc:	8fb10074 	lw	s1,116(sp)
  4009e0:	8fb00070 	lw	s0,112(sp)
  4009e4:	03e00008 	jr	ra
  4009e8:	27bd0098 	addiu	sp,sp,152
  4009ec:	3c040040 	lui	a0,0x40
  4009f0:	24841798 	addiu	a0,a0,6040
  4009f4:	0c1003a8 	jal	400ea0 <strchr>
  4009f8:	02002821 	move	a1,s0
  4009fc:	10400031 	beqz	v0,400ac4 <__vprintf+0x1c0>
  400a00:	24020030 	li	v0,48
  400a04:	1202001d 	beq	s0,v0,400a7c <__vprintf+0x178>
  400a08:	2a020031 	slti	v0,s0,49
  400a0c:	10400013 	beqz	v0,400a5c <__vprintf+0x158>
  400a10:	2402006c 	li	v0,108
  400a14:	24020023 	li	v0,35
  400a18:	12020027 	beq	s0,v0,400ab8 <__vprintf+0x1b4>
  400a1c:	2402002d 	li	v0,45
  400a20:	1202004a 	beq	s0,v0,400b4c <__vprintf+0x248>
  400a24:	24020001 	li	v0,1
  400a28:	2602ffcf 	addiu	v0,s0,-49
  400a2c:	2c420009 	sltiu	v0,v0,9
  400a30:	1040001a 	beqz	v0,400a9c <__vprintf+0x198>
  400a34:	3c040040 	lui	a0,0x40
  400a38:	8fa20054 	lw	v0,84(sp)
  400a3c:	00000000 	nop
  400a40:	000218c0 	sll	v1,v0,0x3
  400a44:	00021040 	sll	v0,v0,0x1
  400a48:	00431021 	addu	v0,v0,v1
  400a4c:	02021021 	addu	v0,s0,v0
  400a50:	2442ffd0 	addiu	v0,v0,-48
  400a54:	0810025e 	j	400978 <__vprintf+0x74>
  400a58:	afa20054 	sw	v0,84(sp)
  400a5c:	1602fff3 	bne	s0,v0,400a2c <__vprintf+0x128>
  400a60:	2602ffcf 	addiu	v0,s0,-49
  400a64:	8fa20044 	lw	v0,68(sp)
  400a68:	24030001 	li	v1,1
  400a6c:	10430039 	beq	v0,v1,400b54 <__vprintf+0x250>
  400a70:	24020002 	li	v0,2
  400a74:	0810025e 	j	400978 <__vprintf+0x74>
  400a78:	afa30044 	sw	v1,68(sp)
  400a7c:	8fa20054 	lw	v0,84(sp)
  400a80:	00000000 	nop
  400a84:	1840008c 	blez	v0,400cb8 <__vprintf+0x3b4>
  400a88:	000218c0 	sll	v1,v0,0x3
  400a8c:	00021040 	sll	v0,v0,0x1
  400a90:	00431021 	addu	v0,v0,v1
  400a94:	0810025e 	j	400978 <__vprintf+0x74>
  400a98:	afa20054 	sw	v0,84(sp)
  400a9c:	3c060040 	lui	a2,0x40
  400aa0:	248417a8 	addiu	a0,a0,6056
  400aa4:	24c617d0 	addiu	a2,a2,6096
  400aa8:	0c1003e4 	jal	400f90 <__bad_assert>
  400aac:	240500dc 	li	a1,220
  400ab0:	0810028e 	j	400a38 <__vprintf+0x134>
  400ab4:	00000000 	nop
  400ab8:	24020001 	li	v0,1
  400abc:	0810025e 	j	400978 <__vprintf+0x74>
  400ac0:	afa20068 	sw	v0,104(sp)
  400ac4:	3c040040 	lui	a0,0x40
  400ac8:	248417e4 	addiu	a0,a0,6116
  400acc:	0c1003a8 	jal	400ea0 <strchr>
  400ad0:	02002821 	move	a1,s0
  400ad4:	10400091 	beqz	v0,400d1c <__vprintf+0x418>
  400ad8:	24020070 	li	v0,112
  400adc:	1202001f 	beq	s0,v0,400b5c <__vprintf+0x258>
  400ae0:	24020064 	li	v0,100
  400ae4:	1202009e 	beq	s0,v0,400d60 <__vprintf+0x45c>
  400ae8:	24020001 	li	v0,1
  400aec:	8fa30044 	lw	v1,68(sp)
  400af0:	00000000 	nop
  400af4:	10620003 	beq	v1,v0,400b04 <__vprintf+0x200>
  400af8:	00000000 	nop
  400afc:	14600074 	bnez	v1,400cd0 <__vprintf+0x3cc>
  400b00:	24020002 	li	v0,2
  400b04:	8fa20038 	lw	v0,56(sp)
  400b08:	afa00048 	sw	zero,72(sp)
  400b0c:	8c430000 	lw	v1,0(v0)
  400b10:	24420004 	addiu	v0,v0,4
  400b14:	afa20038 	sw	v0,56(sp)
  400b18:	afa3004c 	sw	v1,76(sp)
  400b1c:	2602ff9c 	addiu	v0,s0,-100
  400b20:	304200ff 	andi	v0,v0,0xff
  400b24:	2c430015 	sltiu	v1,v0,21
  400b28:	10600015 	beqz	v1,400b80 <__vprintf+0x27c>
  400b2c:	3c030040 	lui	v1,0x40
  400b30:	00021080 	sll	v0,v0,0x2
  400b34:	246316b0 	addiu	v1,v1,5808
  400b38:	00431021 	addu	v0,v0,v1
  400b3c:	8c440000 	lw	a0,0(v0)
  400b40:	00000000 	nop
  400b44:	00800008 	jr	a0
  400b48:	00000000 	nop
  400b4c:	0810025e 	j	400978 <__vprintf+0x74>
  400b50:	afa20058 	sw	v0,88(sp)
  400b54:	0810025e 	j	400978 <__vprintf+0x74>
  400b58:	afa20044 	sw	v0,68(sp)
  400b5c:	8fa20038 	lw	v0,56(sp)
  400b60:	afa00048 	sw	zero,72(sp)
  400b64:	24430004 	addiu	v1,v0,4
  400b68:	afa30038 	sw	v1,56(sp)
  400b6c:	8c440000 	lw	a0,0(v0)
  400b70:	00000000 	nop
  400b74:	afa4004c 	sw	a0,76(sp)
  400b78:	24020010 	li	v0,16
  400b7c:	afa20060 	sw	v0,96(sp)
  400b80:	8fa20068 	lw	v0,104(sp)
  400b84:	00000000 	nop
  400b88:	1440004d 	bnez	v0,400cc0 <__vprintf+0x3bc>
  400b8c:	24020001 	li	v0,1
  400b90:	24020070 	li	v0,112
  400b94:	1202004a 	beq	s0,v0,400cc0 <__vprintf+0x3bc>
  400b98:	24020001 	li	v0,1
  400b9c:	8fb60060 	lw	s6,96(sp)
  400ba0:	3c020040 	lui	v0,0x40
  400ba4:	8fb1004c 	lw	s1,76(sp)
  400ba8:	8fb00048 	lw	s0,72(sp)
  400bac:	a3a00029 	sb	zero,41(sp)
  400bb0:	245717ec 	addiu	s7,v0,6124
  400bb4:	27b50028 	addiu	s5,sp,40
  400bb8:	02c09821 	move	s3,s6
  400bbc:	001697c3 	sra	s2,s6,0x1f
  400bc0:	02202821 	move	a1,s1
  400bc4:	02002021 	move	a0,s0
  400bc8:	02603821 	move	a3,s3
  400bcc:	0c1003d8 	jal	400f60 <__umoddi3>
  400bd0:	02403021 	move	a2,s2
  400bd4:	02e31821 	addu	v1,s7,v1
  400bd8:	90620000 	lbu	v0,0(v1)
  400bdc:	02202821 	move	a1,s1
  400be0:	02002021 	move	a0,s0
  400be4:	02603821 	move	a3,s3
  400be8:	02403021 	move	a2,s2
  400bec:	0c1003d0 	jal	400f40 <__udivdi3>
  400bf0:	a2a20000 	sb	v0,0(s5)
  400bf4:	00408021 	move	s0,v0
  400bf8:	02031025 	or	v0,s0,v1
  400bfc:	00608821 	move	s1,v1
  400c00:	1440ffef 	bnez	v0,400bc0 <__vprintf+0x2bc>
  400c04:	26b5ffff 	addiu	s5,s5,-1
  400c08:	8fa20064 	lw	v0,100(sp)
  400c0c:	00000000 	nop
  400c10:	10400006 	beqz	v0,400c2c <__vprintf+0x328>
  400c14:	3c020040 	lui	v0,0x40
  400c18:	24020010 	li	v0,16
  400c1c:	12c2005e 	beq	s6,v0,400d98 <__vprintf+0x494>
  400c20:	24020008 	li	v0,8
  400c24:	12c20037 	beq	s6,v0,400d04 <__vprintf+0x400>
  400c28:	3c020040 	lui	v0,0x40
  400c2c:	244617fc 	addiu	a2,v0,6140
  400c30:	8fa20050 	lw	v0,80(sp)
  400c34:	00000000 	nop
  400c38:	10400023 	beqz	v0,400cc8 <__vprintf+0x3c4>
  400c3c:	3c020040 	lui	v0,0x40
  400c40:	3c020040 	lui	v0,0x40
  400c44:	2445178c 	addiu	a1,v0,6028
  400c48:	03c02021 	move	a0,s8
  400c4c:	0c1001c0 	jal	400700 <__pf_printstuff>
  400c50:	26a70001 	addiu	a3,s5,1
  400c54:	0c100196 	jal	400658 <__pf_endfield>
  400c58:	03c02021 	move	a0,s8
  400c5c:	0810025e 	j	400978 <__vprintf+0x74>
  400c60:	00000000 	nop
  400c64:	8fa20038 	lw	v0,56(sp)
  400c68:	2403fff8 	li	v1,-8
  400c6c:	24420007 	addiu	v0,v0,7
  400c70:	00431024 	and	v0,v0,v1
  400c74:	8c470004 	lw	a3,4(v0)
  400c78:	8c460000 	lw	a2,0(v0)
  400c7c:	24420008 	addiu	v0,v0,8
  400c80:	afa20038 	sw	v0,56(sp)
  400c84:	04c10040 	bgez	a2,400d88 <__vprintf+0x484>
  400c88:	2402000a 	li	v0,10
  400c8c:	00071823 	negu	v1,a3
  400c90:	0003282b 	sltu	a1,zero,v1
  400c94:	00061023 	negu	v0,a2
  400c98:	00451023 	subu	v0,v0,a1
  400c9c:	2404ffff 	li	a0,-1
  400ca0:	afa40050 	sw	a0,80(sp)
  400ca4:	afa3004c 	sw	v1,76(sp)
  400ca8:	afa20048 	sw	v0,72(sp)
  400cac:	2402000a 	li	v0,10
  400cb0:	081002e0 	j	400b80 <__vprintf+0x27c>
  400cb4:	afa20060 	sw	v0,96(sp)
  400cb8:	0810025e 	j	400978 <__vprintf+0x74>
  400cbc:	afb0005c 	sw	s0,92(sp)
  400cc0:	081002e7 	j	400b9c <__vprintf+0x298>
  400cc4:	afa20064 	sw	v0,100(sp)
  400cc8:	08100312 	j	400c48 <__vprintf+0x344>
  400ccc:	244517fc 	addiu	a1,v0,6140
  400cd0:	1462ff93 	bne	v1,v0,400b20 <__vprintf+0x21c>
  400cd4:	2602ff9c 	addiu	v0,s0,-100
  400cd8:	8fa20038 	lw	v0,56(sp)
  400cdc:	2403fff8 	li	v1,-8
  400ce0:	24420007 	addiu	v0,v0,7
  400ce4:	00431024 	and	v0,v0,v1
  400ce8:	8c450004 	lw	a1,4(v0)
  400cec:	8c440000 	lw	a0,0(v0)
  400cf0:	24420008 	addiu	v0,v0,8
  400cf4:	afa20038 	sw	v0,56(sp)
  400cf8:	afa5004c 	sw	a1,76(sp)
  400cfc:	081002c7 	j	400b1c <__vprintf+0x218>
  400d00:	afa40048 	sw	a0,72(sp)
  400d04:	3c020040 	lui	v0,0x40
  400d08:	0810030c 	j	400c30 <__vprintf+0x32c>
  400d0c:	24461804 	addiu	a2,v0,6148
  400d10:	24020008 	li	v0,8
  400d14:	081002e0 	j	400b80 <__vprintf+0x27c>
  400d18:	afa20060 	sw	v0,96(sp)
  400d1c:	24020073 	li	v0,115
  400d20:	12020028 	beq	s0,v0,400dc4 <__vprintf+0x4c0>
  400d24:	24020063 	li	v0,99
  400d28:	12020037 	beq	s0,v0,400e08 <__vprintf+0x504>
  400d2c:	00000000 	nop
  400d30:	a3b00011 	sb	s0,17(sp)
  400d34:	3c050040 	lui	a1,0x40
  400d38:	24a517fc 	addiu	a1,a1,6140
  400d3c:	03c02021 	move	a0,s8
  400d40:	00a03021 	move	a2,a1
  400d44:	27a70011 	addiu	a3,sp,17
  400d48:	0c1001c0 	jal	400700 <__pf_printstuff>
  400d4c:	a3a00012 	sb	zero,18(sp)
  400d50:	0c100196 	jal	400658 <__pf_endfield>
  400d54:	03c02021 	move	a0,s8
  400d58:	0810025e 	j	400978 <__vprintf+0x74>
  400d5c:	00000000 	nop
  400d60:	8fa30044 	lw	v1,68(sp)
  400d64:	00000000 	nop
  400d68:	1062000e 	beq	v1,v0,400da4 <__vprintf+0x4a0>
  400d6c:	00000000 	nop
  400d70:	1060000c 	beqz	v1,400da4 <__vprintf+0x4a0>
  400d74:	24020002 	li	v0,2
  400d78:	1062ffba 	beq	v1,v0,400c64 <__vprintf+0x360>
  400d7c:	00003821 	move	a3,zero
  400d80:	00003021 	move	a2,zero
  400d84:	2402000a 	li	v0,10
  400d88:	afa7004c 	sw	a3,76(sp)
  400d8c:	afa60048 	sw	a2,72(sp)
  400d90:	081002e0 	j	400b80 <__vprintf+0x27c>
  400d94:	afa20060 	sw	v0,96(sp)
  400d98:	3c020040 	lui	v0,0x40
  400d9c:	0810030c 	j	400c30 <__vprintf+0x32c>
  400da0:	24461800 	addiu	a2,v0,6144
  400da4:	8fa20038 	lw	v0,56(sp)
  400da8:	00000000 	nop
  400dac:	8c430000 	lw	v1,0(v0)
  400db0:	24420004 	addiu	v0,v0,4
  400db4:	00603821 	move	a3,v1
  400db8:	000337c3 	sra	a2,v1,0x1f
  400dbc:	08100321 	j	400c84 <__vprintf+0x380>
  400dc0:	afa20038 	sw	v0,56(sp)
  400dc4:	8fa30038 	lw	v1,56(sp)
  400dc8:	00000000 	nop
  400dcc:	8c670000 	lw	a3,0(v1)
  400dd0:	00000000 	nop
  400dd4:	10e00013 	beqz	a3,400e24 <__vprintf+0x520>
  400dd8:	3c020040 	lui	v0,0x40
  400ddc:	3c050040 	lui	a1,0x40
  400de0:	24a517fc 	addiu	a1,a1,6140
  400de4:	24620004 	addiu	v0,v1,4
  400de8:	03c02021 	move	a0,s8
  400dec:	00a03021 	move	a2,a1
  400df0:	0c1001c0 	jal	400700 <__pf_printstuff>
  400df4:	afa20038 	sw	v0,56(sp)
  400df8:	0c100196 	jal	400658 <__pf_endfield>
  400dfc:	03c02021 	move	a0,s8
  400e00:	0810025e 	j	400978 <__vprintf+0x74>
  400e04:	00000000 	nop
  400e08:	8fa20038 	lw	v0,56(sp)
  400e0c:	00000000 	nop
  400e10:	8c430000 	lw	v1,0(v0)
  400e14:	24420004 	addiu	v0,v0,4
  400e18:	afa20038 	sw	v0,56(sp)
  400e1c:	0810034d 	j	400d34 <__vprintf+0x430>
  400e20:	a3a30011 	sb	v1,17(sp)
  400e24:	08100377 	j	400ddc <__vprintf+0x4d8>
  400e28:	24471790 	addiu	a3,v0,6032
  400e2c:	00000000 	nop

00400e30 <__puts>:
  400e30:	27bdffe0 	addiu	sp,sp,-32
  400e34:	afb00010 	sw	s0,16(sp)
  400e38:	afbf0018 	sw	ra,24(sp)
  400e3c:	afb10014 	sw	s1,20(sp)
  400e40:	00808021 	move	s0,a0
  400e44:	80840000 	lb	a0,0(a0)
  400e48:	00000000 	nop
  400e4c:	1080000d 	beqz	a0,400e84 <__puts+0x54>
  400e50:	00008821 	move	s1,zero
  400e54:	0c100098 	jal	400260 <putchar>
  400e58:	26100001 	addiu	s0,s0,1
  400e5c:	82040000 	lb	a0,0(s0)
  400e60:	00000000 	nop
  400e64:	1480fffb 	bnez	a0,400e54 <__puts+0x24>
  400e68:	26310001 	addiu	s1,s1,1
  400e6c:	02201021 	move	v0,s1
  400e70:	8fbf0018 	lw	ra,24(sp)
  400e74:	8fb10014 	lw	s1,20(sp)
  400e78:	8fb00010 	lw	s0,16(sp)
  400e7c:	03e00008 	jr	ra
  400e80:	27bd0020 	addiu	sp,sp,32
  400e84:	02201021 	move	v0,s1
  400e88:	8fbf0018 	lw	ra,24(sp)
  400e8c:	8fb10014 	lw	s1,20(sp)
  400e90:	8fb00010 	lw	s0,16(sp)
  400e94:	03e00008 	jr	ra
  400e98:	27bd0020 	addiu	sp,sp,32
  400e9c:	00000000 	nop

00400ea0 <strchr>:
  400ea0:	80830000 	lb	v1,0(a0)
  400ea4:	00052e00 	sll	a1,a1,0x18
  400ea8:	00801021 	move	v0,a0
  400eac:	1060000c 	beqz	v1,400ee0 <strchr+0x40>
  400eb0:	00052e03 	sra	a1,a1,0x18
  400eb4:	14a30006 	bne	a1,v1,400ed0 <strchr+0x30>
  400eb8:	24420001 	addiu	v0,v0,1
  400ebc:	03e00008 	jr	ra
  400ec0:	2442ffff 	addiu	v0,v0,-1
  400ec4:	10a3000c 	beq	a1,v1,400ef8 <strchr+0x58>
  400ec8:	00000000 	nop
  400ecc:	24420001 	addiu	v0,v0,1
  400ed0:	80430000 	lb	v1,0(v0)
  400ed4:	00000000 	nop
  400ed8:	1460fffa 	bnez	v1,400ec4 <strchr+0x24>
  400edc:	00000000 	nop
  400ee0:	14a00003 	bnez	a1,400ef0 <strchr+0x50>
  400ee4:	00000000 	nop
  400ee8:	03e00008 	jr	ra
  400eec:	00000000 	nop
  400ef0:	03e00008 	jr	ra
  400ef4:	00001021 	move	v0,zero
  400ef8:	03e00008 	jr	ra
  400efc:	00000000 	nop

00400f00 <strlen>:
  400f00:	80820000 	lb	v0,0(a0)
  400f04:	00000000 	nop
  400f08:	1040000a 	beqz	v0,400f34 <strlen+0x34>
  400f0c:	00002821 	move	a1,zero
  400f10:	24a50001 	addiu	a1,a1,1
  400f14:	00851021 	addu	v0,a0,a1
  400f18:	80430000 	lb	v1,0(v0)
  400f1c:	00000000 	nop
  400f20:	1460fffc 	bnez	v1,400f14 <strlen+0x14>
  400f24:	24a50001 	addiu	a1,a1,1
  400f28:	24a5ffff 	addiu	a1,a1,-1
  400f2c:	03e00008 	jr	ra
  400f30:	00a01021 	move	v0,a1
  400f34:	03e00008 	jr	ra
  400f38:	00a01021 	move	v0,a1
  400f3c:	00000000 	nop

00400f40 <__udivdi3>:
  400f40:	27bdffe0 	addiu	sp,sp,-32
  400f44:	afbf0018 	sw	ra,24(sp)
  400f48:	0c10045f 	jal	40117c <__qdivrem>
  400f4c:	afa00010 	sw	zero,16(sp)
  400f50:	8fbf0018 	lw	ra,24(sp)
  400f54:	00000000 	nop
  400f58:	03e00008 	jr	ra
  400f5c:	27bd0020 	addiu	sp,sp,32

00400f60 <__umoddi3>:
  400f60:	27bdffd8 	addiu	sp,sp,-40
  400f64:	27a20018 	addiu	v0,sp,24
  400f68:	afbf0020 	sw	ra,32(sp)
  400f6c:	0c10045f 	jal	40117c <__qdivrem>
  400f70:	afa20010 	sw	v0,16(sp)
  400f74:	8fa3001c 	lw	v1,28(sp)
  400f78:	8fa20018 	lw	v0,24(sp)
  400f7c:	8fbf0020 	lw	ra,32(sp)
  400f80:	00000000 	nop
  400f84:	03e00008 	jr	ra
  400f88:	27bd0028 	addiu	sp,sp,40
  400f8c:	00000000 	nop

00400f90 <__bad_assert>:
  400f90:	27bdfee0 	addiu	sp,sp,-288
  400f94:	00c03821 	move	a3,a2
  400f98:	afb00118 	sw	s0,280(sp)
  400f9c:	3c060040 	lui	a2,0x40
  400fa0:	27b00018 	addiu	s0,sp,24
  400fa4:	24c61808 	addiu	a2,a2,6152
  400fa8:	afa40010 	sw	a0,16(sp)
  400fac:	afa50014 	sw	a1,20(sp)
  400fb0:	02002021 	move	a0,s0
  400fb4:	afbf011c 	sw	ra,284(sp)
  400fb8:	0c100430 	jal	4010c0 <snprintf>
  400fbc:	24050100 	li	a1,256
  400fc0:	0c1003c0 	jal	400f00 <strlen>
  400fc4:	02002021 	move	a0,s0
  400fc8:	00403021 	move	a2,v0
  400fcc:	02002821 	move	a1,s0
  400fd0:	0c10011b 	jal	40046c <write>
  400fd4:	24040002 	li	a0,2
  400fd8:	0c10043c 	jal	4010f0 <abort>
  400fdc:	00000000 	nop

00400fe0 <__snprintf_send>:
  400fe0:	10c00012 	beqz	a2,40102c <__snprintf_send+0x4c>
  400fe4:	00004021 	move	t0,zero
  400fe8:	8c870008 	lw	a3,8(a0)
  400fec:	8c820004 	lw	v0,4(a0)
  400ff0:	00a81821 	addu	v1,a1,t0
  400ff4:	00e2102b 	sltu	v0,a3,v0
  400ff8:	1040000a 	beqz	v0,401024 <__snprintf_send+0x44>
  400ffc:	25080001 	addiu	t0,t0,1
  401000:	8c820000 	lw	v0,0(a0)
  401004:	90630000 	lbu	v1,0(v1)
  401008:	00471021 	addu	v0,v0,a3
  40100c:	a0430000 	sb	v1,0(v0)
  401010:	8c870008 	lw	a3,8(a0)
  401014:	00000000 	nop
  401018:	24e20001 	addiu	v0,a3,1
  40101c:	00403821 	move	a3,v0
  401020:	ac820008 	sw	v0,8(a0)
  401024:	14c8fff1 	bne	a2,t0,400fec <__snprintf_send+0xc>
  401028:	00000000 	nop
  40102c:	03e00008 	jr	ra
  401030:	00000000 	nop

00401034 <vsnprintf>:
  401034:	27bdffd8 	addiu	sp,sp,-40
  401038:	afb00020 	sw	s0,32(sp)
  40103c:	00a01021 	move	v0,a1
  401040:	00808021 	move	s0,a0
  401044:	3c040040 	lui	a0,0x40
  401048:	24a3ffff 	addiu	v1,a1,-1
  40104c:	afbf0024 	sw	ra,36(sp)
  401050:	24840fe0 	addiu	a0,a0,4064
  401054:	27a50010 	addiu	a1,sp,16
  401058:	1440000c 	bnez	v0,40108c <vsnprintf+0x58>
  40105c:	afb00010 	sw	s0,16(sp)
  401060:	3c040040 	lui	a0,0x40
  401064:	24840fe0 	addiu	a0,a0,4064
  401068:	afa00014 	sw	zero,20(sp)
  40106c:	0c100241 	jal	400904 <__vprintf>
  401070:	afa00018 	sw	zero,24(sp)
  401074:	00401821 	move	v1,v0
  401078:	8fbf0024 	lw	ra,36(sp)
  40107c:	8fb00020 	lw	s0,32(sp)
  401080:	00601021 	move	v0,v1
  401084:	03e00008 	jr	ra
  401088:	27bd0028 	addiu	sp,sp,40
  40108c:	afa30014 	sw	v1,20(sp)
  401090:	0c100241 	jal	400904 <__vprintf>
  401094:	afa00018 	sw	zero,24(sp)
  401098:	00401821 	move	v1,v0
  40109c:	8fa20018 	lw	v0,24(sp)
  4010a0:	00000000 	nop
  4010a4:	02021021 	addu	v0,s0,v0
  4010a8:	a0400000 	sb	zero,0(v0)
  4010ac:	8fbf0024 	lw	ra,36(sp)
  4010b0:	8fb00020 	lw	s0,32(sp)
  4010b4:	00601021 	move	v0,v1
  4010b8:	03e00008 	jr	ra
  4010bc:	27bd0028 	addiu	sp,sp,40

004010c0 <snprintf>:
  4010c0:	27bdffe0 	addiu	sp,sp,-32
  4010c4:	27a2002c 	addiu	v0,sp,44
  4010c8:	afa7002c 	sw	a3,44(sp)
  4010cc:	00403821 	move	a3,v0
  4010d0:	afbf0018 	sw	ra,24(sp)
  4010d4:	0c10040d 	jal	401034 <vsnprintf>
  4010d8:	afa20010 	sw	v0,16(sp)
  4010dc:	8fbf0018 	lw	ra,24(sp)
  4010e0:	00000000 	nop
  4010e4:	03e00008 	jr	ra
  4010e8:	27bd0020 	addiu	sp,sp,32
  4010ec:	00000000 	nop

004010f0 <abort>:
  4010f0:	27bdffe8 	addiu	sp,sp,-24
  4010f4:	afbf0010 	sw	ra,16(sp)
  4010f8:	0c1000db 	jal	40036c <_exit>
  4010fc:	240400ff 	li	a0,255

00401100 <shl>:
  401100:	18a00016 	blez	a1,40115c <shl+0x5c>
  401104:	24020010 	li	v0,16
  401108:	00464823 	subu	t1,v0,a2
  40110c:	00803821 	move	a3,a0
  401110:	00004021 	move	t0,zero
  401114:	8ce20000 	lw	v0,0(a3)
  401118:	8ce30004 	lw	v1,4(a3)
  40111c:	00c21004 	sllv	v0,v0,a2
  401120:	3042ffff 	andi	v0,v0,0xffff
  401124:	01231806 	srlv	v1,v1,t1
  401128:	00431025 	or	v0,v0,v1
  40112c:	25080001 	addiu	t0,t0,1
  401130:	ace20000 	sw	v0,0(a3)
  401134:	14a8fff7 	bne	a1,t0,401114 <shl+0x14>
  401138:	24e70004 	addiu	a3,a3,4
  40113c:	00051880 	sll	v1,a1,0x2
  401140:	00831821 	addu	v1,a0,v1
  401144:	8c620000 	lw	v0,0(v1)
  401148:	00000000 	nop
  40114c:	00c21004 	sllv	v0,v0,a2
  401150:	3042ffff 	andi	v0,v0,0xffff
  401154:	03e00008 	jr	ra
  401158:	ac620000 	sw	v0,0(v1)
  40115c:	00001821 	move	v1,zero
  401160:	00831821 	addu	v1,a0,v1
  401164:	8c620000 	lw	v0,0(v1)
  401168:	00000000 	nop
  40116c:	00c21004 	sllv	v0,v0,a2
  401170:	3042ffff 	andi	v0,v0,0xffff
  401174:	03e00008 	jr	ra
  401178:	ac620000 	sw	v0,0(v1)

0040117c <__qdivrem>:
  40117c:	27bdff80 	addiu	sp,sp,-128
  401180:	00c71025 	or	v0,a2,a3
  401184:	afb20060 	sw	s2,96(sp)
  401188:	afbf007c 	sw	ra,124(sp)
  40118c:	afbe0078 	sw	s8,120(sp)
  401190:	afb70074 	sw	s7,116(sp)
  401194:	afb60070 	sw	s6,112(sp)
  401198:	afb5006c 	sw	s5,108(sp)
  40119c:	afb40068 	sw	s4,104(sp)
  4011a0:	afb30064 	sw	s3,100(sp)
  4011a4:	afb1005c 	sw	s1,92(sp)
  4011a8:	afb00058 	sw	s0,88(sp)
  4011ac:	00a04821 	move	t1,a1
  4011b0:	8fb20090 	lw	s2,144(sp)
  4011b4:	14400018 	bnez	v0,401218 <__qdivrem+0x9c>
  4011b8:	00804021 	move	t0,a0
  4011bc:	3c031000 	lui	v1,0x1000
  4011c0:	8c640000 	lw	a0,0(v1)
  4011c4:	24020001 	li	v0,1
  4011c8:	14800002 	bnez	a0,4011d4 <__qdivrem+0x58>
  4011cc:	0044001b 	divu	zero,v0,a0
  4011d0:	0007000d 	break	0x7
  4011d4:	00001012 	mflo	v0
  4011d8:	12400003 	beqz	s2,4011e8 <__qdivrem+0x6c>
  4011dc:	00401821 	move	v1,v0
  4011e0:	ae450004 	sw	a1,4(s2)
  4011e4:	ae480000 	sw	t0,0(s2)
  4011e8:	8fbf007c 	lw	ra,124(sp)
  4011ec:	8fbe0078 	lw	s8,120(sp)
  4011f0:	8fb70074 	lw	s7,116(sp)
  4011f4:	8fb60070 	lw	s6,112(sp)
  4011f8:	8fb5006c 	lw	s5,108(sp)
  4011fc:	8fb40068 	lw	s4,104(sp)
  401200:	8fb30064 	lw	s3,100(sp)
  401204:	8fb20060 	lw	s2,96(sp)
  401208:	8fb1005c 	lw	s1,92(sp)
  40120c:	8fb00058 	lw	s0,88(sp)
  401210:	03e00008 	jr	ra
  401214:	27bd0080 	addiu	sp,sp,128
  401218:	0086102b 	sltu	v0,a0,a2
  40121c:	10400008 	beqz	v0,401240 <__qdivrem+0xc4>
  401220:	00000000 	nop
  401224:	1240010c 	beqz	s2,401658 <__qdivrem+0x4dc>
  401228:	00000000 	nop
  40122c:	00001821 	move	v1,zero
  401230:	00001021 	move	v0,zero
  401234:	ae490004 	sw	t1,4(s2)
  401238:	0810047a 	j	4011e8 <__qdivrem+0x6c>
  40123c:	ae480000 	sw	t0,0(s2)
  401240:	10860046 	beq	a0,a2,40135c <__qdivrem+0x1e0>
  401244:	00a7102b 	sltu	v0,a1,a3
  401248:	00e08821 	move	s1,a3
  40124c:	01001821 	move	v1,t0
  401250:	00c08021 	move	s0,a2
  401254:	30c7ffff 	andi	a3,a2,0xffff
  401258:	3108ffff 	andi	t0,t0,0xffff
  40125c:	312affff 	andi	t2,t1,0xffff
  401260:	3226ffff 	andi	a2,s1,0xffff
  401264:	00031c02 	srl	v1,v1,0x10
  401268:	00092c02 	srl	a1,t1,0x10
  40126c:	00101402 	srl	v0,s0,0x10
  401270:	00112402 	srl	a0,s1,0x10
  401274:	afa00010 	sw	zero,16(sp)
  401278:	afa30014 	sw	v1,20(sp)
  40127c:	afa80018 	sw	t0,24(sp)
  401280:	afa5001c 	sw	a1,28(sp)
  401284:	afaa0020 	sw	t2,32(sp)
  401288:	afa20028 	sw	v0,40(sp)
  40128c:	afa7002c 	sw	a3,44(sp)
  401290:	afa40030 	sw	a0,48(sp)
  401294:	144000f6 	bnez	v0,401670 <__qdivrem+0x4f4>
  401298:	afa60034 	sw	a2,52(sp)
  40129c:	14e00033 	bnez	a3,40136c <__qdivrem+0x1f0>
  4012a0:	27a20028 	addiu	v0,sp,40
  4012a4:	148000f7 	bnez	a0,401684 <__qdivrem+0x508>
  4012a8:	27a2002c 	addiu	v0,sp,44
  4012ac:	14c00002 	bnez	a2,4012b8 <__qdivrem+0x13c>
  4012b0:	0066001b 	divu	zero,v1,a2
  4012b4:	0007000d 	break	0x7
  4012b8:	00001010 	mfhi	v0
  4012bc:	00021400 	sll	v0,v0,0x10
  4012c0:	00481025 	or	v0,v0,t0
  4012c4:	00004812 	mflo	t1
	...
  4012d0:	14c00002 	bnez	a2,4012dc <__qdivrem+0x160>
  4012d4:	0046001b 	divu	zero,v0,a2
  4012d8:	0007000d 	break	0x7
  4012dc:	00001810 	mfhi	v1
  4012e0:	00031c00 	sll	v1,v1,0x10
  4012e4:	00651825 	or	v1,v1,a1
  4012e8:	00003812 	mflo	a3
	...
  4012f4:	14c00002 	bnez	a2,401300 <__qdivrem+0x184>
  4012f8:	0066001b 	divu	zero,v1,a2
  4012fc:	0007000d 	break	0x7
  401300:	00001010 	mfhi	v0
  401304:	00021400 	sll	v0,v0,0x10
  401308:	00001812 	mflo	v1
  40130c:	12400008 	beqz	s2,401330 <__qdivrem+0x1b4>
  401310:	01422025 	or	a0,t2,v0
  401314:	14c00002 	bnez	a2,401320 <__qdivrem+0x1a4>
  401318:	0086001b 	divu	zero,a0,a2
  40131c:	0007000d 	break	0x7
  401320:	ae400000 	sw	zero,0(s2)
  401324:	00001010 	mfhi	v0
  401328:	ae420004 	sw	v0,4(s2)
  40132c:	00000000 	nop
  401330:	14c00002 	bnez	a2,40133c <__qdivrem+0x1c0>
  401334:	0086001b 	divu	zero,a0,a2
  401338:	0007000d 	break	0x7
  40133c:	00091400 	sll	v0,t1,0x10
  401340:	00031c00 	sll	v1,v1,0x10
  401344:	00e28025 	or	s0,a3,v0
  401348:	02001021 	move	v0,s0
  40134c:	00002012 	mflo	a0
  401350:	00838825 	or	s1,a0,v1
  401354:	0810047a 	j	4011e8 <__qdivrem+0x6c>
  401358:	02201821 	move	v1,s1
  40135c:	1040ffbb 	beqz	v0,40124c <__qdivrem+0xd0>
  401360:	00e08821 	move	s1,a3
  401364:	08100489 	j	401224 <__qdivrem+0xa8>
  401368:	00000000 	nop
  40136c:	afa20050 	sw	v0,80(sp)
  401370:	24170003 	li	s7,3
  401374:	27be002c 	addiu	s8,sp,44
  401378:	8fa30014 	lw	v1,20(sp)
  40137c:	24020004 	li	v0,4
  401380:	146000c4 	bnez	v1,401694 <__qdivrem+0x518>
  401384:	00579823 	subu	s3,v0,s7
  401388:	081004e5 	j	401394 <__qdivrem+0x218>
  40138c:	27b40014 	addiu	s4,sp,20
  401390:	0060a021 	move	s4,v1
  401394:	8e820004 	lw	v0,4(s4)
  401398:	2673ffff 	addiu	s3,s3,-1
  40139c:	1040fffc 	beqz	v0,401390 <__qdivrem+0x214>
  4013a0:	26830004 	addiu	v1,s4,4
  4013a4:	24020004 	li	v0,4
  4013a8:	00532023 	subu	a0,v0,s3
  4013ac:	2483ffff 	addiu	v1,a0,-1
  4013b0:	046000bc 	bltz	v1,4016a4 <__qdivrem+0x528>
  4013b4:	00001821 	move	v1,zero
  4013b8:	27a60038 	addiu	a2,sp,56
  4013bc:	00042880 	sll	a1,a0,0x2
  4013c0:	00c51021 	addu	v0,a2,a1
  4013c4:	2442fffc 	addiu	v0,v0,-4
  4013c8:	24630001 	addiu	v1,v1,1
  4013cc:	ac400000 	sw	zero,0(v0)
  4013d0:	1464fffd 	bne	v1,a0,4013c8 <__qdivrem+0x24c>
  4013d4:	2442fffc 	addiu	v0,v0,-4
  4013d8:	8fcb0000 	lw	t3,0(s8)
  4013dc:	34028000 	li	v0,0x8000
  4013e0:	0162102b 	sltu	v0,t3,v0
  4013e4:	00c5b021 	addu	s6,a2,a1
  4013e8:	104000ac 	beqz	v0,40169c <__qdivrem+0x520>
  4013ec:	01601821 	move	v1,t3
  4013f0:	0000a821 	move	s5,zero
  4013f4:	34048000 	li	a0,0x8000
  4013f8:	00031840 	sll	v1,v1,0x1
  4013fc:	0064102b 	sltu	v0,v1,a0
  401400:	1440fffd 	bnez	v0,4013f8 <__qdivrem+0x27c>
  401404:	26b50001 	addiu	s5,s5,1
  401408:	1aa00009 	blez	s5,401430 <__qdivrem+0x2b4>
  40140c:	02f32821 	addu	a1,s7,s3
  401410:	02a03021 	move	a2,s5
  401414:	0c100440 	jal	401100 <shl>
  401418:	02802021 	move	a0,s4
  40141c:	03c02021 	move	a0,s8
  401420:	26e5ffff 	addiu	a1,s7,-1
  401424:	0c100440 	jal	401100 <shl>
  401428:	02a03021 	move	a2,s5
  40142c:	8fcb0000 	lw	t3,0(s8)
  401430:	8fa20050 	lw	v0,80(sp)
  401434:	00177080 	sll	t6,s7,0x2
  401438:	8c580008 	lw	t8,8(v0)
  40143c:	02c06821 	move	t5,s6
  401440:	02804821 	move	t1,s4
  401444:	028e6021 	addu	t4,s4,t6
  401448:	00007821 	move	t7,zero
  40144c:	3416ffff 	li	s6,0xffff
  401450:	8d240000 	lw	a0,0(t1)
  401454:	8d230004 	lw	v1,4(t1)
  401458:	8d260008 	lw	a2,8(t1)
  40145c:	11640081 	beq	t3,a0,401664 <__qdivrem+0x4e8>
  401460:	00041400 	sll	v0,a0,0x10
  401464:	00621025 	or	v0,v1,v0
  401468:	15600002 	bnez	t3,401474 <__qdivrem+0x2f8>
  40146c:	004b001b 	divu	zero,v0,t3
  401470:	0007000d 	break	0x7
  401474:	00002810 	mfhi	a1
  401478:	00003812 	mflo	a3
	...
  401484:	00f80018 	mult	a3,t8
  401488:	00051400 	sll	v0,a1,0x10
  40148c:	00c21025 	or	v0,a2,v0
  401490:	00001812 	mflo	v1
  401494:	0043182b 	sltu	v1,v0,v1
  401498:	10600006 	beqz	v1,4014b4 <__qdivrem+0x338>
  40149c:	00000000 	nop
  4014a0:	24e7ffff 	addiu	a3,a3,-1
  4014a4:	00ab2821 	addu	a1,a1,t3
  4014a8:	02c5102b 	sltu	v0,s6,a1
  4014ac:	1040fff6 	beqz	v0,401488 <__qdivrem+0x30c>
  4014b0:	00f80018 	mult	a3,t8
  4014b4:	1ae00017 	blez	s7,401514 <__qdivrem+0x398>
  4014b8:	00004021 	move	t0,zero
  4014bc:	8fa20050 	lw	v0,80(sp)
  4014c0:	01802021 	move	a0,t4
  4014c4:	004e3021 	addu	a2,v0,t6
  4014c8:	02e02821 	move	a1,s7
  4014cc:	3c0a0001 	lui	t2,0x1
  4014d0:	8cc20000 	lw	v0,0(a2)
  4014d4:	8c830000 	lw	v1,0(a0)
  4014d8:	00e20018 	mult	a3,v0
  4014dc:	24a5ffff 	addiu	a1,a1,-1
  4014e0:	24c6fffc 	addiu	a2,a2,-4
  4014e4:	00001012 	mflo	v0
  4014e8:	00621823 	subu	v1,v1,v0
  4014ec:	00681823 	subu	v1,v1,t0
  4014f0:	00031402 	srl	v0,v1,0x10
  4014f4:	01421023 	subu	v0,t2,v0
  4014f8:	3063ffff 	andi	v1,v1,0xffff
  4014fc:	ac830000 	sw	v1,0(a0)
  401500:	3048ffff 	andi	t0,v0,0xffff
  401504:	14a0fff2 	bnez	a1,4014d0 <__qdivrem+0x354>
  401508:	2484fffc 	addiu	a0,a0,-4
  40150c:	8d240000 	lw	a0,0(t1)
  401510:	00000000 	nop
  401514:	00881023 	subu	v0,a0,t0
  401518:	3044ffff 	andi	a0,v0,0xffff
  40151c:	00021c02 	srl	v1,v0,0x10
  401520:	10600018 	beqz	v1,401584 <__qdivrem+0x408>
  401524:	ad240000 	sw	a0,0(t1)
  401528:	1ae00012 	blez	s7,401574 <__qdivrem+0x3f8>
  40152c:	00004021 	move	t0,zero
  401530:	8fa20050 	lw	v0,80(sp)
  401534:	01802021 	move	a0,t4
  401538:	004e3021 	addu	a2,v0,t6
  40153c:	02e02821 	move	a1,s7
  401540:	8c820000 	lw	v0,0(a0)
  401544:	8cc30000 	lw	v1,0(a2)
  401548:	01021021 	addu	v0,t0,v0
  40154c:	00431021 	addu	v0,v0,v1
  401550:	3043ffff 	andi	v1,v0,0xffff
  401554:	24a5ffff 	addiu	a1,a1,-1
  401558:	ac830000 	sw	v1,0(a0)
  40155c:	00024402 	srl	t0,v0,0x10
  401560:	2484fffc 	addiu	a0,a0,-4
  401564:	14a0fff6 	bnez	a1,401540 <__qdivrem+0x3c4>
  401568:	24c6fffc 	addiu	a2,a2,-4
  40156c:	8d240000 	lw	a0,0(t1)
  401570:	00000000 	nop
  401574:	01041021 	addu	v0,t0,a0
  401578:	3042ffff 	andi	v0,v0,0xffff
  40157c:	ad220000 	sw	v0,0(t1)
  401580:	24e7ffff 	addiu	a3,a3,-1
  401584:	25ef0001 	addiu	t7,t7,1
  401588:	026f102a 	slt	v0,s3,t7
  40158c:	ada70000 	sw	a3,0(t5)
  401590:	25290004 	addiu	t1,t1,4
  401594:	25ad0004 	addiu	t5,t5,4
  401598:	1040ffad 	beqz	v0,401450 <__qdivrem+0x2d4>
  40159c:	258c0004 	addiu	t4,t4,4
  4015a0:	12400022 	beqz	s2,40162c <__qdivrem+0x4b0>
  4015a4:	00000000 	nop
  4015a8:	12a00016 	beqz	s5,401604 <__qdivrem+0x488>
  4015ac:	02f32821 	addu	a1,s7,s3
  4015b0:	0265102a 	slt	v0,s3,a1
  4015b4:	10400011 	beqz	v0,4015fc <__qdivrem+0x480>
  4015b8:	00051080 	sll	v0,a1,0x2
  4015bc:	00051880 	sll	v1,a1,0x2
  4015c0:	24020010 	li	v0,16
  4015c4:	00553823 	subu	a3,v0,s5
  4015c8:	02833021 	addu	a2,s4,v1
  4015cc:	8cc2fffc 	lw	v0,-4(a2)
  4015d0:	8cc30000 	lw	v1,0(a2)
  4015d4:	00e21004 	sllv	v0,v0,a3
  4015d8:	02a31806 	srlv	v1,v1,s5
  4015dc:	3042ffff 	andi	v0,v0,0xffff
  4015e0:	24a5ffff 	addiu	a1,a1,-1
  4015e4:	00621825 	or	v1,v1,v0
  4015e8:	0265202a 	slt	a0,s3,a1
  4015ec:	acc30000 	sw	v1,0(a2)
  4015f0:	1480fff6 	bnez	a0,4015cc <__qdivrem+0x450>
  4015f4:	24c6fffc 	addiu	a2,a2,-4
  4015f8:	00051080 	sll	v0,a1,0x2
  4015fc:	00541021 	addu	v0,v0,s4
  401600:	ac400000 	sw	zero,0(v0)
  401604:	8fa20014 	lw	v0,20(sp)
  401608:	8fa40018 	lw	a0,24(sp)
  40160c:	00021400 	sll	v0,v0,0x10
  401610:	8fa3001c 	lw	v1,28(sp)
  401614:	00448025 	or	s0,v0,a0
  401618:	8fa20020 	lw	v0,32(sp)
  40161c:	00031c00 	sll	v1,v1,0x10
  401620:	00628825 	or	s1,v1,v0
  401624:	ae510004 	sw	s1,4(s2)
  401628:	ae500000 	sw	s0,0(s2)
  40162c:	8fa2003c 	lw	v0,60(sp)
  401630:	8fa40040 	lw	a0,64(sp)
  401634:	00021400 	sll	v0,v0,0x10
  401638:	8fa30044 	lw	v1,68(sp)
  40163c:	00448025 	or	s0,v0,a0
  401640:	8fa20048 	lw	v0,72(sp)
  401644:	00031c00 	sll	v1,v1,0x10
  401648:	00628825 	or	s1,v1,v0
  40164c:	02201821 	move	v1,s1
  401650:	0810047a 	j	4011e8 <__qdivrem+0x6c>
  401654:	02001021 	move	v0,s0
  401658:	00001821 	move	v1,zero
  40165c:	0810047a 	j	4011e8 <__qdivrem+0x6c>
  401660:	00001021 	move	v0,zero
  401664:	00602821 	move	a1,v1
  401668:	08100529 	j	4014a4 <__qdivrem+0x328>
  40166c:	3407ffff 	li	a3,0xffff
  401670:	27a20024 	addiu	v0,sp,36
  401674:	24170004 	li	s7,4
  401678:	27be0028 	addiu	s8,sp,40
  40167c:	081004de 	j	401378 <__qdivrem+0x1fc>
  401680:	afa20050 	sw	v0,80(sp)
  401684:	24170002 	li	s7,2
  401688:	27be0030 	addiu	s8,sp,48
  40168c:	081004de 	j	401378 <__qdivrem+0x1fc>
  401690:	afa20050 	sw	v0,80(sp)
  401694:	081004e9 	j	4013a4 <__qdivrem+0x228>
  401698:	27b40010 	addiu	s4,sp,16
  40169c:	0810050c 	j	401430 <__qdivrem+0x2b4>
  4016a0:	0000a821 	move	s5,zero
  4016a4:	00042880 	sll	a1,a0,0x2
  4016a8:	081004f6 	j	4013d8 <__qdivrem+0x25c>
  4016ac:	27a60038 	addiu	a2,sp,56
