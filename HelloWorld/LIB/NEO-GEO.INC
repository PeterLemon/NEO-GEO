//================= (Key: BWL = Byte/Word/Long, RW = Read/Write)
// NEO-GEO Include
//=================
// Memory Map
constant WRAM_68K($100000)      // $100000..$10FFFF 68000 Work RAM (64KB)                  BWL,RW
constant IN_PL1_REG($300000)    // Input Port: Player l (0 = ON)                           B  ,R
                                // Bit 0,1,2,3,4,5,6,7: Top,Bottom,Left,Right,1,2,3,4
constant IN_PL2_REG($340000)    // Input Port: Player 2 (0 = ON)                           B  ,R
                                // Bit 0,1,2,3,4,5,6,7: Top,Bottom,Left,Right,1,2,3,4
constant IN_PL12_REG($380000)   // Input Port: Player l & 2 (0 = ON)                       B  ,R
                                // Bit 0,1,2,3: P1 Start,P1 Select,P2 Start,P2 Select
                                // Bit 4: Memory Card 1 Insertion Status (0 = Inserted)
                                // Bit 5: Memory Card 2 Insertion Status (0 = Inserted)
                                // Bit 6: Write Protect Status Detection (0 = Write Enable)
                                // Bit 7: NEO-GEO Mode (0 = NEO-GEO, 1 = MULTI-VIDEO SYSTEM)
constant WDOG_TMR_REG($300001)  // Watchdog Timer                                          B  , W
constant SND_CODE_REG($320000)  // Sound Code Input/Output                                 B  ,RW
constant OUT_CTRL_REG($380001)  // Output Port: Controller Output                          B  , W
                                // (Negative Logic, Open-Collector)
                                // Bit 0,1,2: Bit 1,2,3 Output From Controller 1
                                // Bit 3,4,5: Bit 1,3,3 Output From Controller 2
constant OUT_MCD_BANK($380011)  // Output Port: Memory Card/Bank Output (Bit 2-0)          B  , W
constant OUT_SHAD_NORM($3A0001) // Output Port: Set Shadow Bit To 0 For Normal Display     B  , W
constant OUT_SHAD_DIMM($3A0011) // Output Port: Set Shadow Bit To 1 For Dimmed Display     B  , W
constant OUT_VECT_ON($3A0003)   // Output Port: Vector Switch ($00..$7F) ON                B  , W
                                // (Switch Between $00..$7F And $0C00000-$0C0007F)
constant OUT_VECT_OFF($3A0013)  // Output Port: Vector Switch ($00..$7F) OFF               B  , W
constant OUT_MCD1_ON($3A0005)   // Output Port: Memory Card l/Write Enable                 B  , W
constant OUT_MCD1_OFF($3A0015)  // Output Port: Memory Card l/Write Disable                B  , W
constant OUT_MCD2_OFF($3A0007)  // Output Port: Memory Card 2/Write Disable                B  , W
constant OUT_MCD2_ON($3A0017)   // Output Port: Memory Card 2/Write Enable                 B  , W
constant OUT_MCD_REG($3A0009)   // Output Port: Memory Card/Register Select Enable         B  , W
constant OUT_MCD_NORM($3A0019)  // Output Port: Memory Card/Set To Normal                  B  , W
constant OUT_PAL0_BANK($3A000F) // Output Port: Select Palette Bank 0                      B  , W
constant OUT_PAL1_BANK($3A001F) // Output Port: Select Palette Bank 1                      B  , W
constant LSPC_ADDR_REG($3C0000) // LSPC: Address Register                                   W ,RW
constant LSPC_DATA_REG($3C0002) // LSPC: Read/Write Data Register                           W ,RW
constant LSPC_AINC_REG($3C0004) // LSPC: Auto Increment Register                            W ,RW
constant LSPC_MODE_REG($3C0006) // LSPC: Mode Register                                      W , W
constant LSPC_RVP_REG($3C0006)  // LSPC: Raster Vertical Position Register                  W ,R
constant LSPC_TMHI_REG($3C0008) // LSPC: Timer High Register                                W , W
constant LSPC_TMLO_REG($3C000A) // LSPC: Timer Low Register                                 W , W
constant LSPC_INTR_REG($3C000C) // LSPC: Interrupt Clear Register                           W , W
constant LSPC_TMR_STP($3C000E)  // LSPC: Timer Stop Switch (LSPC2 Only)                     W , W
constant COL_PAL_REG($400000)   // $400000..$401FFF Color Palette (2 Banks)                 WL,?W
constant MEM_CARD($800000)      // $800000..$BFFFFF Memory Card (8 Banks)                   WL, W
                                // When 2K-Byte RAM Card Is Used, It Is Allocated To Address
                                // 800000-800FFF (Bits 8..15 Are Ignored)

constant USER($000122)          // Execution Of Game Main Program
constant PLAYER_START($000128)  // Game-Start Processing
constant DEMO_END($00012E)      // Procedure To Allow Demo To End Early
constant COIN_SOUND($000134)    // Request To Sound CPU (Z80) For Coin-Deposit Sound

