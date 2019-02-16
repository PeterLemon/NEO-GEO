// NEO-GEO Chaos demo converted by krom (Peter Lemon):
arch ng.cpu
endian msb
output "202-p1.p1", create
fill 524288 // Set M68K Program ROM Size

macro seek(variable offset) {
  origin offset
  base offset
}

seek($00000000) // Entry Point Of Code
include "LIB\NEO-GEO.INC" // Include NEO-GEO Definitions
include "LIB\NEO-GEO_HEADER.ASM" // Include Header & Vector Table

// WRAM Variables
constant VertBlank($100000) // Vertical Blank Memory Byte
constant Direction($100001) // Direction Memory Byte
constant Flip($100002)      // Tile Flip Memory Byte

VBlankIRQ: // Interrupt 1: Vertical Blank (Interrupt Triggered At Vertical Blank Start)
  // Display NEO-GEO Logo In System Mode, Otherwise Run Game Mode
  btst.b  #7,SYSTEM_MODE // Test Bit 7 In SYSTEM_MODE Byte ($10FD80) (0 = System Mode, 1 = Game Mode)
  bne.b   GameMode       // IF (SYSTEM_MODE Bit 7 != 0) NEO-GEO Logo Has Been Displayed, Run Game Mode
  jmp     SYSTEM_INT1    // ELSE: Run System Sub Routine: SYSTEM_INT1 ($C00438)
  GameMode:
    move.w  #4,LSPC_INTR_REG // Clear Vertical Blank Interrupt Bit 2 Of LSPC Interrupt ($3C000C)
    move.b  d0,WDOG_TMR_REG  // Set Interrupt Watchdog Timer ($300001)
    move.b  #1,VertBlank     // Store 1 To Vertical Blank Memory Byte
  rte // Return From Exception

TimerIRQ: // Interrupt 2: Timer (Interrupt Triggered When Timer Counter Reaches 0)
  move.w  #2,LSPC_INTR_REG // Clear Timer Interrupt Bit 1 Of LSPC Interrupt ($3C000C)
  rte // Return From Exception

Start:
  jsr     Setup

  lea.l   Message,a2
  move.w  #15,d1
  move.w  #36,d0

  move.w  #1,d3     // X Position of 10
  asl.l   #5,d3
  add.w   #10,d3    // Y Position
  add.w   #$7000,d3 // Sprite Offset
  move.w  d3,d4
  move.w  #$0000,d6

MessageOuterLoop:
MessageInnerLoop:
  move.w  d3,$3C0000
  move.w  #$32E0,d7 // Palette Number
  move.b  (a2)+,d6
  add.w   d6,d7
  move.w  d7,$3C0002
  add.l   #$20,d3
  dbra.w  d0,MessageInnerLoop
  move.w  #36,d0
  addq    #1,d4
  move.l  d4,d3
  dbra.w  d1,MessageOuterLoop

  lea.l   Members,a2
  move.w  #3,d1
  move.w  #36,d0

  add.w   #1,d4
  move.l  d4,d3

MembersOuterLoop:
MembersInnerLoop:
  move.w  d3,$3C0000
  move.w  #$32E0,d7 // Palette Number
  move.b  (a2)+,d6
  add.w   d6,d7
  move.w  d7,$3C0002
  add.l   #$20,d3
  dbra.w  d0,MembersInnerLoop
  move.w  #36,d0
  addq    #1,d4
  move.l  d4,d3
  dbra.w  d1,MembersOuterLoop

  move.w  #$8010,$3C0000
  move.w  #$0200,$3C0004
  move.w  #$0FFF,$3C0002
  move.w  #$FC0E,$3C0002 // Normally $F80E
  move.w  #$0440,$3C0002

  move.w  #$8011,d1
  move.w  #18,d0

SpriteMapLoop:
  move.w  d1,$3C0000
  move.w  #$0FFF,$3C0002
  move.w  #$40,$3C0002
  add.w   #1,d1
  dbra    d0,SpriteMapLoop

  move.w  #$1,$3C0004
  lea.l   ChaosMap,a5
  move.w  #$0400,a0
  move.w  a0,a1

  move.w  #3,d4

ChaosOuterLoop:
  move.w  #19,d5

