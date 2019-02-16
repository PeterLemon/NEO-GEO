// Sound Driver Version 3.0 by MAKOTO
arch ng.apu
output "202-m1.m1", create
fill 131072 // Set Z80 Music ROM Size

macro seek(variable offset) {
  origin offset
  base offset
}

seek($0000) // Entry Point Of Code
include "LIB/NEO-GEO_Z80.INC" // Include NEO-GEO Z80 Definitions

// WRAM Variables
constant WRAMF800($F800)
constant WRAMF801($F801)
constant WRAMF802($F802)

constant WRAMF804($F804)

constant WRAMF806($F806)

constant WRAMF811($F811)

constant WRAMF81C($F81C)

constant WRAMF827($F827)

constant WRAMF837($F837)

constant WRAMF877($F877)

constant WRAMF917($F917)

constant WRAMF927($F927)

constant WRAMF937($F937)

constant WRAMF947($F947)

constant WRAMF957($F957)

constant WRAMF967($F967)

constant WRAMF9A7($F9A7)

constant WRAMFA57($FA57)

constant WRAMFA67($FA67)

constant WRAMFA77($FA77)

constant WRAMFA88($FA88)
constant WRAMFA89($FA89)
constant WRAMFA8A($FA8A)

constant WRAMFA8C($FA8C)

constant WRAMFA8E($FA8E)
constant WRAMFA8F($FA8F)
constant WRAMFA90($FA90)
constant WRAMFA91($FA91)
constant WRAMFA92($FA92)

constant WRAMFA94($FA94)
constant WRAMFA95($FA95)
constant WRAMFA96($FA96)

constant WRAMFA98($FA98)
constant WRAMFA99($FA99)
constant WRAMFA9A($FA9A)

constant WRAMFA9C($FA9C)
constant WRAMFA9D($FA9D)
constant WRAMFA9E($FA9E)
constant WRAMFA9F($FA9F)
constant WRAMFAA0($FAA0)
constant WRAMFAA1($FAA1)
constant WRAMFAA2($FAA2)
constant WRAMFAA3($FAA3)
constant WRAMFAA4($FAA4)

constant WRAMFAA9($FAA9)
constant WRAMFAAA($FAAA)

constant WRAMFAAC($FAAC)

constant WRAMFAAE($FAAE)

constant WRAMFAB0($FAB0)

constant WRAMFAB6($FAB6)
constant WRAMFAB7($FAB7)
constant WRAMFAB8($FAB8)
constant WRAMFAB9($FAB9)

constant WRAMFABB($FABB)

constant WRAMFABE($FABE)

constant WRAMFAC6($FAC6)

constant WRAMFACE($FACE)

constant WRAMFADE($FADE)

constant WRAMFB35($FB35)

constant WRAMFB63($FB63)
constant WRAMFB64($FB64)
constant WRAMFB65($FB65)

constant WRAMFBEA($FBEA)
constant WRAMFBEB($FBEB)
constant WRAMFBEC($FBEC)

constant WRAMFBF3($FBF3)

constant WRAMFBF6($FBF6)

constant WRAMFBFD($FBFD)

constant WRAMFC00($FC00)

constant WRAMFC07($FC07)

constant WRAMFC0A($FC0A)
constant WRAMFC0B($FC0B)

constant WRAMFC34($FC34)
constant WRAMFC35($FC35)
constant WRAMFC36($FC36)
constant WRAMFC37($FC37)
constant WRAMFC38($FC38)
constant WRAMFC39($FC39)
constant WRAMFC3A($FC3A)
constant WRAMFC3B($FC3B)
constant WRAMFC3C($FC3C)
constant WRAMFC3D($FC3D)

constant WRAMFC41($FC41)
constant WRAMFC42($FC42)

constant WRAMFC44($FC44)

constant WRAMFC46($FC46)

constant WRAMFC53($FC53)

constant WRAMFC83($FC83)

constant WRAMFC8E($FC8E)

constant WRAMFCD3($FCD3)

constant WRAMFCDD($FCDD)

constant WRAMFCEC($FCEC)

constant WRAMFCFC($FCFC)

constant WRAMFD0C($FD0C)

constant WRAMFD1C($FD1C)

constant WRAMFD2C($FD2C)
constant WRAMFD2D($FD2D)

constant WRAMFD3C($FD3C)
constant WRAMFD3D($FD3D)

constant WRAMFD4C($FD4C)
constant WRAMFD4D($FD4D)

constant WRAMFD5C($FD5C)
constant WRAMFD5D($FD5D)

constant WRAMFD6C($FD6C)
constant WRAMFD6D($FD6D)

constant WRAMFD7C($FD7C)
constant WRAMFD7D($FD7D)

constant WRAMFD8C($FD8C)

constant WRAMFD9C($FD9C)

constant WRAMFDAC($FDAC)

constant WRAMFDBC($FDBC)

constant WRAMFDCC($FDCC)

constant WRAMFDDC($FDDC)

constant WRAMFDEC($FDEC)

constant WRAMFDFC($FDFC)

constant WRAMFE0C($FE0C)

constant WRAMFE1C($FE1C)
constant WRAMFE1D($FE1D)
constant WRAMFE1E($FE1E)

constant WRAMFE21($FE21)
constant WRAMFE22($FE22)
constant WRAMFE23($FE23)
constant WRAMFE24($FE24)

constant WRAMFE27($FE27)

constant WRAMFE29($FE29)

constant WRAMFE2C($FE2C)
constant WRAMFE2D($FE2D)

constant WRAMFE2F($FE2F)
constant WRAMFE30($FE30)
constant WRAMFE31($FE31)
constant WRAMFE32($FE32)
constant WRAMFE33($FE33)
constant WRAMFE34($FE34)
constant WRAMFE35($FE35)
constant WRAMFE36($FE36)
constant WRAMFE37($FE37)
constant WRAMFE38($FE38)
constant WRAMFE39($FE39)
constant WRAMFE3A($FE3A)
constant WRAMFE3B($FE3B)
constant WRAMFE3C($FE3C)
constant WRAMFE3D($FE3D)
constant WRAMFE3E($FE3E)
constant WRAMFE3F($FE3F)
constant WRAMFE40($FE40)

constant WRAMFE42($FE42)
constant WRAMFE43($FE43)
constant WRAMFE44($FE44)

constant WRAMFE46($FE46)
constant WRAMFE47($FE47)
constant WRAMFE48($FE48)
constant WRAMFE49($FE49)

constant WRAMFE4A($FE4A)

constant WRAMFE8A($FE8A)

constant WRAMFE97($FE97)

constant WRAMFE99($FE99)

constant WRAMFEB0($FEB0)
constant WRAMFEB1($FEB1)
constant WRAMFEB2($FEB2)
constant WRAMFEB3($FEB3)
constant WRAMFEB4($FEB4)
constant WRAMFEB5($FEB5)
constant WRAMFEB6($FEB6)
constant WRAMFEB7($FEB7)
constant WRAMFEB8($FEB8)

constant WRAMFEC0($FEC0)

constant WRAMFED0($FED0)

constant WRAMFEE0($FEE0)

constant WRAMFEF0($FEF0)

constant WRAMFFFD($FFFD)
constant WRAMFFFE($FFFE)

// Vector Table
Label0000:
  di // Disable Interrupts
  jp Start

  seek($0008)
  jp Label1807

  seek($0010)
  jp Label1808

  seek($0018)
  jp Label2B18
  ret

  seek($0020)
  jp Label2B23

  seek($0028)
  jp Label0C6D

  seek($0038)
  di // Disable Interrupts
  jp Label2096

  seek($003E)
  db "Ver 3.0 by MAKOTO.04/03/10 to SK" // Version Number / Credit / Date / Company

  seek($0066)
  Label0066:
    push af
    push bc
    push de
    push hl
    in a,($00)
    ld b,a
    cp $01
    jp z,Label0CD1
    cp $03
    jp z,Label0CDF
    cp $10
    jp z,Label0CED
    or a
    jp z,Label0096
    ld a,(WRAMFEB1)
    and $3F
    ld e,a
    ld d,$00
    ld hl,WRAMFE4A
    add hl,de
    ld (hl),b
    ld hl,WRAMFEB1
    inc (hl)
    ld a,b
    out ($0C),a
    out ($00),a

  Label0096:
    pop hl
    pop de
    pop bc
    pop af
    retn

  seek($00AC)
  Label00AC:
    sub l
    ld bc,$01A2
  