// System Work Area:
constant SYSTEM_MODE($10FD80)   // Current Software Mode Status: (1 Byte, Bit 7: 0 = System Mode, 1 = Game Mode)
constant MVS_FLAG($10FD82)      // Indicate If This System Is For Commercial Or Home Use: (1 Byte: 0 = Home Use, Else Commercial Use)
constant COUNTRY_CODE($10FD83)  // Country Specification: (1 Byte: 0 = JAPAN, 1 = U.S.A, 2 = EUROPE)
constant GAME_DIP($10FD84)      // $10FD84..$10FD93 Game Parameters Of Each Game (16 Bytes)
constant INPUT_1($10FD94)       // $10FD94..$10FD99 Current Status Of Controller 1 (6 Bytes)
constant INPUT_2($10FD9A)       // $10FD9A..$10FD9F Current Status Of Controller 2 (6 Bytes)
constant INPUT_3($10FDA0)       // $10FDA0..$10FDA5 Current Status Of Controller 3 (6 Bytes)
constant INPUT_4($10FDA6)       // $10FDA6..$10FD9B Current Status Of Controller 4 (6 Bytes)
constant INPUT_S($10FDAC)       // Status Of Start & Select Buttons (2 Bytes: P4SE,P4ST,P3SE,P3ST,P2SE,P2ST,P1SE,P1ST)
constant USER_REQUEST($10FDAE)  // A Command Number Is Set Here When USER ($122) Is Executed (1 Byte)
constant USER_MODE($10FDAF)     // Set Current Status Of The Game Program With The Game Software (1 Byte)
constant CREDIT_DEC($10FDB0)    // Input The Number Of Credits Needed For Player 1 & 2 Respectively (2 Bytes: BCD, $00..$99)
constant START_FLAG($10FDB4)    // Player(s) Who Is Starting The Game Is Indicated When PLAYER-START ($128) Is Called (1 Byte)
constant PLAYER_MODE($10FDB6)   // Set Current Status Of Players In The Order Of Player 1, 2, 3, 4 (4 Bytes)
constant MESS_POINT($10FDBE)    // Set Pointer For MESS-OUT (1 Long Word)
constant MESS_BUSY($10FDC2)     // If Value Is Not "0" MESS-OUT (Generic V-RAM Output Routine) Is Skipped (1 Byte)
                                // Always Put "0" Before Calling CARD-ERROR
constant CARD_COMMAND($10FDC4)  // Card Command Used When CARD ($C00468) & CARD-ERROR ($C0046E) Are Called (1 Byte)
constant CARD_ANSWER($10FDC6)   // Card Answer Used When CARD ($C00468) & CARD-ERROR ($C0046E) Are Called (1 Byte)
constant CARD_START($10FDC8)    // Card Start Used When CARD ($C00468) & CARD-ERROR ($C0046E) Are Called (1 Long Word)
constant CARD_SIZE($10FDCC)     // Card Size Used When CARD ($C00468) & CARD-ERROR ($C0046E) Are Called (1 Word)
constant CARD_FCB($10FDCE)      // Card FCB Used When CARD ($C00468) & CARD-ERROR ($C0046E) Are Called (1 Word)
constant CARD_SUB($10FDD0)      // Card Sub Used When CARD ($C00468) & CARD-ERROR ($C0046E) Are Called (1 Byte Or 1 Word)
constant DATE_TIME($10FDD2)     // The Current Date & Time Are Set When READ-CALENDAR ($C0045C) Is Called (7 Bytes: BCD, YMDW HMS)
constant INPUT_5($10FEE8)       // $10FEE8..$10FEED Current Status Of Controller 5 (6 Bytes)
constant INPUT_6($10FEEE)       // $10FEEE..$10FEF3 Current Status Of Controller 6 (6 Bytes)
constant MESS_BUFFER($10FF00)   // The Addresses Of Output Data Are Stored In MESS_BUFFER
                                // When MESS-OUT Is Called These Are Output All At Once

// System Programs: Enter The Following With A Jump (JMP) Instruction
// Be Sure To Always Make The Entry In Supervisor Mode
constant SYSTEM_INT1($C00438)   // System Level 1 Interrupt Program: If Bit 7 In SYSTEM-MODE ($l0FD80) Is "0"
                                // It Is Determined To Be In "System Mode", If "1" It Is In The Regular "Game Mode"
constant SYSTEM_RETURN($C00444) // Returns From The Game Program To The System Program
                                // This Program Should Be Called When All Jobs Are Finished After USER Entry

// System Subroutines: Enter The Following With A Jump To Subroutine (JSR) Instruction
constant SYSTEM_IO($C0044A)     // Input & Output Operations From The System Program
                                // This Subroutine Should Be Called Every 1/60th Of A Second During The Game Program
constant CREDIT_CHECK($C00450)  // The System Verifies The Credit Status
constant CREDIT_DOWN($C00456)   // Credit Deduction Executed By The System
constant READ_CALENDAR($C0045C) // Reading From The Calendar (MVS Only)
constant FIX_CLEAR($C004C2)     // Clears The Fix Display: Puts $020 (Opaque Character) On Entire Line At Both Sides
                                // Puts $0FF (Transparent Character) In The Rest Of The Fix Display Area
                                // These Two Characters Are Defined As Common Fix Characters
constant LSP_1ST($C004C8)       // Initializes The Line Sprite, Sets The Following Values To Line Sprites 1..380:
                                // V-POSITION: 0, H-POSITION: Off The Screen, Reduction Ratio: $0FFF
constant MESS_OUT($C004CE)      // Generic V-RAM Output
constant CARD($C00468)          // Access To Memory Card
constant CARD_ERROR($C0046E)    // Handle Memory Card Errors
constant SOUND_STOP($D00046)    // If Set To "0" On MVS, Do Not Play Any Demo Sound Regardless Of The Settings In Mode-Select Menu
                                // (Except For Sound Effects For Coin Insertion) (1 Byte)

macro align(size) { // Align Byte Amount
  while (pc() % {size}) {
    db 0
  }
}