ChaosInnerLoop:
  move.w  a0,$3C0000
  move.w  (a5)+,$3C0002
  move.w  #$0000,$3C0002
  add.w   #64,a0
  dbra.w  d5,ChaosInnerLoop

  add.w   #2,a1
  move.w  a1,a0

  dbra.w  d4,ChaosOuterLoop

  lea.l   TilesMap,a5

  move.w  #11,d4

TilesOuterLoop:
  move.w  #18,d5

TilesInnerLoop:
  move.w  a0,$3C0000
  move.w  (a5)+,$3C0002
  move.w  #$0100,$3C0002
  add.w   #64,a0
  dbra.w  d5,TilesInnerLoop

  add.w   #2,a1
  move.w  a1,a0

  dbra.w  d4,TilesOuterLoop

  move.w  #$8100,$3C0000
  move.w  #$0200,$3C0004
  move.w  #$0FFF,$3C0002
  move.w  #$F20E,$3C0002 // Normally $F80E
  move.w  #$2800,$3C0002

  move.w  #$8101,d1
  move.w  #8,d0

MovingMapLoop:
  move.w  d1,$3C0000
  move.w  #$0FFF,$3C0002
  move.w  #$40,$3C0002
  add.w   #1,d1
  dbra.w  d0,MovingMapLoop

  move.w  #$1,$3C0004

  move.w  #$4000,a0

  move.w  #157,d0
  move.w  #167,d1

  move.w  #9,d5

MovingLoop:
  move.w  a0,$3C0000

  move.w  d0,$3C0002
  move.w  #$0200,$3C0002

  add.w   #1,d0

  move.w  d1,$3C0002
  move.w  #$0200,$3C0002

  add.w   #1,d1

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  move.w  #177, $3c0002
  move.w  #$0200, $3c0002

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  move.w  #177,$3C0002
  move.w  #$0200,$3C0002

  add.w   #$40,a0

  dbra.w  d5,MovingLoop

  move.b  #0,VertBlank
  move.b  #0,Direction
  move.b  #0,Flip

  move.w  #$2000,sr

Loop:
  cmp.b   #1,VertBlank
  bne.b   Loop
    
  move.b  $300000,d0
  not.b   d0

  btst.l  #2,d0
  beq.b   NotLeft

  move.w  #$8500,$3C0000
  move.w  $3C0002,d1

  cmp.w   #128,d1 // 1 * 128
  ble.b   EndInput

  sub.w   #128,d1

  move.w  #$8500,$3C0000
  move.w  d1,$3C0002

  bra.b   EndInput

NotLeft:
  btst.l  #3,d0
  beq.b   EndInput

  move.w  #$8500,$3C0000
  move.w  $3C0002,d1

  cmp.w   #20480,d1 // 160 * 128
  bge.b   EndInput

  add.w   #128,d1

  move.w  #$8500,$3C0000
  move.w  d1,$3C0002

EndInput:
  move.b  #0,VertBlank

  cmp.b   #1,Direction
  beq.b   GoingDown
    
  move.w  #$8100,$3C0000
  move.w  $3C0002,d1
  move.w  d1,d3
  and.w   #$00ff,d1
  and.w   #$ff00,d3

  cmp.w   #$00,d1
  beq.b   ResetDown

  sub.w   #$0f,d1

  move.w  #$8100,$3C0000

  or.w    d3,d1
  move.w  d1,$3C0002

  move.w  #$8300,$3C0000
  move.w  $3C0002,d1

  sub.w   #128,d1 

  move.w  #$8300,$3C0000
  move.w  d1,$3C0002

  jmp     Repeat

ResetDown:
  move.b  #1,Direction
  move.w  #$8100,$3C0000

  or.w    d3,d1
  move.w  d1,$3C0002

  jsr     FlipLogo

  jmp     Repeat

GoingDown:
  move.w  #$8100,$3C0000
  move.w  $3c0002,d1
  move.w  d1,d3
  and.w   #$00FF,d1
  and.w   #$FF00,d3

  cmp.w   #$FF,d1
  beq.b   ResetUp

  add.w   #$0F,d1

  move.w  #$8100,$3C0000

  or.w    d3,d1
  move.w  d1,$3C0002

  move.w  #$8300,$3C0000
  move.w  $3C0002,d1

  add.w   #128,d1 

  move.w  #$8300,$3C0000
  move.w  d1,$3C0002

  jmp     Repeat