Start:
  ld sp,$FFFC // Set Stack Pointer
  im 1 // Set Interrupt Mode 1

  xor a // A = 0
  ld (WRAMFEB5),a
  ld (WRAMF800),a
  ld hl,WRAMF800
  ld de,WRAMF801
  ld bc,$06B2
  ldir
  dec a
  ld (WRAMFE30),a
  ld (WRAMFE34),a
  ld (WRAMFE35),a
  ld a,$03
  ld (WRAMFE29),a
  ld (WRAMFEB6),a
  call Label0B05
  call Label0B37
  call Label0B1E
  ld de,$2730
  call Label2B18
  ld de,$1001
  call Label2B18
  ld de,$1C00
  call Label2B18
  ld a,$24
  in a,($08)
  ld a,$09
  in a,($0A)
  ld hl,$F345
  ld de,$C345
  ld bc,$2020

  Label0105:
    ld a,(de)
    cp (hl)
    jr nz,Label010E
    inc de
    or (hl)
    jr nz,Label010E
    dec c

    Label010E:
      inc hl
      djnz Label0105

  ld a,l
  xor e
  ld (WRAMFEB3),a
  ld a,c
  or a
  jr nz,Label011E
  dec a
  ld (WRAMFEB3),a

  Label011E:
    ld a,$03
    call Label2AF2
    ld a,$0A
    ld (WRAMFE22),a
    call Label0190
    call Label01AA
    call Label17DD
    out ($08),a

    Label0133:
      ei // Enable Interrupts
      ld a,(WRAMFEB1)
      ld b,a
      ld a,(WRAMFEB0)
      cp b
      jr z,Label0133

      ld hl,WRAMFEB0
      inc (hl)
      and $3F
      ld e,a
      ld d,$00
      ld hl,WRAMFE4A
      add hl,de
      ld a,(hl)
      ld (hl),d
      ld (WRAMFE3D),a
      ld (WRAMFEB4),a
      call Label01BB
      ei // Enable Interrupts

      ld hl,WRAMFEB4
      ld a,(WRAMFEB7)
      or a
      jr nz,Label016C
      ld a,(WRAMFEB5)
      or a
      jr z,Label0169
      ld a,(WRAMFEB3)

      Label0169:
        add a,(hl)
        jr Label0176

      Label016C:
        ld a,(WRAMFEB3)
        or a
        ld a,(hl)
        jr nz,Label0176
        ld a,(WRAMFEB7)

      Label0176:
        ld (WRAMFEB8),a
        ld (WRAMFEC0),a
        ld (WRAMFED0),a
        ld (WRAMFEE0),a
        ld (WRAMFEF0),a
        call Label01F3
        ld a,(WRAMFED0)
        out ($0C),a
        jp Label0133
  
  Label0190:
    ld a,(WRAMFEB3)
    or a
    ret nz
    dec c
    ld a,$1E
    in a,($09)
    ld hl,Label0EDB+1
    ld de,$E000
    add hl,de
    jp (hl)
    sbc hl,de
    ld a,l
    or h
    ld (WRAMFEB3),a
    ret

  Label01AA:
    ld a,$1E
    in a,($08)
    ld a,$0E
    in a,($09)
    ld a,$06
    in a,($0A)
    ld a,$02
    in a,($0B)
    ret

  Label01BB:
    ld e,a
    ld d,$00
    ld hl,$2C54
    add hl,de
    ld a,(hl)
    ld (WRAMFEB7),a
    ld hl,Label4DC9
    add hl,de
    ld a,(hl)
    ld (WRAMFE3F),a
    or a
    ret z
    dec a
    jp z,Label0C6D
    dec a
    jp z,Label01EC
    dec a
    jp z,Label0299
    dec a
    jp z,Label05D6
    dec a
    jp z,Label09DC

  Label01E4:
    xor a // A = 0
    ld (WRAMFE3F),a
    ld (WRAMFE3D),a
    ret

  Label01EC:
    xor a // A = 0
    ld (WRAMFE27),a
    jp Label10AC

  Label01F3:
    ld hl,WRAMFEB6
    ld a,(hl)
    add a,$02
    ld (hl),a
    dec hl
    ld a,$00
    adc a,$00
    ld (hl),a
    ret

  Label0201:
    ld hl,WRAMFEB4
    ld a,(WRAMFEB7)
    or a
    jr nz,Label0216
    ld a,(WRAMFEB5)
    or a
    jr z,Label0213
    ld a,(WRAMFEB3)
  
  Label0213:
    add a,(hl)
    jr Label0220

  Label0216:
    ld a,(WRAMFEB3)
    or a
    ld a,(hl)
    jr nz,Label0220
    ld a,(WRAMFEB7)

  Label0220:
    ld (WRAMFEB8),a
    ld (WRAMFEC0),a
    ld (WRAMFED0),a
    ld (WRAMFEE0),a
    ld (WRAMFEF0),a
    call Label01F3
    ld a,(WRAMFEB8)
    out ($0C),a

    Label237:
      ld a,(WRAMFEB1)
      ld b,a
      ld a,(WRAMFEB0)
      cp b
      jr z,Label237
      
      ld hl,WRAMFEB0
      inc (hl)
      and $3F
      ld d,$00
      ld e,a
      ld hl,WRAMFE4A
      add hl,de
      ld a,(hl)
      ld (hl),d
      ld (WRAMFE3D),a
      ld (WRAMFEB4),a
      ld e,a
      ld d,$00
      ld hl,$2C54
      add hl,de
      ld a,(hl)
      ld (WRAMFEB7),a
      ld hl,WRAMFEB4
      ld a,(WRAMFEB7)
      or a
      jr nz,Label0276

      ld a,(WRAMFEB5)
      or a
      jr z,Label0273
      ld a,(WRAMFEB3)

      Label0273:
        add a,(hl)
        jr Label0280

      Label0276:
        ld a,(WRAMFEB3)
        or a
        ld a,(hl)
        jr nz,Label0280
        ld a,(WRAMFEB7)

      Label0280:
        ld (WRAMFEB8),a
        ld (WRAMFEC0),a
        ld (WRAMFED0),a
        ld (WRAMFEE0),a
        ld (WRAMFEF0),a
        call Label01F3

        ld a,(WRAMFED0)
        out ($0C),a
        ld a,e
        ret

  Label0299:
    di // Disable Interrupts
    ld a,(WRAMFE3D)
    ld (WRAMFE3E),a
    call Label043C

  Label02A3:
    ld e,a
    ex af,af'
    ld a,e
    ex af,af'
    push bc
    ld a,(Label4F49)
    ld b,a
    ld a,(WRAMFE3E)
    cp b
    pop bc
    jr z,Label02B8
    ld a,(WRAMFE35)
    or a
    ret nz

  Label02B8:
    ld a,e
    cp $F0
    jp nc,Label04EE
    call Label0447
    xor a // A = 0
    ld (WRAMFEB2),a
    call Label0483
    ret c
    jp Label0307

  Label02CC:
    ld e,a
    ex af,af'
    ld a,e
    ex af,af'
    push bc
    ld a,(Label4F49)
    ld b,a
    ld a,(WRAMFE3E)
    cp b
    pop bc
    jr z,Label02E1
    ld a,(WRAMFE35)
    or a
    ret nz

  Label02E1:
    call Label045B
    call Label0483
    ret c
    jp Label0307

  Label02EB:
    ld e,a
    ex af,af'
    ld a,e
    ex af,af'
    push bc
    ld a,(Label4F49)
    ld b,a
    ld a,(WRAMFE3E)
    cp b
    pop bc
    jr z,Label0300
    ld a,(WRAMFE35)
    or a
    ret nz

  Label0300:
    call Label046F
    call Label0483
    ret c

  Label0307:
    sub $08
    ld c,a
    ld b,$08
    add a,b
    ld d,a
    ld e,(ix+10)
    call Label2B23
    ld a,c

  Label0315:
    ld hl,$2C4E
    ld e,a
    ld d,$00
    add hl,de
    ld e,(hl)
    ld b,e
    ex af,af'
    ld a,$80
    or e
    ld d,$00
    ld e,a
    call Label2B23
    ex af,af'
    ld d,$1C
    ld e,b
    call Label2B18
    ld de,$1C00
    call Label2B18
    ld c,a
    call Label042C
    ld a,(ix+5)
    ld (hl),a
    or a
    jr z,Label0368
    ld a,c
    push bc
    inc hl
    ld e,(ix+6)
    ld (hl),e
    inc hl
    ld e,(ix+7)
    ld (hl),e
    inc hl
    ld c,(ix+8)
    ld (hl),c
    inc hl
    ld b,(ix+9)
    ld (hl),b
    inc hl
    ld e,(ix+3)
    ld (hl),e
    inc hl
    ld e,(ix+4)
    ld (hl),e
    ld l,(ix+1)
    ld h,(ix+2)
    jr Label0376

  Label0368:
    ld a,c
    push bc
    ld l,(ix+1)
    ld h,(ix+2)
    ld c,(ix+3)
    ld b,(ix+4)

  Label0376:
    call Label038D
    ld a,(WRAMFE2C)
    or a
    jr nz,Label0385
    ld de,$013F
    call Label2B23

  Label0385:
    pop bc
    ld d,$00
    ld e,b
    call Label2B23
    ret

  Label038D:
    ld e,$10
    add a,e
    ld d,a
    ld e,l
    call Label2B23
    add a,$08
    ld d,a
    ld e,h
    call Label2B23
    add a,$08
    ld d,a
    ld e,c
    call Label2B23
    add a,$08
    ld d,a
    ld e,b
    call Label2B23
    ret

    di // Disable Interrupts
    sub $08
    ld b,a

  Label03AF:
    di // Disable Interrupts
    ld a,b
    ld hl,$2C4E
    ld e,b
    ld d,$00
    add hl,de
    ld c,(hl)
    ld d,$1C
    ld e,c
    call Label2B18
    ld de,$1C00
    call Label2B18
    push bc
    call Label042C
    xor a
    or (hl)
    jr z,Label0400
    ld a,$FF
    cp (hl)
    jr z,Label03D5
    dec (hl)
    jr z,Label03EA

  Label03D5:
    ld a,b
    inc hl
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc hl
    ld c,(hl)
    inc hl
    ld b,(hl)

  Label03DE:
    ex de,hl
    call Label038D
    pop bc
    ld d,$00
    ld e,c
    call Label2B23
    ret

  Label03EA:
    ld a,b
    inc hl
    inc hl
    inc hl
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc hl
    ld c,(hl)
    inc hl
    ld b,(hl)
    inc de
    ld l,e
    ld h,d
    or a
    sbc hl,bc
    jr z,Label03DE
    jp m,Label03DE

  Label0400:
    pop bc
    call Label0405
    ret

  Label0405:
    ld a,b
    call Label0413
    ret c
    ld (ix+0),$00
    ld (ix+2),$00
    ret

  Label0413:
    push de
    sub $03
    jr c,Label042A
    ld l,a
    ld h,$00
    ld e,a
    ld d,h
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,de
    add hl,de
    ld de,$FBEC
    add hl,de
    push hl
    pop ix
    or a

  Label042A:
    pop de
    ret
    
  Label042C:
    push bc
    ld b,a
    add a,a
    add a,a
    add a,b
    add a,b
    add a,b
    ld e,a
    ld d,$00
    ld hl,WRAMFC0A
    add hl,de
    pop bc
    ret    

  Label043C:
    sub $C0
    ld e,a
    ld d,$00
    ld hl,Label4F09
    add hl,de
    ld a,(hl)
    ret

  Label0447:
    push de
    ld l,e
    ld h,$00
    ld d,h
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,de
    add hl,de
    add hl,de
    ld de,Label474A
    add hl,de
    push hl
    pop ix
    pop de
    ret

  Label045B:
    push de
    ld l,e
    ld h,$00
    ld d,h
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,de
    add hl,de
    add hl,de
    ld de,Label48AA
    add hl,de
    push hl
    pop ix
    pop de
    ret

  Label046F:
    push de
    ld l,e
    ld h,$00
    ld d,h
    add hl,hl
    add hl,hl
    add hl,hl
    add hl,de
    add hl,de
    add hl,de
    ld de,Label4A83
    add hl,de
    push hl
    pop ix
    pop de
    ret

  Label0483:
    push iy
    ld iy,WRAMFBEC
    ld de,$000A
    ld bc,$030B

  Label048F:
    ld a,(iy+0)
    or a
    jr nz,Label049B
    ld a,(iy+7)
    or a
    jr z,Label04CC

  Label049B:
    add iy,de
    inc c
    djnz Label048F
    ld iy,WRAMFBEC
    ld bc,$030B

  Label04A7:
    ld a,(iy+0)
    or a
    jr z,Label04B5
    ld a,(iy+2)
    cp (ix+0)
    jr c,Label04C3

  Label04B5:
    ld a,(iy+7)
    or a
    jr z,Label04CC
    ld a,(iy+8)
    cp (ix+0)
    jr nc,Label04CC

  Label04C3:
    add iy,de
    inc c
    djnz Label04A7
    pop iy
    scf
    ret

  Label04CC:
    ld (iy+7),$00
    ld (iy+8),$00
    ld a,(WRAMFEB2)
    ld (iy+9),a
    ld (iy+0),$FF
    ld a,(ix+0)
    ld (iy+2),a
    ex af,af'
    ld (iy+1),a
    ex af,af'
    ld a,c
    pop iy
    or a
    ret

  Label04EE:
    sub $F0
    ld e,a
    ld d,$00
    ld hl,Label4A83
    add hl,de
    add hl,de
    ld e,(hl)
    inc hl
    ld h,(hl)
    ld l,e
    push hl
    pop ix
    ld a,(WRAMFE35)
    or a
    ret nz
    call Label056E
    ret c
    cp $0B
    jr z,Label0514
    cp $0C
    jr z,Label0526
    cp $0D
    jr z,Label0538

  Label0514:
    ld iy,WRAMFDEC
    ld hl,WRAMF947
    ld (hl),$00
    ld hl,WRAMFA77
    ld (hl),$00
    ld a,$0B
    jr Label0548

  Label0526:
    ld iy,WRAMFDFC
    ld hl,WRAMF937
    ld (hl),$00
    ld hl,WRAMFA67
    ld (hl),$00
    ld a,$0C
    jr Label0548

  Label0538:
    ld iy,WRAMFE0C
    ld hl,WRAMF917
    ld (hl),$00
    ld hl,$FA47
    ld (hl),$00
    ld a,$0D

  Label0548:
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+3)
    or $C0
    ld (iy+1),a
    ld l,(ix+1)
    ld h,(ix+2)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ret

    pop af
    ret

  Label056E:
    push iy
    ld iy,WRAMFBEC
    ld de,$000A
    ld bc,$030B

  Label057A:
    ld a,(iy+0)
    or a
    jr nz,Label0586
    ld a,(iy+7)
    or a
    jr z,Label05B7

  Label0586:
    add iy,de
    inc c
    djnz Label057A
    ld iy,WRAMFBEC
    ld bc,$030B

  Label0592:
    ld a,(iy+0)
    or a
    jr z,Label05A0
    ld a,(iy+2)
    cp (ix+0)
    jr c,Label05AE

  Label05A0:
    ld a,(iy+7)
    or a
    jr z,Label05B7
    ld a,(iy+8)
    cp (ix+0)
    jr nc,Label05B7

  Label05AE:
    add iy,de
    inc c
    djnz Label0592
    pop iy
    scf
    ret

  Label05B7:
    ld (iy+7),$FF
    ld a,(ix+0)
    ld (iy+8),a
    ld (iy+0),$00
    push af
    ld a,(WRAMFE3D)
    ld (iy+1),a
    pop af
    ld (iy+2),$00
    ld a,c
    pop iy
    or a
    ret

  Label05D6:
    di
    ld a,(WRAMFE3D)
    ld (WRAMFE3E),a
    call Label08D5

  Label05E0:
    cp $F0
    jp nc,Label094A
    call Label08A7
    ld iy,WRAMFCD3
    ld (iy+9),$00
    jr Label05FD

  Label05F2:
    call Label08BE
    ld iy,WRAMFCD3
    ld (iy+9),$01

  Label05FD:
    ld e,a
    push bc
    xor a // A = 0
    ld (WRAMFE44),a
    ld a,(Label4F49)
    ld b,a
    ld a,(WRAMFE3E)
    cp b
    pop bc
    jr z,Label0615
    ld a,(WRAMFE35)
    or a
    ret nz
    jr Label061A

  Label0615:
    ld a,$03
    ld (WRAMFE44),a

  Label061A:
    ld a,(iy+0)
    or a
    jr z,Label0627
    ld a,(iy+2)
    cp (ix+0)
    ret c

  Label0627:
    ld a,(WRAMFC38)
    or a
    jr z,Label0634
    ld a,(WRAMFC39)
    cp (ix+0)
    ret c

  Label0634:
    xor a // A = 0
    ld (WRAMFC38),a
    ld a,e
    ld (iy+1),a
    ld a,$FF
    ld (WRAMFE33),a
    xor a // A = 0
    ld (WRAMFC41),a
    ld (iy+0),$FF
    ld a,(ix+0)
    ld (iy+2),a
    ld iy,WRAMFC83
    ld d,$11
    ld a,(ix+14)
    and $30
    rlca
    rlca
    ld e,a
    ld (iy+1),e
    call Label2B18
    ld d,$1B
    ld e,(ix+12)
    ld (iy+11),e
    call Label2B18
    ld b,e
    call Label08EB
    call Label1E5B
    call Label1FEE
    ld l,(ix+10)
    ld h,(ix+11)
    push af
    ld de,$1001
    call Label2B18
    pop af
    ld de,$1C80
    call Label2B18
    ld de,$1C00
    ld (iy+12),e
    call Label2B18
    ld de,$1000
    ld (iy+0),e
    call Label2B18
    ld d,$19
    ld e,l
    ld (iy+9),e
    call Label2B18
    ld d,$1A
    ld e,h
    ld (iy+10),e
    call Label2B18
    ld (WRAMFA8A),hl
    ld d,$12
    ld l,(ix+1)
    ld (iy+2),l
    ld e,l
    call Label2B18
    ld d,$13
    ld h,(ix+2)
    ld (iy+3),h
    ld e,h
    call Label2B18
    ld d,$14
    ld c,(ix+3)
    ld (iy+4),c
    ld e,c
    call Label2B18
    ld d,$15
    ld b,(ix+4)
    ld (iy+5),b
    ld e,b
    call Label2B18
    ld (WRAMFC46),bc
    ld a,(ix+5)
    or a
    jr z,Label0707
    ld (WRAMFC41),a
    ld e,(ix+6)
    ld d,(ix+7)
    ld (WRAMFC42),de
    ld c,(ix+8)
    ld b,(ix+9)
    ld (WRAMFC44),bc
    call Label087E

  Label0707:
    ld de,$1080
    ld (iy+0),e
    call Label2B18
    ret

  Label0711:
    ld de,$1100
    call Label2B18
    ld de,$1400
    call Label2B18
    ld de,$1500
    call Label2B18
    push af
    ld de,$1001
    call Label2B18
    pop af
    ld de,$1C80
    call Label2B18
    ld de,$1C00
    ld (iy+12),e
    call Label2B18
    ld de,$1000
    ld (iy+0),e
    call Label2B18
    ld d,$19
    ld e,l
    ld (iy+9),e
    call Label2B18
    ld d,$1A
    ld e,h
    ld (iy+10),e
    call Label2B18
    ld (WRAMFA8A),hl
    ld d,$12
    ld l,(ix+1)
    ld (iy+2),l
    ld e,l
    call Label2B18
    ld d,$13
    ld h,(ix+2)
    ld (iy+3),h
    ld e,h
    call Label2B18
    ld d,$14
    ld c,(ix+3)
    ld (iy+4),c
    ld e,c
    call Label2B18
    ld d,$15
    ld b,(ix+4)
    ld (iy+5),b
    ld e,b
    call Label2B18
    ld (WRAMFC46),bc
    ld a,(ix+5)
    or a
    jr z,Label07AC
    ld (WRAMFC41),a
    ld e,(ix+6)
    ld d,(ix+7)
    ld (WRAMFC42),de
    ld c,(ix+8)
    ld b,(ix+9)
    ld (WRAMFC44),bc
    call Label087E

  Label07AC:
    ld a,(WRAMFC3B)
    or a
    jr z,Label07BA
    ld a,(WRAMFA89)
    or a
    jr nz,Label07C8
    jr Label07C0

  Label07BA:
    ld a,(WRAMFA88)
    or a
    jr nz,Label07C8

  Label07C0:
    ld d,$1B
    ld e,(iy+11)
    call Label2B18

  Label07C8:
    ld de,$1080
    ld (iy+0),e
    call Label2B18
    ret

  Label07D2:
    ld (WRAMFA8A),hl
    ld a,(WRAMFC3B)
    or a
    jr z,Label07E3
    ld a,(WRAMFA89)
    or a
    jr nz,Label07F1
    jr Label07E9

  Label07E3:
    ld a,(WRAMFA88)
    or a
    jr nz,Label07F1

  Label07E9:
    ld d,$1B
    ld e,(iy+11)
    call Label2B18

  Label07F1:
    ld d,$19
    ld e,l
    ld (iy+9),e
    call Label2B18
    ld d,$1A
    ld e,h
    ld (iy+10),e
    call Label2B18
    ret

  Label0804:
    di
    push iy
    ld a,(WRAMFC41)
    or a
    jr z,Label083D
    cp $FF
    jr z,Label0818
    dec a
    ld (WRAMFC41),a
    or a
    jr z,Label086B

  Label0818:
    ld hl,(WRAMFC42)
    ld bc,(WRAMFC44)

  Label081F:
    ld de,$1000
    call Label2B18
    ld de,$1C80
    call Label2B18
    ld de,$1C00
    call Label2B18
    call Label087E
    ld de,$1080
    call Label2B18
    pop iy
    ret

  Label083D:
    ld de,$1000
    call Label2B18
    ld iy,WRAMFCD3
    ld (iy+0),$00
    ld a,(WRAMFC38)
    or a
    jr nz,Label085C
    ld a,(WRAMFE33)
    or a
    call nz,Label085F
    xor a // A = 0
    ld (WRAMFE33),a

  Label085C:
    pop iy
    ret

  Label085F:
    ld hl,$FAA4
    ld de,WRAMFA8A
    ld bc,$001A
    ldir
    ret

  Label086B:
    ld hl,(WRAMFC44)
    inc hl
    ld d,h
    ld e,l
    ld bc,(WRAMFC46)
    or a
    sbc hl,bc
    jr z,Label083D
    ld h,d
    ld l,e
    jr Label081F

  Label087E:
    ld iy,WRAMFC83
    ld d,$12
    ld e,l
    ld (iy+2),e
    call Label2B18
    ld d,$13
    ld e,h
    ld (iy+3),e
    call Label2B18
    ld d,$14
    ld e,c
    ld (iy+4),e
    call Label2B18
    ld d,$15
    ld e,b
    ld (iy+5),e
    call Label2B18
    ret

  Label08A7:
    ld l,a
    ld h,$00
    ld c,l
    ld b,$00
    add hl,hl
    add hl,hl
    add hl,hl
    push hl
    add hl,hl
    pop de
    add hl,de
    add hl,bc
    add hl,bc
    ld de,Label4AE3
    add hl,de
    push hl
    pop ix
    ret

  Label08BE:
    ld l,a
    ld h,$00
    ld c,l
    ld b,$00
    add hl,hl
    add hl,hl
    add hl,hl
    push hl
    add hl,hl
    pop de
    add hl,de
    add hl,bc
    add hl,bc
    ld de,Label4B17
    add hl,de
    push hl
    pop ix
    ret

  Label08D5:
    sub $80
    ld e,a
    ld d,$00
    ld hl,Label4EC9
    add hl,de
    ld a,(hl)
    ret

    sub $40
    ld e,a
    ld d,$00
    ld hl,Label4B51
    add hl,de
    ld a,(hl)
    ret

  Label08EB:
    push bc
    ld hl,WRAMFA8A
    ld de,WRAMFAA4
    ld bc,$001A
    ldir
    pop bc

  Label08F8:
    ld a,(ix+13)
    ld (WRAMFA90),a
    ld a,(ix+14)
    and $0F
    ld (WRAMFA8F),a
    ld e,(ix+15)
    ld d,(ix+16)
    ld (WRAMFA92),de
    ld e,(ix+17)
    ld d,(ix+18)
    ld (WRAMFA94),de
    ld e,(ix+19)
    ld d,(ix+20)
    ld (WRAMFA96),de
    ld de,$0000
    ld (WRAMFA8C),de
    ld a,(ix+21)
    ld (WRAMFA9C),a
    ld a,(ix+22)
    ld (WRAMFAA1),a
    ld a,(ix+23)
    ld ($FA9D),a
    ld a,(ix+24)
    ld (WRAMFA9E),a
    ld a,(ix+25)
    ld (WRAMFA9F),a
    ret

  Label094A:
    sub $F0
    ld e,a
    ld d,$00
    ld hl,Label4B31
    add hl,de
    add hl,de
    ld e,(hl)
    inc hl
    ld h,(hl)
    ld l,e
    push hl
    pop ix
    push bc
    ld a,(Label4F49)
    ld b,a
    ld a,(WRAMFE3E)
    cp b
    pop bc
    jr z,Label096C
    ld a,(WRAMFE35)
    or a
    ret nz

  Label096C:
    ld iy,WRAMFCD3
    ld a,(iy+0)
    ld b,(ix+0)
    or a
    jr z,Label097E
    ld a,(iy+2)
    cp b
    ret c

  Label097E:
    ld a,(WRAMFC38)
    or a
    jr z,Label0989
    ld a,(WRAMFC39)
    cp b
    ret c

  Label0989:
    ld (iy+0),$00
    ld a,b
    ld ($FC39),a
    ld a,$FF
    ld (WRAMFC38),a
    ld (WRAMFE33),a
    ld hl,WRAMF927
    ld (hl),$00
    ld hl,WRAMFA57
    ld (hl),$00
    ld iy,WRAMFDDC
    ld a,$0E
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+4)
    or $C0
    ld (iy+1),a
    ld l,(ix+1)
    ld h,(ix+2)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld iy,WRAMFAC6
    ld b,(ix+3)
    ld (iy+7),b
    ret

    ld a,(WRAMFC39)
    cp b
    ret

  Label09DC:
    di
    ld a,(WRAMFE3D)
    ld (WRAMFE3E),a

  Label09E3:
    call Label0AF1
    sub $60
    ld e,a
    ld d,$00
    ld hl,Label45E8
    add hl,de
    add hl,de
    ld e,(hl)
    inc hl
    ld h,(hl)
    ld l,e
    push hl
    pop ix
    ld iy,WRAMFD9C
    push bc
    ld a,(Label4F49)
    ld b,a
    ld a,(WRAMFE3E)
    cp b
    pop bc
    jr z,Label0A0E
    ld a,(WRAMFE35)
    or a
    ret nz
    jr Label0A13

  Label0A0E:
    ld a,$04
    ld (WRAMFE44),a

  Label0A13:
    ld b,(ix+0)
    ld a,(WRAMFE1C)
    or a
    jr z,Label0A21
    ld a,(WRAMFE1D)
    cp b
    ret c

  Label0A21:
    ld a,b
    ld (WRAMFE1D),a
    ld a,$FF
    ld (WRAMFE1C),a
    call Label0B1E
    ld de,$0010
    ld hl,WRAMF827
    ld (hl),$00
    ld hl,WRAMF877
    ld (hl),$00
    add hl,de
    ld (hl),$00
    add hl,de
    ld (hl),$00
    ld hl,WRAMF957
    ld (hl),$00
    ld hl,WRAMF9A7
    ld (hl),$00
    add hl,de
    ld (hl),$00
    add hl,de
    ld (hl),$00
    ld a,$05
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+9)
    ld (iy+1),a
    ld l,(ix+1)
    ld h,(ix+2)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    add iy,de
    ld a,$06
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+10)
    ld (iy+1),a
    ld l,(ix+3)
    ld h,(ix+4)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    add iy,de
    ld a,$07
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+11)
    ld (iy+1),a
    ld l,(ix+5)
    ld h,(ix+6)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld iy,WRAMFDCC
    ld a,$00
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+12)
    ld (iy+1),a
    ld l,(ix+7)
    ld h,(ix+8)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld a,(ix+13)
    ld (WRAMFE1E),a
    ret

  Label0AF1:
    push af
    push hl
    ld hl,WRAMF806
    ld (hl),$00
    ld hl,WRAMF811
    ld (hl),$00
    ld hl,WRAMF81C
    ld (hl),$00
    pop hl
    pop af
    ret

  Label0B05:
    ld de,$2801
    call Label2B18
    ld de,$2802
    call Label2B18
    ld de,$2805
    call Label2B18
    ld de,$2806
    call Label2B18
    ret

  Label0B1E:
    ld a,(WRAMFE44)
    cp $04
    ret z
    ld de,$0800
    call Label2B18
    ld de,$0900
    call Label2B18
    ld de,$0A00
    call Label2B18
    ret

  Label0B37:
    push ix
    ld d,$00
    exx
    ld d,$1C
    exx
    ld e,$87
    call Label2B23
    exx
    ld e,$07
    call Label2B18
    exx
    ld a,(WRAMFE46)
    or a
    jr nz,Label0B5D
    ld e,$88
    call Label2B23
    exx
    ld e,$08
    call Label2B18
    exx

  Label0B5D:
    ld a,(WRAMFE47)
    or a
    jr nz,Label0B6F
    ld e,$90
    call Label2B23
    exx
    ld e,$10
    call Label2B18
    exx

  Label0B6F:
    ld a,(WRAMFE48)
    or a
    jr nz,Label0B81
    ld e,$A0
    call Label2B23
    exx
    ld e,$20
    call Label2B18
    exx

  Label0B81:
    ld a,(WRAMFE44)
    cp $03
    jr z,Label0B9A
    ld de,$1001
    call Label2B18
    ld de,$1000
    call Label2B18
    ld de,$1C80
    call Label2B18

  Label0B9A:
    ld de,$1C00
    call Label2B18
    ld de,$013F
    call Label2B23
    pop ix
    ret

  Label0BA9:
    ld a,(WRAMFE33)
    or a
    jr nz,Label0BB7
    ld a,(WRAMFC38)
    or a
    jr nz,Label0BB7
    jr Label0BE4

  Label0BB7:
    ld a,(WRAMFE44)
    cp $03
    jr z,Label0BE4
    ld de,$1001
    call Label2B18
    ld de,$1000
    call Label2B18
    ld de,$1C80
    call Label2B18
    ld de,$1C00
    call Label2B18
    xor a // A = 0
    ld (WRAMFC38),a
    ld (WRAMFE33),a
    push hl
    ld hl,WRAMFCD3
    ld (hl),$00
    pop hl

  Label0BE4:
    push ix
    ld ix,WRAMFBEC
    ld a,(WRAMFE46)
    or a
    jr nz,Label0C12
    ld a,(ix+0)
    or a
    jr nz,Label0BFE
    ld a,(ix+7)
    or a
    jr nz,Label0BFE
    jr Label0C12

  Label0BFE:
    ld (ix+0),$00
    ld (ix+7),$00
    ld e,$88
    call Label2B23
    exx
    ld e,$08
    call Label2B18
    exx

  Label0C12:
    ld ix,WRAMFBF6
    ld a,(WRAMFE47)
    or a
    jr nz,Label0C3E
    ld a,(ix+0)
    or a
    jr nz,Label0C2A
    ld a,(ix+7)
    or a
    jr nz,Label0C2A
    jr Label0C3E

  Label0C2A:
    ld (ix+0),$00
    ld (ix+7),$00
    ld e,$90
    call Label2B23
    exx
    ld e,$10
    call Label2B18
    exx

  Label0C3E:
    ld ix,WRAMFC00
    ld a,(WRAMFE48)
    or a
    jr nz,Label0C6A
    ld a,(ix+0)
    or a
    jr nz,Label0C56
    ld a,(ix+7)
    or a
    jr nz,Label0C56
    jr Label0C6A

  Label0C56:
    ld (ix+0),$00
    ld (ix+7),$00
    ld e,$A0
    call Label2B23
    exx
    ld e,$20
    call Label2B18
    exx

  Label0C6A:
    pop ix
    ret

  Label0C6D:
    ld a,(WRAMFE3D)
    ld e,a
    ld d,$00
    ld hl,Label0C7A
    add hl,de
    add hl,de
    add hl,de
    jp (hl)

  Label0C7A:
    jp Label0CF6
    jp Label0D02
    jp Label0CF7
    jp Label0ECA
    jp Label0EE9
    jp Label0F20
    jp Label0F30
    jp Label0F3D
    jp Label0F49
    jp Label0F52
    jp Label0F5B
    jp Label0F8B
    jp Label0F97
    jp Label0FC1
    jp Label0FE4
    jp Label0FD5
    jp Label0FF3
    jp Label0F7A
    jp Label0F91
    jp Label0F9C
    jp Label0E3C
    jp Label0E83
    jp Label0E3B
    jp Label0E2E
    jp Label0D8E
    jp Label0E02
    jp Label0DA9
    jp Label0E18
    jp Label0DC9

  Label0CD1:
    xor a // A = 0
    out ($0C),a
    out ($00),a
    ld sp,$FFFC
    ld hl,$0D02
    push hl
    retn

  Label0CDF:
    xor a // A = 0
    out ($0C),a
    out ($00),a
    ld sp,$FFFC
    ld hl,$0ECA
    push hl
    retn

  Label0CED:
    ld sp,$FFFC
    ld hl,$0FF3
    push hl
    retn

  Label0CF6:
    ret

  Label0CF7:
    di // Disable Interrupts
    xor a // A = 0
    ld (WRAMFE27),a
    ld a,$5F
    push af
    jp Label10C4

  Label0D02:
    di // Disable Interrupts
    call Label01AA
    ld b,$30

  Label0D08:
    djnz Label0D08

    xor a // A = 0
    ld (WRAMFE33),a
    ld (WRAMFE2D),a
    ld (WRAMFE2C),a
    di // Disable Interrupts
    ld de,$B500
    call Label2B18
    call Label2B23
    ld de,$B600
    call Label2B18
    call Label2B23
    ld de,$00BF
    call Label2B23
    ld de,$1001
    call Label2B18
    ld de,$1CBF
    call Label2B18
    ld de,$1C00
    call Label2B18
    ld b,$0D
    ld de,$417F

  Label0D44:
    call Label2B18
    call Label2B23
    ex de,hl
    ld de,$0100
    add hl,de
    ex de,hl
    djnz Label0D44
    ld de,$2801
    call Label2B18
    ld de,$2802
    call Label2B18
    ld de,$2805
    call Label2B18
    ld de,$2806
    call Label2B18
    ld de,$0800
    call Label2B18
    ld de,$0900
    call Label2B18
    ld de,$0A00
    call Label2B18
    ld hl,WRAMFFFD
    ld (hl),$C3
    ld (WRAMFFFE),hl
    ld a,$01
    ld (WRAMFE97),a
    out ($0C),a
    jp WRAMFFFD

  Label0D8E:
    call Label0201
    cp $10
    jp c,Label01E4
    ld hl,Label46EA
    call Label0DE9
    ret z
    ld a,$18
    ld (WRAMFE3E),a
    ld a,(WRAMFE3D)
    di // Disable Interrupts
    jp Label02A3

  Label0DA9:
    call Label0201
    cp $10
    jp c,Label01E4
    ld hl,Label470A
    call Label0DE9
    ret z
    ld a,$18
    ld (WRAMFE3E),a
    ld a,$01
    ld (WRAMFEB2),a
    ld a,(WRAMFE3D)
    di // Disable Interrupts
    jp Label02CC

  Label0DC9:
    call Label0201
    cp $10
    jp c,Label01E4
    ld hl,Label472A
    call Label0DE9
    ret z
    ld a,$18
    ld (WRAMFE3E),a
    ld a,$02
    ld (WRAMFEB2),a
    ld a,(WRAMFE3D)
    di // Disable Interrupts
    jp Label02EB

  Label0DE9:
    push bc
    ld c,a
    and $07
    ld b,$03

  Label0DEF:
    srl c
    djnz Label0DEF
    add hl,bc
    ld b,a
    ld c,$80
    or a
    jr z,Label0DFE

  Label0DFA:
    srl c
    djnz Label0DFA

  Label0DFE:
    ld a,c
    and (hl)
    pop bc
    ret

  Label0E02:
    call Label0201
    cp $10
    jp c,Label01E4
    ld hl,Label4AA3
    call Label0DE9
    ret z
    ld a,(WRAMFE3D)
    di // Disable Interrupts
    jp Label05E0

  Label0E18:
    call Label0201
    cp $10
    jp c,Label01E4
    ld hl,Label4AC3
    call Label0DE9
    ret z
    ld a,(WRAMFE3D)
    di // Disable Interrupts
    jp Label05F2

  Label0E2E:
    ld a,(WRAMFE42)
    xor $FF
    ld (WRAMFE42),a
    xor a // A = 0
    ld (WRAMFE43),a
    ret

  Label0E3B:
    ret

  Label0E3C:
    call Label0201
    cp $10
    jp c,Label01E4
    ld hl,Label46EA
    call Label0DE9
    ret z
    di // Disable Interrupts
    ld iy,WRAMFBEC
    ld bc,$030B

  Label0E53:
    ld a,(iy+0)
    or a
    call nz,Label0E6A
    ld a,(iy+7)
    or a
    call nz,Label0E6A
    ld de,$000A
    add iy,de
    inc c
    djnz Label0E53
    ret

  Label0E6A:
    ld a,(iy+9)
    or a
    ret nz
    ld a,(WRAMFE3D)
    sub (iy+1)
    ret nz
    ld (iy+0),a
    ld (iy+7),a
    ld a,c
    push bc
    call Label1726
    pop bc
    ret

  Label0E83:
    call Label0201
    cp $10
    jp c,Label01E4
    ld hl,Label470A
    call Label0DE9
    ret z
    di // Disable Interrupts
    ld iy,WRAMFBEC
    ld bc,$030B

  Label0E9A:
    ld a,(iy+0)
    or a
    call nz,Label0EB1
    ld a,(iy+7)
    or a
    call nz,Label0EB1
    ld de,$000A
    add iy,de
    inc c
    djnz Label0E9A
    ret

  Label0EB1:
    ld a,(iy+9)
    or a
    ret z
    ld a,(WRAMFE3D)
    sub (iy+1)
    ret nz
    ld (iy+0),a
    ld (iy+7),a
    ld a,c
    push bc
    call Label1726
    pop bc
    ret

  Label0ECA:
    di // Disable Interrupts
    call Label01AA
    xor a // A = 0
    out ($00),a
    inc a
    ld (WRAMFE99),a
    ld de,$B500
    call Label2B18

  Label0EDB:
    call Label2B23
    ld d,$B6
    call Label2B18
    call Label2B23
    jp Label0000

  Label0EE9:
    di // Disable Interrupts
    xor a // A = 0
    ld (WRAMFE33),a
    ld (WRAMFE2D),a
    ld (WRAMFE2C),a
    ld (WRAMFCD3),a
    ld de,$B500
    call Label2B18
    call Label2B23
    ld d,$b6
    call Label2B18
    call Label2B23
    call Label0BA9
    call Label0B05
    call Label0B37
    call Label0B1E
    call Label17F2
    ld a,$FF
    ld (WRAMFE35),a
    ld (WRAMFE34),a
    ret

  Label0F20:
    di // Disable Interrupts
    call Label0B05
    xor a // A = 0
    ld (WRAMFE2D),a
    dec a
    ld (WRAMFE34),a
    call Label17F2
    ret

  Label0F30:
    di // Disable Interrupts
    call Label0BA9
    call Label0B1E
    ld a,$FF
    ld (WRAMFE35),a
    ret

  Label0F3D:
    di // Disable Interrupts
    call Label17DD
    xor a // A = 0
    ld (WRAMFE34),a
    ld (WRAMFE35),a
    ret

  Label0F49:
    di // Disable Interrupts
    xor a // A = 0
    ld (WRAMFE34),a
    call Label17DD
    ret

  Label0F52:
    di // Disable Interrupts
    xor a // A = 0
    ld (WRAMFE35),a
    call Label17DD
    ret

  Label0F5B:
    call Label0201
    or a
    jp z,Label01E4
    ld iy,WRAMFABE
    ld a,(WRAMFE3D)
    ld (iy+2),a
    ld a,$01
    ld ($FE27),a
    ld a,$02
    ld (WRAMFE3A),a
    ld (WRAMFE3B),a
    ret

  Label0F7A:
    xor a // A = 0
    ld (WRAMFE27),a
    ld iy,WRAMFABE
    ld a,(iy+0)
    and $C7
    ld (iy+0),a
    ret

  Label0F8B:
    ld a,$01
    ld (WRAMFC36),a
    ret

  Label0F91:
    ld a,$01
    ld (WRAMFC37),a
    ret

  Label0F97:
    xor a // A = 0
    ld (WRAMFC36),a
    ret

  Label0F9C:
    xor a // A = 0
    ld (WRAMFC37),a
    ret

  Label0FA1:
    ld a,$FF
    ld (WRAMFE8A),a
    ld a,(WRAMFE30)
    or a
    jr nz,Label0FA1
    ld a,$FF
    ld (WRAMFE30),a
    ld a,(WRAMFE3D)
    and $03
    ld (WRAMFE29),a
    ret

    di // Disable Interrupts
    ld a,$03
    ld (WRAMFE29),a
    ret

  Label0FC1:
    di // Disable Interrupts
    ld hl,WRAMFC0A
    ld (hl),$00
    ld de,WRAMFC0B
    ld bc,$0029
    ldir
    ret

    xor a // A = 0
    ld (WRAMFC41),a
    ret

  Label0FD5:
    di // Disable Interrupts
    ld a,(WRAMFE44)
    cp $04
    ret z
    xor a // A = 0
    ld (WRAMFE1C),a
    call Label0B1E
    ret

  Label0FE4:
    call Label0201
    or a
    jp z,Label01E4
    di // Disable Interrupts
    ld a,(WRAMFE3D)
    call Label2AE0
    ret

  Label0FF3:
    di // Disable Interrupts
    call Label01AA
    ld a,(WRAMFE97)
    exx
    ld b,a
    exx
    ex af,af'
    ld a,$80
    ex af,af'
    ld hl,$0000
    xor a // A = 0

  Label1005:
    add a,(hl)
    inc hl
    push af
    ld a,h
    cp $F0
    jr z,Label1010
    pop af
    jr Label1005

  Label1010:
    pop af
    ld b,a
    ld a,($0014)
    cp b
    jr z,Label101E
    ex af,af'
    set 0,a
    ex af,af'
    jr Label1022

  Label101E:
    ex af,af'
    res 0,a
    ex af,af'

  Label1022:
    ld ix,$1028
    jr Label1036
    ex af,af'
    cp $80
    ld a,$01
    jr z,Label1030
    dec a

  Label1030:
    out ($0C),a
    exx
    jp Label0000

  Label1036:
    ld hl,WRAMF800
    ld de,WRAMF801
    ld bc,$07FF
    ld a,$55
    ld (hl),a
    ldir
    ld hl,WRAMF800
    ld bc,$07FF

  Label104A:
    cpi
    jp nz,Label1074
    jp pe,Label104A
    ld hl,WRAMF800
    ld de,WRAMF801
    ld bc,$07FF
    ld a,$AA
    ld (hl),a
    ldir
    ld hl,WRAMF800
    ld bc,$07ff

  Label1066:
    cpi
    jp nz,Label1074
    jp pe,Label1066
    ex af,af'
    res 1,a
    ex af,af'
    jr Label1078

  Label1074:
    ex af,af'
    set 1,a
    ex af,af'

  Label1078:
    ld hl,WRAMF800
    ld bc,$03FF

  Label107E:
    ld e,l
    ld d,h
    ld (hl),e
    inc hl
    ld (hl),d
    inc hl
    dec bc
    ld a,b
    or c
    jr nz,Label107E
    ld hl,WRAMF800
    ld bc,$03FF

  Label108F:
    ld e,l
    ld d,h
    ld a,(hl)
    cp e
    jr nz,Label10A6
    inc hl
    ld a,(hl)
    cp d
    jr nz,Label10A6
    inc hl
    dec bc
    ld a,b
    or c
    jr nz,Label108F
    ex af,af'
    res 2,a
    ex af,af'
    jp (ix)

  Label10A6:
    ex af,af'
    set 2,a
    ex af,af'
    jp (ix)

  Label10AC:
    di // Disable Interrupts
    ld a,(WRAMFE3D)

  Label10B0:
    push af
    ld a,(WRAMFE34)
    or a
    jp nz,Label136D
    ld a,(WRAMFE33)
    or a
    jr nz,Label10D4
    ld a,(WRAMFC38)
    or a
    jr nz,Label10D4

  Label10C4:
    xor a // A = 0
    ld (WRAMFC41),a
    ld de,$1001
    call Label2B18
    ld de,$1000
    call Label2B18

  Label10D4:
    ld a,$FF
    ld (WRAMFE2D),a
    ld (WRAMFE2C),a
    pop af
    sub $20
    push af
    push hl
    push de
    ld hl,$2E00
    ld e,a
    ld d,$00
    add hl,de
    ld a,(hl)
    or a
    jr nz,Label10F2
    call Label01AA
    jr Label1102

  Label10F2:
    ld a,$2E
    in a,($08)
    ld a,$16
    in a,($09)
    ld a,$0A
    in a,($0A)
    ld a,$04
    in a,($0B)

  Label1102:
    pop de
    pop hl
    pop af
    ld e,a
    ld d,$00
    ld hl,Label4568
    add hl,de
    add hl,de
    ld e,(hl)
    inc hl
    ld h,(hl)
    ld l,e
    push hl
    pop ix
    ld iy,WRAMFCEC
    call Label0B05
    ld hl,WRAMF837
    ld de,$0010
    ld (hl),$00
    add hl,de
    ld (hl),$00
    add hl,de
    ld (hl),$00
    add hl,de
    ld (hl),$00
    ld de,$0040
    add hl,de
    ld b,$07
    ld de,$0010

  Label1135:
    ld (hl),$00
    add hl,de
    djnz Label1135
    ld hl,WRAMF967
    ld de,$0010
    ld (hl),$00
    add hl,de
    ld (hl),$00
    add hl,de
    ld (hl),$00
    add hl,de
    ld (hl),$00
    ld de,$0040
    add hl,de
    ld b,$07
    ld de,$0010

  Label1154:
    ld (hl),$00
    add hl,de
    djnz Label1154
    ld a,(ix+23)
    ld (WRAMFE2F),a
    call Label2AE0
    ld a,$01
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+27)
    or $C0
    ld (iy+1),a
    ld a,$C0
    ld (WRAMFB63),a
    ld l,(ix+1)
    ld h,(ix+2)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    add iy,de
    ld a,$02
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+29)
    or $C0
    ld (iy+1),a
    ld a,$C0
    ld (WRAMFB64),a
    ld l,(ix+3)
    ld h,(ix+4)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    add iy,de
    ld a,$03
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+31)
    or $C0
    ld (iy+1),a
    ld a,$C0
    ld (WRAMFBEA),a
    ld l,(ix+5)
    ld h,(ix+6)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    add iy,de
    ld a,$04
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+33)
    or $C0
    ld (iy+1),a
    ld a,$C0
    ld (WRAMFBEB),a
    ld l,(ix+7)
    ld h,(ix+8)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    add iy,de
    ld a,$08
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+35)
    or $C0
    ld (iy+1),a
    ld l,(ix+9)
    ld h,(ix+10)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    add iy,de
    ld a,$09
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+37)
    or $C0
    ld (iy+1),a
    ld l,(ix+11)
    ld h,(ix+12)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    add iy,de
    ld a,$0A
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+39)
    or $C0
    ld (iy+1),a
    ld l,(ix+13)
    ld h,(ix+14)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    add iy,de
    ld a,$0B
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+41)
    or $C0
    ld (iy+1),a
    ld l,(ix+15)
    ld h,(ix+16)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    add iy,de
    ld a,$0C
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+43)
    or $C0
    ld (iy+1),a
    ld l,(ix+17)
    ld h,(ix+18)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    add iy,de
    ld a,$0D
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+45)
    or $C0
    ld (iy+1),a
    ld l,(ix+19)
    ld h,(ix+20)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    add iy,de
    ld a,$0E
    ld b,$07
    call Label2ACE
    ld (iy+0),$00
    ld a,(ix+47)
    or $C0
    ld (iy+1),a
    ld l,(ix+21)
    ld h,(ix+22)
    ld (iy+9),l
    ld (iy+10),h
    ld (iy+11),l
    ld (iy+12),h
    ld de,$0010
    ld a,(WRAMFE27)
    or a
    jr nz,Label1369
    ld iy,WRAMFABE
    ld b,(ix+24)
    ld (iy+1),b
    ld b,(ix+26)
    ld (iy+7),b
    ld e,(ix+25)
    ld (iy+6),e
    ld d,$01
    call Label2B23
    ld hl,$0000
    ld (WRAMFE38),hl

  Label1369:
    call Label1800
    ret

  Label136D:
    pop af
    ret

  Label136F:
    ld a,(WRAMFE35)
    or a
    jp nz,Label1396
    push ix
    ld ix,WRAMF806
    ld bc,$0300

  Label137F:
    push bc
    xor a // A = 0
    cp (ix+0)
    jr z,Label1389
    call Label13A4

  Label1389:
    pop bc
    inc c
    inc c
    ld de,$000B
    add ix,de
    djnz Label137F
    pop ix
    ret

  Label1396:
    call Label0B1E
    ld a,(WRAMFE44)
    cp $04
    ret z
    xor a // A = 0
    ld (WRAMFE1C),a
    ret

  Label13A4:
    dec (ix+8)
    ret nz
    ld l,(ix+1)
    ld h,(ix+2)
    ld e,(ix+3)
    ld d,(ix+4)
    or a
    sbc hl,de
    call Label1407
    ld a,c
    out ($04),a
    rst 08h
    push af
    ld a,l
    out ($05),a
    rst 10h
    pop af
    inc a
    out ($04),a
    rst 08h
    ld a,h
    out ($05),a
    ld a,(ix+7)
    ld (ix+8),a
    ld e,(ix+5)
    ld d,$00
    ld e,$03
    ld d,$00
    ld l,(ix+3)
    ld h,(ix+4)
    ld a,(WRAMFE42)
    or a
    jr z,Label13ED
    sbc hl,de
    call c,Label13FB
    jr Label13F4

  Label13ED:
    ld a,(WRAMFE43)
    or a
    jr nz,Label13FA
    add hl,de

  Label13F4:
    ld (ix+3),l
    ld (ix+4),h

  Label13FA:
    ret

  Label13FB:
    ld (ix+0),$00
    call Label0B1E
    xor a // A = 0
    ld (WRAMFE1C),a
    ret

  Label1407:
    push hl
    push de
    ld de,$0070
    or a
    sbc hl,de
    jr c,Label1414
    pop de
    pop hl
    ret

  Label1414:
    pop de
    pop hl
    push af
    ld a,$01
    ld (WRAMFE43),a
    ld hl,$0070
    pop af
    ret

  Label1421:
    push hl
    push ix
    exx
    ld d,$00
    cp $03
    jr c,Label143B
    ld c,$06
    ld hl,WRAMFB65
    sub $02
    ld e,a
    add hl,de
    exx
    ld c,$07
    ld h,$04
    jr Label1447

  Label143B:
    ld c,$04
    ld hl,WRAMFADE
    ld e,a
    add hl,de
    exx
    ld c,$05
    ld h,$00

  Label1447:
    ld b,a
    ld a,$28
    out ($04),a
    rst 08h
    ld a,b
    or h
    or d
    out ($05),a
    rst 10h
    ld ix,WRAMFACE
    ld (ix+8),a
    and $F0
    jp z,Label14B1
    ld a,e
    push af
    and $1F
    ld e,a
    ld d,$00
    ld hl,Label4F4A
    add hl,de
    add hl,de
    ld e,(hl)
    inc hl
    ld d,(hl)
    pop af
    ex (sp),ix
    push af
    push hl
    ld l,(ix+15)
    ld h,$00
    bit 7,l
    jr z,Label147D
    dec h

  Label147D:
    add hl,de
    ex de,hl
    pop hl
    pop af
    ex (sp),ix
    rrca
    rrca
    and $38
    or d
    ld d,a
    ld a,$A4
    add a,b
    exx
    out (c),a
    rst 08h
    exx
    out (c),d
    rst 10h
    ld a,$A0
    add a,b
    exx
    out (c),a
    rst 08h
    exx
    out (c),e
    rst 10h
    push de
    exx
    ld e,$70
    ld d,$00
    add hl,de
    pop de
    ld (hl),e
    inc hl
    inc hl
    inc hl
    inc hl
    ld (hl),d
    exx
    call Label1DA8

  Label14B1:
    pop ix
    pop hl
    ret

  Label14B5:
    call Label1578
    ret c
    push hl
    sub $05
    ld c,e
    ex af,af'
    ld a,d
    or a
    ld e,$00
    ld (WRAMFE49),a
    jr z,Label14D1
    ex af,af'
    ld hl,$2C4E
    ld e,a
    ld d,$00
    add hl,de
    ld e,(hl)
    ex af,af'

  Label14D1:
    ld a,$07
    out ($04),a
    rst 08h
    in a,($05)
    cpl
    or e
    cpl
    ld d,$07
    ld e,a
    call Label2B18
    ld e,c
    ld d,$00
    ld a,e
    and $1F
    ld e,a
    ld hl,Label4F8A
    add hl,de
    add hl,de
    ld e,(hl)
    inc hl
    ld d,(hl)
    ld a,c
    and $E0
    jr z,Label14FF
    rlca
    rlca
    rlca
    ld b,a

  Label14F9:
    srl d
    rr e
    djnz Label14F9

  Label14FF:
    push af
    ld a,(WRAMFE3C)
    or a
    jr z,Label1530
    cp $05
    jr z,Label1526
    cp $06
    jr z,Label151a
    ld a,(WRAMFE49)
    or a
    jr z,Label1530
    ld (WRAMF804),de
    jr Label1530

  Label151a:
    ld a,(WRAMFE49)
    or a
    jr z,Label1530
    ld (WRAMF802),de
    jr Label1530

  Label1526:
    ld a,(WRAMFE49)
    or a
    jr z,Label1530
    ld (WRAMF800),de

  Label1530:
    pop af
    ex af,af'
    add a,a
    ld h,a
    out ($04),a
    rst 08h
    ld a,e
    out ($05),a
    rst 10h
    ld a,h
    inc a
    out ($04),a
    rst 08h
    ld a,d
    out ($05),a
    rst 10h
    pop hl
    ret

  Label1546:
    ld a,d
    or a
    jr z,Label1566
    ld d,$06
    call Label2B18
    ld a,$07
    out ($04),a
    rst 08h
    in a,($05)
    cpl
    and $C7
    ld d,a
    ld a,(WRAMFE1E)
    or d
    cpl
    ld d,$07
    ld e,a
    call Label2B18
    ret

  Label1566:
    ld a,$07
    out ($04),a
    rst 08h
    in a,($05)
    cpl
    and $C7
    cpl
    ld d,$07
    ld e,a
    call Label2B18
    ret

  Label1578:
    push af
    push hl
    cp $05
    jr z,Label158C
    cp $06
    jr z,Label1587
    ld hl,WRAMF81C
    jr Label158F

  Label1587:
    ld hl,WRAMF811
    jr Label158F

  Label158C:
    ld hl,WRAMF806

  Label158F:
    xor a // A = 0
    or (hl)
    jr nz,Label1597
    pop hl
    pop af
    or a
    ret

  Label1597:
    pop hl
    pop af
    scf
    ret

  Label159B:
    push hl
    push ix
    sub $08
    ld c,a
    call Label0413
    jr c,Label15CB
    ld a,(WRAMFC3B)
    or a
    jr z,Label15BE
    ld a,(ix+7)
    or a
    jp z,Label14B1
    ld a,d
    or a
    jp z,Label173D
    ld a,c
    call Label2BC7
    jr Label15DA

  Label15BE:
    xor a // A = 0
    cp (ix+0)
    jp nz,Label14B1
    cp (ix+7)
    jp nz,Label14B1

  Label15CB:
    ld a,d
    or a
    jp z,Label173D
    ld a,(WRAMFE27)
    or a
    jr nz,Label15DA
    ld a,c
    call Label2BC7

  Label15DA:
    ld a,c
    ex (sp),ix
    bit 3,(ix+0)
    ex (sp),ix
    jp nz,Label14B1
    call Label0447
    call Label0315
    jp Label14B1

  Label15EF:
    push hl
    push ix
    ld a,b
    ld (WRAMFC3A),a
    ld a,(WRAMFC3B)
    or a
    jr z,Label1605
    ld a,(WRAMFC38)
    or a
    jr nz,Label160C
    jp Label14B1

  Label1605:
    ld a,(WRAMFE33)
    or a
    jp nz,Label14B1

  Label160C:
    ld a,(WRAMFC38)
    or a
    jr nz,Label161A
    ld a,(WRAMFA88)
    or a
    jr z,Label1620
    jr Label162B

  Label161A:
    ld a,(WRAMFA89)
    or a
    jr nz,Label162B

  Label1620:
    push ix
    ld ix,WRAMFC83
    ld (ix+11),b
    pop ix

  Label162B:
    ld a,d
    or a
    jp z,Label1776
    push de
    exx
    pop de
    exx
    ld a,(ix+8)
    or a
    jp z,Label1684
    cp $01
    jp z,Label16C8
    call Label17C2
    push hl
    ld a,(WRAMFE40)
    call Label08A7
    pop hl
    push iy
    ld iy,WRAMFC83
    exx
    ld a,(WRAMFC38)
    or a
    jr nz,Label1660
    ld a,(WRAMFC34)
    or a
    jr nz,Label166B
    jr Label1666

  Label1660:
    ld a,(WRAMFC35)
    or a
    jr nz,Label166B

  Label1666:
    push de
    call Label08F8
    pop de

  Label166B:
    ld a,d
    cp $05
    jp z,Label170B
    call Label1FEE
    ld a,(WRAMFC3A)
    ld b,a
    call Label1E5B
    exx
    call Label0711
    pop iy
    jp Label14B1

  Label1684:
    ld hl,(WRAMFE40)
    call Label179C
    push hl
    call Label08A7
    pop hl
    push iy
    ld iy,WRAMFC83
    exx
    ld a,(WRAMFC38)
    or a
    jr nz,Label16A4
    ld a,(WRAMFC34)
    or a
    jr nz,Label16AF
    jr Label16AA

  Label16A4:
    ld a,(WRAMFC35)
    or a
    jr nz,Label16AF

  Label16AA:
    push de
    call Label08F8
    pop de

  Label16AF:
    ld a,d
    cp $05
    jp z,Label170B
    call Label1FEE
    ld a,(WRAMFC3A)
    ld b,a
    call Label1E5B
    exx
    call Label0711
    pop iy
    jp Label14B1

  Label16C8:
    ld a,e
    call Label08A7
    ld l,(ix+10)
    ld h,(ix+11)
    push iy
    ld iy,WRAMFC83
    exx
    ld a,(WRAMFC38)
    or a
    jr nz,Label16E7
    ld a,(WRAMFC34)
    or a
    jr nz,Label16F2
    jr Label16ED

  Label16E7:
    ld a,(WRAMFC35)
    or a
    jr nz,Label16F2

  Label16ED:
    push de
    call Label08F8
    pop de

  Label16F2:
    ld a,d
    cp $05
    jp z,Label170B
    call Label1FEE
    ld a,(WRAMFC3A)
    ld b,a
    call Label1E5B
    exx
    call Label0711
    pop iy
    jp Label14B1

  Label170B:
    exx
    call Label07D2
    pop iy
    jp Label14B1

  Label1714:
    or a
    jp z,Label1566
    cp $05
    jr nc,Label171F
    jp Label1421

  Label171F:
    cp $08
    jr nc,Label1726
    jp Label14B5

  Label1726:
    cp $0E
    jp z,Label1762
    push hl
    push ix
    sub $08
    ld c,a
    call Label0413
    jr c,Label173D
    xor a
    or (ix+0)
    jp nz,Label175E

  Label173D:
    ld a,c
    ld hl,$2C4E
    ld e,a
    ld d,$00
    add hl,de
    ld e,(hl)
    ld b,e
    ex af,af'
    ld a,$80
    or e
    ld d,$00
    ld e,a
    call Label2B23
    ex af,af'
    ld e,b
    ld d,$1C
    call Label2B18
    ld de,$1C00
    call Label2B18

  Label175E:
    pop ix
    pop hl
    ret

  Label1762:
    ld a,(WRAMFC3B)
    or a
    jr nz,Label176F
    ld a,(WRAMFE33)
    or a
    ret nz
    jr Label1773

  Label176F:
    ld a,(WRAMFC38)
    ret z

  Label1773:
    push hl
    push ix

  Label1776:
    push iy
    ld de,$1100
    call Label2B18
    pop iy
    pop ix
    pop hl
    ret

  Label1784:
    push de
    ld l,a
    ld h,$00
    add hl,hl
    add hl,hl
    add hl,hl
    ld de,Label4C19
    add hl,de
    pop de
    ret

  Label1791:
    push de
    ld e,a
    ld d,$00
    ld hl,Label4B51
    add hl,de
    ld a,(hl)
    pop de
    ret

  Label179C:
    ld a,e
    ld c,e
    and $E0
    rrca
    ld b,a
    rrca
    rrca
    rrca
    rrca
    ld e,a
    ld d,$00
    add hl,de
    ex af,af'
    ld a,(hl)
    ex af,af'
    ld hl,Label4CC9
    ld a,c
    and $0F
    or b
    ld e,a
    ld d,$00
    add hl,de
    add hl,de
    ld e,(hl)
    inc hl
    ld h,(hl)
    ld l,e
    ex af,af'
    ld c,a
    ex af,af'
    ld a,c
    ret

  Label17C2:
    ld a,e
    ld c,e
    and $E0
    sub $40
    rrca
    and $70
    ld e,a
    ld a,c
    and $0F
    or e
    ld e,a
    ld d,$00
    ld hl,Label4B91
    add hl,de
    add hl,de
    ld e,(hl)
    inc hl
    ld h,(hl)
    ld l,e
    ret

  Label17DD:
    ld de,$273F
    call Label2B18
    ret

    ld de,$2700
    call Label2B18
    ret

    ld de,$273A
    call Label2B18
    ret

  Label17F2:
    ld de,$2735
    call Label2B18
    ret

  Label17F9:
    ld de,$271F
    call Label2B18
    ret

  Label1800:
    ld de,$272F
    call Label2B18
    ret

  Label1807:
    ret

  Label1808:
    push bc
    push de
    push hl
    pop hl
    pop de
    pop bc
    ret

  Label180F:
    push af
    push ix
    push hl
    ld l,a
    ld h,$00
    add hl,hl
    add hl,hl
    push hl
    add hl,hl
    add hl,hl
    push hl
    add hl,hl
    pop de
    add hl,de
    pop de
    add hl,de
    ld de,Label2E40
    add hl,de
    push hl
    pop ix
    ld a,c
    cp $05
    jp nc,Label198D
    or a
    jp z,Label198D
    cp $03
    ld hl,WRAMFADE
    jr c,Label183E
    ld hl,WRAMFB65
    sub $02

  Label183E:
    ld e,a
    ld d,$00
    add hl,de
    push hl
    ld bc,$0004
    ld a,(ix+2)
    cp $04
    call nc,Label1992
    rrca
    rrca
    rrca
    rrca
    or (ix+6)
    ld (hl),a
    add hl,bc
    ld a,(ix+4)
    cp $04
    call nc,Label1992
    rrca
    rrca
    rrca
    rrca
    or (ix+8)
    ld (hl),a
    add hl,bc
    ld a,(ix+3)
    cp $04
    call nc,Label1992
    rrca
    rrca
    rrca
    rrca
    or (ix+7)
    ld (hl),a
    add hl,bc
    ld a,(ix+5)
    cp $04
    call nc,Label1992
    rrca
    rrca
    rrca
    rrca
    or (ix+9)
    ld (hl),a
    add hl,bc
    push de
    push hl
    ld d,$00
    ld e,(ix+1)
    ld hl,$2BF8
    add hl,de
    ld e,(hl)
    pop hl
    bit 0,e
    jr nz,Label189F
    ld a,(ix+10)
    ld (hl),a

  Label189F:
    add hl,bc
    bit 2,e
    jr nz,Label18A8
    ld a,(ix+12)
    ld (hl),a

  Label18A8:
    add hl,bc
    bit 1,e
    jr nz,Label18B1
    ld a,(ix+11)
    ld (hl),a

  Label18B1:
    add hl,bc
    bit 3,e
    jr nz,Label18BA
    ld a,(ix+13)
    ld (hl),a

  Label18BA:
    add hl,bc
    pop de
    ld a,(ix+14)
    rrca
    rrca
    or (ix+18)
    ld (hl),a
    add hl,bc
    ld a,(ix+16)
    rrca
    rrca
    or (ix+20)
    ld (hl),a
    add hl,bc
    ld a,(ix+15)
    rrca
    rrca
    or (ix+19)
    ld (hl),a
    add hl,bc
    ld a,(ix+17)
    rrca
    rrca
    or (ix+21)
    ld (hl),a
    add hl,bc
    xor a // A = 0
    bit 0,(ix+51)
    jr z,Label18ED
    ld a,$80

  Label18ED:
    or (ix+22)
    ld (hl),a
    add hl,bc
    xor a // A = 0
    bit 2,(ix+51)
    jr z,Label18FB
    ld a,$80

  Label18FB:
    or (ix+24)
    ld (hl),a
    add hl,bc
    xor a // A = 0
    bit 1,(ix+51)
    jr z,Label1909
    ld a,$80

  Label1909:
    or (ix+23)
    ld (hl),a
    add hl,bc
    xor a // A = 0
    bit 3,(ix+51)
    jr z,Label1917
    ld a,$80

  Label1917:
    or (ix+25)
    ld (hl),a
    add hl,bc
    ld a,(ix+26)
    ld (hl),a
    add hl,bc
    ld a,(ix+28)
    ld (hl),a
    add hl,bc
    ld a,(ix+27)
    ld (hl),a
    add hl,bc
    ld a,(ix+29)
    ld (hl),a
    add hl,bc
    ld a,(ix+30)
    rrca
    rrca
    rrca
    rrca
    or (ix+34)
    ld (hl),a
    add hl,bc
    ld a,(ix+32)
    rrca
    rrca
    rrca
    rrca
    or (ix+36)
    ld (hl),a
    add hl,bc
    ld a,(ix+31)
    rrca
    rrca
    rrca
    rrca
    or (ix+35)
    ld (hl),a
    add hl,bc
    ld a,(ix+33)
    rrca
    rrca
    rrca
    rrca
    or (ix+37)
    ld (hl),a
    add hl,bc
    ld a,(ix+38)
    ld (hl),a
    add hl,bc
    ld a,(ix+40)
    ld (hl),a
    add hl,bc
    ld a,(ix+39)
    ld (hl),a
    add hl,bc
    ld a,(ix+41)
    ld (hl),a
    pop hl
    ld de,$0080
    add hl,de
    ld a,(ix+0)
    rlca
    rlca
    rlca
    or (ix+1)
    ld (hl),a
    add hl,bc
    ld a,(hl)
    and $C0
    or (ix+50)
    ld (hl),a
    call Label1997

  Label198D:
    pop hl
    pop ix
    pop af
    ret

  Label1992:
    neg
    or $04
    ret

  Label1997:
    push iy
    ld a,(WRAMFE3C)
    ld b,a
    ld iy,WRAMFC83
    ld de,$0010

  Label19A4:
    add iy,de
    djnz Label19A4
    ld a,(ix+42)
    ld (iy+2),a
    ld a,(ix+43)
    ld (iy+3),a
    ld a,(ix+44)
    ld (iy+0),a
    ld a,(ix+45)
    ld (iy+1),a
    ld (iy+8),$00
    ld b,(ix+46)
    ld e,(ix+47)
    ld d,$00
    call Label19DE
    ld (iy+4),e
    ld (iy+5),d
    ld a,(ix+48)
    ld (iy+15),a
    pop iy
    ret

  Label19DE:
    ld hl,$0000
    ld a,b
    or a
    jp z,Label19F0
    ld a,e
    or a
    call m,Label19F4

  Label19EB:
    add hl,de
    djnz Label19EB
    ex de,hl
    ret

  Label19F0:
    ld de,$0000
    ret

  Label19F4:
    ld d,$FF
    ret

  Label19F7:
    cp $05
    ret nc
    or a
    ret z
    push hl
    cp $03
    jr c,Label1A05
    sub $02
    jr Label1A1A

  Label1A05:
    ld hl,WRAMFADE
    ld e,a
    ld d,$00
    add hl,de
    push hl
    exx
    pop hl
    ld c,$04
    ld b,a
    exx
    ld c,$30
    add a,c
    ld c,$05
    jr Label1A2D

  Label1A1A:
    ld hl,WRAMFB65
    ld e,a
    ld d,$00
    add hl,de
    push hl
    exx
    pop hl
    ld c,$06
    ld b,a
    exx
    ld c,$30
    add a,c
    ld c,$07

  Label1A2D:
    ld b,$07

  Label1A2F:
    push bc
    ld b,$04

  Label1A32:
    exx
    out (c),a
    rst 08h
    exx
    outi
    rst 10h
    inc hl
    inc hl
    inc hl
    add a,$04
    inc b
    djnz Label1A32
    pop bc
    djnz Label1A2F
    exx
    ld de,$0080
    add hl,de
    ld a,$B0
    add a,b
    out (c),a
    rst 08h
    ld a,(hl)
    exx
    out (c),a
    rst 10h
    exx
    inc hl
    inc hl
    inc hl
    inc hl
    ld a,$B4
    add a,b
    out (c),a
    rst 08h
    ld a,(hl)
    exx
    out (c),a
    rst 10h
    pop hl
    ret

  Label1A67:
    push af
    ld b,(iy+2)
    ld a,(WRAMFE38)
    add a,b
    ld (WRAMFE38),a
    jr nc,Label1A7F
    ld a,(WRAMFE39)
    add a,$FF
    ld (WRAMFE39),a
    call c,Label1A81

  Label1A7F:
    pop af
    ret

  Label1A81:
    ld a,(iy+0)
    and $28
    cp $28
    jp z,Label1BEA
    ld a,$01
    add a,(iy+1)
    ld (iy+1),a
    ld a,$3C
    cp (iy+1)
    call c,Label1B3A
    ld a,$5A
    cp (iy+1)
    call c,Label1B1F
    push ix
    ld ix,WRAMFD2C
    dec (ix+2)
    call z,Label1B16
    call m,Label1B16
    ld ix,WRAMFD3C
    dec (ix+2)
    call z,Label1B16
    call m,Label1B16
    ld ix,WRAMFD4C
    dec (ix+2)
    call z,Label1B16
    call m,Label1B16
    ld ix,WRAMFD5C
    dec (ix+2)
    call z,Label1B16
    call m,Label1B16
    ld ix,WRAMFD6C
    dec (ix+2)
    call z,Label1B16
    call m,Label1B16
    ld ix,WRAMFD7C
    dec (ix+2)
    call z,Label1B16
    call m,Label1B16
    pop ix
    push ix
    ld ix,WRAMFD8C
    ld a,(ix+2)
    sub $05
    bit 7,a
    call nz,Label1B38
    ld (ix+2),a
    pop ix
    ld a,(iy+7)
    sub $06
    call c,Label1B31
    ld (iy+7),a
    ret

  Label1B16:
    ld (ix+2),$00
    ld (ix+1),$00
    ret

  Label1B1F:
    ld (iy+1),$7E
    set 3,(iy+0)
    ret
    ld (iy+6),$01
    set 4,(iy+0)
    ret

  Label1B31:
    ld a,$00
    set 5,(iy+0)
    ret

  Label1B38:
    xor a // A = 0
    ret

  Label1B3A:
    push hl
    xor a // A = 0
    ld (WRAMFD2D),a
    ld (WRAMFD3D),a
    ld (WRAMFD4D),a
    ld (WRAMFD5D),a
    ld (WRAMFD6D),a
    ld (WRAMFD7D),a
    pop hl
    ret

  Label1B50:
    bit 0,(ix+1)
    ret z
    ld a,(iy+1)
    add a,(ix+2)
    add a,(ix+3)
    jr c,Label1B64
    cp $7F
    jr c,Label1B6A

  Label1B64:
    ld (ix+1),$00
    ld a,$78

  Label1B6A:
    ld b,a
    ld a,(WRAMFE3C)
    call Label2B2E
    ret

  Label1B72:
    bit 0,(ix+1)
    ret z
    ld a,(ix+2)
    sub (ix+3)
    jr nc,Label1B81
    ld a,$01

  Label1B81:
    push af
    push ix
    ld a,(WRAMFE3C)
    sub $08
    call Label0413
    jr c,Label1B99
    xor a // A = 0
    or (ix+7)
    jr nz,Label1BAD
    or (ix+0)
    jr nz,Label1BAD

  Label1B99:
    pop ix
    pop af
    ld b,a
    ld a,(ix+1)
    and $C0
    or b
    ld b,a
    ld a,(WRAMFE3C)
    sub $08
    call Label2BC7
    ret

  Label1BAD:
    pop ix
    pop af
    ret

  Label1BB1:
    bit 0,(ix+1)
    ret z
    ld a,(iy+7)
    bit 7,(ix+2)
    jr nz,Label1BC6
    add a,(ix+2)
    jr c,Label1BDB
    jr Label1BCC

  Label1BC6:
    add a,(ix+2)
    jp m,Label1BDB

  Label1BCC:
    sub (ix+3)
    jr c,Label1BDB
    sub (ix+3)
    jr c,Label1BDB
    sub (ix+3)
    jr nc,Label1BE0

  Label1BDB:
    ld (ix+1),$00
    xor a // A = 0

  Label1BE0:
    ld b,a
    ld a,(WRAMFE33)
    or a
    ret nz
    call Label2BE4
    ret

  Label1BEA:
    ld a,(iy+0)
    and $C7
    ld (iy+0),a
    xor a // A = 0
    ld (WRAMFE27),a
    jp Label295F

  Label1BF9:
    cp $05
    ret nc
    ld b,a
    dec a
    ld e,a
    ld d,$00
    ld hl,WRAMFC3D
    add hl,de
    ld a,(hl)
    or a
    ret nz
    ex af,af'
    ld a,b
    ex af,af'
    call Label1DCE
    ld e,(iy+4)
    ld d,(iy+5)
    ld hl,$0000
    or a
    sbc hl,de
    ret z
    bit 2,(iy+8)
    ret nz
    bit 4,(iy+8)
    jr nz,Label1C36
    bit 3,(iy+8)
    jr nz,Label1C36
    dec (iy+14)
    ret nz
    ld a,(iy+3)
    ld (iy+14),a

  Label1C36:
    set 4,(iy+8)
    res 0,(iy+8)
    dec (iy+10)
    ret nz
    ld a,(iy+15)
    ld (iy+10),a
    ld hl,Label1D5C
    push hl
    ld c,(iy+0)
    ld b,(iy+1)
    ld a,d
    or a
    jp p,Label1C63
    ld hl,$0000
    or a
    sbc hl,bc
    ld c,l
    ld b,h
    set 0,(iy+8)

  Label1C63:
    ld l,(iy+6)
    ld h,(iy+7)
    ld a,(iy+2)
    or a
    jp z,Label1C89
    cp $01
    jp z,Label1CA0
    cp $02
    jp z,Label1CC3
    cp $03
    jp z,Label1CFA
    cp $04
    jp z,Label1D16
    jp Label1D33

  Label1C87:
    ex de,hl
    ret

  Label1C89:
    add hl,bc
    ld c,l
    ld b,h
    or a
    bit 0,(iy+8)
    call nz,Label1C87
    sbc hl,de
    call p,Label1D54
    ld (iy+6),c
    ld (iy+7),b
    ret

  Label1CA0:
    bit 1,(iy+8)
    jr nz,Label1CB6
    call Label1CC9
    bit 1,(iy+8)
    jr nz,Label1CBF

  Label1CAF:
    ld c,(iy+4)
    ld b,(iy+5)
    ret

  Label1CB6:
    call Label1CE0
    bit 1,(iy+8)
    jr z,Label1CAF

  Label1CBF:
    ld bc,$0000
    ret

  Label1CC3:
    bit 1,(iy+8)
    jr nz,Label1CE0

  Label1CC9:
    add hl,bc
    ld c,l
    ld b,h
    or a
    bit 0,(iy+8)
    call nz,Label1C87
    sbc hl,de
    call p,Label1D49
    ld (iy+6),c
    ld (iy+7),b
    ret

  Label1CE0:
    sbc hl,bc
    ld c,l
    ld b,h
    ld de,$0000
    bit 0,(iy+8)
    call nz,Label1C87
    sbc hl,de
    call m,Label1D54
    ld (iy+6),c
    ld (iy+7),b
    ret

  Label1CFA:
    push de
    ld e,(iy+9)
    ld d,$00
    ld a,(de)
    inc e
    ld (iy+9),e
    pop de
    bit 1,a
    jr nz,Label1D12
    bit 1,(iy+8)
    jr z,Label1CC9
    jr Label1CE0

  Label1D12:
    ld bc,$0000
    ret

  Label1D16:
    bit 1,(iy+8)
    jr nz,Label1D26
    call Label1D49
    ld (iy+6),c
    ld (iy+7),b
    ret

  Label1D26:
    call Label1CE0
    bit 1,(iy+8)
    ret nz
    set 2,(iy+8)
    ret

  Label1D33:
    bit 1,(iy+8)
    jr nz,Label1D3C
    jp Label1CC9

  Label1D3C:
    call Label1CE0
    bit 1,(iy+8)
    ret nz
    set 2,(iy+8)
    ret

  Label1D49:
    set 1,(iy+8)
    ld c,(iy+4)
    ld b,(iy+5)
    ret

  Label1D54:
    res 1,(iy+8)
    ld bc,$0000
    ret

  Label1D5C:
    ex af,af'
    ld d,a
    ex af,af'
    ld a,d
    call Label1D8B
    add hl,bc
    ex af,af'
    cp $03
    jr nc,Label1D79
    ld e,$A4
    add a,e
    ld d,a
    ld e,h
    call Label2B18
    sub $04
    ld d,a
    ld e,l
    call Label2B18
    ret

  Label1D79:
    sub $02
    ld e,$A4
    add a,e
    ld d,a
    ld e,h
    call Label2B23
    sub $04
    ld d,a
    ld e,l
    call Label2B23
    ret

  Label1D8B:
    ld hl,WRAMFADE
    cp $03
    jr c,Label1D97
    ld hl,WRAMFB65
    sub $02

  Label1D97:
    ld e,a
    ld d,$00
    add hl,de
    ld e,$70
    ld d,$00
    add hl,de
    ld e,(hl)
    inc hl
    inc hl
    inc hl
    inc hl
    ld d,(hl)
    ex de,hl
    ret

  Label1DA8:
    push iy
    ld a,(WRAMFE3C)
    ld b,a
    call Label1DCE
    ld a,(iy+3)
    or a
    jr z,Label1DC7
    ld (iy+14),a
    ld (iy+8),$00
    ld a,(iy+15)
    ld (iy+10),a
    pop iy
    ret

  Label1DC7:
    set 3,(iy+8)
    pop iy
    ret

  Label1DCE:
    ld iy,WRAMFC83
    ld de,$0010

  Label1DD5:
    add iy,de
    djnz Label1DD5
    ret

  Label1DDA:
    ld a,(WRAMFE33)
    or a
    jr nz,Label1DE7
    ld a,(WRAMFA88)
    or a
    ret z
    jr Label1DEC

  Label1DE7:
    ld a,(WRAMFA89)
    or a
    ret z

  Label1DEC:
    ld a,(WRAMFAA2)
    or a
    ret nz
    ld a,(WRAMFA9C)
    or a
    ret z
    cp $02
    jr z,Label1E23
    ld a,(WRAMFAA3)
    dec a
    ld (WRAMFAA3),a
    ret nz
    ld a,(WRAMFA9E)
    ld c,a
    ld a,(WRAMFAA1)
    ld (WRAMFAA3),a
    ld a,(WRAMFA9F)
    ld b,a
    ld a,(WRAMFAA0)
    sub b
    jr c,Label1E4C
    cp c
    jr c,Label1E4C
    ld (WRAMFAA0),a
    ld d,$1B
    ld e,a
    call Label2B18
    ret

  Label1E23:
    ld a,(WRAMFAA3)
    dec a
    ld (WRAMFAA3),a
    ret nz
    ld a,(WRAMFA9E)
    ld c,a
    ld a,(WRAMFAA1)
    ld (WRAMFAA3),a
    ld a,(WRAMFA9F)
    ld b,a
    ld a,(WRAMFAA0)
    add a,b
    jr c,Label1E4C
    cp c
    jr nc,Label1E4C
    ld (WRAMFAA0),a
    ld d,$1B
    ld e,a
    call Label2B18
    ret

  Label1E4C:
    ld a,(WRAMFA9E)
    ld d,$1B
    ld e,a
    call Label2B18
    ld a,$01
    ld (WRAMFAA2),a
    ret

  Label1E5B:
    ld a,(WRAMFC38)
    or a
    jr nz,Label1E6E
    ld a,(WRAMFE33)
    or a
    jr nz,Label1E6E
    ld a,(WRAMFA88)
    or a
    ret z
    jr Label1E73

  Label1E6E:
    ld a,(WRAMFA89)
    or a
    ret z

  Label1E73:
    ld a,(WRAMFA9C)
    or a
    ret z
    cp $02
    jr z,Label1E7F
    ld a,b
    jr Label1E88

  Label1E7F:
    ld a,(WRAMFA9D)
    ld d,$1B
    ld e,a
    call Label2B18

  Label1E88:
    ld (WRAMFAA0),a
    xor a // A = 0
    ld (WRAMFAA2),a
    ld a,(WRAMFAA1)
    ld (WRAMFAA3),a
    ret

  Label1E96:
    ld a,(WRAMFE33)
    or a
    jr nz,Label1EA3
    ld a,(WRAMFC36)
    or a
    ret z
    jr Label1EA8

  Label1EA3:
    ld a,(WRAMFC37)
    or a
    ret z

  Label1EA8:
    ld a,(WRAMFA8E)
    or a
    ret nz
    ld de,(WRAMFA96)
    ld hl,$0000
    or a
    sbc hl,de
    ret z
    ld a,(WRAMFA90)
    or a
    jr z,Label1EC9
    ld a,(WRAMFA91)
    or a
    jr z,Label1EC9
    dec a
    ld (WRAMFA91),a
    ret

  Label1EC9:
    ld hl,(WRAMFA8C)
    ld de,(WRAMFA8A)
    add hl,de
    ld d,$19
    ld e,l
    call Label2B18
    ld d,$1A
    ld e,h
    call Label2B18
    ld hl,(WRAMFA8C)
    ld bc,(WRAMFA96)
    xor a // A = 0
    ld (WRAMFA99),a
    ld a,(WRAMFA95)
    or a
    jp p,Label1EFD
    push hl
    ld hl,$0000
    sbc hl,bc
    ld c,l
    ld b,h
    ld a,$01
    ld (WRAMFA99),a
    pop hl

  Label1EFD:
    ld a,(WRAMFA8F)
    cp $00
    jp z,Label1F6B
    cp $01
    jp z,Label1F83
    cp $03
    jp z,Label1FA5
    cp $02
    jp z,Label1FBD
    cp $04
    jp z,Label1FCF
    cp $05
    jp z,Label1F26
    ld a,(WRAMFA98)
    or a
    ret nz
    jp Label1F2C

  Label1F26:
    ld a,(WRAMFA98)
    or a
    jr nz,Label1F44

  Label1F2C:
    add hl,bc
    ld c,l
    ld b,h
    ld de,(WRAMFA94)
    ld a,(WRAMFA99)
    or a
    call nz,Label1C87
    sbc hl,de
    call p,Label1FE4
    ld (WRAMFA8C),bc
    ret

  Label1F44:
    sbc hl,bc
    ld c,l
    ld b,h
    ld de,(WRAMFA92)
    ld a,(WRAMFA99)
    or a
    call nz,Label1C87
    sbc hl,de
    jp m,Label1F5D
    ld (WRAMFA8C),bc
    ret

  Label1F5D:
    ld a,$01
    ld (WRAMFA8E),a
    ld de,(WRAMFA92)
    ld (WRAMFA8C),de
    ret

  Label1F6B:
    add hl,bc
    ld c,l
    ld b,h
    ld de,(WRAMFA94)
    ld a,(WRAMFA99)
    or a
    call nz,Label1C87
    sbc hl,de
    call p,Label1FE4
    ld (WRAMFA8C),bc
    ret

  Label1F83:
    ld a,(WRAMFA98)
    or a
    jr nz,Label1F8C
    jp Label1F2C

  Label1F8C:
    sbc hl,bc
    ld c,l
    ld b,h
    ld de,(WRAMFA92)
    ld a,(WRAMFA99)
    or a
    call nz,Label1C87
    sbc hl,de
    jp m,Label1FDB
    ld (WRAMFA8C),bc
    ret

  Label1FA5:
    push de
    ld de,(WRAMFA9A)
    ld a,(de)
    inc e
    ld (WRAMFA9A),de
    pop de
    bit 1,a
    ret nz
    ld a,(WRAMFA98)
    or a
    jp z,Label1F2C
    jr Label1F8C

  Label1FBD:
    ld a,(WRAMFA98)
    or a
    jr nz,Label1F44
    ld a,$01
    ld (WRAMFA98),a
    ld hl,(WRAMFA94)
    ld (WRAMFA8C),hl
    ret

  Label1FCF:
    ld a,(WRAMFA98)
    or a
    jr nz,Label1FD8
    jp Label1F2C

  Label1FD8:
    jp Label1F5D

  Label1FDB:
    xor a // A = 0
    ld (WRAMFA98),a
    ld bc,(WRAMFA92)
    ret

  Label1FE4:
    ld a,$01
    ld (WRAMFA98),a
    ld bc,(WRAMFA94)
    ret

  Label1FEE:
    ld a,(WRAMFA90)
    or a
    ret z
    dec a
    ld (WRAMFA91),a
    ld hl,$0000
    ld (WRAMFA8C),hl
    xor a // A = 0
    ld (WRAMFA98),a
    ld (WRAMFA8E),a
    ret

  Label2005:
    ld a,(WRAMFE33)
    or a
    ret nz
    ld a,(WRAMFE21)
    or a
    ret z
    ld a,(WRAMFE22)
    ld b,a
    ld a,(WRAMFE23)
    sub b
    jr c,Label2029
    ld (WRAMFE23),a
    push hl
    ld hl,WRAMFC8E
    ld (hl),a
    pop hl
    ld d,$1B
    ld e,a
    call Label2B18
    ret

  Label2029:
    ld de,$1B00
    call Label2B18
    xor a // A = 0
    ld (WRAMFE23),a
    push hl
    ld hl,WRAMFC8E
    ld (hl),a
    pop hl
    ret

  Label203A:
    ld e,a
    ld d,$00
    ld hl,Label2056
    add hl,de
    ld c,(hl)
    ld a,b
    add a,c
    or a
    jp m,Label204D
    ld e,a
    ld d,$00
    jr Label2050

  Label204D:
    ld e,a
    ld d,$FF

  Label2050:
    ld hl,$207E
    add hl,de
    ld e,(hl)
    ret

  Label2056:
    db $07, $01, $03, $00, $06, $08, $0A, $00
    db $00, $00, $09, $0B, $00, $02, $04, $05
    db $AC, $C1, $CD, $C2, $CE, $CF, $C4, $C0
    db $C5, $CA, $C6, $CB, $CC, $E1, $ED, $E2
    db $EE, $EF, $E4, $E0, $E5, $EA, $E6, $EB
    db $0C, $01, $0D, $02, $0E, $0F, $04, $00
    db $05, $0A, $06, $0B, $2C, $21, $2D, $22
    db $2E, $2F, $24, $20, $25, $2A, $26, $2B

  Label2096:
    push af
    push bc
    push de
    push hl
    push ix
    push iy
    ld a,$FF
    ld (WRAMFE31),a
    ld (WRAMFE32),a
    ld (WRAMFE24),sp
    ld a,(WRAMFEB8)
    out ($0C),a
    in a,($06)
    ld (WRAMFE37),a
    bit 7,a
    call nz,Label0804
    ld b,$05
    ld a,(WRAMFE37)
    bit 5,a
    call nz,Label03AF
    ld b,$04
    ld a,(WRAMFE37)
    bit 4,a
    call nz,Label03AF
    ld b,$03
    ld a,(WRAMFE37)
    bit 3,a
    call nz,Label03AF
    ld b,$02
    ld a,(WRAMFE37)
    bit 2,a
    call nz,Label03AF
    ld b,$01
    ld a,(WRAMFE37)
    bit 1,a
    call nz,Label03AF
    ld b,$00
    ld a,(WRAMFE37)
    bit 0,a
    call nz,Label03AF
    in a,($04)
    ld (WRAMFE36),a
    bit 1,a
    jp nz,Label21AE
    xor a // A = 0
    ld (WRAMFE31),a
    inc a
    ld (WRAMFC3B),a
    call Label136F
    call Label1E96
    call Label1DDA
    call Label2005
    ld a,$01
    call Label1BF9
    ld a,$02
    call Label1BF9
    ld a,$03
    call Label1BF9
    ld a,$04
    call Label1BF9
    ld a,(WRAMFE1C)
    or a
    jp z,Label215E
    ld a,$05
    ld (WRAMFE3C),a
    ld ix,WRAMFD9C
    call Label229F
    ld a,$06
    ld (WRAMFE3C),a
    ld ix,WRAMFDAC
    call Label229F
    ld a,$07
    ld (WRAMFE3C),a
    ld ix,WRAMFDBC
    call Label229F
    ld a,$00
    ld (WRAMFE3C),a
    ld ix,WRAMFDCC
    call Label229F

  Label215E:
    ld a,(WRAMFBF3)
    or a
    jr z,Label2170
    ld a,$0B
    ld (WRAMFE3C),a
    ld ix,WRAMFDEC
    call Label229F

  Label2170:
    ld a,(WRAMFBFD)
    or a
    jr z,Label2182
    ld a,$0C
    ld (WRAMFE3C),a
    ld ix,WRAMFDFC
    call Label229F

  Label2182:
    ld a,(WRAMFC07)
    or a
    jr z,Label2194
    ld a,$0D
    ld (WRAMFE3C),a
    ld ix,WRAMFE0C
    call Label229F

  Label2194:
    ld a,(WRAMFC38)
    or a
    jp z,Label2434
    ld iy,WRAMFAC6
    ld a,$0E
    ld (WRAMFE3C),a
    ld ix,WRAMFDDC
    call Label229F
    jp Label2434

  Label21AE:
    xor a // A = 0
    ld (WRAMFE32),a
    ld (WRAMFC3B),a
    ld a,(WRAMFE2D)
    or a
    jp z,Label2434
    ld ix,WRAMFCEC
    ld iy,WRAMFABE
    ld a,(WRAMFE27)
    or a
    call nz,Label1A67
    ld a,$01
    ld (WRAMFE3C),a
    ld ix,WRAMFCEC
    call Label229F
    ld a,(WRAMFE27)
    or a
    call nz,Label1B50
    ld a,$02
    ld (WRAMFE3C),a
    ld ix,WRAMFCFC
    call Label229F
    ld a,(WRAMFE27)
    or a
    call nz,Label1B50
    ld a,$03
    ld (WRAMFE3C),a
    ld ix,WRAMFD0C
    call Label229F
    ld a,(WRAMFE27)
    or a
    call nz,Label1B50
    ld a,$04
    ld (WRAMFE3C),a
    ld ix,WRAMFD1C
    call Label229F
    ld a,(WRAMFE27)
    or a
    call nz,Label1B50
    ld a,$08
    ld (WRAMFE3C),a
    ld ix,WRAMFD2C
    call Label229F
    ld a,(WRAMFE27)
    or a
    call nz,Label1B72
    ld a,$09
    ld (WRAMFE3C),a
    ld ix,WRAMFD3C
    call Label229F
    ld a,(WRAMFE27)
    or a
    call nz,Label1B72
    ld a,$0A
    ld (WRAMFE3C),a
    ld ix,WRAMFD4C
    call Label229F
    ld a,(WRAMFE27)
    or a
    call nz,Label1B72
    ld a,$0B
    ld (WRAMFE3C),a
    ld ix,WRAMFD5C
    call Label229F
    ld a,(WRAMFE27)
    or a
    call nz,Label1B72
    ld a,$0C
    ld (WRAMFE3C),a
    ld ix,WRAMFD6C
    call Label229F
    ld a,(WRAMFE27)
    or a
    call nz,Label1B72
    ld a,$0D
    ld (WRAMFE3C),a
    ld ix,WRAMFD7C
    call Label229F
    ld a,(WRAMFE27)
    or a
    call nz,Label1B72
    ld a,$0E
    ld (WRAMFE3C),a
    ld ix,WRAMFD8C
    call Label229F
    ld a,(WRAMFE27)
    or a
    call nz,Label1BB1
    jp Label2434

  Label229F:
    bit 0,(ix+1)
    ret z
    bit 0,(ix+0)
    jp z,Label22B7
    nop
    bit 1,(ix+0)
    jp nz,Label23DC
    jp Label23F8
    ret

  Label22B7:
    ld a,(ix+0)
    and $08
    ld b,$F3
    or b
    ld (ix+0),a
    ld l,(ix+9)
    ld h,(ix+10)
    call Label2457
    ld (ix+9),l
    ld (ix+10),h
    ld a,(WRAMFE3C)
    or a
    jp z,Label2322
    cp $08
    jp nc,Label232F
    call Label23C4
    ld a,(WRAMFE3C)
    cp $05
    jr nc,Label2314
    ld a,(iy+1)
    add a,(ix+2)
    add a,(ix+3)
    jr c,Label22F6
    cp $7F
    jr c,Label22F8

  Label22F6:
    ld a,$7F

  Label22F8:
    ld b,a
    ld a,(WRAMFE3C)
    call Label2B2E
    bit 3,(ix+0)
    jr nz,Label2310
    push af
    push bc
    push de
    ld d,$00
    call Label1714
    pop de
    pop bc
    pop af

  Label2310:
    call Label1421
    ret

  Label2314:
    ld a,(ix+3)
    ld b,a
    ld a,(WRAMFE3C)
    call Label2BBA
    call Label14B5
    ret

  Label2322:
    ld a,(ix+0)
    and $F0
    ld d,a
    ld e,(ix+13)
    call Label1546
    ret

  Label232F:
    cp $0E
    jp z,Label2355
    ld a,(ix+0)
    and $F0
    ld d,a
    ld e,(ix+13)
    ld a,(ix+2)
    sub (ix+3)
    jr nc,Label2346
    xor a // A = 0

  Label2346:
    ld b,a
    ld a,(ix+1)
    and $C0
    or b
    ld b,a
    ld a,(WRAMFE3C)
    call Label159B
    ret

  Label2355:
    ld a,(ix+8)
    cp $01
    jr nz,Label236C
    ld a,(ix+0)
    and $F0
    ld d,a
    ld a,(ix+6)
    ld e,(ix+13)
    or e
    ld e,a
    jr Label236F

  Label236C:
    call Label23C4

  Label236F:
    ld a,(iy+7)
    add a,(ix+2)
    sub (ix+3)
    jr c,Label2384
    sub (ix+3)
    jr c,Label2384
    sub (ix+3)
    jr nc,Label2385

  Label2384:
    xor a // A = 0

  Label2385:
    ld b,a
    ld a,(WRAMFE21)
    or a
    jr z,Label2390
    ld a,b
    ld (WRAMFE23),a

  Label2390:
    ld a,(WRAMFE3C)
    bit 2,(ix+0)
    jr nz,Label239F
    bit 3,(ix+0)
    jr nz,Label23B3

  Label239F:
    call Label15EF
    bit 2,(ix+0)
    ret nz
    ld d,$11
    ld a,(ix+1)
    and $C0
    ld e,a
    call Label2B18
    ret

  Label23B3:
    ld d,$05
    call Label15EF
    ld d,$11
    ld a,(ix+1)
    and $C0
    ld e,a
    call Label2B18
    ret

  Label23C4:
    ld a,(ix+6)
    ld b,(ix+7)
    call Label203A
    ld a,(ix+0)
    and $F0
    ld d,a
    ld a,(ix+14)
    add a,(ix+13)
    add a,e
    ld e,a
    ret

  Label23DC:
    dec (ix+4)
    ret nz
    res 1,(ix+0)
    ld a,(ix+5)
    or a
    jr z,Label23FC
    bit 3,(ix+0)
    ret nz
    ld a,(WRAMFE3C)
    ld d,$00
    call Label1714
    ret

  Label23F8:
    dec (ix+5)
    ret nz

  Label23FC:
    res 0,(ix+0)
    bit 3,(ix+0)
    jp nz,Label22B7
    ld a,(WRAMFE3C)
    cp $05
    jp c,Label242D

  Label240F:
    cp $0E
    jp z,Label22B7
    cp $08
    jr nc,Label2420
    ld d,$00
    call Label1714
    jp Label22B7

  Label2420:
    cp $0E
    jp c,Label22B7
    ld d,$00
    call Label1714
    jp Label22B7

  Label242D:
    cp $01
    jr c,Label240F
    jp Label22B7

  Label2434:
    ld a,(WRAMFE32)
    or a
    jp nz,Label2449
    call Label1800
    pop iy
    pop ix
    pop hl
    pop de
    pop bc
    pop af
    ei
    reti

  Label2449:
    call Label17F9
    pop iy
    pop ix
    pop hl
    pop de
    pop bc
    pop af
    ei
    reti

  Label2457:
    ld a,(WRAMFE3C)
    ld b,a
    ex af,af'
    ld a,b
    ex af,af'
    ld a,(hl)
    or a
    jp z,Label24E0
    cp $31
    jp c,Label24E4
    cp $60
    jp c,Label2552
    bit 7,a
    jp nz,Label2475
    jp Label2457

  Label2475:
    sub $80
    ex af,af'
    ld c,a
    ex af,af'
    call Label180F
    ld a,(WRAMFE3C)
    call Label19F7
    inc hl
    bit 7,(hl)
    call nz,Label2496
    bit 7,(hl)
    call nz,Label24C6
    bit 7,(hl)
    call nz,Label24BE
    jp Label2457

  Label2496:
    ld a,(WRAMFE3C)
    cp $08
    jr nc,Label24A5
    ld a,(hl)
    sub $88
    ld (ix+2),a
    inc hl
    ret

  Label24A5:
    cp $0E
    jr z,Label24B6
    ld a,(WRAMFE27)
    or a
    ret nz
    ld a,(hl)
    sub $80
    ld (ix+2),a
    inc hl
    ret

  Label24B6:
    ld a,(hl)
    sub $B8
    ld (ix+2),a
    inc hl
    ret

  Label24BE:
    ld a,(hl)
    sub $B8
    ld (ix+15),a
    inc hl
    ret

  Label24C6:
    ld a,(hl)
    and $0F
    bit 0,a
    jr z,Label24D3
    and $0E
    neg
    jr Label24D5

  Label24D3:
    and $0E

  Label24D5:
    rrca
    rrca
    rrca
    rrca
    and $F0
    ld (ix+14),a
    inc hl
    ret

  Label24E0:
    inc hl
    ld a,(hl)
    jr Label24E4

  Label24E4:
    ex af,af'
    ld a,(WRAMFE3C)
    ex af,af'
    call Label2A8C
    ld (ix+4),b
    ld (ix+5),a
    inc hl
    ld a,(hl)
    bit 6,a
    jr nz,Label253A
    bit 7,a
    jr z,Label2502
    res 3,(ix+0)
    jr Label2506

  Label2502:
    set 3,(ix+0)

  Label2506:
    ld a,(WRAMFE3C)
    cp $0E
    jr nz,Label2511
    xor a // A = 0
    ld (WRAMFE21),a

  Label2511:
    ld a,(hl)
    and $3F
    ld (ix+3),a
    inc hl
    ld a,(WRAMFE3C)
    or a
    jr z,Label2530
    cp $08
    jr nc,Label2530

  Label2522:
    ld a,(hl)
    and $0F
    ld (ix+6),a
    ld a,(hl)
    and $F0
    ld (ix+13),a
    inc hl
    ret

  Label2530:
    cp $0E
    jr z,Label2522
    ld a,(hl)
    ld (ix+13),a
    inc hl
    ret

  Label253A:
    ld a,(WRAMFE3C)
    cp $0E
    jr nz,Label2545
    xor a // A = 0
    ld (WRAMFE21),a

  Label2545:
    ld a,$0F
    and (ix+0)
    or $04
    ld (ix+0),a
    inc hl
    inc hl
    ret

  Label2552:
    sub $30
    inc hl
    exx
    ld hl,Label2457
    push hl
    ld e,a
    add a,a
    add a,e
    ld e,a
    ld d,$00
    ld hl,Label2565
    add hl,de
    jp (hl)

  Label2565:
    jp Label25F5
    jp Label29A6
    jp Label29A6
    jp Label2789
    jp Label29FE
    jp Label2A1A
    jp Label2A33
    jp Label2792
    jp Label29FE
    jp Label29A0
    jp Label2A83
    jp Label2A4B
    jp Label25F5
    jp Label2A6D
    jp Label25F5
    jp Label2A77
    jp Label295E
    jp Label295A
    jp Label2992
    jp Label2A5C
    jp Label28BA
    jp Label28B4
    jp Label286D
    jp Label2861
    jp Label25F5
    jp Label25F5
    jp Label25F5
    jp Label2803
    jp Label27F5
    jp Label28A5
    jp Label27EC
    jp Label27D8
    jp Label27CF
    jp Label27C8
    jp Label27FC
    jp Label27B0
    jp Label2778
    jp Label275E
    jp Label2755
    jp Label2709
    jp Label26F6
    jp Label26D5
    jp Label267F
    jp Label2675
    jp Label266E
    jp Label2667
    jp Label2660
    jp Label25F7

  Label25F5:
    exx
    ret

  Label25F7:
    exx
    push ix
    ld a,(WRAMFE3C)
    cp $05
    jr z,Label262B
    cp $06
    jr z,Label261B
    cp $07
    jp nz,Label2659
    ld ix,WRAMF81C
    xor a // A = 0
    cp (ix+0)
    jp nz,Label265C
    ld de,(WRAMF804)
    jr Label2639

  Label261B:
    ld ix,WRAMF811
    xor a // A = 0
    cp (ix+0)
    jr nz,Label265C
    ld de,(WRAMF802)
    jr Label2639

  Label262B:
    ld ix,WRAMF806
    xor a // A = 0
    cp (ix+0)
    jr nz,Label265C
    ld de,(WRAMF800)

  Label2639:
    xor a // A = 0
    ld (WRAMFE42),a
    ld (WRAMFE43),a
    ld (ix+3),a
    ld (ix+4),a
    dec a
    ld (ix+0),$FF
    ld (ix+1),e
    ld (ix+2),d
    ld a,(hl)
    ld (ix+7),a
    ld (ix+8),a
    inc hl

  Label2659:
    pop ix
    ret

  Label265C:
    inc hl
    pop ix
    ret

  Label2660:
    exx
    ld a,(hl)
    ld (WRAMFE22),a
    inc hl
    ret

  Label2667:
    exx
    ld a,(hl)
    ld (WRAMFC37),a
    inc hl
    ret

  Label266E:
    exx
    ld a,(hl)
    ld (WRAMFA89),a
    inc hl
    ret

  Label2675:
    exx
    ld a,(hl)
    ld (WRAMFC3C),a
    ld (WRAMFA88),a
    inc hl
    ret

  Label267F:
    exx
    ld a,(WRAMFE3C)
    cp $0B
    jr z,Label268F
    cp $0C
    jr z,Label26A7
    cp $0D
    jr z,Label26BE

  Label268F:
    xor a // A = 0
    ld (WRAMFBF3),a
    ld de,$0088
    call Label2B23
    ld de,$1C08
    call Label2B18
    ld de,$1C00
    call Label2B18
    ret
    ret

  Label26A7:
    xor a // A = 0
    ld (WRAMFBFD),a
    ld de,$0090
    call Label2B23
    ld de,$1C10
    call Label2B18
    ld de,$1C00
    call Label2B18
    ret

  Label26BE:
    xor a // A = 0
    ld (WRAMFC07),a
    ld de,$00A0
    call Label2B23
    ld de,$1C20
    call Label2B18
    ld de,$1C00
    call Label2B18
    ret

  Label26D5:
    exx
    xor a // A = 0
    ld (WRAMFC38),a
    ld (WRAMFE33),a
    ld de,$1001
    call Label2B18
    ld de,$1C80
    call Label2B18
    ld de,$1C00
    call Label2B18
    ld de,$1000
    call Label2B18
    ret

  Label26F6:
    exx
    ld a,(WRAMFC38)
    or a
    jr nz,Label2703
    ld a,(hl)
    ld (WRAMFC34),a
    inc hl
    ret

  Label2703:
    ld a,(hl)
    ld (WRAMFC35),a
    inc hl
    ret

  Label2709:
    exx
    ld a,(WRAMFC3B)
    or a
    jr nz,Label2734
    inc a
    ld (WRAMFC34),a
    ld a,(WRAMFC38)
    or a
    jr nz,Label273B

  Label271A:
    ld a,(hl)
    ld (WRAMFA9C),a
    inc hl
    ld a,(hl)
    ld (WRAMFAA1),a
    inc hl
    ld a,(hl)
    ld (WRAMFA9D),a
    inc hl
    ld a,(hl)
    ld (WRAMFA9E),a
    inc hl
    ld a,(hl)
    ld (WRAMFA9F),a
    inc hl
    ret

  Label2734:
    ld a,$01
    ld (WRAMFC35),a
    jr Label271A

  Label273B:
    ld a,(hl)
    ld (WRAMFAB6),a
    inc hl
    ld a,(hl)
    ld (WRAMFABB),a
    inc hl
    ld a,(hl)
    ld (WRAMFAB7),a
    inc hl
    ld a,(hl)
    ld (WRAMFAB8),a
    inc hl
    ld a,(hl)
    ld (WRAMFAB9),a
    inc hl
    ret

  Label2755:
    exx
    ld a,(hl)
    sub $80
    ld (ix+2),a
    inc hl
    ret

  Label275E:
    exx
    ld a,(WRAMFE44)
    cp $04
    jr nz,Label276A
    xor a // A = 0
    ld (WRAMFE44),a

  Label276A:
    xor a // A = 0
    ld (WRAMFE1C),a
    call Label0B1E
    ld sp,(WRAMFE24)
    jp Label2434

  Label2778:
    exx
    ld a,(hl)
    push hl
    push ix
    push iy
    call Label09E3
    pop iy
    pop ix
    pop hl
    inc hl
    ret

  Label2789:
    exx
    ld a,(hl)
    exx
    call Label2AE0
    exx
    inc hl
    ret

  Label2792:
    exx
    push ix
    ld ix,WRAMFACE
    ld e,(hl)
    ld d,$25
    call Label2B18
    ld (ix+5),e
    inc hl
    ld e,(hl)
    ld d,$24
    call Label2B18
    ld (ix+4),e
    inc hl
    pop ix
    ret

  Label27B0:
    exx
    ld a,(hl)
    ld e,a
    ld d,$0D
    call Label2B18
    inc hl
    ld e,(hl)
    ld d,$0B
    call Label2B18
    inc hl
    ld e,(hl)
    ld d,$0C
    call Label2B18
    inc hl
    ret

  Label27C8:
    exx
    ld a,(hl)
    ld (WRAMFE1E),a
    inc hl
    ret

  Label27CF:
    exx
    ld d,(hl)
    inc hl
    ld e,(hl)
    inc hl
    call Label2B18
    ret

  Label27D8:
    exx
    ld a,(hl)
    push af
    exx
    ld hl,WRAMFC3D
    ld a,(WRAMFE3C)
    dec a
    ld e,a
    ld d,$00
    add hl,de
    pop af
    ld (hl),a
    exx
    inc hl
    ret

  Label27EC:
    exx
    ld e,(hl)
    ld d,$22
    call Label2B18
    inc hl
    ret

  Label27F5:
    exx
    ld a,(hl)
    ld (WRAMFC36),a
    inc hl
    ret

  Label27FC:
    exx
    ld a,(hl)
    ld (WRAMFC37),a
    inc hl
    ret

  Label2803:
    exx
    ld a,(WRAMFC3B)
    or a
    jr nz,Label2837
    inc a
    ld (WRAMFC34),a
    ld a,(WRAMFC38)
    or a
    jr nz,Label283E

  Label2814:
    ld a,(hl)
    ld (WRAMFA90),a
    inc hl
    ld a,(hl)
    ld (WRAMFA8F),a
    inc hl
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc hl
    ld (WRAMFA92),de
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc hl
    ld (WRAMFA94),de
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc hl
    ld (WRAMFA96),de
    ret

  Label2837:
    ld a,$01
    ld (WRAMFC35),a
    jr Label2814

  Label283E:
    ld a,(hl)
    ld (WRAMFAAA),a
    inc hl
    ld a,(hl)
    ld (WRAMFAA9),a
    inc hl
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc hl
    ld (WRAMFAAC),de
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc hl
    ld (WRAMFAAE),de
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc hl
    ld (WRAMFAB0),de
    ret

  Label2861:
    exx
    ld a,(hl)
    call Label10B0
    ld sp,(WRAMFE24)
    jp Label2434

  Label286D:
    exx
    ld a,(hl)
    cp $40
    jr c,Label287D
    cp $80
    jr c,Label2884
    cp $C0
    jr c,Label2895
    inc hl
    ret

  Label287D:
    ld a,$01
    ld (ix+8),a
    inc hl
    ret

  Label2884:
    sub $40
    push hl
    call Label1791
    ld (WRAMFE40),a
    ld a,$02
    ld (ix+8),a
    pop hl
    inc hl
    ret

  Label2895:
    sub $80
    push hl
    call Label1784
    ld (WRAMFE40),hl
    xor a // A = 0
    ld (ix+8),a
    pop hl
    inc hl
    ret

  Label28A5:
    ld hl,WRAMFC0A
    ld de,$0007
    ld bc,$0600

  Label28AE:
    ld (hl),c
    add hl,de
    djnz Label28AE
    exx
    ret

  Label28B4:
    exx
    xor a // A = 0
    ld (WRAMFC41),a
    ret

  Label28BA:
    ld a,(WRAMFE3C)
    cp $05
    jr c,Label28CE
    cp $08
    jp c,Label2957
    cp $0E
    jp c,Label2912
    jp Label2945

  Label28CE:
    cp $03
    jr nc,Label28E4
    ld l,$B4
    add a,l
    ld c,a
    ld l,a
    ld h,$00
    ld de,WRAMFAAE
    call Label28F8
    call Label2B18
    exx
    ret

  Label28E4:
    sub $02
    ld l,$B4
    add a,l
    ld c,a
    ld l,a
    ld h,$00
    ld de,WRAMFB35
    call Label28F8
    call Label2B23
    exx
    ret

  Label28F8:
    add hl,de
    ld a,$3F
    and (hl)
    ld (hl),a
    exx
    ld a,(hl)
    and $03
    rrca
    rrca
    inc hl
    exx
    ld e,a
    or (ix+1)
    ld (ix+1),a
    ld a,e
    or (hl)
    ld (hl),a
    ld d,c
    ld e,a
    ret

  Label2912:
    push iy
    sub $08
    ld d,$00
    ld e,a
    ld iy,WRAMFC53
    add iy,de
    ld c,$08
    add a,c
    ld d,a
    ld a,(iy+8)
    and $1F
    ld b,a
    exx
    ld a,(hl)
    inc hl
    rrca
    rrca
    and $C0
    ld e,a
    ld a,$3F
    and (ix+1)
    or e
    ld (ix+1),a
    ld a,e
    exx
    or b
    ld e,a
    ld (iy+8),e
    exx
    pop iy
    ret

  Label2945:
    exx
    ld a,(ix+1)
    and $3F
    ld b,a
    ld a,(hl)
    rrca
    rrca
    and $C0
    or b
    ld (ix+1),a
    inc hl
    ret

  Label2957:
    exx
    inc hl
    ret

  Label295A:
    exx
    di
    halt
    ret

  Label295E:
    exx

  Label295F:
    xor a // A = 0
    ld (WRAMFE2D),a
    ld (WRAMFE2C),a
    call Label0B05
    ld a,(WRAMFE33)
    or a
    jr nz,Label2981
    ld de,$1001
    call Label2B18
    ld de,$1000
    call Label2B18
    ld de,$0087
    call Label2B23

  Label2981:
    ld d,$01
    ld e,$3F
    call Label2B23
    call Label01AA
    ld sp,(WRAMFE24)
    jp Label2434

  Label2992:
    exx
    ld l,(ix+11)
    ld h,(ix+12)
    ld (ix+9),l
    ld (ix+10),h
    ret

  Label29A0:
    exx
    ld e,(hl)
    inc hl
    ld h,(hl)
    ld l,e
    ret

  Label29A6:
    ld hl,WRAMF827
    call Label29BF
    exx
    ld a,(hl)
    inc hl
    push hl
    exx
    ld c,a
    inc (hl)
    ld a,(hl)
    call Label29F6
    pop de
    ld (hl),c
    inc hl
    ld (hl),e
    inc hl
    ld (hl),d
    exx
    ret

  Label29BF:
    ld a,(WRAMFC3B)
    or a
    jr nz,Label29D1
    ld a,(WRAMFE3C)

  Label29C8:
    add a,a
    add a,a
    add a,a
    add a,a
    ld e,a
    ld d,$00
    add hl,de
    ret

  Label29D1:
    ld a,(WRAMFE3C)
    cp $0D
    jr z,Label29EA
    cp $0C
    jr z,Label29EE
    cp $0B
    jr z,Label29F2
    cp $10
    jr z,Label29E6
    jr Label29C8

  Label29E6:
    ld a,$10
    jr Label29C8

  Label29EA:
    ld a,$0F
    jr Label29C8

  Label29EE:
    ld a,$11
    jr Label29C8

  Label29F2:
    ld a,$12
    jr Label29C8

  Label29F6:
    ld e,a
    add a,a
    add a,e
    ld e,a
    ld d,$00
    add hl,de
    ret

  Label29FE:
    ld hl,WRAMF827
    call Label29BF
    ld a,(hl)
    ld b,h
    ld c,l
    call Label29F6
    dec (hl)
    jr z,Label2A15
    inc hl
    ld e,(hl)
    inc hl
    ld d,(hl)
    push de
    exx
    pop hl
    ret

  Label2A15:
    ld h,b
    ld l,c
    dec (hl)
    exx
    ret

  Label2A1A:
    ld hl,WRAMF957
    call Label29BF
    inc (hl)
    ld a,(hl)
    call Label29F6
    exx
    ld e,(hl)
    inc hl
    ld d,(hl)
    inc hl
    ex de,hl
    push de
    exx
    pop de
    ld (hl),e
    inc hl
    ld (hl),d
    exx
    ret

  Label2A33:
    exx
    push hl
    ld hl,WRAMF957
    call Label29BF
    ld a,(hl)
    or a
    jr z,Label2A49
    dec (hl)
    call Label29F6
    ld e,(hl)
    inc hl
    ld h,(hl)
    ld l,e
    pop de
    ret

  Label2A49:
    pop hl
    ret

  Label2A4B:
    exx
    push ix
    push iy
    push hl
    ld a,(hl)
    call Label02A3
    pop hl
    pop iy
    pop ix
    inc hl
    ret

  Label2A5C:
    exx
    push ix
    push iy
    push hl
    ld a,(hl)
    call Label05E0
    pop hl
    pop iy
    pop ix
    inc hl
    ret

  Label2A6D:
    exx
    ld b,(hl)
    ld a,(WRAMFE3C)
    call Label2ACE
    inc hl
    ret

  Label2A77:
    exx
    ld a,$01
    ld (WRAMFE27),a
    ld a,(hl)
    ld (iy+2),a
    inc hl
    ret

  Label2A83:
    exx
    ld a,(hl)
    sub $88
    ld (ix+7),a
    inc hl
    ret

  Label2A8C:
    push hl
    ld c,a
    rrca
    rrca
    rrca
    and $1F
    push af
    ld hl,WRAMFCDD
    ex af,af'
    ld e,a
    ld d,$00
    ex af,af'
    add hl,de
    ld b,(hl)
    ld a,$07
    cp b
    jp z,Label2AC8
    pop af
    ld d,c
    or a
    jr z,Label2AB5
    inc b
    ld e,$00
    ld c,a

  Label2AAD:
    add a,e
    ld e,c
    djnz Label2AAD
    ld b,a
    ld a,d
    jr Label2ACB

  Label2AB5:
    ld a,c
    ld e,b
    ld d,$00
    ld hl,$2C0E
    add hl,de
    add a,a
    add a,a
    add a,a
    ld e,a
    ld d,$00
    add hl,de
    ld b,(hl)
    ld a,c
    jr Label2ACB

  Label2AC8:
    pop af
    ld a,c
    ld b,c

  Label2ACB:
    sub b
    pop hl
    ret

  Label2ACE:
    push af
    push hl
    push de
    ld e,a
    ld d,$00
    ld hl,WRAMFCDD
    add hl,de
    ld a,b
    and $07
    ld (hl),a
    pop de
    pop hl
    pop af
    ret

  Label2AE0:
    push ix
    ld ix,WRAMFACE
    ld e,a
    ld d,$26
    call Label2B18
    ld (ix+6),a
    pop ix
    ret

  Label2AF2:
    push ix
    ld ix,WRAMFACE
    and $0F
    add a,a
    ld e,a
    ld d,$00
    ld hl,$2C00
    add hl,de
    ld e,(hl)
    ld d,$25
    call Label2B18
    ld (ix+5),e
    inc hl
    ld e,(hl)
    ld d,$24
    call Label2B18
    ld (ix+4),e
    pop ix
    ret

  Label2B18:
    push af
    ld a,d
    out ($04),a
    rst 08h
    ld a,e
    out ($05),a
    rst 10h
    pop af
    ret

  Label2B23:
    push af
    ld a,d
    out ($06),a
    rst 08h
    ld a,e
    out ($07),a
    rst 10h
    pop af
    ret

  Label2B2E:
    push af
    push bc
    push de
    push hl
    push ix
    cp $03
    jr nc,Label2B43
    ld c,$05
    ld hl,WRAMFADE
    exx
    ld c,$04
    jp Label2B4D

  Label2B43:
    ld c,$07
    ld hl,WRAMFB65
    exx
    ld c,$06
    sub $02

  Label2B4D:
    ld l,a
    ld a,$40
    add a,l
    ld b,a
    ex af,af'
    ld a,b
    ex af,af'
    ld a,l
    exx
    ld e,a
    ld d,$00
    add hl,de
    push hl
    pop ix
    ld a,$7F
    and b
    ld b,a
    ld e,$80
    ld d,$00
    add hl,de
    ld a,(hl)
    and $07
    ld e,a
    ld d,$00
    ld hl,Label2BF8
    add hl,de
    ld a,(hl)
    bit 0,a
    call nz,Label2B8D
    bit 1,a
    call nz,Label2B96
    bit 2,a
    call nz,Label2B9F
    bit 3,a
    call nz,Label2BA8
    pop ix
    pop hl
    pop de
    pop bc
    pop af
    ret

  Label2B8D:
    ld (ix+16),b
    ld l,$00
    call Label2BAD
    ret

  Label2B96:
    ld (ix+24),b
    ld l,$08
    call Label2BAD
    ret

  Label2B9F:
    ld (ix+20),b
    ld l,$04
    call Label2BAD
    ret

  Label2BA8:
    ld (ix+28),b
    ld l,$0C

  Label2BAD:
    ex af,af'
    add a,l
    exx
    out (c),a
    ld a,b
    ex af,af'
    rst 08h
    exx
    out (c),b
    rst 10h
    ret

  Label2BBA:
    ex af,af'
    push de
    add a,$03
    ld d,a
    ld a,b
    ld e,b
    call Label2B18
    pop de
    ex af,af'
    ret

  Label2BC7:
    push af
    push de
    push ix
    ld ix,WRAMFC53
    ld e,a
    ld d,$00
    add ix,de
    ld d,$08
    add a,d
    ld d,a
    ld e,b
    ld (ix+8),e
    call Label2B23
    pop ix
    pop de
    pop af
    ret

  Label2BE4:
    push de
    push ix
    ld ix,WRAMFC83
    ld (ix+11),b
    ld d,$1B
    ld e,b
    call Label2B18
    pop ix
    pop de
    ret

  Label2BF8:
    db $08, $08, $08, $08, $0A, $0E, $0E, $0F
    db $EB, $02, $D5, $01, $C0, $00, $51, $00
    db $32, $00, $28, $00, $1E, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $02, $02, $02, $01, $01
    db $02, $02, $02, $02, $03, $03, $01, $01
    db $02, $02, $03, $03, $04, $04, $01, $01
    db $02, $03, $03, $04, $05, $05, $01, $02
    db $02, $03, $04, $05, $05, $06, $01, $02
    db $03, $04, $04, $05, $06, $07, $01, $02
    db $04, $08, $10, $20, $00, $00, $00, $00

