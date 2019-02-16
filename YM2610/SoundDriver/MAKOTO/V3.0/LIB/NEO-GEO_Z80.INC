//===================== (Key: RW = Read/Write)
// NEO-GEO Z80 Include
//=====================
//------------
// Memory Map
//------------
constant BANKCODE($8000)          // $0000..$7FFF: Static Main Code Bank M1 ROM (32KB)                                          R
constant BANK3($8000)             // $8000..$BFFF: Switchable  Code Bank  3 ROM (16KB)                                          R
constant BANK2($C000)             // $C000..$DFFF: Switchable  Code Bank  2 ROM  (8KB)                                          R
constant BANK1($E000)             // $E000..$EFFF: Switchable  Code Bank  1 ROM  (4KB)                                          R
constant BANK0($F000)             // $F000..$F7FF: Switchable  Code Bank  0 ROM  (2KB)                                          R
constant WRAM_Z80($F800)          // $F800..$FFFF: Work RAM                      (2KB)                                          RW

//---------------------
// I/O Map (Z80 Ports)
//---------------------
constant IN_SND($00)              // $00: Input  Sound Code From M68K                                                           R
constant CLR_SND($00)             // $00: Clear  Sound Code From M68K                                                            W
constant OUT_SND($0C)             // $0C: Output Sound Code To   M68K                                                            W
constant MIR_SND($C0)             // $C0: Mirror Of Input/Clear ($00)                                                           RW

//------------------
// NMI (Write Only)
//------------------
constant NMI_ON($08)              // $08..$0B: NMI Enable - Base Register                                                        W
constant NMI_ON_A($08)            // $08:      NMI Enable - A                                                                    W
constant NMI_ON_B($09)            // $09:      NMI Enable - B                                                                    W
constant NMI_ON_C($0A)            // $0A:      NMI Enable - C                                                                    W
constant NMI_ON_D($0B)            // $0B:      NMI Enable - D                                                                    W

constant NMI_OFF($18)             // $18..$1B: NMI Disable - Base Register                                                       W
constant NMI_OFF_A($18)           // $18:      NMI Disable - A                                                                   W
constant NMI_OFF_B($19)           // $19:      NMI Disable - B                                                                   W
constant NMI_OFF_C($1A)           // $1A:      NMI Disable - C                                                                   W
constant NMI_OFF_D($1B)           // $1B:      NMI Disable - D                                                                   W

//-----------------------------------
// Z80 ROM Bank Settings (Read Only)
//-----------------------------------
constant SET_BANK($08)            // $08..$0B: Set Bank - Base Register                                                         R
constant SET_BANK0($08)           // $08:      Set Bank - 0 ($F000..$F7FF)                                                      R
constant SET_BANK1($09)           // $09:      Set Bank - 1 ($E000..$EFFF)                                                      R
constant SET_BANK2($0A)           // $0A:      Set Bank - 2 ($C000..$DFFF)                                                      R
constant SET_BANK3($0B)           // $0B:      Set Bank - 3 ($8000..$BFFF)                                                      R

//--------
// YM2610
//--------
constant YM2610($04)              // $04..$07: YM2610 - Base Register                                                           RW

// YM2610 - Read (Write Z80 Address A Port 4, Read Z80 Data A Port 5)
constant YM2610_FLG($04)          // $04: YM2610 - Read Status Flags                                                            R
constant YM2610_SSG($05)          // $05: YM2610 - Read SSG Register Data                                                       R
constant YM2610_END($06)          // $06: YM2610 - Read ADPCM-B/CH1..6 END Flags                                                R
constant YM2610_NA($07)           // $07: YM2610 - Read Always Returns $00                                                      R

// YM2610 - Write (Write Z80 Address A/B Port 4/6, Write Z80 Data A/B Port 5/7)
// YM2610 - Pair A: SSG, ADPCM-B, FM Channels 1 & 2 (Z80 Port 4/5)
constant YM2610_ADDR_A($04)       // $04: YM2610 - Address A                                                                     W
constant YM2610_DATA_A($05)       // $05: YM2610 - Data A                                                                        W

