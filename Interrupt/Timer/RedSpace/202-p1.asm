// NEO-GEO Interrupt Timer Red Space demo by krom (Peter Lemon):
// 1. Play NEO-GEO Logo Animation Using Header Option
// 2. Clear VRAM FIX Area Using System Subroutine
// 3. Initialize Line Sprites Using System Subroutine
// 4. Load Palette Data To Palette RAM
// 5. Print Text Characters To VRAM Fix Area Using S1 ROM 8x8 Font
// 6. Set Interrupt Timer To Trigger Every 8 Scanlines To Load BG Palette Color
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

VBlankIRQ: // Interrupt 1: Vertical Blank (Interrupt Triggered At Vertical Blank Start)
  // Display NEO-GEO Logo In System Mode, Otherwise Run Game Mode
  btst.b  #7,SYSTEM_MODE // Test Bit 7 In SYSTEM_MODE Byte ($10FD80) (0 = System Mode, 1 = Game Mode)
  bne.b   GameMode       // IF (SYSTEM_MODE Bit 7 != 0) NEO-GEO Logo Has Been Displayed, Run Game Mode
  jmp     SYSTEM_INT1    // ELSE: Run System Sub Routine: SYSTEM_INT1 ($C00438)
  GameMode:
    move.w  #4,LSPC_INTR_REG // Clear Vertical Blank Interrupt Bit 2 Of LSPC Interrupt ($3C000C)
    move.b  d0,WDOG_TMR_REG  // Set Interrupt Watchdog Timer ($300001)

    lea.l   BGPalette,a6 // A6 = BG Palette Source Address
  rte // Return From Exception

TimerIRQ: // Interrupt 2: Timer (Interrupt Triggered When Timer Counter Reaches 0)
  move.w  #2,LSPC_INTR_REG // Clear Timer Interrupt Bit 1 Of LSPC Interrupt ($3C000C)
  move.b  d0,WDOG_TMR_REG  // Set Interrupt Watchdog Timer ($300001)

  move.w  (a6)+,(a5) // Copy 1 BG Palette Color (2 Bytes)
  rte // Return From Exception

Start:
  move.w  #$2000,sr // Enable Interrupts In Status Register

  // Clear FIX Area (VRAM)
  jsr     FIX_CLEAR // Run Internal Sub Routine: FIX_CLEAR ($C004C2)

  // Initialize Line Sprites
  jsr     LSP_1ST   // Run Internal Sub Routine: LSP_1ST ($C004C8)

  // Setup Palette
  lea.l   Palette,a0 // A0 = Palette Source Address
  lea.l   COL_PAL_REG,a1 // A1 = Fix Palette Destination Address ($400000)
  move.w  (a0)+,(a1)+ // Copy 2 Fix Palette Colors (4 Bytes)
  move.w  (a0)+,(a1)+

  // Setup Characters In The FIX Area (VRAM)
  lea.l   Message,a0 // A0 = Message Source Address
  move.w  #37,d0     // D0 = Number Of Characters To Print - 1
  move.w  #$7023,d1  // D1 = VRAM Offset
  MessageLoop:
    move.w  d1,LSPC_ADDR_REG // Store VRAM Offset To LSPC Address
    add.l   #32,d1           // VRAM Offset += 32
    move.b  (a0)+,d2  // D2 = Next Character Number Byte
    move.w  #$02E0,d3 // D3 = Character Base (Bits 12..15 = Palette Number, Bits 0..11 = Character Number)
    add.w   d2,d3     // Character = Character Base + Character Number
    move.w  d3,LSPC_DATA_REG // Store Character
    dbra.w  d0,MessageLoop // D0--, While (D0 >= 0) Message Loop

  // Setup Interrupt Timer
  lea.l   BGPalette,a6 // A6 = BG Palette Source Address
  lea.l   COL_PAL_REG+255*32+30,a5 // A5 = BG Palette Destination Address ($401FFE)

  move.w  #(384*8)-1,d0 // D0 = 8 Scanlines Time - 1 (LSB)
  move.w  d0,LSPC_TMLO_REG // Store Time To LSPC Timer Low Register ($3C000A)
  move.w  #%11010000,d0 // D0 = Mode Flags
  move.w  d0,LSPC_MODE_REG // Store Mode Flags To LSPC Mode Register ($3C0006)

Loop:
  bra.w   Loop

Start2:
  rts
Start3:
  rts
Start4:
  rts

Message:
  db "Interrupt #2 Timer Set To 8 Scanlines:" // Message Text

align(2) // Align 16-Bit
Palette:
  dw $0000,$FFFF // Fix Palette #1 (2 Colors)

BGPalette:
  dw $0000 // BG Palette #255, Color #15 (Copied On VBlank) (4 Colors)
  dw $0000
  dw $0000
  dw $0000
  dw $4F00 // BG Palette #255, Color #15 (Copied On Screen) (32 Colors)
  dw $0F00
  dw $4E00
  dw $0E00
  dw $4D00
  dw $0D00
  dw $4C00
  dw $0C00
  dw $4B00
  dw $0B00
  dw $4A00
  dw $0A00
  dw $4900
  dw $0900
  dw $4800
  dw $0800
  dw $4700
  dw $0700
  dw $4600
  dw $0600
  dw $4500
  dw $0500
  dw $4400
  dw $0400
  dw $4300
  dw $0300
  dw $4200
  dw $0200
  dw $4100
  dw $0100
  dw $4000
  dw $0000