seek($2E40)
  Label2E40:
    db $01, $04, $00, $00, $00, $00, $00, $00
    db $06, $01, $14, $00, $1A, $00, $00, $01
    db $03, $01, $19, $19, $19, $19, $02, $06
    db $02, $0C, $0A, $0A, $09, $0F, $01, $01
    db $00, $0A, $04, $05, $02, $05, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $04, $03, $FD
    db $FD, $03, $03, $08, $04, $00, $15, $63
    db $40, $5A, $00, $00, $00, $00, $0F, $0F
    db $0F, $0F, $0C, $0C, $0C, $05, $06, $05
    db $06, $00, $00, $00, $00, $00, $00, $00

seek($4568)
  Label4568:
    dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, $0000
    dw $0000, $0000, $0000, $0000, $0000, $0000, $0000, LabelE85A

  Label45E8:
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $48, $46
    db $01, $2C, $46, $01, $80, $9F, $30, $88
    db $00, $30, $88, $00, $5A, $00, $01, $3B
    db $46, $FF, $01, $80, $B0, $80, $46, $00
    db $30, $88, $00, $30, $88, $00, $59, $00
    db $00, $56, $46, $87, $46, $B5, $46, $E3
    db $46, $01, $01, $01, $01, $00, $53, $0E
    db $00, $01, $51, $00, $04, $8A, $8D, $04
    db $06, $8D, $04, $8A, $AC, $04, $06, $AC
    db $04, $8A, $AB, $04, $06, $AB, $04, $88
    db $AB, $04, $04, $AB, $04, $86, $AB, $04
    db $03, $AB, $04, $84, $AB, $04, $02, $AB
    db $04, $82, $AB, $04, $01, $AB, $55, $02
    db $40, $00, $04, $8A, $8F, $04, $06, $8F
    db $04, $8A, $AE, $04, $06, $AE, $04, $8A
    db $CD, $04, $06, $CD, $04, $88, $CD, $04
    db $04, $CD, $04, $86, $CD, $04, $03, $CD
    db $04, $84, $CD, $04, $02, $CD, $04, $82
    db $CD, $04, $01, $CD, $55, $04, $40, $00
    db $04, $8A, $8A, $04, $04, $8A, $04, $8A
    db $A0, $04, $06, $A0, $04, $8A, $C4, $04
    db $04, $C4, $04, $88, $C4, $04, $04, $C4
    db $04, $86, $C4, $04, $03, $C4, $04, $84
    db $C4, $04, $02, $C4, $04, $82, $C4, $04
    db $01, $C4, $55, $30, $40, $00, $0A, $40
    db $00, $42

  Label46EA:
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

  Label470A:
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

  Label472A:
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

  Label474A:
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $02, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $04, $00, $26, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $28, $00, $2D, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $2F, $00, $35, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $37, $00, $43, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $45, $00, $5A, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $5C, $00, $6B, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $6D, $00, $74, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $76, $00, $7B, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $7D, $00, $81, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $82, $00, $89, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $8B, $00, $99, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $9B, $00, $B5, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $B7, $00, $B7, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $B9, $00, $C0, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $C2, $00, $CA, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $CB, $00, $CF, $00, $00, $00, $00, $FF, $FF, $DF
    db $01, $D0, $00, $E3, $00, $00, $00, $00, $FF, $FF, $DC
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF
    db $01, $00, $00, $FF, $FF, $00, $00, $00, $FF, $FF, $DF

  Label48AA:
    db $03, $00, $02, $0A, $02, $00, $00, $00, $FF, $FF, $DF
    db $FF, $0C, $02, $0E, $02, $00, $00, $00, $FF, $FF, $DF
    db $03, $10, $02, $1C, $02, $00, $00, $00, $FF, $FF, $DF
    db $03, $1E, $02, $40, $02, $00, $00, $00, $FF, $FF, $DF
    db $03, $42, $02, $69, $02, $00, $00, $00, $FF, $FF, $DF
    db $03, $6B, $02, $7F, $02, $00, $00, $00, $FF, $FF, $DF
    db $03, $80, $02, $8F, $02, $00, $00, $00, $FF, $FF, $DF
    db $03, $90, $02, $95, $02, $00, $00, $00, $FF, $FF, $DF
    db $02, $96, $02, $C5, $02, $00, $00, $00, $FF, $FF, $DF
    db $03, $C7, $02, $D8, $02, $00, $00, $00, $FF, $FF, $DF
    db $03, $DA, $02, $FF, $02, $00, $00, $00, $FF, $FF, $DF
    db $03, $00, $03, $29, $03, $00, $00, $00, $FF, $FF, $DF
    db $02, $2B, $03, $49, $03, $00, $00, $00, $FF, $FF, $DF
    db $03, $4B, $03, $75, $03, $00, $00, $00, $FF, $FF, $DF
    db $03, $77, $03, $B7, $03, $02, $7F, $03, $A9, $03, $DF
    db $03, $B9, $03, $EB, $03, $00, $00, $00, $FF, $FF, $DF
    db $03, $EC, $03, $05, $04, $00, $00, $00, $FF, $FF, $DF
    db $03, $06, $04, $1E, $04, $00, $00, $00, $FF, $FF, $DF
    db $03, $20, $04, $35, $04, $00, $00, $00, $FF, $FF, $DF
    db $03, $37, $04, $53, $04, $00, $00, $00, $FF, $FF, $DF
    db $03, $55, $04, $6B, $04, $00, $00, $00, $FF, $FF, $DF
    db $03, $6C, $04, $7D, $04, $00, $00, $00, $FF, $FF, $DF
    db $03, $7E, $04, $83, $04, $00, $00, $00, $FF, $FF, $DF
    db $03, $84, $04, $88, $04, $00, $00, $00, $FF, $FF, $DF
    db $03, $89, $04, $A5, $04, $00, $00, $00, $FF, $FF, $DF
    db $01, $A9, $04, $BF, $04, $00, $00, $00, $FF, $FF, $DF
    db $01, $C0, $04, $CF, $04, $00, $00, $00, $FF, $FF, $DF
    db $01, $D0, $04, $EE, $04, $00, $00, $00, $FF, $FF, $DF
    db $01, $EF, $04, $0A, $05, $00, $00, $00, $FF, $FF, $DF
    db $01, $0B, $05, $28, $05, $00, $00, $00, $FF, $FF, $DF
    db $01, $2A, $05, $4C, $05, $00, $00, $00, $FF, $FF, $DF
    db $01, $4D, $05, $6F, $05, $00, $00, $00, $FF, $FF, $DF
    db $01, $70, $05, $8E, $05, $00, $00, $00, $FF, $FF, $DF
    db $01, $90, $05, $AD, $05, $00, $00, $00, $FF, $FF, $DF
    db $01, $A6, $04, $A8, $04, $00, $00, $00, $FF, $FF, $DF
    db $03, $AF, $05, $B9, $05, $00, $00, $00, $FF, $FF, $DF
    db $03, $BA, $05, $C1, $05, $00, $00, $00, $FF, $FF, $DF
    db $03, $C2, $05, $C8, $05, $00, $00, $00, $FF, $FF, $DF
    db $03, $C9, $05, $D4, $05, $00, $00, $00, $FF, $FF, $DF
    db $03, $D5, $05, $D9, $05, $00, $00, $00, $FF, $FF, $DF
    db $03, $DA, $05, $E7, $05, $00, $00, $00, $FF, $FF, $DF
    db $03, $E8, $05, $E9, $05, $00, $00, $00, $FF, $FF, $DF
    db $03, $EA, $05, $EB, $05, $00, $00, $00, $FF, $FF, $DF

  Label4A83:
    db $28, $46, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

  Label4AA3:
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

  Label4AC3:
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

  Label4AE3:
    db $0E, $00, $02, $5B, $02, $00, $00, $02
    db $FF, $01, $B3, $6E, $80, $00, $30, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $0E, $5D, $02, $DB, $02, $00
    db $00, $02, $FF, $01, $B3, $6E, $80, $00
    db $30, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00

  Label4B17:
    db $00, $00, $02, $FF, $01, $00, $00, $02
    db $FF, $01, $5A, $37, $80, $00, $30, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00

  Label4B31:
    db $36, $46, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

  Label4B51:
    db $00, $01, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

  Label4B91:
    db $B5, $14, $00, $00, $00, $00, $00, $00
    db $85, $13, $F0, $15, $B4, $18, $00, $00
    db $00, $00, $00, $00, $4B, $17, $2C, $1A
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $8D, $29, $69, $1D, $FC, $20, $00, $00
    db $35, $27, $F2, $2B, $69, $31, $00, $00
    db $00, $00, $00, $00, $B5, $2E, $2E, $34
    db $B5, $1B, $25, $1F, $F0, $22, $00, $25
    db $E5, $52, $BC, $3A, $D8, $41, $00, $00
    db $65, $4E, $C5, $57, $76, $62, $00, $00
    db $00, $00, $00, $00, $00, $5D, $65, $68
    db $5A, $37, $30, $3E, $B7, $45, $EC, $49
    db $D8, $A5, $35, $75, $68, $83, $00, $00
    db $60, $9C, $C4, $AE, $65, $C4, $00, $00
    db $00, $00, $00, $00, $EA, $B9, $0F, $D0
    db $89, $6E, $20, $7C, $CC, $8B, $DA, $93
    db $00, $00, $E1, $E9, $FC, $DC, $B9, $F7

  Label4C19:
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

  Label4CC9:
    db $8D, $29, $69, $1D, $FC, $20, $00, $00
    db $35, $27, $F2, $2B, $69, $31, $00, $00
    db $00, $00, $00, $00, $B5, $2E, $2E, $34
    db $B5, $1B, $25, $1F, $F0, $22, $00, $25
    db $E5, $52, $BC, $3A, $D8, $41, $00, $00
    db $65, $4E, $C5, $57, $76, $62, $00, $00
    db $00, $00, $00, $00, $00, $5D, $65, $68
    db $5A, $37, $30, $3E, $B7, $45, $EC, $49
    db $D8, $A5, $35, $75, $68, $83, $FC, $DC
    db $60, $9C, $C4, $AE, $65, $C4, $00, $00
    db $00, $00, $00, $00, $EA, $B9, $0F, $D0
    db $89, $6E, $20, $7C, $CC, $8B, $DA, $93
    db $8D, $29, $69, $1D, $FC, $20, $00, $00
    db $35, $27, $F2, $2B, $69, $31, $00, $00
    db $00, $00, $00, $00, $B5, $2E, $2E, $34
    db $B5, $1B, $25, $1F, $F0, $22, $00, $25
    db $E5, $52, $BC, $3A, $D8, $41, $00, $00
    db $65, $4E, $C5, $57, $76, $62, $00, $00
    db $00, $00, $00, $00, $00, $5D, $65, $68
    db $5A, $37, $30, $3E, $B7, $45, $EC, $49
    db $D8, $A5, $35, $75, $68, $83, $FC, $DC
    db $60, $9C, $C4, $AE, $65, $C4, $00, $00
    db $00, $00, $00, $00, $EA, $B9, $0F, $D0
    db $89, $6E, $20, $7C, $CC, $8B, $DA, $93
    db $95, $54, $6C, $3C, $88, $43, $00, $00
    db $15, $50, $75, $59, $26, $64, $00, $00
    db $00, $00, $00, $00, $B0, $5E, $15, $6A
    db $0A, $39, $E0, $3F, $67, $47, $9C, $4B
    db $38, $A9, $95, $78, $C8, $86, $5C, $E0
    db $C0, $9F, $24, $B2, $C5, $C7, $00, $00
    db $00, $00, $00, $00, $4A, $BD, $6F, $D3
    db $E9, $71, $80, $7F, $2C, $8F, $3A, $97

  Label4DC9:
    db $00, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $01, $01
    db $01, $01, $00, $00, $01, $01, $00, $00
    db $01, $01, $01, $01, $01, $00, $00, $00
    db $00, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $05
    db $04, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

  Label4EC9:
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

  Label4F09:
    db $20, $21, $22, $23, $24, $25, $26, $27
    db $28, $29, $2A, $2B, $2C, $2D, $2E, $2F
    db $30, $31, $32, $33, $34, $35, $36, $37
    db $38, $39, $3A, $3B, $3C, $3D, $3E, $3F
    db $40, $41, $42, $43, $44, $45, $46, $47
    db $48, $49, $4A, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

  Label4F49:
    db $7F

  Label4F4A:
    db $9E, $03, $8F, $02, $DF, $02, $00, $00
    db $6A, $03, $D5, $03, $4E, $04, $00, $00
    db $00, $00, $00, $00, $10, $04, $8F, $04
    db $6A, $02, $B6, $02, $0B, $03, $39, $03
    db $B8, $03, $A2, $02, $F4, $02, $00, $00
    db $82, $03, $F0, $03, $6C, $04, $00, $00
    db $00, $00, $00, $00, $2C, $04, $B0, $04
    db $7C, $02, $CA, $02, $20, $03, $50, $03

  Label4F8A:
    db $F3, $09, $12, $0E, $89, $0C, $00, $00
    db $8A, $0A, $64, $09, $5E, $08, $00, $00
    db $00, $00, $00, $00, $DD, $08, $E6, $07
    db $E8, $0E, $48, $0D, $D5, $0B, $2B, $0B
    db $AC, $09, $A6, $0D, $2F, $0C, $00, $00
    db $3F, $0A, $21, $09, $22, $08, $00, $00
    db $00, $00, $00, $00, $9E, $08, $AC, $07
    db $48, $0E, $E9, $0C, $7F, $0B, $DB, $0A
    db $00, $FB, $4F, $59, $54, $BD, $58, $21
    db $5D, $82, $61, $8F, $63, $CD, $65, $3C
    db $68, $3E, $68, $40, $68, $42, $68, $F0
    db $1A, $3F, $FF, $01, $00, $01, $00, $01
    db $00, $01, $00, $01, $00, $01, $00, $01
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $80, $80, $80, $BC, $44, $00, $00