// YM2610 - Pair B: ADPCM-A, FM Channels 3 & 4 (Z80 Port 6/7)
constant YM2610_ADDR_B($06)       // $06: YM2610 - Address B                                                                     W
constant YM2610_DATA_B($07)       // $07: YM2610 - Data B                                                                        W

//------------------------------------------------------------------
// YM2610 SSG (Write Z80 Address A Port 4, Write Z80 Data A Port 5)
//------------------------------------------------------------------
constant SSG_FINE_TUNE_A($00)     // $00: YM2610 SSG - Channel A Fine   Tune (Bits 0..7)                                         W
constant SSG_COARSE_TUNE_A($01)   // $01: YM2610 SSG - Channel A Coarse Tune (Bits 0..3)                                         W
constant SSG_FINE_TUNE_B($02)     // $02: YM2610 SSG - Channel B Fine   Tune (Bits 0..7)                                         W
constant SSG_COARSE_TUNE_B($03)   // $03: YM2610 SSG - Channel B Coarse Tune (Bits 0..3)                                         W
constant SSG_FINE_TUNE_C($04)     // $04: YM2610 SSG - Channel C Fine   Tune (Bits 0..7)                                         W
constant SSG_COARSE_TUNE_C($05)   // $05: YM2610 SSG - Channel C Coarse Tune (Bits 0..3)                                         W
constant SSG_NOISE_TUNE($06)      // $06: YM2610 SSG - Channel Noise    Tune (Bits 0..4)                                         W

constant SSG_KEY($07)             // $07: YM2610 SSG - Channel Enable Noise (Bits 3..5), Tone (Bits 0..2)                        W

constant SSG_MODE_VOL_A($08)      // $08: YM2610 SSG - Channel A Mode (Bit 4), Volume (Bits 0..3)                                W
constant SSG_MODE_VOL_B($09)      // $09: YM2610 SSG - Channel B Mode (Bit 4), Volume (Bits 0..3)                                W
constant SSG_MODE_VOL_C($0A)      // $0A: YM2610 SSG - Channel C Mode (Bit 4), Volume (Bits 0..3)                                W

constant SSG_ENV_FINE_TUNE($0B)   // $0B: YM2610 SSG - Volume Envelope Period Fine   Tune (Bits 0..7)                            W
constant SSG_ENV_COARSE_TUNE($0C) // $0C: YM2610 SSG - Volume Envelope Period Coarse Tune (Bits 0..7)                            W

// YM2610 SSG - Volume Envelope Shape (8 = |\|\|\|\, 9 = |\____, 10 = |\/\/, 11 = |\/''', 12= /|/|/|/|, 13 = /''', 14 = /\/\, 15 = /|___)
constant SSG_ENV_SHAPE($0D)       // $0D: YM2610 SSG - Volume Envelope Shape (Bits 0..3)                                         W

//----------------------------------------------------------------------
// YM2610 ADPCM-B (Write Z80 Address A Port 4, Write Z80 Data A Port 5)
//----------------------------------------------------------------------
constant ADPCM_B_KEY($10)         // $10: YM2610 ADPCM-B - Start (Bit 7), Repeat (Bit 4), Reset (Bit 0)                          W
constant ADPCM_B_LR($11)          // $11: YM2610 ADPCM-B - Channel Output Left/Right (Bit 7/6)                                   W

// YM2610 ADPCM-B - Sample Address (Aligned To 256-Byte Boundary)
constant ADPCM_B_START_LSB($12)   // $12: YM2610 ADPCM-B - Sample Start Address/256 LSB (Bits 0..7)                              W
constant ADPCM_B_START_MSB($13)   // $13: YM2610 ADPCM-B - Sample Start Address/256 MSB (Bits 0..7)                              W
constant ADPCM_B_STOP_LSB($14)    // $14: YM2610 ADPCM-B - Sample Stop  Address/256 LSB (Bits 0..7)                              W
constant ADPCM_B_STOP_MSB($15)    // $15: YM2610 ADPCM-B - Sample Stop  Address/256 MSB (Bits 0..7)                              W

