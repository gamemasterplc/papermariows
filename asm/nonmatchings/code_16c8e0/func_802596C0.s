.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802596C0
/* 187FA0 802596C0 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 187FA4 802596C4 AFB30024 */  sw        $s3, 0x24($sp)
/* 187FA8 802596C8 0080982D */  daddu     $s3, $a0, $zero
/* 187FAC 802596CC AFB40028 */  sw        $s4, 0x28($sp)
/* 187FB0 802596D0 00A0A02D */  daddu     $s4, $a1, $zero
/* 187FB4 802596D4 AFB5002C */  sw        $s5, 0x2c($sp)
/* 187FB8 802596D8 00C0A82D */  daddu     $s5, $a2, $zero
/* 187FBC 802596DC AFB00018 */  sw        $s0, 0x18($sp)
/* 187FC0 802596E0 241000FF */  addiu     $s0, $zero, 0xff
/* 187FC4 802596E4 AFB1001C */  sw        $s1, 0x1c($sp)
/* 187FC8 802596E8 AFBF0030 */  sw        $ra, 0x30($sp)
/* 187FCC 802596EC AFB20020 */  sw        $s2, 0x20($sp)
/* 187FD0 802596F0 86630098 */  lh        $v1, 0x98($s3)
/* 187FD4 802596F4 8E7200C0 */  lw        $s2, 0xc0($s3)
/* 187FD8 802596F8 0070102A */  slt       $v0, $v1, $s0
/* 187FDC 802596FC 10400003 */  beqz      $v0, .L8025970C
/* 187FE0 80259700 0000882D */   daddu    $s1, $zero, $zero
/* 187FE4 80259704 3C118000 */  lui       $s1, 0x8000
/* 187FE8 80259708 0060802D */  daddu     $s0, $v1, $zero
.L8025970C:
/* 187FEC 8025970C 8E620000 */  lw        $v0, ($s3)
/* 187FF0 80259710 30420100 */  andi      $v0, $v0, 0x100
/* 187FF4 80259714 1040000C */  beqz      $v0, .L80259748
/* 187FF8 80259718 3C038080 */   lui      $v1, 0x8080
/* 187FFC 8025971C 34638081 */  ori       $v1, $v1, 0x8081
/* 188000 80259720 00101100 */  sll       $v0, $s0, 4
/* 188004 80259724 00501023 */  subu      $v0, $v0, $s0
/* 188008 80259728 000210C0 */  sll       $v0, $v0, 3
/* 18800C 8025972C 00430018 */  mult      $v0, $v1
/* 188010 80259730 3C118000 */  lui       $s1, 0x8000
/* 188014 80259734 00004010 */  mfhi      $t0
/* 188018 80259738 01021821 */  addu      $v1, $t0, $v0
/* 18801C 8025973C 000319C3 */  sra       $v1, $v1, 7
/* 188020 80259740 000217C3 */  sra       $v0, $v0, 0x1f
/* 188024 80259744 00628023 */  subu      $s0, $v1, $v0
.L80259748:
/* 188028 80259748 92420768 */  lbu       $v0, 0x768($s2)
/* 18802C 8025974C 10400007 */  beqz      $v0, .L8025976C
/* 188030 80259750 0280282D */   daddu    $a1, $s4, $zero
/* 188034 80259754 0C096525 */  jal       func_80259494
/* 188038 80259758 0260202D */   daddu    $a0, $s3, $zero
/* 18803C 8025975C 0280282D */  daddu     $a1, $s4, $zero
/* 188040 80259760 0200302D */  daddu     $a2, $s0, $zero
/* 188044 80259764 080965DD */  j         .L80259774
/* 188048 80259768 2647076C */   addiu    $a3, $s2, 0x76c
.L8025976C:
/* 18804C 8025976C 0200302D */  daddu     $a2, $s0, $zero
/* 188050 80259770 264706D4 */  addiu     $a3, $s2, 0x6d4
.L80259774:
/* 188054 80259774 3C042000 */  lui       $a0, 0x2000
/* 188058 80259778 8E620084 */  lw        $v0, 0x84($s3)
/* 18805C 8025977C 02242025 */  or        $a0, $s1, $a0
/* 188060 80259780 AFB50010 */  sw        $s5, 0x10($sp)
/* 188064 80259784 0C0B78F6 */  jal       func_802DE3D8
/* 188068 80259788 00442025 */   or       $a0, $v0, $a0
/* 18806C 8025978C 8FBF0030 */  lw        $ra, 0x30($sp)
/* 188070 80259790 8FB5002C */  lw        $s5, 0x2c($sp)
/* 188074 80259794 8FB40028 */  lw        $s4, 0x28($sp)
/* 188078 80259798 8FB30024 */  lw        $s3, 0x24($sp)
/* 18807C 8025979C 8FB20020 */  lw        $s2, 0x20($sp)
/* 188080 802597A0 8FB1001C */  lw        $s1, 0x1c($sp)
/* 188084 802597A4 8FB00018 */  lw        $s0, 0x18($sp)
/* 188088 802597A8 03E00008 */  jr        $ra
/* 18808C 802597AC 27BD0038 */   addiu    $sp, $sp, 0x38
