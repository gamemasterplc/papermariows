.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024C180
/* 17AA60 8024C180 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 17AA64 8024C184 AFB00018 */  sw        $s0, 0x18($sp)
/* 17AA68 8024C188 3C10800B */  lui       $s0, 0x800b
/* 17AA6C 8024C18C 261022D8 */  addiu     $s0, $s0, 0x22d8
/* 17AA70 8024C190 AFBF001C */  sw        $ra, 0x1c($sp)
/* 17AA74 8024C194 F7BE0048 */  sdc1      $f30, 0x48($sp)
/* 17AA78 8024C198 F7BC0040 */  sdc1      $f28, 0x40($sp)
/* 17AA7C 8024C19C F7BA0038 */  sdc1      $f26, 0x38($sp)
/* 17AA80 8024C1A0 F7B80030 */  sdc1      $f24, 0x30($sp)
/* 17AA84 8024C1A4 F7B60028 */  sdc1      $f22, 0x28($sp)
/* 17AA88 8024C1A8 10A0003D */  beqz      $a1, .L8024C2A0
/* 17AA8C 8024C1AC F7B40020 */   sdc1     $f20, 0x20($sp)
/* 17AA90 8024C1B0 3C01420C */  lui       $at, 0x420c
/* 17AA94 8024C1B4 44810000 */  mtc1      $at, $f0
/* 17AA98 8024C1B8 C6060058 */  lwc1      $f6, 0x58($s0)
/* 17AA9C 8024C1BC 3C01802A */  lui       $at, 0x802a
/* 17AAA0 8024C1C0 E420F270 */  swc1      $f0, -0xd90($at)
/* 17AAA4 8024C1C4 3C014270 */  lui       $at, 0x4270
/* 17AAA8 8024C1C8 44810000 */  mtc1      $at, $f0
/* 17AAAC 8024C1CC 3C02802A */  lui       $v0, 0x802a
/* 17AAB0 8024C1D0 2442F274 */  addiu     $v0, $v0, -0xd8c
/* 17AAB4 8024C1D4 4600303C */  c.lt.s    $f6, $f0
/* 17AAB8 8024C1D8 00000000 */  nop       
/* 17AABC 8024C1DC 45000002 */  bc1f      .L8024C1E8
/* 17AAC0 8024C1E0 E4460000 */   swc1     $f6, ($v0)
/* 17AAC4 8024C1E4 E4400000 */  swc1      $f0, ($v0)
.L8024C1E8:
/* 17AAC8 8024C1E8 86040026 */  lh        $a0, 0x26($s0)
/* 17AACC 8024C1EC 8603001E */  lh        $v1, 0x1e($s0)
/* 17AAD0 8024C1F0 24020008 */  addiu     $v0, $zero, 8
/* 17AAD4 8024C1F4 3C01802A */  lui       $at, 0x802a
/* 17AAD8 8024C1F8 A422F284 */  sh        $v0, -0xd7c($at)
/* 17AADC 8024C1FC 86020022 */  lh        $v0, 0x22($s0)
/* 17AAE0 8024C200 44830000 */  mtc1      $v1, $f0
/* 17AAE4 8024C204 00000000 */  nop       
/* 17AAE8 8024C208 46800020 */  cvt.s.w   $f0, $f0
/* 17AAEC 8024C20C 86030024 */  lh        $v1, 0x24($s0)
/* 17AAF0 8024C210 3C01802A */  lui       $at, 0x802a
/* 17AAF4 8024C214 AC20F278 */  sw        $zero, -0xd88($at)
/* 17AAF8 8024C218 3C01802A */  lui       $at, 0x802a
/* 17AAFC 8024C21C A420F282 */  sh        $zero, -0xd7e($at)
/* 17AB00 8024C220 3C01802A */  lui       $at, 0x802a
/* 17AB04 8024C224 E420F28C */  swc1      $f0, -0xd74($at)
/* 17AB08 8024C228 44820000 */  mtc1      $v0, $f0
/* 17AB0C 8024C22C 00000000 */  nop       
/* 17AB10 8024C230 46800020 */  cvt.s.w   $f0, $f0
/* 17AB14 8024C234 3C01802A */  lui       $at, 0x802a
/* 17AB18 8024C238 E420F294 */  swc1      $f0, -0xd6c($at)
/* 17AB1C 8024C23C 44830000 */  mtc1      $v1, $f0
/* 17AB20 8024C240 00000000 */  nop       
/* 17AB24 8024C244 46800020 */  cvt.s.w   $f0, $f0
/* 17AB28 8024C248 3C01802A */  lui       $at, 0x802a
/* 17AB2C 8024C24C E420F290 */  swc1      $f0, -0xd70($at)
/* 17AB30 8024C250 04820001 */  bltzl     $a0, .L8024C258
/* 17AB34 8024C254 248400FF */   addiu    $a0, $a0, 0xff
.L8024C258:
/* 17AB38 8024C258 00041203 */  sra       $v0, $a0, 8
/* 17AB3C 8024C25C C6020054 */  lwc1      $f2, 0x54($s0)
/* 17AB40 8024C260 C604005C */  lwc1      $f4, 0x5c($s0)
/* 17AB44 8024C264 3C03802A */  lui       $v1, 0x802a
/* 17AB48 8024C268 9463F29E */  lhu       $v1, -0xd62($v1)
/* 17AB4C 8024C26C 44820000 */  mtc1      $v0, $f0
/* 17AB50 8024C270 00000000 */  nop       
/* 17AB54 8024C274 46800020 */  cvt.s.w   $f0, $f0
/* 17AB58 8024C278 3C01802A */  lui       $at, 0x802a
/* 17AB5C 8024C27C E420F298 */  swc1      $f0, -0xd68($at)
/* 17AB60 8024C280 3C01802A */  lui       $at, 0x802a
/* 17AB64 8024C284 E426F2AC */  swc1      $f6, -0xd54($at)
/* 17AB68 8024C288 3C01802A */  lui       $at, 0x802a
/* 17AB6C 8024C28C E422F2A8 */  swc1      $f2, -0xd58($at)
/* 17AB70 8024C290 3C01802A */  lui       $at, 0x802a
/* 17AB74 8024C294 E424F2B0 */  swc1      $f4, -0xd50($at)
/* 17AB78 8024C298 3C01802A */  lui       $at, 0x802a
/* 17AB7C 8024C29C A423F2A0 */  sh        $v1, -0xd60($at)
.L8024C2A0:
/* 17AB80 8024C2A0 3C01802A */  lui       $at, 0x802a
/* 17AB84 8024C2A4 C43CF274 */  lwc1      $f28, -0xd8c($at)
/* 17AB88 8024C2A8 3C01802A */  lui       $at, 0x802a
/* 17AB8C 8024C2AC C43AF270 */  lwc1      $f26, -0xd90($at)
/* 17AB90 8024C2B0 3C02802A */  lui       $v0, 0x802a
/* 17AB94 8024C2B4 8042F2A5 */  lb        $v0, -0xd5b($v0)
/* 17AB98 8024C2B8 3C01802A */  lui       $at, 0x802a
/* 17AB9C 8024C2BC C43EF278 */  lwc1      $f30, -0xd88($at)
/* 17ABA0 8024C2C0 14400027 */  bnez      $v0, .L8024C360
/* 17ABA4 8024C2C4 E7BC0010 */   swc1     $f28, 0x10($sp)
/* 17ABA8 8024C2C8 3C02802A */  lui       $v0, 0x802a
/* 17ABAC 8024C2CC 8442F29E */  lh        $v0, -0xd62($v0)
/* 17ABB0 8024C2D0 3C03802A */  lui       $v1, 0x802a
/* 17ABB4 8024C2D4 8463F2A0 */  lh        $v1, -0xd60($v1)
/* 17ABB8 8024C2D8 3C013F80 */  lui       $at, 0x3f80
/* 17ABBC 8024C2DC 4481C000 */  mtc1      $at, $f24
/* 17ABC0 8024C2E0 44822000 */  mtc1      $v0, $f4
/* 17ABC4 8024C2E4 00000000 */  nop       
/* 17ABC8 8024C2E8 46802120 */  cvt.s.w   $f4, $f4
/* 17ABCC 8024C2EC 44830000 */  mtc1      $v1, $f0
/* 17ABD0 8024C2F0 00000000 */  nop       
/* 17ABD4 8024C2F4 46800020 */  cvt.s.w   $f0, $f0
/* 17ABD8 8024C2F8 46002103 */  div.s     $f4, $f4, $f0
/* 17ABDC 8024C2FC 4604C301 */  sub.s     $f12, $f24, $f4
/* 17ABE0 8024C300 3C014049 */  lui       $at, 0x4049
/* 17ABE4 8024C304 34210FD0 */  ori       $at, $at, 0xfd0
/* 17ABE8 8024C308 4481B000 */  mtc1      $at, $f22
/* 17ABEC 8024C30C 00000000 */  nop       
/* 17ABF0 8024C310 46166302 */  mul.s     $f12, $f12, $f22
/* 17ABF4 8024C314 00000000 */  nop       
/* 17ABF8 8024C318 3C013F00 */  lui       $at, 0x3f00
/* 17ABFC 8024C31C 4481A000 */  mtc1      $at, $f20
/* 17AC00 8024C320 00000000 */  nop       
/* 17AC04 8024C324 46146302 */  mul.s     $f12, $f12, $f20
/* 17AC08 8024C328 0C00A85B */  jal       sin_rad
/* 17AC0C 8024C32C 00000000 */   nop      
/* 17AC10 8024C330 46160002 */  mul.s     $f0, $f0, $f22
/* 17AC14 8024C334 00000000 */  nop       
/* 17AC18 8024C338 46140302 */  mul.s     $f12, $f0, $f20
/* 17AC1C 8024C33C 0C00A85B */  jal       sin_rad
/* 17AC20 8024C340 00000000 */   nop      
/* 17AC24 8024C344 46160002 */  mul.s     $f0, $f0, $f22
/* 17AC28 8024C348 00000000 */  nop       
/* 17AC2C 8024C34C 46140302 */  mul.s     $f12, $f0, $f20
/* 17AC30 8024C350 0C00A85B */  jal       sin_rad
/* 17AC34 8024C354 00000000 */   nop      
/* 17AC38 8024C358 080930E3 */  j         .L8024C38C
/* 17AC3C 8024C35C 4600C101 */   sub.s    $f4, $f24, $f0
.L8024C360:
/* 17AC40 8024C360 3C02802A */  lui       $v0, 0x802a
/* 17AC44 8024C364 8442F29E */  lh        $v0, -0xd62($v0)
/* 17AC48 8024C368 3C03802A */  lui       $v1, 0x802a
/* 17AC4C 8024C36C 8463F2A0 */  lh        $v1, -0xd60($v1)
/* 17AC50 8024C370 44822000 */  mtc1      $v0, $f4
/* 17AC54 8024C374 00000000 */  nop       
/* 17AC58 8024C378 46802120 */  cvt.s.w   $f4, $f4
/* 17AC5C 8024C37C 44830000 */  mtc1      $v1, $f0
/* 17AC60 8024C380 00000000 */  nop       
/* 17AC64 8024C384 46800020 */  cvt.s.w   $f0, $f0
/* 17AC68 8024C388 46002103 */  div.s     $f4, $f4, $f0
.L8024C38C:
/* 17AC6C 8024C38C 3C01802A */  lui       $at, 0x802a
/* 17AC70 8024C390 C434F2A8 */  lwc1      $f20, -0xd58($at)
/* 17AC74 8024C394 4604A502 */  mul.s     $f20, $f20, $f4
/* 17AC78 8024C398 00000000 */  nop       
/* 17AC7C 8024C39C 3C01802A */  lui       $at, 0x802a
/* 17AC80 8024C3A0 C432F2AC */  lwc1      $f18, -0xd54($at)
/* 17AC84 8024C3A4 46049482 */  mul.s     $f18, $f18, $f4
/* 17AC88 8024C3A8 00000000 */  nop       
/* 17AC8C 8024C3AC 3C01802A */  lui       $at, 0x802a
/* 17AC90 8024C3B0 C430F2B0 */  lwc1      $f16, -0xd50($at)
/* 17AC94 8024C3B4 46048402 */  mul.s     $f16, $f16, $f4
/* 17AC98 8024C3B8 00000000 */  nop       
/* 17AC9C 8024C3BC 3C01802A */  lui       $at, 0x802a
/* 17ACA0 8024C3C0 C426F298 */  lwc1      $f6, -0xd68($at)
/* 17ACA4 8024C3C4 46043182 */  mul.s     $f6, $f6, $f4
/* 17ACA8 8024C3C8 00000000 */  nop       
/* 17ACAC 8024C3CC 3C01802A */  lui       $at, 0x802a
/* 17ACB0 8024C3D0 C42CF28C */  lwc1      $f12, -0xd74($at)
/* 17ACB4 8024C3D4 46046302 */  mul.s     $f12, $f12, $f4
/* 17ACB8 8024C3D8 00000000 */  nop       
/* 17ACBC 8024C3DC 3C01802A */  lui       $at, 0x802a
/* 17ACC0 8024C3E0 C428F290 */  lwc1      $f8, -0xd70($at)
/* 17ACC4 8024C3E4 46044202 */  mul.s     $f8, $f8, $f4
/* 17ACC8 8024C3E8 00000000 */  nop       
/* 17ACCC 8024C3EC 3C013F80 */  lui       $at, 0x3f80
/* 17ACD0 8024C3F0 44811000 */  mtc1      $at, $f2
/* 17ACD4 8024C3F4 00000000 */  nop       
/* 17ACD8 8024C3F8 46041081 */  sub.s     $f2, $f2, $f4
/* 17ACDC 8024C3FC 4602D682 */  mul.s     $f26, $f26, $f2
/* 17ACE0 8024C400 00000000 */  nop       
/* 17ACE4 8024C404 C7BC0010 */  lwc1      $f28, 0x10($sp)
/* 17ACE8 8024C408 4602E602 */  mul.s     $f24, $f28, $f2
/* 17ACEC 8024C40C 00000000 */  nop       
/* 17ACF0 8024C410 3C02802A */  lui       $v0, 0x802a
/* 17ACF4 8024C414 8442F286 */  lh        $v0, -0xd7a($v0)
/* 17ACF8 8024C418 44820000 */  mtc1      $v0, $f0
/* 17ACFC 8024C41C 00000000 */  nop       
/* 17AD00 8024C420 46800020 */  cvt.s.w   $f0, $f0
/* 17AD04 8024C424 46020002 */  mul.s     $f0, $f0, $f2
/* 17AD08 8024C428 00000000 */  nop       
/* 17AD0C 8024C42C 4602F582 */  mul.s     $f22, $f30, $f2
/* 17AD10 8024C430 00000000 */  nop       
/* 17AD14 8024C434 3C02802A */  lui       $v0, 0x802a
/* 17AD18 8024C438 8442F280 */  lh        $v0, -0xd80($v0)
/* 17AD1C 8024C43C 44827000 */  mtc1      $v0, $f14
/* 17AD20 8024C440 00000000 */  nop       
/* 17AD24 8024C444 468073A0 */  cvt.s.w   $f14, $f14
/* 17AD28 8024C448 46027382 */  mul.s     $f14, $f14, $f2
/* 17AD2C 8024C44C 00000000 */  nop       
/* 17AD30 8024C450 3C02802A */  lui       $v0, 0x802a
/* 17AD34 8024C454 8442F282 */  lh        $v0, -0xd7e($v0)
/* 17AD38 8024C458 44825000 */  mtc1      $v0, $f10
/* 17AD3C 8024C45C 00000000 */  nop       
/* 17AD40 8024C460 468052A0 */  cvt.s.w   $f10, $f10
/* 17AD44 8024C464 46025282 */  mul.s     $f10, $f10, $f2
/* 17AD48 8024C468 00000000 */  nop       
/* 17AD4C 8024C46C 46003180 */  add.s     $f6, $f6, $f0
/* 17AD50 8024C470 3C014380 */  lui       $at, 0x4380
/* 17AD54 8024C474 44810000 */  mtc1      $at, $f0
/* 17AD58 8024C478 00000000 */  nop       
/* 17AD5C 8024C47C 46003182 */  mul.s     $f6, $f6, $f0
/* 17AD60 8024C480 00000000 */  nop       
/* 17AD64 8024C484 3C01802A */  lui       $at, 0x802a
/* 17AD68 8024C488 C420F294 */  lwc1      $f0, -0xd6c($at)
/* 17AD6C 8024C48C 46040002 */  mul.s     $f0, $f0, $f4
/* 17AD70 8024C490 00000000 */  nop       
/* 17AD74 8024C494 461AA500 */  add.s     $f20, $f20, $f26
/* 17AD78 8024C498 46189480 */  add.s     $f18, $f18, $f24
/* 17AD7C 8024C49C 46168400 */  add.s     $f16, $f16, $f22
/* 17AD80 8024C4A0 460E6300 */  add.s     $f12, $f12, $f14
/* 17AD84 8024C4A4 3C04802A */  lui       $a0, 0x802a
/* 17AD88 8024C4A8 2484F29E */  addiu     $a0, $a0, -0xd62
/* 17AD8C 8024C4AC 3C02802A */  lui       $v0, 0x802a
/* 17AD90 8024C4B0 8442F284 */  lh        $v0, -0xd7c($v0)
/* 17AD94 8024C4B4 460A4200 */  add.s     $f8, $f8, $f10
/* 17AD98 8024C4B8 E6140054 */  swc1      $f20, 0x54($s0)
/* 17AD9C 8024C4BC 44822000 */  mtc1      $v0, $f4
/* 17ADA0 8024C4C0 00000000 */  nop       
/* 17ADA4 8024C4C4 46802120 */  cvt.s.w   $f4, $f4
/* 17ADA8 8024C4C8 46022102 */  mul.s     $f4, $f4, $f2
/* 17ADAC 8024C4CC 00000000 */  nop       
/* 17ADB0 8024C4D0 E6120058 */  swc1      $f18, 0x58($s0)
/* 17ADB4 8024C4D4 E610005C */  swc1      $f16, 0x5c($s0)
/* 17ADB8 8024C4D8 4600670D */  trunc.w.s $f28, $f12
/* 17ADBC 8024C4DC 4402E000 */  mfc1      $v0, $f28
/* 17ADC0 8024C4E0 00000000 */  nop       
/* 17ADC4 8024C4E4 A602001E */  sh        $v0, 0x1e($s0)
/* 17ADC8 8024C4E8 46040000 */  add.s     $f0, $f0, $f4
/* 17ADCC 8024C4EC 4600470D */  trunc.w.s $f28, $f8
/* 17ADD0 8024C4F0 4402E000 */  mfc1      $v0, $f28
/* 17ADD4 8024C4F4 00000000 */  nop       
/* 17ADD8 8024C4F8 A6020024 */  sh        $v0, 0x24($s0)
/* 17ADDC 8024C4FC 4600070D */  trunc.w.s $f28, $f0
/* 17ADE0 8024C500 4402E000 */  mfc1      $v0, $f28
/* 17ADE4 8024C504 00000000 */  nop       
/* 17ADE8 8024C508 A6020022 */  sh        $v0, 0x22($s0)
/* 17ADEC 8024C50C 4600370D */  trunc.w.s $f28, $f6
/* 17ADF0 8024C510 4402E000 */  mfc1      $v0, $f28
/* 17ADF4 8024C514 00000000 */  nop       
/* 17ADF8 8024C518 A6020026 */  sh        $v0, 0x26($s0)
/* 17ADFC 8024C51C 84820000 */  lh        $v0, ($a0)
/* 17AE00 8024C520 94830000 */  lhu       $v1, ($a0)
/* 17AE04 8024C524 14400006 */  bnez      $v0, .L8024C540
/* 17AE08 8024C528 2462FFFF */   addiu    $v0, $v1, -1
/* 17AE0C 8024C52C 24020001 */  addiu     $v0, $zero, 1
/* 17AE10 8024C530 3C01802A */  lui       $at, 0x802a
/* 17AE14 8024C534 A022F29C */  sb        $v0, -0xd64($at)
/* 17AE18 8024C538 08093151 */  j         .L8024C544
/* 17AE1C 8024C53C 00000000 */   nop      
.L8024C540:
/* 17AE20 8024C540 A4820000 */  sh        $v0, ($a0)
.L8024C544:
/* 17AE24 8024C544 8FBF001C */  lw        $ra, 0x1c($sp)
/* 17AE28 8024C548 8FB00018 */  lw        $s0, 0x18($sp)
/* 17AE2C 8024C54C D7BE0048 */  ldc1      $f30, 0x48($sp)
/* 17AE30 8024C550 D7BC0040 */  ldc1      $f28, 0x40($sp)
/* 17AE34 8024C554 D7BA0038 */  ldc1      $f26, 0x38($sp)
/* 17AE38 8024C558 D7B80030 */  ldc1      $f24, 0x30($sp)
/* 17AE3C 8024C55C D7B60028 */  ldc1      $f22, 0x28($sp)
/* 17AE40 8024C560 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 17AE44 8024C564 0000102D */  daddu     $v0, $zero, $zero
/* 17AE48 8024C568 03E00008 */  jr        $ra
/* 17AE4C 8024C56C 27BD0050 */   addiu    $sp, $sp, 0x50