// YM2610 ADPCM-B - Playback Rate (Frequency = 8Mhz / 12 / 12 / (65535 / Rate) = 55555 * (Rate / 65535) Hz)
constant ADPCM_B_FREQ_LSB($19)    // $19: YM2610 ADPCM-B - Sample Playback Rate LSB (Bits 0..7)                                  W
constant ADPCM_B_FREQ_MSB($1A)    // $1A: YM2610 ADPCM-B - Sample Playback Rate MSB (Bits 0..7)                                  W

constant ADPCM_B_VOL($1B)         // $1B: YM2610 ADPCM-B - Sample Playback Volume (Bits 0..7)                                    W

constant ADPCM_STAT($1C)          // $1C: YM2610 ADPCM   - Status Register B (Bit 7) Channel 1..6 (Bits 0..5)                    W

//---------------------------------------------------------------------------------
// YM2610 FM - Channel 1 & 2 (Write Z80 Address A Port 4, Write Z80 Data A Port 5)
//---------------------------------------------------------------------------------
constant FM_TEST($21)             // $21: YM2610 FM - Test Register ($00 = Normal Operation) (Bits 0..7)                         W

// YM2610 FM - LFO Control & Frequency Code (0 = 3.98Hz, 1 = 5.56Hz, 2 = 6.02Hz, 3 = 6.37Hz, 4 = 6.88Hz, 5 = 9.63Hz, 6 = 48.1Hz, 7 = 72.2Hz)
constant FM_LFO($22)              // $22: YM2610 FM - LFO ON (Bit 3), Control & Frequency Code (Bits 0..2)                       W

// YM2610 FM - Channel Code (1 = CH1, 2 = CH2, 5 = CH3, 6 = CH4)
constant FM_KEY($28)              // $28: YM2610 FM - Key ON/OFF OP1..4 (Bits 4..7), Channel Code (Bits 0..2)                    W

constant FM_DT_MUL_1_OP1($31)     // $31: YM2610 FM - Channel 1 Operator 1 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_2_OP1($32)     // $32: YM2610 FM - Channel 2 Operator 1 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_1_OP3($35)     // $35: YM2610 FM - Channel 1 Operator 3 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_2_OP3($36)     // $36: YM2610 FM - Channel 2 Operator 3 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_1_OP2($39)     // $39: YM2610 FM - Channel 1 Operator 2 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_2_OP2($3A)     // $3A: YM2610 FM - Channel 2 Operator 2 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_1_OP4($3D)     // $3D: YM2610 FM - Channel 1 Operator 4 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_2_OP4($3E)     // $3E: YM2610 FM - Channel 2 Operator 4 Detune (Bits 4..6), Multiple (Bits 0..3)              W

constant FM_VOL_1_OP1($41)        // $41: YM2610 FM - Channel 1 Operator 1 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_2_OP1($42)        // $42: YM2610 FM - Channel 2 Operator 1 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_1_OP3($45)        // $45: YM2610 FM - Channel 1 Operator 3 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_2_OP3($46)        // $46: YM2610 FM - Channel 2 Operator 3 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_1_OP2($49)        // $49: YM2610 FM - Channel 1 Operator 2 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_2_OP2($4A)        // $4A: YM2610 FM - Channel 2 Operator 2 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_1_OP4($4D)        // $4D: YM2610 FM - Channel 1 Operator 4 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_2_OP4($4E)        // $4E: YM2610 FM - Channel 2 Operator 4 Total Level (Volume) (Bits 0..6)                      W

constant FM_KS_AR_1_OP1($51)      // $51: YM2610 FM - Channel 1 Operator 1 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_2_OP1($52)      // $52: YM2610 FM - Channel 2 Operator 1 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_1_OP3($55)      // $55: YM2610 FM - Channel 1 Operator 3 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_2_OP3($56)      // $56: YM2610 FM - Channel 2 Operator 3 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_1_OP2($59)      // $59: YM2610 FM - Channel 1 Operator 2 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_2_OP2($5A)      // $5A: YM2610 FM - Channel 2 Operator 2 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_1_OP4($5D)      // $5D: YM2610 FM - Channel 1 Operator 4 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_2_OP4($5E)      // $5E: YM2610 FM - Channel 2 Operator 4 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W

