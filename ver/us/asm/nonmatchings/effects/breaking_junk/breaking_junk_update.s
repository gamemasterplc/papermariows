.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel breaking_junk_update
/* 4036F4 E01182F4 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 4036F8 E01182F8 AFBF0010 */  sw        $ra, 0x10($sp)
/* 4036FC E01182FC 8C830000 */  lw        $v1, ($a0)
/* 403700 E0118300 8C85000C */  lw        $a1, 0xc($a0)
/* 403704 E0118304 30620010 */  andi      $v0, $v1, 0x10
/* 403708 E0118308 10400005 */  beqz      $v0, .LE0118320
/* 40370C E011830C 2402FFEF */   addiu    $v0, $zero, -0x11
/* 403710 E0118310 00621024 */  and       $v0, $v1, $v0
/* 403714 E0118314 AC820000 */  sw        $v0, ($a0)
/* 403718 E0118318 24020010 */  addiu     $v0, $zero, 0x10
/* 40371C E011831C ACA2001C */  sw        $v0, 0x1c($a1)
.LE0118320:
/* 403720 E0118320 8CA3001C */  lw        $v1, 0x1c($a1)
/* 403724 E0118324 286203E8 */  slti      $v0, $v1, 0x3e8
/* 403728 E0118328 10400002 */  beqz      $v0, .LE0118334
/* 40372C E011832C 2462FFFF */   addiu    $v0, $v1, -1
/* 403730 E0118330 ACA2001C */  sw        $v0, 0x1c($a1)
.LE0118334:
/* 403734 E0118334 8CA20020 */  lw        $v0, 0x20($a1)
/* 403738 E0118338 8CA3001C */  lw        $v1, 0x1c($a1)
/* 40373C E011833C 24420001 */  addiu     $v0, $v0, 1
/* 403740 E0118340 04610005 */  bgez      $v1, .LE0118358
/* 403744 E0118344 ACA20020 */   sw       $v0, 0x20($a1)
/* 403748 E0118348 0C080128 */  jal       shim_remove_effect
/* 40374C E011834C 00000000 */   nop
/* 403750 E0118350 08046112 */  j         .LE0118448
/* 403754 E0118354 00000000 */   nop
.LE0118358:
/* 403758 E0118358 28620008 */  slti      $v0, $v1, 8
/* 40375C E011835C 10400002 */  beqz      $v0, .LE0118368
/* 403760 E0118360 00031140 */   sll      $v0, $v1, 5
/* 403764 E0118364 A4A20032 */  sh        $v0, 0x32($a1)
.LE0118368:
/* 403768 E0118368 8C820008 */  lw        $v0, 8($a0)
/* 40376C E011836C 18400036 */  blez      $v0, .LE0118448
/* 403770 E0118370 0000302D */   daddu    $a2, $zero, $zero
/* 403774 E0118374 24A50028 */  addiu     $a1, $a1, 0x28
/* 403778 E0118378 3C013FE0 */  lui       $at, 0x3fe0
/* 40377C E011837C 44816800 */  mtc1      $at, $f13
/* 403780 E0118380 44806000 */  mtc1      $zero, $f12
/* 403784 E0118384 44804000 */  mtc1      $zero, $f8
/* 403788 E0118388 3C01E012 */  lui       $at, %hi(D_E01187E0)
/* 40378C E011838C D42A87E0 */  ldc1      $f10, %lo(D_E01187E0)($at)
.LE0118390:
/* 403790 E0118390 C4A0FFEC */  lwc1      $f0, -0x14($a1)
/* 403794 E0118394 C4A6FFDC */  lwc1      $f6, -0x24($a1)
/* 403798 E0118398 46000021 */  cvt.d.s   $f0, $f0
/* 40379C E011839C 462C0001 */  sub.d     $f0, $f0, $f12
/* 4037A0 E01183A0 C4A2FFE8 */  lwc1      $f2, -0x18($a1)
/* 4037A4 E01183A4 C4A4FFF0 */  lwc1      $f4, -0x10($a1)
/* 4037A8 E01183A8 46023180 */  add.s     $f6, $f6, $f2
/* 4037AC E01183AC C4A2FFE0 */  lwc1      $f2, -0x20($a1)
/* 4037B0 E01183B0 46200020 */  cvt.s.d   $f0, $f0
/* 4037B4 E01183B4 46001080 */  add.s     $f2, $f2, $f0
/* 4037B8 E01183B8 E4A0FFEC */  swc1      $f0, -0x14($a1)
/* 4037BC E01183BC C4A0FFE4 */  lwc1      $f0, -0x1c($a1)
/* 4037C0 E01183C0 46040000 */  add.s     $f0, $f0, $f4
/* 4037C4 E01183C4 E4A6FFDC */  swc1      $f6, -0x24($a1)
/* 4037C8 E01183C8 4608103C */  c.lt.s    $f2, $f8
/* 4037CC E01183CC E4A2FFE0 */  swc1      $f2, -0x20($a1)
/* 4037D0 E01183D0 4500000C */  bc1f      .LE0118404
/* 4037D4 E01183D4 E4A0FFE4 */   swc1     $f0, -0x1c($a1)
/* 4037D8 E01183D8 C4A0FFEC */  lwc1      $f0, -0x14($a1)
/* 4037DC E01183DC 4608003C */  c.lt.s    $f0, $f8
/* 4037E0 E01183E0 00000000 */  nop
/* 4037E4 E01183E4 45000008 */  bc1f      .LE0118408
/* 4037E8 E01183E8 30C20001 */   andi     $v0, $a2, 1
/* 4037EC E01183EC 46000021 */  cvt.d.s   $f0, $f0
/* 4037F0 E01183F0 462A0002 */  mul.d     $f0, $f0, $f10
/* 4037F4 E01183F4 00000000 */  nop
/* 4037F8 E01183F8 E4A8FFE0 */  swc1      $f8, -0x20($a1)
/* 4037FC E01183FC 46200020 */  cvt.s.d   $f0, $f0
/* 403800 E0118400 E4A0FFEC */  swc1      $f0, -0x14($a1)
.LE0118404:
/* 403804 E0118404 30C20001 */  andi      $v0, $a2, 1
.LE0118408:
/* 403808 E0118408 00021040 */  sll       $v0, $v0, 1
/* 40380C E011840C 2442FFFF */  addiu     $v0, $v0, -1
/* 403810 E0118410 000218C0 */  sll       $v1, $v0, 3
/* 403814 E0118414 00621823 */  subu      $v1, $v1, $v0
/* 403818 E0118418 00031840 */  sll       $v1, $v1, 1
/* 40381C E011841C C4A20000 */  lwc1      $f2, ($a1)
/* 403820 E0118420 44830000 */  mtc1      $v1, $f0
/* 403824 E0118424 00000000 */  nop
/* 403828 E0118428 46800020 */  cvt.s.w   $f0, $f0
/* 40382C E011842C 46001080 */  add.s     $f2, $f2, $f0
/* 403830 E0118430 24C60001 */  addiu     $a2, $a2, 1
/* 403834 E0118434 E4A20000 */  swc1      $f2, ($a1)
/* 403838 E0118438 8C820008 */  lw        $v0, 8($a0)
/* 40383C E011843C 00C2102A */  slt       $v0, $a2, $v0
/* 403840 E0118440 1440FFD3 */  bnez      $v0, .LE0118390
/* 403844 E0118444 24A5003C */   addiu    $a1, $a1, 0x3c
.LE0118448:
/* 403848 E0118448 8FBF0010 */  lw        $ra, 0x10($sp)
/* 40384C E011844C 03E00008 */  jr        $ra
/* 403850 E0118450 27BD0018 */   addiu    $sp, $sp, 0x18