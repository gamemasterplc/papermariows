.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel disable_actor_blur
/* 182E3C 8025455C 8C8301F4 */  lw    $v1, 0x1f4($a0)
/* 182E40 80254560 8C620094 */  lw    $v0, 0x94($v1)
/* 182E44 80254564 1040000F */  beqz  $v0, .L802545A4
/* 182E48 80254568 00000000 */   nop   
/* 182E4C 8025456C 8C620000 */  lw    $v0, ($v1)
/* 182E50 80254570 30420002 */  andi  $v0, $v0, 2
/* 182E54 80254574 1440000B */  bnez  $v0, .L802545A4
/* 182E58 80254578 00000000 */   nop   
/* 182E5C 8025457C 8C6400C0 */  lw    $a0, 0xc0($v1)
/* 182E60 80254580 808207DB */  lb    $v0, 0x7db($a0)
/* 182E64 80254584 908307DB */  lbu   $v1, 0x7db($a0)
/* 182E68 80254588 10400006 */  beqz  $v0, .L802545A4
/* 182E6C 8025458C 2462FFFF */   addiu $v0, $v1, -1
/* 182E70 80254590 A08207DB */  sb    $v0, 0x7db($a0)
/* 182E74 80254594 00021600 */  sll   $v0, $v0, 0x18
/* 182E78 80254598 14400002 */  bnez  $v0, .L802545A4
/* 182E7C 8025459C 24020014 */   addiu $v0, $zero, 0x14
/* 182E80 802545A0 A08208AC */  sb    $v0, 0x8ac($a0)
.L802545A4:
/* 182E84 802545A4 03E00008 */  jr    $ra
/* 182E88 802545A8 00000000 */   nop   
