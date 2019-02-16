NEO-GEO
=======
<br />
NEO-GEO Bare Metal Code by krom (Peter Lemon).<br />
<br />
All code compiles out of box with the bass assembler by byuu.<br />
I use a special version of bass by ARM9 which has been updated with NEO-GEO M68K/Z80 output:<br />
https://github.com/ARM9/bass<br />
I have included binaries of all the demos, including "puzzledp.zip" packed rom for MAME.<br />
<br />
Special thanks to freem, who has helped me get into NEO-GEO Coding =D<br />
Please check out MAME, an accurate NEO-GEO Emulator:<br />
https://www.mamedev.org/<br />
<br />
Howto Compile:<br />
All the code compiles into multiple binary (202-XX.XX) files:<br />
202-c1.c1 = Character 1 ROM (16x16 LSPC 3D-Line Sprites)<br />
202-c2.c2 = Character 2 ROM (16x16 LSPC 3D-Line Sprites)<br />
202-m1.m1 = Z80 Music ROM (YM2610 Code)<br />
202-p1.p1 = M68K Program ROM (CPU Code)<br />
202-s1.s1 = Fixed Screen ROM (8x8 Fix Screen Characters)<br />
202-v1.v1 = Voice ROM (ADPCM Audio Samples)<br />
<br />
Using bass Run: make.bat<br />
Then zip the above files that are created into a "puzzledp.zip" file.<br />
(Create zero length files for any missing roms that are not required inside the "puzzledp.zip".)<br />
<br />
Howto Run:<br />
You can also use NEO-GEO emulators like MAME NEO-GEO Driver to run the "puzzledp.zip" file:<br />
Place the "puzzledp.zip" file in the "MAME/roms" directory.<br />
Place the "neogeo.zip" bios file in the "MAME/roms" directory.<br />
Using MAME Run: mame puzzledp
