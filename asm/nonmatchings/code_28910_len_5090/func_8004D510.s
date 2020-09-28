.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8004D510
/* 28910 8004D510 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 28914 8004D514 AFB10014 */  sw        $s1, 0x14($sp)
/* 28918 8004D518 0080882D */  daddu     $s1, $a0, $zero
/* 2891C 8004D51C AFB3001C */  sw        $s3, 0x1c($sp)
/* 28920 8004D520 0000982D */  daddu     $s3, $zero, $zero
/* 28924 8004D524 2406FFFF */  addiu     $a2, $zero, -1
/* 28928 8004D528 AFBF0020 */  sw        $ra, 0x20($sp)
/* 2892C 8004D52C AFB20018 */  sw        $s2, 0x18($sp)
/* 28930 8004D530 AFB00010 */  sw        $s0, 0x10($sp)
/* 28934 8004D534 8E220014 */  lw        $v0, 0x14($s1)
/* 28938 8004D538 92230258 */  lbu       $v1, 0x258($s1)
/* 2893C 8004D53C 24420001 */  addiu     $v0, $v0, 1
/* 28940 8004D540 1060008D */  beqz      $v1, .L8004D778
/* 28944 8004D544 AE220014 */   sw       $v0, 0x14($s1)
/* 28948 8004D548 2C620008 */  sltiu     $v0, $v1, 8
/* 2894C 8004D54C 10400023 */  beqz      $v0, .L8004D5DC
/* 28950 8004D550 0263102B */   sltu     $v0, $s3, $v1
/* 28954 8004D554 92240259 */  lbu       $a0, 0x259($s1)
/* 28958 8004D558 10400015 */  beqz      $v0, .L8004D5B0
/* 2895C 8004D55C 0260282D */   daddu    $a1, $s3, $zero
/* 28960 8004D560 0060382D */  daddu     $a3, $v1, $zero
/* 28964 8004D564 308200FF */  andi      $v0, $a0, 0xff
.L8004D568:
/* 28968 8004D568 00021080 */  sll       $v0, $v0, 2
/* 2896C 8004D56C 02221021 */  addu      $v0, $s1, $v0
/* 28970 8004D570 8C430238 */  lw        $v1, 0x238($v0)
/* 28974 8004D574 10600009 */  beqz      $v1, .L8004D59C
/* 28978 8004D578 2C620010 */   sltiu    $v0, $v1, 0x10
/* 2897C 8004D57C 10400003 */  beqz      $v0, .L8004D58C
/* 28980 8004D580 24840001 */   addiu    $a0, $a0, 1
/* 28984 8004D584 30660003 */  andi      $a2, $v1, 3
/* 28988 8004D588 00039882 */  srl       $s3, $v1, 2
.L8004D58C:
/* 2898C 8004D58C 308200FF */  andi      $v0, $a0, 0xff
/* 28990 8004D590 2C420008 */  sltiu     $v0, $v0, 8
/* 28994 8004D594 50400001 */  beql      $v0, $zero, .L8004D59C
/* 28998 8004D598 0000202D */   daddu    $a0, $zero, $zero
.L8004D59C:
/* 2899C 8004D59C 24A50001 */  addiu     $a1, $a1, 1
/* 289A0 8004D5A0 30A200FF */  andi      $v0, $a1, 0xff
/* 289A4 8004D5A4 0047102B */  sltu      $v0, $v0, $a3
/* 289A8 8004D5A8 1440FFEF */  bnez      $v0, .L8004D568
/* 289AC 8004D5AC 308200FF */   andi     $v0, $a0, 0xff
.L8004D5B0:
/* 289B0 8004D5B0 9223025A */  lbu       $v1, 0x25a($s1)
/* 289B4 8004D5B4 92220259 */  lbu       $v0, 0x259($s1)
/* 289B8 8004D5B8 00622023 */  subu      $a0, $v1, $v0
/* 289BC 8004D5BC 04820001 */  bltzl     $a0, .L8004D5C4
/* 289C0 8004D5C0 24840008 */   addiu    $a0, $a0, 8
.L8004D5C4:
/* 289C4 8004D5C4 92220258 */  lbu       $v0, 0x258($s1)
/* 289C8 8004D5C8 9223025A */  lbu       $v1, 0x25a($s1)
/* 289CC 8004D5CC 00441023 */  subu      $v0, $v0, $a0
/* 289D0 8004D5D0 A2220258 */  sb        $v0, 0x258($s1)
/* 289D4 8004D5D4 08013578 */  j         .L8004D5E0
/* 289D8 8004D5D8 A2230259 */   sb       $v1, 0x259($s1)
.L8004D5DC:
/* 289DC 8004D5DC A2200258 */  sb        $zero, 0x258($s1)
.L8004D5E0:
/* 289E0 8004D5E0 2402FFFF */  addiu     $v0, $zero, -1
/* 289E4 8004D5E4 10C20064 */  beq       $a2, $v0, .L8004D778
/* 289E8 8004D5E8 00000000 */   nop      
/* 289EC 8004D5EC 10C00058 */  beqz      $a2, .L8004D750
/* 289F0 8004D5F0 00000000 */   nop      
/* 289F4 8004D5F4 96220058 */  lhu       $v0, 0x58($s1)
/* 289F8 8004D5F8 10C2005F */  beq       $a2, $v0, .L8004D778
/* 289FC 8004D5FC 3C030002 */   lui      $v1, 2
/* 28A00 8004D600 3463625A */  ori       $v1, $v1, 0x625a
/* 28A04 8004D604 30C200FF */  andi      $v0, $a2, 0xff
/* 28A08 8004D608 A6220058 */  sh        $v0, 0x58($s1)
/* 28A0C 8004D60C A622005A */  sh        $v0, 0x5a($s1)
/* 28A10 8004D610 24020003 */  addiu     $v0, $zero, 3
/* 28A14 8004D614 A2220221 */  sb        $v0, 0x221($s1)
/* 28A18 8004D618 24020002 */  addiu     $v0, $zero, 2
/* 28A1C 8004D61C 14C20004 */  bne       $a2, $v0, .L8004D630
/* 28A20 8004D620 AE230008 */   sw       $v1, 8($s1)
/* 28A24 8004D624 8E220000 */  lw        $v0, ($s1)
/* 28A28 8004D628 0801358E */  j         .L8004D638
/* 28A2C 8004D62C 8C500060 */   lw       $s0, 0x60($v0)
.L8004D630:
/* 28A30 8004D630 8E220000 */  lw        $v0, ($s1)
/* 28A34 8004D634 8C50005C */  lw        $s0, 0x5c($v0)
.L8004D638:
/* 28A38 8004D638 8E220074 */  lw        $v0, 0x74($s1)
/* 28A3C 8004D63C 0220202D */  daddu     $a0, $s1, $zero
/* 28A40 8004D640 AE300064 */  sw        $s0, 0x64($s1)
/* 28A44 8004D644 90420000 */  lbu       $v0, ($v0)
/* 28A48 8004D648 3C050002 */  lui       $a1, 2
/* 28A4C 8004D64C 30420007 */  andi      $v0, $v0, 7
/* 28A50 8004D650 3C068008 */  lui       $a2, 0x8008
/* 28A54 8004D654 00C23021 */  addu      $a2, $a2, $v0
/* 28A58 8004D658 90C68510 */  lbu       $a2, -0x7af0($a2)
/* 28A5C 8004D65C 0C013A20 */  jal       func_8004E880
/* 28A60 8004D660 34A5625A */   ori      $a1, $a1, 0x625a
/* 28A64 8004D664 26120010 */  addiu     $s2, $s0, 0x10
/* 28A68 8004D668 00131040 */  sll       $v0, $s3, 1
/* 28A6C 8004D66C 02421021 */  addu      $v0, $s2, $v0
/* 28A70 8004D670 94420004 */  lhu       $v0, 4($v0)
/* 28A74 8004D674 14400003 */  bnez      $v0, .L8004D684
/* 28A78 8004D678 00021080 */   sll      $v0, $v0, 2
/* 28A7C 8004D67C 96020014 */  lhu       $v0, 0x14($s0)
/* 28A80 8004D680 00021080 */  sll       $v0, $v0, 2
.L8004D684:
/* 28A84 8004D684 00501021 */  addu      $v0, $v0, $s0
/* 28A88 8004D688 AE22006C */  sw        $v0, 0x6c($s1)
/* 28A8C 8004D68C AE220068 */  sw        $v0, 0x68($s1)
/* 28A90 8004D690 9602001C */  lhu       $v0, 0x1c($s0)
/* 28A94 8004D694 10400020 */  beqz      $v0, .L8004D718
/* 28A98 8004D698 00021080 */   sll      $v0, $v0, 2
/* 28A9C 8004D69C 8E230064 */  lw        $v1, 0x64($s1)
/* 28AA0 8004D6A0 00431021 */  addu      $v0, $v0, $v1
/* 28AA4 8004D6A4 AE220078 */  sw        $v0, 0x78($s1)
/* 28AA8 8004D6A8 9202001F */  lbu       $v0, 0x1f($s0)
/* 28AAC 8004D6AC A222021C */  sb        $v0, 0x21c($s1)
/* 28AB0 8004D6B0 304200FF */  andi      $v0, $v0, 0xff
/* 28AB4 8004D6B4 1040000C */  beqz      $v0, .L8004D6E8
/* 28AB8 8004D6B8 0000182D */   daddu    $v1, $zero, $zero
/* 28ABC 8004D6BC 0220282D */  daddu     $a1, $s1, $zero
/* 28AC0 8004D6C0 0060202D */  daddu     $a0, $v1, $zero
.L8004D6C4:
/* 28AC4 8004D6C4 8E220078 */  lw        $v0, 0x78($s1)
/* 28AC8 8004D6C8 24630001 */  addiu     $v1, $v1, 1
/* 28ACC 8004D6CC 00441021 */  addu      $v0, $v0, $a0
/* 28AD0 8004D6D0 ACA20080 */  sw        $v0, 0x80($a1)
/* 28AD4 8004D6D4 24A50004 */  addiu     $a1, $a1, 4
/* 28AD8 8004D6D8 9222021C */  lbu       $v0, 0x21c($s1)
/* 28ADC 8004D6DC 0062102B */  sltu      $v0, $v1, $v0
/* 28AE0 8004D6E0 1440FFF8 */  bnez      $v0, .L8004D6C4
/* 28AE4 8004D6E4 2484000C */   addiu    $a0, $a0, 0xc
.L8004D6E8:
/* 28AE8 8004D6E8 2C62000C */  sltiu     $v0, $v1, 0xc
/* 28AEC 8004D6EC 1040000C */  beqz      $v0, .L8004D720
/* 28AF0 8004D6F0 00031080 */   sll      $v0, $v1, 2
/* 28AF4 8004D6F4 00512021 */  addu      $a0, $v0, $s1
.L8004D6F8:
/* 28AF8 8004D6F8 8E220080 */  lw        $v0, 0x80($s1)
/* 28AFC 8004D6FC 24630001 */  addiu     $v1, $v1, 1
/* 28B00 8004D700 AC820080 */  sw        $v0, 0x80($a0)
/* 28B04 8004D704 2C62000C */  sltiu     $v0, $v1, 0xc
/* 28B08 8004D708 1440FFFB */  bnez      $v0, .L8004D6F8
/* 28B0C 8004D70C 24840004 */   addiu    $a0, $a0, 4
/* 28B10 8004D710 080135C8 */  j         .L8004D720
/* 28B14 8004D714 00000000 */   nop      
.L8004D718:
/* 28B18 8004D718 AE200078 */  sw        $zero, 0x78($s1)
/* 28B1C 8004D71C A220021C */  sb        $zero, 0x21c($s1)
.L8004D720:
/* 28B20 8004D720 96420010 */  lhu       $v0, 0x10($s2)
/* 28B24 8004D724 10400007 */  beqz      $v0, .L8004D744
/* 28B28 8004D728 00021080 */   sll      $v0, $v0, 2
/* 28B2C 8004D72C 8E230064 */  lw        $v1, 0x64($s1)
/* 28B30 8004D730 00431021 */  addu      $v0, $v0, $v1
/* 28B34 8004D734 AE22007C */  sw        $v0, 0x7c($s1)
/* 28B38 8004D738 92420013 */  lbu       $v0, 0x13($s2)
/* 28B3C 8004D73C 080135DE */  j         .L8004D778
/* 28B40 8004D740 A222021D */   sb       $v0, 0x21d($s1)
.L8004D744:
/* 28B44 8004D744 AE20007C */  sw        $zero, 0x7c($s1)
/* 28B48 8004D748 080135DE */  j         .L8004D778
/* 28B4C 8004D74C A220021D */   sb       $zero, 0x21d($s1)
.L8004D750:
/* 28B50 8004D750 96220058 */  lhu       $v0, 0x58($s1)
/* 28B54 8004D754 10400006 */  beqz      $v0, .L8004D770
/* 28B58 8004D758 24020004 */   addiu    $v0, $zero, 4
/* 28B5C 8004D75C A2220221 */  sb        $v0, 0x221($s1)
/* 28B60 8004D760 24020001 */  addiu     $v0, $zero, 1
/* 28B64 8004D764 AE220010 */  sw        $v0, 0x10($s1)
/* 28B68 8004D768 080135DE */  j         .L8004D778
/* 28B6C 8004D76C AE220008 */   sw       $v0, 8($s1)
.L8004D770:
/* 28B70 8004D770 0C0136AA */  jal       func_8004DAA8
/* 28B74 8004D774 0220202D */   daddu    $a0, $s1, $zero
.L8004D778:
/* 28B78 8004D778 8FBF0020 */  lw        $ra, 0x20($sp)
/* 28B7C 8004D77C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 28B80 8004D780 8FB20018 */  lw        $s2, 0x18($sp)
/* 28B84 8004D784 8FB10014 */  lw        $s1, 0x14($sp)
/* 28B88 8004D788 8FB00010 */  lw        $s0, 0x10($sp)
/* 28B8C 8004D78C 03E00008 */  jr        $ra
/* 28B90 8004D790 27BD0028 */   addiu    $sp, $sp, 0x28
