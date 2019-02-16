// NEO-GEO 3D-Line Sprite Chain Scrolling Display demo by krom (Peter Lemon):
// 1. Play NEO-GEO Logo Animation Using Header Option
// 2. Clear VRAM FIX Area Using System Subroutine
// 3. Initialize Line Sprites Using System Subroutine
// 4. Load Palette Data To Palette RAM
// 5. Print Text Characters To VRAM Fix Area Using S1 ROM 8x8 Font
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
  move.w  #$2000,sr // Enable Interrupts In Status Register

  // Clear FIX Area (VRAM)
  jsr     FIX_CLEAR // Run Internal Sub Routine: FIX_CLEAR ($C004C2)

  // Initialize Line Sprites
  jsr     LSP_1ST   // Run Internal Sub Routine: LSP_1ST ($C004C8)

  // Setup Palette
  lea.l   Palette,a0 // A0 = Palette Source Address
  lea.l   COL_PAL_REG,a1 // A1 = Palette Destination Address ($400000)
  move.w  #2,d0 // D0 = Number Of Palettes To Transfer - 1
  CopyPalette: // Copy 16 Palette Colors (32 Bytes)
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    move.w  (a0)+,(a1)+
    dbra.w  d0,CopyPalette // D0--, While (D0 >= 0) Copy Palette

  // Setup Characters In The FIX Area (VRAM)
  lea.l   Message,a0 // A0 = Message Source Address
  move.w  #36,d0     // D0 = Number Of Characters To Print - 1
  move.w  #$7023,d1  // D1 = VRAM Offset
  MessageLoop:
    move.w  d1,LSPC_ADDR_REG // Store VRAM Offset To LSPC Address
    add.l   #32,d1           // VRAM Offset += 32
    move.b  (a0)+,d2  // D2 = Next Character Number Byte
    move.w  #$02E0,d3 // D3 = Character Base (Bits 12..15 = Palette Number, Bits 0..11 = Character Number)
    add.w   d2,d3     // Character = Character Base + Character Number
    move.w  d3,LSPC_DATA_REG // Store Character
    dbra.w  d0,MessageLoop // D0--, While (D0 >= 0) Message Loop

  // Setup 3D-Line Sprite
  move.w  #$8100,LSPC_ADDR_REG // 3D-Line Sprite VRAM Properties Address #1
  move.w  #$0200,LSPC_AINC_REG // Sprite Auto Increment Register Set to Increment by $200
  move.w  #$0FFF,LSPC_DATA_REG // Bits 8..11 = Horizontal Reduction, Bits 0..7 = Vertical Reduction ($8100)
  move.w  #$E821,LSPC_DATA_REG // Bits 7..15 = Sprite Y Position, Bit 6 = Chain Bit, Bits 0..5 = Number of Active Characters ($8300)
  move.w  #$3800,LSPC_DATA_REG // Bits 7..15 = Sprite X Position ($8500)


  move.w  #30,d0 // D0 = Count
  move.w  #$F00,d1 // Bits 8..11 = Horizontal Reduction
  move.w  #$8101,LSPC_ADDR_REG // 3D-Line Sprite VRAM Properties Address #2
  move.w  #1,LSPC_AINC_REG     // Sprite Auto Increment Register Set to Increment by 1
  SpritePropLoop:
    move.w  d1,LSPC_DATA_REG
    dbra.w  d0,SpritePropLoop // D0--, While (D0 >= 0) Sprite Property Loop

  move.w  #30,d0 // D0 = Count
  move.w  #$40,d1 // Bit 6 = Chain Bit
  move.w  #$8301, LSPC_ADDR_REG // 3D-Line Sprite VRAM Properties Address #2 (Chained Sprite Columns)
  SpriteChainLoop:
    move.w  d1,LSPC_DATA_REG
    dbra.w  d0,SpriteChainLoop // D0--, While (D0 >= 0) Sprite Chain Loop


  move.w  #$4000,LSPC_ADDR_REG // 3D-Line Sprite VRAM Map Address #1
  move.w  #7,d0 // D0 = Count
  SpriteMapLoop:
    move.w  #7,d1 // D1 = Count
    SpriteMapALoop:
      move.w  #58,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0100,LSPC_DATA_REG // Bits 8..15 = Palette Number
      move.w  #59,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0100,LSPC_DATA_REG // Bits 8..15 = Palette Number
      move.w  #62,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0200,LSPC_DATA_REG // Bits 8..15 = Palette Number
      move.w  #63,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0200,LSPC_DATA_REG // Bits 8..15 = Palette Number
      dbra.w  d1,SpriteMapALoop // D1--, While (D1 >= 0) Sprite Map A Loop
    move.w  #7,d1 // D1 = Count
    SpriteMapBLoop:
      move.w  #60,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0100,LSPC_DATA_REG // Bits 8..15 = Palette Number
      move.w  #61,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0100,LSPC_DATA_REG // Bits 8..15 = Palette Number
      move.w  #64,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0200,LSPC_DATA_REG // Bits 8..15 = Palette Number
      move.w  #65,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0200,LSPC_DATA_REG // Bits 8..15 = Palette Number
      dbra.w  d1,SpriteMapBLoop // D1--, While (D1 >= 0) Sprite Map B Loop
    move.w  #7,d1 // D1 = Count
    SpriteMapCLoop:
      move.w  #62,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0200,LSPC_DATA_REG // Bits 8..15 = Palette Number
      move.w  #63,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0200,LSPC_DATA_REG // Bits 8..15 = Palette Number
      move.w  #58,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0100,LSPC_DATA_REG // Bits 8..15 = Palette Number
      move.w  #59,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0100,LSPC_DATA_REG // Bits 8..15 = Palette Number
      dbra.w  d1,SpriteMapCLoop // D1--, While (D1 >= 0) Sprite Map C Loop
    move.w  #7,d1 // D1 = Count
    SpriteMapDLoop:
      move.w  #64,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0200,LSPC_DATA_REG // Bits 8..15 = Palette Number
      move.w  #65,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0200,LSPC_DATA_REG // Bits 8..15 = Palette Number
      move.w  #60,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0100,LSPC_DATA_REG // Bits 8..15 = Palette Number
      move.w  #61,LSPC_DATA_REG    // Sprite Character Number (0..57 = Logo Characters)
      move.w  #$0100,LSPC_DATA_REG // Bits 8..15 = Palette Number
      dbra.w  d1,SpriteMapDLoop // D1--, While (D1 >= 0) Sprite Map D Loop
    dbra.w  d0,SpriteMapLoop // D0--, While (D0 >= 0) Sprite Map Loop