seek($E85A)
  LabelE85A:
    db $00, $8B, $E8, $EB, $E8, $FF, $E8, $C9
    db $EA, $D7, $EA, $DB, $EA, $DF, $EA, $E3
    db $EA, $E7, $EA, $EB, $EA, $EF, $EA, $C0
    db $14, $3F, $A0, $01, $00, $01, $00, $01
    db $00, $01, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $81, $88, $84, $B8, $35, $9C, $E8
    db $0C, $12, $6A, $0C, $15, $6A, $01, $40
    db $00, $40, $12, $80, $60, $12, $08, $60
    db $12, $80, $6E, $12, $08, $6E, $0C, $80
    db $6B, $0C, $08, $6B, $0C, $80, $6A, $0C
    db $02, $6A, $0C, $04, $6A, $0C, $06, $6A
    db $0C, $08, $6A, $0C, $0A, $6A, $0C, $0C
    db $6A, $0C, $0E, $6A, $12, $80, $8C, $12
    db $08, $8C, $12, $80, $6B, $12, $08, $6B
    db $0C, $80, $60, $0C, $08, $60, $0C, $80
    db $6A, $0C, $03, $6A, $0C, $06, $6A, $0C
    db $09, $6A, $0C, $0C, $6A, $0C, $0F, $6A
    db $36, $81, $8A, $84, $B2, $03, $40, $00
    db $35, $9C, $E8, $0C, $12, $6A, $09, $15
    db $6A, $01, $40, $00, $40, $80, $8E, $82
    db $B8, $35, $0A, $E9, $01, $40, $00, $40
    db $03, $80, $60, $03, $08, $60, $03, $80
    db $8C, $03, $08, $8C, $44, $01, $03, $80
    db $8D, $03, $08, $8D, $03, $80, $8F, $03
    db $08, $8F, $44, $03, $03, $80, $80, $03
    db $08, $80, $03, $80, $8F, $03, $08, $8F
    db $44, $02, $03, $80, $8D, $03, $08, $8D
    db $03, $80, $8C, $03, $08, $8C, $44, $03
    db $03, $80, $8D, $03, $08, $8D, $03, $80
    db $60, $03, $08, $60, $44, $01, $03, $80
    db $8C, $03, $08, $8C, $03, $80, $8D, $03
    db $08, $8D, $44, $03, $03, $80, $8D, $03
    db $08, $8D, $03, $80, $60, $03, $08, $60
    db $44, $02, $03, $80, $8C, $03, $08, $8C
    db $03, $80, $8D, $03, $08, $8D, $44, $03
    db $03, $80, $6A, $03, $08, $6A, $03, $80
    db $8D, $03, $08, $8D, $44, $01, $03, $80
    db $8E, $03, $08, $8E, $03, $80, $80, $03
    db $08, $80, $44, $03, $03, $80, $8A, $03
    db $08, $8A, $03, $80, $80, $03, $08, $80
    db $44, $02, $03, $80, $8E, $03, $08, $8E
    db $03, $80, $8D, $03, $08, $8D, $44, $03
    db $03, $80, $8E, $03, $08, $8E, $03, $80
    db $6A, $03, $08, $6A, $44, $01, $03, $80
    db $8D, $03, $08, $8D, $03, $80, $8E, $03
    db $08, $8E, $44, $03, $03, $80, $8E, $03
    db $08, $8E, $03, $80, $6A, $03, $08, $6A
    db $44, $02, $03, $80, $8D, $03, $08, $8D
    db $03, $80, $8E, $03, $08, $8E, $44, $03
    db $03, $80, $8C, $03, $08, $8C, $03, $80
    db $8E, $03, $08, $8E, $44, $01, $03, $80
    db $80, $03, $08, $80, $03, $80, $86, $03
    db $08, $86, $44, $03, $03, $80, $AC, $03
    db $08, $AC, $03, $80, $86, $03, $08, $86
    db $44, $02, $03, $80, $80, $03, $08, $80
    db $03, $80, $8E, $03, $08, $8E, $44, $03
    db $03, $80, $86, $03, $08, $86, $03, $80
    db $8C, $03, $08, $8C, $44, $01, $03, $80
    db $8E, $03, $08, $8E, $03, $80, $80, $03
    db $08, $80, $44, $03, $03, $80, $86, $03
    db $08, $86, $03, $80, $8C, $03, $08, $8C
    db $44, $02, $03, $80, $8E, $03, $08, $8E
    db $03, $80, $80, $03, $08, $80, $44, $03
    db $03, $80, $6A, $03, $08, $6A, $03, $82
    db $8D, $03, $0A, $8D, $44, $01, $03, $84
    db $8E, $03, $0C, $8E, $03, $86, $8A, $03
    db $0E, $8A, $44, $03, $03, $88, $6A, $03
    db $10, $6A, $03, $8A, $8D, $03, $12, $8D
    db $44, $02, $03, $8C, $8E, $03, $14, $8E
    db $03, $8E, $8A, $03, $16, $8A, $44, $03
    db $03, $90, $6A, $03, $18, $6A, $03, $92
    db $8D, $03, $1A, $8D, $44, $01, $03, $94
    db $8E, $03, $1C, $8E, $03, $96, $8A, $03
    db $1E, $8A, $44, $03, $03, $98, $6A, $03
    db $1F, $6A, $03, $9A, $8D, $03, $1F, $8D
    db $44, $02, $03, $9C, $8E, $03, $1F, $8E
    db $03, $9E, $8A, $03, $1F, $8A, $36, $80
    db $90, $82, $B2, $02, $40, $00, $35, $0A
    db $E9, $01, $40, $00, $40, $01, $40, $00
    db $40, $01, $40, $00, $40, $01, $40, $00
    db $40, $01, $40, $00, $40, $01, $40, $00
    db $40, $01, $40, $00, $40, $01, $40, $00
    db $40, $00, $00, $00, $00, $00, $00, $00