constant FM_AM_DR_1_OP1($61)      // $61: YM2610 FM - Channel 1 Operator 1 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_2_OP1($62)      // $62: YM2610 FM - Channel 2 Operator 1 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_1_OP3($65)      // $65: YM2610 FM - Channel 1 Operator 3 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_2_OP3($66)      // $66: YM2610 FM - Channel 2 Operator 3 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_1_OP2($69)      // $69: YM2610 FM - Channel 1 Operator 2 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_2_OP2($6A)      // $6A: YM2610 FM - Channel 2 Operator 2 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_1_OP4($6D)      // $6D: YM2610 FM - Channel 1 Operator 4 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_2_OP4($6E)      // $6E: YM2610 FM - Channel 2 Operator 4 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W

constant FM_SR_1_OP1($71)         // $71: YM2610 FM - Channel 1 Operator 1 Sustain Rate (Bits 0..4)                              W
constant FM_SR_2_OP1($72)         // $72: YM2610 FM - Channel 2 Operator 1 Sustain Rate (Bits 0..4)                              W
constant FM_SR_1_OP3($75)         // $75: YM2610 FM - Channel 1 Operator 3 Sustain Rate (Bits 0..4)                              W
constant FM_SR_2_OP3($76)         // $76: YM2610 FM - Channel 2 Operator 3 Sustain Rate (Bits 0..4)                              W
constant FM_SR_1_OP2($79)         // $79: YM2610 FM - Channel 1 Operator 2 Sustain Rate (Bits 0..4)                              W
constant FM_SR_2_OP2($7A)         // $7A: YM2610 FM - Channel 2 Operator 2 Sustain Rate (Bits 0..4)                              W
constant FM_SR_1_OP4($7D)         // $7D: YM2610 FM - Channel 1 Operator 4 Sustain Rate (Bits 0..4)                              W
constant FM_SR_2_OP4($7E)         // $7E: YM2610 FM - Channel 2 Operator 4 Sustain Rate (Bits 0..4)                              W

constant FM_SL_RR_1_OP1($81)      // $81: YM2610 FM - Channel 1 Operator 1 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_2_OP1($82)      // $82: YM2610 FM - Channel 2 Operator 1 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_1_OP3($85)      // $85: YM2610 FM - Channel 1 Operator 3 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_2_OP3($86)      // $86: YM2610 FM - Channel 2 Operator 3 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_1_OP2($89)      // $89: YM2610 FM - Channel 1 Operator 2 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_2_OP2($8A)      // $8A: YM2610 FM - Channel 2 Operator 2 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_1_OP4($8D)      // $8D: YM2610 FM - Channel 1 Operator 4 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_2_OP4($8E)      // $8E: YM2610 FM - Channel 2 Operator 4 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W

constant FM_ENV_1_OP1($91)        // $91: YM2610 FM - Channel 1 Operator 1 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_2_OP1($92)        // $92: YM2610 FM - Channel 2 Operator 1 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_1_OP3($95)        // $95: YM2610 FM - Channel 1 Operator 3 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_2_OP3($96)        // $96: YM2610 FM - Channel 2 Operator 3 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_1_OP2($99)        // $99: YM2610 FM - Channel 1 Operator 2 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_2_OP2($9A)        // $9A: YM2610 FM - Channel 2 Operator 2 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_1_OP4($9D)        // $9D: YM2610 FM - Channel 1 Operator 4 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_2_OP4($9E)        // $9E: YM2610 FM - Channel 2 Operator 4 Envelope Generator (Bits 0..3)                        W

constant FM_FREQ_LSB_1($A1)       // $A1: YM2610 FM - Channel 1 Frequency LSB (Bits 0..7)                                        W
constant FM_FREQ_LSB_2($A2)       // $A2: YM2610 FM - Channel 2 Frequency LSB (Bits 0..7)                                        W

constant FM_FREQ_MSB_1($A5)       // $A5: YM2610 FM - Channel 1 Block (Bits 3..5), Frequency MSB (Bits 0..2)                     W
constant FM_FREQ_MSB_2($A6)       // $A6: YM2610 FM - Channel 2 Block (Bits 3..5), Frequency MSB (Bits 0..2)                     W

