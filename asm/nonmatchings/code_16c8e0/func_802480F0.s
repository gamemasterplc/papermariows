.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802480F0
/* 1769D0 802480F0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1769D4 802480F4 3C038028 */  lui       $v1, 0x8028
/* 1769D8 802480F8 846309F6 */  lh        $v1, 0x9f6($v1)
/* 1769DC 802480FC 2402FFFF */  addiu     $v0, $zero, -1
/* 1769E0 80248100 14620020 */  bne       $v1, $v0, .L80248184
/* 1769E4 80248104 AFBF0010 */   sw       $ra, 0x10($sp)
/* 1769E8 80248108 3C02802A */  lui       $v0, 0x802a
/* 1769EC 8024810C 8C42F254 */  lw        $v0, -0xdac($v0)
/* 1769F0 80248110 1040001C */  beqz      $v0, .L80248184
/* 1769F4 80248114 00000000 */   nop      
/* 1769F8 80248118 3C048028 */  lui       $a0, 0x8028
/* 1769FC 8024811C 24840A30 */  addiu     $a0, $a0, 0xa30
/* 176A00 80248120 8C830000 */  lw        $v1, ($a0)
/* 176A04 80248124 14600004 */  bnez      $v1, .L80248138
/* 176A08 80248128 00000000 */   nop      
/* 176A0C 8024812C 3C05BF80 */  lui       $a1, 0xbf80
/* 176A10 80248130 0809205F */  j         .L8024817C
/* 176A14 80248134 240400FF */   addiu    $a0, $zero, 0xff
.L80248138:
/* 176A18 80248138 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* 176A1C 8024813C 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* 176A20 80248140 904200AA */  lbu       $v0, 0xaa($v0)
/* 176A24 80248144 30420001 */  andi      $v0, $v0, 1
/* 176A28 80248148 14400002 */  bnez      $v0, .L80248154
/* 176A2C 8024814C 2462FFCE */   addiu    $v0, $v1, -0x32
/* 176A30 80248150 2462FFEC */  addiu     $v0, $v1, -0x14
.L80248154:
/* 176A34 80248154 AC820000 */  sw        $v0, ($a0)
/* 176A38 80248158 3C038028 */  lui       $v1, 0x8028
/* 176A3C 8024815C 24630A30 */  addiu     $v1, $v1, 0xa30
/* 176A40 80248160 8C620000 */  lw        $v0, ($v1)
/* 176A44 80248164 04420001 */  bltzl     $v0, .L8024816C
/* 176A48 80248168 AC600000 */   sw       $zero, ($v1)
.L8024816C:
/* 176A4C 8024816C C4600000 */  lwc1      $f0, ($v1)
/* 176A50 80248170 46800020 */  cvt.s.w   $f0, $f0
/* 176A54 80248174 44050000 */  mfc1      $a1, $f0
/* 176A58 80248178 0000202D */  daddu     $a0, $zero, $zero
.L8024817C:
/* 176A5C 8024817C 0C04DF62 */  jal       func_80137D88
/* 176A60 80248180 00000000 */   nop      
.L80248184:
/* 176A64 80248184 8FBF0010 */  lw        $ra, 0x10($sp)
/* 176A68 80248188 03E00008 */  jr        $ra
/* 176A6C 8024818C 27BD0018 */   addiu    $sp, $sp, 0x18