Loop:
  cmp.b   #1,VertBlank // Wait For Vertical Blank
  bne.b   Loop

  // Joystick Input
  move.b  IN_PL1_REG,d0 // D0 = Input Port: Player l Byte
  not.b   d0 // Compliment Player 1 Input Bits

  TestUp: // Translate Sprite Y Position
    btst.l  #0,d0    // Test Player 1 Up Input Bit
    beq.b   TestDown // IF (Player 1 Up Input Bit == 0) Skip
    move.w  #$8300,LSPC_ADDR_REG // Load Sprite Y Position
    move.w  LSPC_DATA_REG,d1     // D1 = Sprite Y Position
    cmp.w   #$F800,d1 // Compare Sprite Y Position
    bcc.b   TestDown  // IF (Sprite Y Position >= 496 * 128) Skip
    add.w   #128,d1   // Increment Y Position
    move.w  #$8300,LSPC_ADDR_REG // Store Sprite Y Position
    move.w  d1,LSPC_DATA_REG     // Sprite Y Position = D1

  TestDown: // Translate Sprite Y Position
    btst.l  #1,d0    // Test Player 1 Down Input Bit
    beq.b   TestLeft // IF (Player 1 Down Input Bit == 0) Skip
    move.w  #$8300,LSPC_ADDR_REG // Load Sprite Y Position
    move.w  LSPC_DATA_REG,d1     // D1 = Sprite Y Position
    cmp.w   #$9080,d1 // Compare Sprite Y Position
    bcs.b   TestLeft  // IF (Sprite Y Position < 289 * 128) Skip
    sub.w   #128,d1   // Decrement Y Position
    move.w  #$8300,LSPC_ADDR_REG // Store Sprite Y Position
    move.w  d1,LSPC_DATA_REG     // Sprite Y Position = D1

  TestLeft: // Translate Sprite X Position
    btst.l  #2,d0     // Test Player 1 Left Input Bit
    beq.b   TestRight // IF (Player 1 Left Input Bit == 0) Skip
    move.w  #$8500,LSPC_ADDR_REG // Load Sprite X Position
    move.w  LSPC_DATA_REG,d1     // D1 = Sprite X Position
    cmp.w   #$0080,d1 // Compare Sprite X Position
    bcs.b   TestRight // IF (Sprite X Position < 1 * 128) Skip
    sub.w   #128,d1   // Decrement X Position
    move.w  #$8500,LSPC_ADDR_REG // Store Sprite X Position
    move.w  d1,LSPC_DATA_REG     // Sprite X Position = D1

  TestRight: // Translate Sprite X Position
    btst.l  #3,d0 // Test Player 1 Right Input Bit
    beq.b   TestA // IF (Player 1 Right Input Bit == 0) Skip
    move.w  #$8500,LSPC_ADDR_REG // Load Sprite X Position
    move.w  LSPC_DATA_REG,d1     // D1 = Sprite X Position
    cmp.w   #$9800,d1 // Compare Sprite X Position
    bcc.b   TestA     // IF (Sprite X Position >= 304 * 128) Skip
    add.w   #128,d1   // Increment X Position
    move.w  #$8500,LSPC_ADDR_REG // Store Sprite X Position
    move.w  d1,LSPC_DATA_REG     // Sprite X Position = D1

  TestA: // Scale Sprite Horizontal Reduction
    btst.l  #4,d0 // Test Player 1 Button A Input Bit
    beq.b   TestB // IF (Player 1 Button A Input Bit == 0) Skip
    move.w  #$8100,LSPC_ADDR_REG // Load Sprite H/V Reduction
    move.w  LSPC_DATA_REG,d1     // D1 = Sprite H/V Reduction
    move.w  d1,d2 // D2 = D1
    and.w   #$0F00,d1 // D1 = Sprite Horizontal Reduction
    beq.b   TestB     // IF (Sprite Horizonatal Reduction == 0) Skip
    sub.w   #256,d1   // Decrement Sprite Horizonatal Reduction
    and.w   #$00FF,d2 // D2 = Sprite Vertical Reduction
    or.w    d2,d1 // D1 = Sprite H/V Reduction
    move.w  #$8100,LSPC_ADDR_REG // Store Sprite H/V Reduction
    move.w  d1,LSPC_DATA_REG     // Sprite H/V Reduction = D1

  TestB: // Scale Sprite Horizontal Reduction
    btst.l  #5,d0 // Test Player 1 Button B Input Bit
    beq.b   TestC // IF (Player 1 Button B Input Bit == 0) Skip
    move.w  #$8100,LSPC_ADDR_REG // Load Sprite H/V Reduction
    move.w  LSPC_DATA_REG,d1     // D1 = Sprite H/V Reduction
    move.w  d1,d2 // D2 = D1
    and.w   #$0F00,d1 // D1 = Sprite Horizontal Reduction
    cmp.w   #$0F00,d1 // Compare Sprite Horizonatal Reduction
    beq.b   TestC     // IF (Sprite Horizonatal Reduction == 0x0F00) Skip
    add.w   #256,d1   // Increment Sprite Horizonatal Reduction
    and.w   #$00FF,d2 // D2 = Sprite Vertical Reduction
    or.w    d2,d1 // D1 = Sprite H/V Reduction
    move.w  #$8100,LSPC_ADDR_REG // Store Sprite H/V Reduction
    move.w  d1,LSPC_DATA_REG     // Sprite H/V Reduction = D1

  TestC: // Scale Sprite Verticle Reduction
    btst.l  #6,d0 // Test Player 1 Button C Input Bit
    beq.b   TestD // IF (Player 1 Button C Input Bit == 0) Skip
    move.w  #$8100,LSPC_ADDR_REG // Load Sprite H/V Reduction
    move.w  LSPC_DATA_REG,d1     // D1 = Sprite H/V Reduction
    move.w  d1,d2 // D2 = D1
    and.w   #$00FF,d1 // D1 = Sprite Vertical Reduction
    beq.b   TestD     // IF (Sprite Vertical Reduction == 0) Skip
    subq.w  #1,d1     // Decrement Sprite Vertical Reduction
    and.w   #$0F00,d2 // D2 = Sprite Horizontal Reduction
    or.w    d2,d1 // D1 = Sprite H/V Reduction
    move.w  #$8100,LSPC_ADDR_REG // Store Sprite H/V Reduction
    move.w  d1,LSPC_DATA_REG     // Sprite H/V Reduction = D1

  TestD: // Scale Sprite Verticle Reduction
    btst.l  #7,d0     // Test Player 1 Button D Input Bit
    beq.b   TestStart // IF (Player 1 Button D Input Bit == 0) Skip
    move.w  #$8100,LSPC_ADDR_REG // Load Sprite H/V Reduction
    move.w  LSPC_DATA_REG,d1     // D1 = Sprite H/V Reduction
    move.w  d1,d2 // D2 = D1
    and.w   #$00FF,d1 // D1 = Sprite Vertical Reduction
    cmp.w   #$00FF,d1 // Compare Sprite Vertical Reduction
    beq.b   TestStart // IF (Sprite Vertical Reduction == 0x00FF) Skip
    addq.w  #1,d1     // Increment Sprite Vertical Reduction
    and.w   #$0F00,d2 // D2 = Sprite Horizontal Reduction
    or.w    d2,d1 // D1 = Sprite H/V Reduction
    move.w  #$8100,LSPC_ADDR_REG // Store Sprite H/V Reduction
    move.w  d1,LSPC_DATA_REG     // Sprite H/V Reduction = D1

  TestStart: // Flip Sprite X
    move.b  IN_PL12_REG,d0 // D0 = Input Port: Player l & 2 Byte
    not.b   d0 // Compliment Player l & 2 Input Bits

    btst.l  #0,d0      // Test Player 1 Start Input Bit
    beq.b   TestSelect // IF (Player 1 Start Input Bit == 0) Skip
    move.w  #$4001,LSPC_ADDR_REG // Load Sprite VRAM Map Address #1
    move.w  LSPC_DATA_REG,d1     // D1 = Sprite VRAM Map Address #1
    btst.l  #0,d1
    beq.b   SetFlipX
    bclr.l  #0,d1
    bra.b   StoreFlipX
    SetFlipX:
      bset.l  #0,d1
    StoreFlipX:
      move.w  #$4001,LSPC_ADDR_REG // Store Sprite VRAM Map Address #1
      move.w  d1,LSPC_DATA_REG     // Sprite VRAM Map Address #1 = D1

  TestSelect: // Flip Sprite Y
    btst.l  #1,d0    // Test Player 1 Select Input Bit
    beq.b   EndInput // IF (Player 1 Select Input Bit == 0) Skip
    move.w  #$4001,LSPC_ADDR_REG // Load Sprite VRAM Map Address #1
    move.w  LSPC_DATA_REG,d1     // D1 = Sprite VRAM Map Address #1
    btst.l  #1,d1
    beq.b   SetFlipY
    bclr.l  #1,d1
    bra.b   StoreFlipY
    SetFlipY:
      bset.l  #1,d1
    StoreFlipY:
      move.w  #$4001,LSPC_ADDR_REG // Store Sprite VRAM Map Address #1
      move.w  d1,LSPC_DATA_REG     // Sprite VRAM Map Address #1 = D1

  EndInput:
    move.b  #0,VertBlank // Store 0 To Vertical Blank Memory Byte
    bra.w   Loop

Start2:
  rts
Start3:
  rts
Start4:
  rts

Message:
  db "Sprite Chain = 40, Active Chars = 33:" // Message Text

align(2) // Align 16-Bit
Palette:
  dw $0000,$FFFF,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000 // Palette #1 (16 Colors)
  insert "GFX/checkers.pal" // Palette #2..3