// YM2610 FM - 2CH Mode Additional Operator Frequencies (OP1 Frequency Stored In CH2 Frequency Registers ($A2/$A6))
constant FM_FREQ_LSB_OP1($A2)     // $A2: YM2610 FM - Operator 1 Frequency LSB (Bits 0..7)                                       W
constant FM_FREQ_LSB_OP2($A8)     // $A8: YM2610 FM - Operator 2 Frequency LSB (Bits 0..7)                                       W
constant FM_FREQ_LSB_OP3($A9)     // $A9: YM2610 FM - Operator 3 Frequency LSB (Bits 0..7)                                       W
constant FM_FREQ_LSB_OP4($AA)     // $AA: YM2610 FM - Operator 4 Frequency LSB (Bits 0..7)                                       W

constant FM_FREQ_MSB_OP1($A6)     // $A6: YM2610 FM - Operator 1 Block (Bits 3..5), Frequency MSB (Bits 0..2)                    W
constant FM_FREQ_MSB_OP2($AC)     // $AC: YM2610 FM - Operator 2 Block (Bits 3..5), Frequency MSB (Bits 0..2)                    W
constant FM_FREQ_MSB_OP3($AD)     // $AD: YM2610 FM - Operator 3 Block (Bits 3..5), Frequency MSB (Bits 0..2)                    W
constant FM_FREQ_MSB_OP4($AE)     // $AE: YM2610 FM - Operator 4 Block (Bits 3..5), Frequency MSB (Bits 0..2)                    W

constant FM_FB_ALGO_1($B1)        // $B1: YM2610 FM - Channel 1 Feedback (Bits 3..5), Algorithm (Bits 0..2)                      W
constant FM_FB_ALGO_2($B2)        // $B2: YM2610 FM - Channel 2 Feedback (Bits 3..5), Algorithm (Bits 0..2)                      W

constant FM_LR_AMS_PMS_1($B5)     // $B5: YM2610 FM - Channel 1 Left/Right (Bit 7/6), AM Sense (Bits 4..5) PM Sense (Bits 0..2)  W
constant FM_LR_AMS_PMS_2($B6)     // $B6: YM2610 FM - Channel 2 Left/Right (Bit 7/6), AM Sense (Bits 4..5) PM Sense (Bits 0..2)  W

//----------------------------------------------------------------------
// YM2610 ADPCM-A (Write Z80 Address B Port 6, Write Z80 Data B Port 7)
//----------------------------------------------------------------------
// YM2610 ADPCM-A - Fixed Playback Rate (Frequency = 8MHz / 12 (Prescaler) / 6 (Clocks Per Access) / 6 (Channels) = ~18.5185kHz)
constant ADPCM_A_KEY($00)         // $00: YM2610 ADPCM-A - Key ON/OFF (Bit 7), Channel ON/OFF 0..6 (Bits 0..6)                   W
constant ADPCM_A_MVOL($01)        // $01: YM2610 ADPCM-A - Master Volume (Attenuator) (Bits 0..5)                                W
constant ADPCM_A_TEST($02)        // $02: YM2610 ADPCM-A - Test Register ($00 = Normal Operation) (Bits 0..7)                    W

constant ADPCM_A_VOL_1($08)       // $08: YM2610 ADPCM-A - Channel 1 Left/Right (Bit 7/6), Volume (Bits 0..4)                    W
constant ADPCM_A_VOL_2($09)       // $09: YM2610 ADPCM-A - Channel 2 Left/Right (Bit 7/6), Volume (Bits 0..4)                    W
constant ADPCM_A_VOL_3($0A)       // $0A: YM2610 ADPCM-A - Channel 3 Left/Right (Bit 7/6), Volume (Bits 0..4)                    W
constant ADPCM_A_VOL_4($0B)       // $0B: YM2610 ADPCM-A - Channel 4 Left/Right (Bit 7/6), Volume (Bits 0..4)                    W
constant ADPCM_A_VOL_5($0C)       // $0C: YM2610 ADPCM-A - Channel 5 Left/Right (Bit 7/6), Volume (Bits 0..4)                    W
constant ADPCM_A_VOL_6($0D)       // $0D: YM2610 ADPCM-A - Channel 6 Left/Right (Bit 7/6), Volume (Bits 0..4)                    W

