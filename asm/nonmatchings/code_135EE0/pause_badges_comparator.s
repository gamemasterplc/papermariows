.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel pause_badges_comparator
/* 13A320 80246FE0 84820000 */  lh        $v0, ($a0)
/* 13A324 80246FE4 14400003 */  bnez      $v0, .L80246FF4
/* 13A328 80246FE8 00021140 */   sll      $v0, $v0, 5
/* 13A32C 80246FEC 08091C00 */  j         .L80247000
/* 13A330 80246FF0 24037FFF */   addiu    $v1, $zero, 0x7fff
.L80246FF4:
/* 13A334 80246FF4 3C038008 */  lui       $v1, %hi(gItemTable+0x6)
/* 13A338 80246FF8 00621821 */  addu      $v1, $v1, $v0
/* 13A33C 80246FFC 946378E6 */  lhu       $v1, %lo(gItemTable+0x6)($v1)
.L80247000:
/* 13A340 80247000 84A20000 */  lh        $v0, ($a1)
/* 13A344 80247004 14400003 */  bnez      $v0, .L80247014
/* 13A348 80247008 00021140 */   sll      $v0, $v0, 5
/* 13A34C 8024700C 08091C08 */  j         .L80247020
/* 13A350 80247010 24047FFF */   addiu    $a0, $zero, 0x7fff
.L80247014:
/* 13A354 80247014 3C048008 */  lui       $a0, %hi(gItemTable+0x6)
/* 13A358 80247018 00822021 */  addu      $a0, $a0, $v0
/* 13A35C 8024701C 948478E6 */  lhu       $a0, %lo(gItemTable+0x6)($a0)
.L80247020:
/* 13A360 80247020 00031400 */  sll       $v0, $v1, 0x10
/* 13A364 80247024 00021C03 */  sra       $v1, $v0, 0x10
/* 13A368 80247028 00041400 */  sll       $v0, $a0, 0x10
/* 13A36C 8024702C 00022403 */  sra       $a0, $v0, 0x10
/* 13A370 80247030 10640005 */  beq       $v1, $a0, .L80247048
/* 13A374 80247034 0064182A */   slt      $v1, $v1, $a0
/* 13A378 80247038 14600004 */  bnez      $v1, .L8024704C
/* 13A37C 8024703C 2402FFFF */   addiu    $v0, $zero, -1
/* 13A380 80247040 03E00008 */  jr        $ra
/* 13A384 80247044 24020001 */   addiu    $v0, $zero, 1
.L80247048:
/* 13A388 80247048 0000102D */  daddu     $v0, $zero, $zero
.L8024704C:
/* 13A38C 8024704C 03E00008 */  jr        $ra
/* 13A390 80247050 00000000 */   nop      
