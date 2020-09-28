.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel update_lerp_battle
/* 1A99BC 8027B0DC 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 1A99C0 8027B0E0 F7B80030 */  sdc1      $f24, 0x30($sp)
/* 1A99C4 8027B0E4 4485C000 */  mtc1      $a1, $f24
/* 1A99C8 8027B0E8 F7BA0038 */  sdc1      $f26, 0x38($sp)
/* 1A99CC 8027B0EC 4486D000 */  mtc1      $a2, $f26
/* 1A99D0 8027B0F0 AFB10014 */  sw        $s1, 0x14($sp)
/* 1A99D4 8027B0F4 AFB00010 */  sw        $s0, 0x10($sp)
/* 1A99D8 8027B0F8 8FB00050 */  lw        $s0, 0x50($sp)
/* 1A99DC 8027B0FC 2C82000D */  sltiu     $v0, $a0, 0xd
/* 1A99E0 8027B100 AFBF0018 */  sw        $ra, 0x18($sp)
/* 1A99E4 8027B104 F7B60028 */  sdc1      $f22, 0x28($sp)
/* 1A99E8 8027B108 F7B40020 */  sdc1      $f20, 0x20($sp)
/* 1A99EC 8027B10C 1040013B */  beqz      $v0, .L8027B5FC
/* 1A99F0 8027B110 00E0882D */   daddu    $s1, $a3, $zero
/* 1A99F4 8027B114 00041080 */  sll       $v0, $a0, 2
/* 1A99F8 8027B118 3C01802A */  lui       $at, 0x802a
/* 1A99FC 8027B11C 00220821 */  addu      $at, $at, $v0
/* 1A9A00 8027B120 8C22D9A8 */  lw        $v0, -0x2658($at)
/* 1A9A04 8027B124 00400008 */  jr        $v0
/* 1A9A08 8027B128 00000000 */   nop      
/* 1A9A0C 8027B12C 4618D001 */  sub.s     $f0, $f26, $f24
/* 1A9A10 8027B130 44911000 */  mtc1      $s1, $f2
/* 1A9A14 8027B134 00000000 */  nop       
/* 1A9A18 8027B138 468010A0 */  cvt.s.w   $f2, $f2
/* 1A9A1C 8027B13C 46020002 */  mul.s     $f0, $f0, $f2
/* 1A9A20 8027B140 00000000 */  nop       
/* 1A9A24 8027B144 44901000 */  mtc1      $s0, $f2
/* 1A9A28 8027B148 00000000 */  nop       
/* 1A9A2C 8027B14C 468010A0 */  cvt.s.w   $f2, $f2
/* 1A9A30 8027B150 0809EC80 */  j         .L8027B200
/* 1A9A34 8027B154 46020003 */   div.s    $f0, $f0, $f2
/* 1A9A38 8027B158 02310018 */  mult      $s1, $s1
/* 1A9A3C 8027B15C 00004012 */  mflo      $t0
/* 1A9A40 8027B160 00000000 */  nop       
/* 1A9A44 8027B164 0809EC75 */  j         .L8027B1D4
/* 1A9A48 8027B168 02100018 */   mult     $s0, $s0
/* 1A9A4C 8027B16C 02310018 */  mult      $s1, $s1
/* 1A9A50 8027B170 00004012 */  mflo      $t0
/* 1A9A54 8027B174 00000000 */  nop       
/* 1A9A58 8027B178 0809EC6D */  j         .L8027B1B4
/* 1A9A5C 8027B17C 02100018 */   mult     $s0, $s0
/* 1A9A60 8027B180 02310018 */  mult      $s1, $s1
/* 1A9A64 8027B184 00004012 */  mflo      $t0
/* 1A9A68 8027B188 00000000 */  nop       
/* 1A9A6C 8027B18C 00000000 */  nop       
/* 1A9A70 8027B190 02100018 */  mult      $s0, $s0
/* 1A9A74 8027B194 00001012 */  mflo      $v0
/* 1A9A78 8027B198 00000000 */  nop       
/* 1A9A7C 8027B19C 00000000 */  nop       
/* 1A9A80 8027B1A0 01110018 */  mult      $t0, $s1
/* 1A9A84 8027B1A4 00004012 */  mflo      $t0
/* 1A9A88 8027B1A8 00000000 */  nop       
/* 1A9A8C 8027B1AC 00000000 */  nop       
/* 1A9A90 8027B1B0 00500018 */  mult      $v0, $s0
.L8027B1B4:
/* 1A9A94 8027B1B4 00001012 */  mflo      $v0
/* 1A9A98 8027B1B8 00000000 */  nop       
/* 1A9A9C 8027B1BC 00000000 */  nop       
/* 1A9AA0 8027B1C0 01110018 */  mult      $t0, $s1
/* 1A9AA4 8027B1C4 00004012 */  mflo      $t0
/* 1A9AA8 8027B1C8 00000000 */  nop       
/* 1A9AAC 8027B1CC 00000000 */  nop       
/* 1A9AB0 8027B1D0 00500018 */  mult      $v0, $s0
.L8027B1D4:
/* 1A9AB4 8027B1D4 4618D081 */  sub.s     $f2, $f26, $f24
/* 1A9AB8 8027B1D8 44880000 */  mtc1      $t0, $f0
/* 1A9ABC 8027B1DC 00000000 */  nop       
/* 1A9AC0 8027B1E0 46800020 */  cvt.s.w   $f0, $f0
/* 1A9AC4 8027B1E4 46020002 */  mul.s     $f0, $f0, $f2
/* 1A9AC8 8027B1E8 00000000 */  nop       
/* 1A9ACC 8027B1EC 00001012 */  mflo      $v0
/* 1A9AD0 8027B1F0 44821000 */  mtc1      $v0, $f2
/* 1A9AD4 8027B1F4 00000000 */  nop       
/* 1A9AD8 8027B1F8 468010A0 */  cvt.s.w   $f2, $f2
/* 1A9ADC 8027B1FC 46020003 */  div.s     $f0, $f0, $f2
.L8027B200:
/* 1A9AE0 8027B200 0809ED80 */  j         .L8027B600
/* 1A9AE4 8027B204 4600C000 */   add.s    $f0, $f24, $f0
/* 1A9AE8 8027B208 44916000 */  mtc1      $s1, $f12
/* 1A9AEC 8027B20C 00000000 */  nop       
/* 1A9AF0 8027B210 46806320 */  cvt.s.w   $f12, $f12
/* 1A9AF4 8027B214 4490B000 */  mtc1      $s0, $f22
/* 1A9AF8 8027B218 00000000 */  nop       
/* 1A9AFC 8027B21C 4680B5A0 */  cvt.s.w   $f22, $f22
/* 1A9B00 8027B220 46166303 */  div.s     $f12, $f12, $f22
/* 1A9B04 8027B224 3C01802A */  lui       $at, 0x802a
/* 1A9B08 8027B228 D420D9E0 */  ldc1      $f0, -0x2620($at)
/* 1A9B0C 8027B22C 46006321 */  cvt.d.s   $f12, $f12
/* 1A9B10 8027B230 46206302 */  mul.d     $f12, $f12, $f0
/* 1A9B14 8027B234 00000000 */  nop       
/* 1A9B18 8027B238 3C014010 */  lui       $at, 0x4010
/* 1A9B1C 8027B23C 44810800 */  mtc1      $at, $f1
/* 1A9B20 8027B240 44800000 */  mtc1      $zero, $f0
/* 1A9B24 8027B244 00000000 */  nop       
/* 1A9B28 8027B248 46206302 */  mul.d     $f12, $f12, $f0
/* 1A9B2C 8027B24C 00000000 */  nop       
/* 1A9B30 8027B250 0809ECAF */  j         .L8027B2BC
/* 1A9B34 8027B254 4618D501 */   sub.s    $f20, $f26, $f24
/* 1A9B38 8027B258 02310018 */  mult      $s1, $s1
/* 1A9B3C 8027B25C 4490B000 */  mtc1      $s0, $f22
/* 1A9B40 8027B260 00000000 */  nop       
/* 1A9B44 8027B264 4680B5A0 */  cvt.s.w   $f22, $f22
/* 1A9B48 8027B268 3C01802A */  lui       $at, 0x802a
/* 1A9B4C 8027B26C D420D9E8 */  ldc1      $f0, -0x2618($at)
/* 1A9B50 8027B270 00001812 */  mflo      $v1
/* 1A9B54 8027B274 44836000 */  mtc1      $v1, $f12
/* 1A9B58 8027B278 00000000 */  nop       
/* 1A9B5C 8027B27C 46806320 */  cvt.s.w   $f12, $f12
/* 1A9B60 8027B280 46166303 */  div.s     $f12, $f12, $f22
/* 1A9B64 8027B284 46006321 */  cvt.d.s   $f12, $f12
/* 1A9B68 8027B288 46206302 */  mul.d     $f12, $f12, $f0
/* 1A9B6C 8027B28C 00000000 */  nop       
/* 1A9B70 8027B290 3C014010 */  lui       $at, 0x4010
/* 1A9B74 8027B294 44810800 */  mtc1      $at, $f1
/* 1A9B78 8027B298 44800000 */  mtc1      $zero, $f0
/* 1A9B7C 8027B29C 00000000 */  nop       
/* 1A9B80 8027B2A0 46206302 */  mul.d     $f12, $f12, $f0
/* 1A9B84 8027B2A4 00000000 */  nop       
/* 1A9B88 8027B2A8 3C01402E */  lui       $at, 0x402e
/* 1A9B8C 8027B2AC 44810800 */  mtc1      $at, $f1
/* 1A9B90 8027B2B0 44800000 */  mtc1      $zero, $f0
/* 1A9B94 8027B2B4 4618D501 */  sub.s     $f20, $f26, $f24
/* 1A9B98 8027B2B8 46206303 */  div.d     $f12, $f12, $f0
.L8027B2BC:
/* 1A9B9C 8027B2BC 0C00A874 */  jal       cos_rad
/* 1A9BA0 8027B2C0 46206320 */   cvt.s.d  $f12, $f12
/* 1A9BA4 8027B2C4 4600A502 */  mul.s     $f20, $f20, $f0
/* 1A9BA8 8027B2C8 00000000 */  nop       
/* 1A9BAC 8027B2CC 4616B582 */  mul.s     $f22, $f22, $f22
/* 1A9BB0 8027B2D0 00000000 */  nop       
/* 1A9BB4 8027B2D4 02111023 */  subu      $v0, $s0, $s1
/* 1A9BB8 8027B2D8 44820000 */  mtc1      $v0, $f0
/* 1A9BBC 8027B2DC 00000000 */  nop       
/* 1A9BC0 8027B2E0 46800020 */  cvt.s.w   $f0, $f0
/* 1A9BC4 8027B2E4 4600A502 */  mul.s     $f20, $f20, $f0
/* 1A9BC8 8027B2E8 00000000 */  nop       
/* 1A9BCC 8027B2EC 4600A502 */  mul.s     $f20, $f20, $f0
/* 1A9BD0 8027B2F0 00000000 */  nop       
/* 1A9BD4 8027B2F4 4616A503 */  div.s     $f20, $f20, $f22
/* 1A9BD8 8027B2F8 0809ED80 */  j         .L8027B600
/* 1A9BDC 8027B2FC 4614D001 */   sub.s    $f0, $f26, $f20
/* 1A9BE0 8027B300 02113823 */  subu      $a3, $s0, $s1
/* 1A9BE4 8027B304 00E70018 */  mult      $a3, $a3
/* 1A9BE8 8027B308 4618D101 */  sub.s     $f4, $f26, $f24
/* 1A9BEC 8027B30C 00001812 */  mflo      $v1
/* 1A9BF0 8027B310 44830000 */  mtc1      $v1, $f0
/* 1A9BF4 8027B314 00000000 */  nop       
/* 1A9BF8 8027B318 46800020 */  cvt.s.w   $f0, $f0
/* 1A9BFC 8027B31C 46040002 */  mul.s     $f0, $f0, $f4
/* 1A9C00 8027B320 00000000 */  nop       
/* 1A9C04 8027B324 02100018 */  mult      $s0, $s0
/* 1A9C08 8027B328 00001812 */  mflo      $v1
/* 1A9C0C 8027B32C 44831000 */  mtc1      $v1, $f2
/* 1A9C10 8027B330 00000000 */  nop       
/* 1A9C14 8027B334 468010A0 */  cvt.s.w   $f2, $f2
/* 1A9C18 8027B338 0809ECFB */  j         .L8027B3EC
/* 1A9C1C 8027B33C 4604C100 */   add.s    $f4, $f24, $f4
/* 1A9C20 8027B340 02113823 */  subu      $a3, $s0, $s1
/* 1A9C24 8027B344 00E70018 */  mult      $a3, $a3
/* 1A9C28 8027B348 00001012 */  mflo      $v0
/* 1A9C2C 8027B34C 00000000 */  nop       
/* 1A9C30 8027B350 00000000 */  nop       
/* 1A9C34 8027B354 00470018 */  mult      $v0, $a3
/* 1A9C38 8027B358 00004012 */  mflo      $t0
/* 1A9C3C 8027B35C 00000000 */  nop       
/* 1A9C40 8027B360 0809ECEC */  j         .L8027B3B0
/* 1A9C44 8027B364 02100018 */   mult     $s0, $s0
/* 1A9C48 8027B368 02113823 */  subu      $a3, $s0, $s1
/* 1A9C4C 8027B36C 00E70018 */  mult      $a3, $a3
/* 1A9C50 8027B370 00001012 */  mflo      $v0
/* 1A9C54 8027B374 00000000 */  nop       
/* 1A9C58 8027B378 00000000 */  nop       
/* 1A9C5C 8027B37C 00470018 */  mult      $v0, $a3
/* 1A9C60 8027B380 00004012 */  mflo      $t0
/* 1A9C64 8027B384 00000000 */  nop       
/* 1A9C68 8027B388 00000000 */  nop       
/* 1A9C6C 8027B38C 02100018 */  mult      $s0, $s0
/* 1A9C70 8027B390 00001012 */  mflo      $v0
/* 1A9C74 8027B394 00000000 */  nop       
/* 1A9C78 8027B398 00000000 */  nop       
/* 1A9C7C 8027B39C 01070018 */  mult      $t0, $a3
/* 1A9C80 8027B3A0 00004012 */  mflo      $t0
/* 1A9C84 8027B3A4 00000000 */  nop       
/* 1A9C88 8027B3A8 00000000 */  nop       
/* 1A9C8C 8027B3AC 00500018 */  mult      $v0, $s0
.L8027B3B0:
/* 1A9C90 8027B3B0 4618D101 */  sub.s     $f4, $f26, $f24
/* 1A9C94 8027B3B4 44880000 */  mtc1      $t0, $f0
/* 1A9C98 8027B3B8 00000000 */  nop       
/* 1A9C9C 8027B3BC 46800020 */  cvt.s.w   $f0, $f0
/* 1A9CA0 8027B3C0 46040002 */  mul.s     $f0, $f0, $f4
/* 1A9CA4 8027B3C4 00000000 */  nop       
/* 1A9CA8 8027B3C8 00001012 */  mflo      $v0
/* 1A9CAC 8027B3CC 00000000 */  nop       
/* 1A9CB0 8027B3D0 00000000 */  nop       
/* 1A9CB4 8027B3D4 00500018 */  mult      $v0, $s0
/* 1A9CB8 8027B3D8 4604C100 */  add.s     $f4, $f24, $f4
/* 1A9CBC 8027B3DC 00001012 */  mflo      $v0
/* 1A9CC0 8027B3E0 44821000 */  mtc1      $v0, $f2
/* 1A9CC4 8027B3E4 00000000 */  nop       
/* 1A9CC8 8027B3E8 468010A0 */  cvt.s.w   $f2, $f2
.L8027B3EC:
/* 1A9CCC 8027B3EC 46020003 */  div.s     $f0, $f0, $f2
/* 1A9CD0 8027B3F0 0809ED80 */  j         .L8027B600
/* 1A9CD4 8027B3F4 46002001 */   sub.s    $f0, $f4, $f0
/* 1A9CD8 8027B3F8 02310018 */  mult      $s1, $s1
/* 1A9CDC 8027B3FC 4490A000 */  mtc1      $s0, $f20
/* 1A9CE0 8027B400 00000000 */  nop       
/* 1A9CE4 8027B404 4680A520 */  cvt.s.w   $f20, $f20
/* 1A9CE8 8027B408 3C01802A */  lui       $at, 0x802a
/* 1A9CEC 8027B40C D420D9F0 */  ldc1      $f0, -0x2610($at)
/* 1A9CF0 8027B410 00001812 */  mflo      $v1
/* 1A9CF4 8027B414 44836000 */  mtc1      $v1, $f12
/* 1A9CF8 8027B418 00000000 */  nop       
/* 1A9CFC 8027B41C 46806320 */  cvt.s.w   $f12, $f12
/* 1A9D00 8027B420 46146303 */  div.s     $f12, $f12, $f20
/* 1A9D04 8027B424 46006321 */  cvt.d.s   $f12, $f12
/* 1A9D08 8027B428 46206302 */  mul.d     $f12, $f12, $f0
/* 1A9D0C 8027B42C 00000000 */  nop       
/* 1A9D10 8027B430 3C014010 */  lui       $at, 0x4010
/* 1A9D14 8027B434 44810800 */  mtc1      $at, $f1
/* 1A9D18 8027B438 44800000 */  mtc1      $zero, $f0
/* 1A9D1C 8027B43C 00000000 */  nop       
/* 1A9D20 8027B440 46206302 */  mul.d     $f12, $f12, $f0
/* 1A9D24 8027B444 00000000 */  nop       
/* 1A9D28 8027B448 3C014044 */  lui       $at, 0x4044
/* 1A9D2C 8027B44C 44810800 */  mtc1      $at, $f1
/* 1A9D30 8027B450 44800000 */  mtc1      $zero, $f0
/* 1A9D34 8027B454 00000000 */  nop       
/* 1A9D38 8027B458 46206303 */  div.d     $f12, $f12, $f0
/* 1A9D3C 8027B45C 0C00A874 */  jal       cos_rad
/* 1A9D40 8027B460 46206320 */   cvt.s.d  $f12, $f12
/* 1A9D44 8027B464 02111023 */  subu      $v0, $s0, $s1
/* 1A9D48 8027B468 44821000 */  mtc1      $v0, $f2
/* 1A9D4C 8027B46C 00000000 */  nop       
/* 1A9D50 8027B470 468010A0 */  cvt.s.w   $f2, $f2
/* 1A9D54 8027B474 46020002 */  mul.s     $f0, $f0, $f2
/* 1A9D58 8027B478 00000000 */  nop       
/* 1A9D5C 8027B47C 4614A502 */  mul.s     $f20, $f20, $f20
/* 1A9D60 8027B480 00000000 */  nop       
/* 1A9D64 8027B484 46020002 */  mul.s     $f0, $f0, $f2
/* 1A9D68 8027B488 00000000 */  nop       
/* 1A9D6C 8027B48C 44801000 */  mtc1      $zero, $f2
/* 1A9D70 8027B490 46140103 */  div.s     $f4, $f0, $f20
/* 1A9D74 8027B494 4602203C */  c.lt.s    $f4, $f2
/* 1A9D78 8027B498 00000000 */  nop       
/* 1A9D7C 8027B49C 45030001 */  bc1tl     .L8027B4A4
/* 1A9D80 8027B4A0 46002107 */   neg.s    $f4, $f4
.L8027B4A4:
/* 1A9D84 8027B4A4 4618D001 */  sub.s     $f0, $f26, $f24
/* 1A9D88 8027B4A8 46040002 */  mul.s     $f0, $f0, $f4
/* 1A9D8C 8027B4AC 00000000 */  nop       
/* 1A9D90 8027B4B0 0809ED80 */  j         .L8027B600
/* 1A9D94 8027B4B4 4600D001 */   sub.s    $f0, $f26, $f0
/* 1A9D98 8027B4B8 44916000 */  mtc1      $s1, $f12
/* 1A9D9C 8027B4BC 00000000 */  nop       
/* 1A9DA0 8027B4C0 46806320 */  cvt.s.w   $f12, $f12
/* 1A9DA4 8027B4C4 3C01802A */  lui       $at, 0x802a
/* 1A9DA8 8027B4C8 D420D9F8 */  ldc1      $f0, -0x2608($at)
/* 1A9DAC 8027B4CC 46006321 */  cvt.d.s   $f12, $f12
/* 1A9DB0 8027B4D0 46206302 */  mul.d     $f12, $f12, $f0
/* 1A9DB4 8027B4D4 00000000 */  nop       
/* 1A9DB8 8027B4D8 4600C5A1 */  cvt.d.s   $f22, $f24
/* 1A9DBC 8027B4DC 4618D501 */  sub.s     $f20, $f26, $f24
/* 1A9DC0 8027B4E0 44900000 */  mtc1      $s0, $f0
/* 1A9DC4 8027B4E4 00000000 */  nop       
/* 1A9DC8 8027B4E8 46800020 */  cvt.s.w   $f0, $f0
/* 1A9DCC 8027B4EC 46000021 */  cvt.d.s   $f0, $f0
/* 1A9DD0 8027B4F0 4600A521 */  cvt.d.s   $f20, $f20
/* 1A9DD4 8027B4F4 46206303 */  div.d     $f12, $f12, $f0
/* 1A9DD8 8027B4F8 0C00A874 */  jal       cos_rad
/* 1A9DDC 8027B4FC 46206320 */   cvt.s.d  $f12, $f12
/* 1A9DE0 8027B500 3C013FF0 */  lui       $at, 0x3ff0
/* 1A9DE4 8027B504 44811800 */  mtc1      $at, $f3
/* 1A9DE8 8027B508 44801000 */  mtc1      $zero, $f2
/* 1A9DEC 8027B50C 46000021 */  cvt.d.s   $f0, $f0
/* 1A9DF0 8027B510 46201081 */  sub.d     $f2, $f2, $f0
/* 1A9DF4 8027B514 4622A502 */  mul.d     $f20, $f20, $f2
/* 1A9DF8 8027B518 00000000 */  nop       
/* 1A9DFC 8027B51C 3C013FE0 */  lui       $at, 0x3fe0
/* 1A9E00 8027B520 44810800 */  mtc1      $at, $f1
/* 1A9E04 8027B524 44800000 */  mtc1      $zero, $f0
/* 1A9E08 8027B528 00000000 */  nop       
/* 1A9E0C 8027B52C 4620A502 */  mul.d     $f20, $f20, $f0
/* 1A9E10 8027B530 00000000 */  nop       
/* 1A9E14 8027B534 0809ED7D */  j         .L8027B5F4
/* 1A9E18 8027B538 4634B580 */   add.d    $f22, $f22, $f20
/* 1A9E1C 8027B53C 44916000 */  mtc1      $s1, $f12
/* 1A9E20 8027B540 00000000 */  nop       
/* 1A9E24 8027B544 46806320 */  cvt.s.w   $f12, $f12
/* 1A9E28 8027B548 3C01802A */  lui       $at, 0x802a
/* 1A9E2C 8027B54C D420DA00 */  ldc1      $f0, -0x2600($at)
/* 1A9E30 8027B550 46006321 */  cvt.d.s   $f12, $f12
/* 1A9E34 8027B554 46206302 */  mul.d     $f12, $f12, $f0
/* 1A9E38 8027B558 00000000 */  nop       
/* 1A9E3C 8027B55C 4618D501 */  sub.s     $f20, $f26, $f24
/* 1A9E40 8027B560 44900000 */  mtc1      $s0, $f0
/* 1A9E44 8027B564 00000000 */  nop       
/* 1A9E48 8027B568 46800020 */  cvt.s.w   $f0, $f0
/* 1A9E4C 8027B56C 46000021 */  cvt.d.s   $f0, $f0
/* 1A9E50 8027B570 46206303 */  div.d     $f12, $f12, $f0
/* 1A9E54 8027B574 0C00A85B */  jal       sin_rad
/* 1A9E58 8027B578 46206320 */   cvt.s.d  $f12, $f12
/* 1A9E5C 8027B57C 4600A502 */  mul.s     $f20, $f20, $f0
/* 1A9E60 8027B580 00000000 */  nop       
/* 1A9E64 8027B584 0809ED80 */  j         .L8027B600
/* 1A9E68 8027B588 4614C000 */   add.s    $f0, $f24, $f20
/* 1A9E6C 8027B58C 44916000 */  mtc1      $s1, $f12
/* 1A9E70 8027B590 00000000 */  nop       
/* 1A9E74 8027B594 46806320 */  cvt.s.w   $f12, $f12
/* 1A9E78 8027B598 3C01802A */  lui       $at, 0x802a
/* 1A9E7C 8027B59C D420DA08 */  ldc1      $f0, -0x25f8($at)
/* 1A9E80 8027B5A0 46006321 */  cvt.d.s   $f12, $f12
/* 1A9E84 8027B5A4 46206302 */  mul.d     $f12, $f12, $f0
/* 1A9E88 8027B5A8 00000000 */  nop       
/* 1A9E8C 8027B5AC 4600C5A1 */  cvt.d.s   $f22, $f24
/* 1A9E90 8027B5B0 4618D501 */  sub.s     $f20, $f26, $f24
/* 1A9E94 8027B5B4 44900000 */  mtc1      $s0, $f0
/* 1A9E98 8027B5B8 00000000 */  nop       
/* 1A9E9C 8027B5BC 46800020 */  cvt.s.w   $f0, $f0
/* 1A9EA0 8027B5C0 46000021 */  cvt.d.s   $f0, $f0
/* 1A9EA4 8027B5C4 4600A521 */  cvt.d.s   $f20, $f20
/* 1A9EA8 8027B5C8 46206303 */  div.d     $f12, $f12, $f0
/* 1A9EAC 8027B5CC 0C00A874 */  jal       cos_rad
/* 1A9EB0 8027B5D0 46206320 */   cvt.s.d  $f12, $f12
/* 1A9EB4 8027B5D4 3C013FF0 */  lui       $at, 0x3ff0
/* 1A9EB8 8027B5D8 44811800 */  mtc1      $at, $f3
/* 1A9EBC 8027B5DC 44801000 */  mtc1      $zero, $f2
/* 1A9EC0 8027B5E0 46000021 */  cvt.d.s   $f0, $f0
/* 1A9EC4 8027B5E4 46201081 */  sub.d     $f2, $f2, $f0
/* 1A9EC8 8027B5E8 4622A502 */  mul.d     $f20, $f20, $f2
/* 1A9ECC 8027B5EC 00000000 */  nop       
/* 1A9ED0 8027B5F0 4634B580 */  add.d     $f22, $f22, $f20
.L8027B5F4:
/* 1A9ED4 8027B5F4 0809ED80 */  j         .L8027B600
/* 1A9ED8 8027B5F8 4620B020 */   cvt.s.d  $f0, $f22
.L8027B5FC:
/* 1A9EDC 8027B5FC 44800000 */  mtc1      $zero, $f0
.L8027B600:
/* 1A9EE0 8027B600 8FBF0018 */  lw        $ra, 0x18($sp)
/* 1A9EE4 8027B604 8FB10014 */  lw        $s1, 0x14($sp)
/* 1A9EE8 8027B608 8FB00010 */  lw        $s0, 0x10($sp)
/* 1A9EEC 8027B60C D7BA0038 */  ldc1      $f26, 0x38($sp)
/* 1A9EF0 8027B610 D7B80030 */  ldc1      $f24, 0x30($sp)
/* 1A9EF4 8027B614 D7B60028 */  ldc1      $f22, 0x28($sp)
/* 1A9EF8 8027B618 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 1A9EFC 8027B61C 03E00008 */  jr        $ra
/* 1A9F00 8027B620 27BD0040 */   addiu    $sp, $sp, 0x40