// YM2610 ADPCM-A - Sample Address (Aligned To 256-Byte Boundary)
constant ADPCM_A_START_LSB_1($10) // $10: YM2610 ADPCM-A - Channel 1 Sample Start Address/256 LSB (Bits 0..7)                    W
constant ADPCM_A_START_LSB_2($11) // $11: YM2610 ADPCM-A - Channel 2 Sample Start Address/256 LSB (Bits 0..7)                    W
constant ADPCM_A_START_LSB_3($12) // $12: YM2610 ADPCM-A - Channel 3 Sample Start Address/256 LSB (Bits 0..7)                    W
constant ADPCM_A_START_LSB_4($13) // $13: YM2610 ADPCM-A - Channel 4 Sample Start Address/256 LSB (Bits 0..7)                    W
constant ADPCM_A_START_LSB_5($14) // $14: YM2610 ADPCM-A - Channel 5 Sample Start Address/256 LSB (Bits 0..7)                    W
constant ADPCM_A_START_LSB_6($15) // $15: YM2610 ADPCM-A - Channel 6 Sample Start Address/256 LSB (Bits 0..7)                    W

constant ADPCM_A_START_MSB_1($18) // $18: YM2610 ADPCM-A - Channel 1 Sample Start Address/256 MSB (Bits 0..7)                    W
constant ADPCM_A_START_MSB_2($19) // $19: YM2610 ADPCM-A - Channel 2 Sample Start Address/256 MSB (Bits 0..7)                    W
constant ADPCM_A_START_MSB_3($1A) // $1A: YM2610 ADPCM-A - Channel 3 Sample Start Address/256 MSB (Bits 0..7)                    W
constant ADPCM_A_START_MSB_4($1B) // $1B: YM2610 ADPCM-A - Channel 4 Sample Start Address/256 MSB (Bits 0..7)                    W
constant ADPCM_A_START_MSB_5($1C) // $1C: YM2610 ADPCM-A - Channel 5 Sample Start Address/256 MSB (Bits 0..7)                    W
constant ADPCM_A_START_MSB_6($1D) // $1D: YM2610 ADPCM-A - Channel 6 Sample Start Address/256 MSB (Bits 0..7)                    W

constant ADPCM_A_STOP_LSB_1($20)  // $20: YM2610 ADPCM-A - Channel 1 Sample Stop Address/256 LSB (Bits 0..7)                     W
constant ADPCM_A_STOP_LSB_2($21)  // $21: YM2610 ADPCM-A - Channel 2 Sample Stop Address/256 LSB (Bits 0..7)                     W
constant ADPCM_A_STOP_LSB_3($22)  // $22: YM2610 ADPCM-A - Channel 3 Sample Stop Address/256 LSB (Bits 0..7)                     W
constant ADPCM_A_STOP_LSB_4($23)  // $23: YM2610 ADPCM-A - Channel 4 Sample Stop Address/256 LSB (Bits 0..7)                     W
constant ADPCM_A_STOP_LSB_5($24)  // $24: YM2610 ADPCM-A - Channel 5 Sample Stop Address/256 LSB (Bits 0..7)                     W
constant ADPCM_A_STOP_LSB_6($25)  // $25: YM2610 ADPCM-A - Channel 6 Sample Stop Address/256 LSB (Bits 0..7)                     W

constant ADPCM_A_STOP_MSB_1($28)  // $28: YM2610 ADPCM-A - Channel 1 Sample Stop Address/256 MSB (Bits 0..7)                     W
constant ADPCM_A_STOP_MSB_2($29)  // $29: YM2610 ADPCM-A - Channel 2 Sample Stop Address/256 MSB (Bits 0..7)                     W
constant ADPCM_A_STOP_MSB_3($2A)  // $2A: YM2610 ADPCM-A - Channel 3 Sample Stop Address/256 MSB (Bits 0..7)                     W
constant ADPCM_A_STOP_MSB_4($2B)  // $2B: YM2610 ADPCM-A - Channel 4 Sample Stop Address/256 MSB (Bits 0..7)                     W
constant ADPCM_A_STOP_MSB_5($2C)  // $2C: YM2610 ADPCM-A - Channel 5 Sample Stop Address/256 MSB (Bits 0..7)                     W
constant ADPCM_A_STOP_MSB_6($2D)  // $2D: YM2610 ADPCM-A - Channel 6 Sample Stop Address/256 MSB (Bits 0..7)                     W

