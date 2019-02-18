//================
// NEO-GEO Header
//================
// M68K Vector Table
dl $0010F300 // Reset SSP
dl $00C00402 // Reset PC
dl $00C00408 // Bus Error = Monitor Entry
dl $00C0040E // Address Error
dl $00C00414 // Illegal Instruction
dl $00C0041A // Zero Divide
dl $00C0041A // CHK Instruction
dl $00C0041A // TRAPV Instruction

dl $00C0041A // Privilege Violation
dl $00C00420 // Trace
dl $00C00426 // Line 1010 Emulator
dl $00C00426 // Line 1111 Emulator
dl $00C00426 // Unassigned
dl $00C00426 // Unassigned
dl $00C00426 // Unassigned
dl $00C0042C // Uninitialized Interrupt

dl $00C00426 // Unassigned
dl $00C00426 // Unassigned
dl $00C00426 // Unassigned
dl $00C00426 // Unassigned
dl $00C00426 // Unassigned
dl $00C00426 // Unassigned
dl $00C00426 // Unassigned
dl $00C00426 // Unassigned

dl $00C00432 // Spurious Interrupt
dl VBlankIRQ // Interrupt 1 (Vertical Blank)
dl TimerIRQ  // Interrupt 2 (Horizontal/Timer)
dl $00000000 // Interrupt 3
dl $00000000 // Interrupt 4
dl $00000000 // Interrupt 5
dl $00000000 // Interrupt 6
dl $00000000 // Interrupt 7

seek($00000100)
db "NEO-GEO",0 // ID 1
dw $0202       // Game Code / System Type: $0052 = NGH, $0202 = MVS
dl $00080000   // Program ROM Size
dl $00100000   // Backup Start
dw $1000       // Backup Size
db 0           // Boot Screen Flag: 0 = Display Logo, 1 = SKIP LOGO
db 0           // 1st Tile Number Of NEO-GEO Logo In Character ROMs
dl JAPAN_DATA  // Soft DIP Data: Japanese Configuration Menu Data Pointer
dl USA_DATA    // Soft DIP Data: USA Configuration Menu Data Pointer
dl EUROPE_DATA // Soft DIP Data: European Configuration Menu Data Pointer

jmp Start  // User
jmp Start2 // Player Start
jmp Start3 // Demo End
jmp Start4 // Coin Sound

seek($00000182)
dl ID2 // ID 2 CODE POINTER
ID2:
  dl $76004A6D,$0A146600,$003C206D,$0A043E2D
  dl $0A0813C0,$00300001,$32100C01,$00FF671A
  dl $30280002,$B02D0ACE,$66103028,$0004B02D
  dl $0ACF6606,$B22D0AD0,$67085088,$51CFFFD4
  dl $36074E75,$206D0A04,$3E2D0A08,$3210E049
  dl $0C0100FF,$671A3010,$B02D0ACE,$66123028
  dl $0002E048,$B02D0ACF,$6606B22D,$0AD06708
  dl $588851CF,$FFD83607
  rts

// Configuration Menu Layouts (Soft DIP Data)
JAPAN_DATA: // Japanese Configuration Menu Data
  db "0123456789ABCDEF"                      // Game Name
  db $FF,$FF,$FF,$FF,$FF,$FF                 // Special List
  db $24,$02,$00,$00,$00,$00,$00,$00,$00,$00 // Option List
  db "LIVES       "
  db "1           "
  db "2           "
  db "3           "
  db "4           "
  db "HOW TO PLAY "
  db "WITH        "
  db "WITHOUT     "

USA_DATA: // USA Configuration Menu Data
  db "0123456789ABCDEF"                      // Game Name
  db $FF,$FF,$FF,$FF,$FF,$FF                 // Special List
  db $24,$02,$00,$00,$00,$00,$00,$00,$00,$00 // Option List
  db "LIVES       "
  db "1           "
  db "2           "
  db "3           "
  db "4           "
  db "HOW TO PLAY "
  db "WITH        "
  db "WITHOUT     "

EUROPE_DATA: // European Configuration Menu Data
  db "0123456789ABCDEF"                      // Game Name
  db $FF,$FF,$FF,$FF,$FF,$FF                 // Special List
  db $24,$02,$00,$00,$00,$00,$00,$00,$00,$00 // Option List
  db "LIVES       "
  db "1           "
  db "2           "
  db "3           "
  db "4           "
  db "HOW TO PLAY "
  db "WITH        "
  db "WITHOUT     "