ResetUp:
  move.b  #0,Direction
  move.w  #$8100,$3C0000

  or.w    d3,d1
  move.w  d1,$3C0002

Repeat:
  bra.w   Loop

Start2:
  rts

Start3:
  rts

Start4:
  rts

Setup:
  move.w  #0,$3C0006
  move.w  #7,$3C000C

  jsr     SetupPalette

  move.l  #$C004C2,a0
  jsr     (a0)

  movem.l #$FE00,-(a7) // movem.l d0-d6,-(a7)

  move.w  #$7000,d0
  move.w  #$701F,d1
  move.w  #$7001,d4
  move.w  #$701E,d5
  move.w  #$0020,d2
  move.w  #$0020,d3
  move.w  #$0027,d7

SetupLoop:
  move.w  d0,$3C0000
  nop
  move.w  d2,$3C0002
  nop
  move.w  d1,$3C0000
  nop
  move.w  d2,$3C0002
  nop
  move.w  d4,$3C0000
  nop
  move.w  d2,$3C0002
  nop
  move.w  d5,$3C0000
  nop
  move.w  d2,$3C0002
  nop
  add.w   d3,d0
  add.w   d3,d1
  add.w   d3,d4
  add.w   d3,d5
  dbra.w  d7,SetupLoop

  movem.l (a7)+,#$007F // movem.l (a7)+,d0-d6

  move.l  #$C004C8,a0
  jsr     (a0)

  rts

SetupPalette:
  lea.l   $400000,a0
  lea.l   Palettes,a1
  move.w  #$80,d7 // Palettes Size = $80
  asr.w   #5,d7

DoPalette:
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  move.w  (a1)+,(a0)+
  dbra.w  d7,DoPalette
  rts

FlipLogo:
  move.w  #1,$3C0004

  move.w  #$4000,a0
  move.w  #9,d5

  move.b  Flip,d0
  add.b   #1,d0
  and.b   #1,d0
  move.b  d0,Flip

  cmp.b   #1,d0
  bne.b   Normal

  move.w  #167,d0
  move.w  #157,d1
  move.w  #$0202,d2

  jmp     FlipLoop

Normal:
  move.w  #157,d0
  move.w  #167,d1
  move.w  #$0200,d2
    
FlipLoop:
  move.w  a0,$3C0000

  move.w  d0,$3C0002
  move.w  d2,$3C0002

  add.w   #1,d0

  move.w  d1,$3C0002
  move.w  d2,$3C0002

  add.w   #1,d1

  add.w   #$40,a0

  dbra.w  d5,FlipLoop
  rts

//     *        1         2         3     *
//    0123456789012345678901234567890123456
Message:
  db "   WELCOME TO THE 10TH ANNIVERSARY   "
  db " CHAOS DEMO, AND FIRST EVER NEOGEO   "
  db " DEMO. THIS THE SECOND CHAOS DEMO ON "
  db " AN ARCADE GAME SYSTEM. THE CPS-1    "
  db " SYSTEM IS THE NEXT PLANNED SYSTEM TO"
  db " BE BLESSED WITH A CHAOS RELEASE. :) "
  db "                                     "
  db " NOW TO GET A HOLD OF A JAMMA RIG TO "
  db " TEST THE DEMOS ON A REAL SYSTEM.    "
  db "                                     "
  db " EVENTUALLY WE RE PLANNING ON DOING  "
  db " SOME REAL ARCADE GAMES.             "
  db "                                     "
  db " CONTACT RASTER AT CDOTY@NETZERO.NET "
  db "                                     "
  db " LONG LIVE POOPER*****CODED BY RASTER"

Members:
  db "              MEMBERS:               " 
  db "     RASTER            PICKSTER      "
  db "           SECTOR SMASHER            "


align(2) // Align 16-Bit
SpriteNumber:
  dw 14

Palettes:
  insert "GFX/chaos.pal"  // Palette #1 (16 Colors)
  insert "GFX/tiles.pal"  // Palette #2 (16 Colors)
  insert "GFX/sprite.pal" // Palette #3 (16 Colors)
  dw $0000,$000C,$7FFF,$0000,$0000,$0000,$0000,$0000,$0000,$7FFF,$000C,$0000,$0000,$0000,$0000,$0000 // Palette #4 (16 Colors)

ChaosMap:
  insert "GFX/chaos.mp1" // Map

TilesMap:
  insert "GFX/tiles.mp1" // Map