//---------------------------------------------------------------------------------
// YM2610 FM - Channel 3 & 4 (Write Z80 Address B Port 6, Write Z80 Data B Port 7)
//---------------------------------------------------------------------------------
constant FM_DT_MUL_3_OP1($31)     // $31: YM2610 FM - Channel 3 Operator 1 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_4_OP1($32)     // $32: YM2610 FM - Channel 4 Operator 1 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_3_OP3($35)     // $35: YM2610 FM - Channel 3 Operator 3 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_4_OP3($36)     // $36: YM2610 FM - Channel 4 Operator 3 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_3_OP2($39)     // $39: YM2610 FM - Channel 3 Operator 2 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_4_OP2($3A)     // $3A: YM2610 FM - Channel 4 Operator 2 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_3_OP4($3D)     // $3D: YM2610 FM - Channel 3 Operator 4 Detune (Bits 4..6), Multiple (Bits 0..3)              W
constant FM_DT_MUL_4_OP4($3E)     // $3E: YM2610 FM - Channel 4 Operator 4 Detune (Bits 4..6), Multiple (Bits 0..3)              W

constant FM_VOL_3_OP1($41)        // $41: YM2610 FM - Channel 3 Operator 1 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_4_OP1($42)        // $42: YM2610 FM - Channel 4 Operator 1 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_3_OP3($45)        // $45: YM2610 FM - Channel 3 Operator 3 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_4_OP3($46)        // $46: YM2610 FM - Channel 4 Operator 3 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_3_OP2($49)        // $49: YM2610 FM - Channel 3 Operator 2 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_4_OP2($4A)        // $4A: YM2610 FM - Channel 4 Operator 2 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_3_OP4($4D)        // $4D: YM2610 FM - Channel 3 Operator 4 Total Level (Volume) (Bits 0..6)                      W
constant FM_VOL_4_OP4($4E)        // $4E: YM2610 FM - Channel 4 Operator 4 Total Level (Volume) (Bits 0..6)                      W

constant FM_KS_AR_3_OP1($51)      // $51: YM2610 FM - Channel 3 Operator 1 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_4_OP1($52)      // $52: YM2610 FM - Channel 4 Operator 1 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_3_OP3($55)      // $55: YM2610 FM - Channel 3 Operator 3 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_4_OP3($56)      // $56: YM2610 FM - Channel 4 Operator 3 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_3_OP2($59)      // $59: YM2610 FM - Channel 3 Operator 2 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_4_OP2($5A)      // $5A: YM2610 FM - Channel 4 Operator 2 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_3_OP4($5D)      // $5D: YM2610 FM - Channel 3 Operator 4 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W
constant FM_KS_AR_4_OP4($5E)      // $5E: YM2610 FM - Channel 4 Operator 4 Key Scale (Bits 6..7), Attack Rate (Bits 0..4)        W

constant FM_AM_DR_3_OP1($61)      // $61: YM2610 FM - Channel 3 Operator 1 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_4_OP1($62)      // $62: YM2610 FM - Channel 4 Operator 1 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_3_OP3($65)      // $65: YM2610 FM - Channel 3 Operator 3 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_4_OP3($66)      // $66: YM2610 FM - Channel 4 Operator 3 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_3_OP2($69)      // $69: YM2610 FM - Channel 3 Operator 2 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_4_OP2($6A)      // $6A: YM2610 FM - Channel 4 Operator 2 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_3_OP4($6D)      // $6D: YM2610 FM - Channel 3 Operator 4 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W
constant FM_AM_DR_4_OP4($6E)      // $6E: YM2610 FM - Channel 4 Operator 4 AM ON (Bit 7), Decay Rate (Bits 0..4)                 W

constant FM_SR_3_OP1($71)         // $71: YM2610 FM - Channel 3 Operator 1 Sustain Rate (Bits 0..4)                              W
constant FM_SR_4_OP1($72)         // $72: YM2610 FM - Channel 4 Operator 1 Sustain Rate (Bits 0..4)                              W
constant FM_SR_3_OP3($75)         // $75: YM2610 FM - Channel 3 Operator 3 Sustain Rate (Bits 0..4)                              W
constant FM_SR_4_OP3($76)         // $76: YM2610 FM - Channel 4 Operator 3 Sustain Rate (Bits 0..4)                              W
constant FM_SR_3_OP2($79)         // $79: YM2610 FM - Channel 3 Operator 2 Sustain Rate (Bits 0..4)                              W
constant FM_SR_4_OP2($7A)         // $7A: YM2610 FM - Channel 4 Operator 2 Sustain Rate (Bits 0..4)                              W
constant FM_SR_3_OP4($7D)         // $7D: YM2610 FM - Channel 3 Operator 4 Sustain Rate (Bits 0..4)                              W
constant FM_SR_4_OP4($7E)         // $7E: YM2610 FM - Channel 4 Operator 4 Sustain Rate (Bits 0..4)                              W

constant FM_SL_RR_3_OP1($81)      // $81: YM2610 FM - Channel 3 Operator 1 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_4_OP1($82)      // $82: YM2610 FM - Channel 4 Operator 1 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_3_OP3($85)      // $85: YM2610 FM - Channel 3 Operator 3 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_4_OP3($86)      // $86: YM2610 FM - Channel 4 Operator 3 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_3_OP2($89)      // $89: YM2610 FM - Channel 3 Operator 2 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_4_OP2($8A)      // $8A: YM2610 FM - Channel 4 Operator 2 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_3_OP4($8D)      // $8D: YM2610 FM - Channel 3 Operator 4 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W
constant FM_SL_RR_4_OP4($8E)      // $8E: YM2610 FM - Channel 4 Operator 4 Sustain Level (Bits 4..7), Release Rate (Bits 0..3)   W

constant FM_ENV_3_OP1($91)        // $91: YM2610 FM - Channel 3 Operator 1 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_4_OP1($92)        // $92: YM2610 FM - Channel 4 Operator 1 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_3_OP3($95)        // $95: YM2610 FM - Channel 3 Operator 3 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_4_OP3($96)        // $96: YM2610 FM - Channel 4 Operator 3 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_3_OP2($99)        // $99: YM2610 FM - Channel 3 Operator 2 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_4_OP2($9A)        // $9A: YM2610 FM - Channel 4 Operator 2 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_3_OP4($9D)        // $9D: YM2610 FM - Channel 3 Operator 4 Envelope Generator (Bits 0..3)                        W
constant FM_ENV_4_OP4($9E)        // $9E: YM2610 FM - Channel 4 Operator 4 Envelope Generator (Bits 0..3)                        W

constant FM_FREQ_LSB_3($A1)       // $A1: YM2610 FM - Channel 3 Frequency LSB (Bits 0..7)                                        W
constant FM_FREQ_LSB_4($A2)       // $A2: YM2610 FM - Channel 4 Frequency LSB (Bits 0..7)                                        W

constant FM_FREQ_MSB_3($A5)       // $A5: YM2610 FM - Channel 3 Block (Bits 3..5), Frequency MSB (Bits 0..2)                     W
constant FM_FREQ_MSB_4($A6)       // $A6: YM2610 FM - Channel 4 Block (Bits 3..5), Frequency MSB (Bits 0..2)                     W

constant FM_FB_ALGO_3($B1)        // $B3: YM2610 FM - Channel 3 Feedback (Bits 3..5), Algorithm (Bits 0..2)                      W
constant FM_FB_ALGO_4($B2)        // $B4: YM2610 FM - Channel 4 Feedback (Bits 3..5), Algorithm (Bits 0..2)                      W

constant FM_LR_AMS_PMS_3($B5)     // $B5: YM2610 FM - Channel 3 Left/Right (Bit 7/6), AMS (Bits 4..5) PMS (Bits 0..2)            W
constant FM_LR_AMS_PMS_4($B6)     // $B6: YM2610 FM - Channel 4 Left/Right (Bit 7/6), AMS (Bits 4..5) PMS (Bits 0..2)            W