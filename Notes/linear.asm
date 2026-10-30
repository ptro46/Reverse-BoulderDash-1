0040 cda201       call W0x01a2
0043 219d00       ld Phl, W0x009d
0046 cd6c00       call W0x006c
0049 00           nop
004a 00           nop
004b 00           nop
004c 00           nop
004d 00           nop
004e 00           nop
004f 00           nop
0050 00           nop
0051 00           nop
0052 00           nop
0053 00           nop
0054 00           nop
0055 00           nop
0056 c3521f       jp W0x1f52
0059 215901       ld Phl, W0x0159
005c cd6c00       call W0x006c
005f cd09bb       call W0xbb09
0062 30fb         jr Cnc, D$ - 3
0064 217d01       ld Phl, W0x017d
0067 cd6c00       call W0x006c
006a 18d7         jr D$ - 39
006c e5           push Ghl
006d 7e           ld Ra, R(hl)
006e fefd         Acp N0xfd
0070 280f         jr Cz, D$ + 17
0072 fefe         Acp N0xfe
0074 2814         jr Cz, D$ + 22
0076 feff         Acp N0xff
0078 2821         jr Cz, D$ + 35
007a cd5dbb       call W0xbb5d
007d e1           pop Ghl
007e 23           inc Phl
007f 18eb         jr D$ - 19
0081 e1           pop Ghl
0082 23           inc Phl
0083 e5           push Ghl
0084 7e           ld Ra, R(hl)
0085 cd90bb       call W0xbb90
0088 18f3         jr D$ - 11
008a e1           pop Ghl
008b 54           ld Rd, Rh
008c 5d           ld Re, Rl
008d 23           inc Phl
008e 23           inc Phl
008f e5           push Ghl
0090 13           inc Pde
0091 1a           ld a, (Pde)
0092 67           ld Rh, Ra
0093 13           inc Pde
0094 1a           ld a, (Pde)
0095 6f           ld Rl, Ra
0096 cd75bb       call W0xbb75
0099 18e2         jr D$ - 28
009b e1           pop Ghl
009c c9           ret
009d fd02         ld (Pbc), a
009f fe0f         Acp N0x0f
00a1 01464d       ld Pbc, W0x4d46
00a4 52           ld Rd, Rd
00a5 2061         jr Cnz, D$ + 99
00a7 6e           ld Rl, R(hl)
00a8 64           ld Rh, Rh
00a9 2043         jr Cnz, D$ + 69
00ab 6f           ld Rl, Ra
00ac fd01fe10     ld Pbc, W0x10fe
00b0 03           inc Pbc
00b1 50           ld Rd, Rb
00b2 72           ld R(hl), Rd
00b3 65           ld Rh, Rl
00b4 73           ld R(hl), Re
00b5 65           ld Rh, Rl
00b6 6e           ld Rl, R(hl)
00b7 74           ld R(hl), Rh
00b8 73           ld R(hl), Re
00b9 fd02         ld (Pbc), a
00bb fe0e         Acp N0x0e
00bd 05           dec Rb
00be 42           ld Rb, Rd
00bf 4f           ld Rc, Ra
00c0 55           ld Rd, Rl
00c1 4c           ld Rc, Rh
00c2 44           ld Rb, Rh
00c3 45           ld Rb, Rl
00c4 52           ld Rd, Rd
00c5 2044         jr Cnz, D$ + 70
00c7 41           ld Rb, Rc
00c8 53           ld Rd, Re
00c9 48           ld Rc, Rb
00ca fd01fe12     ld Pbc, W0x12fe
00ce 09           add Phl, Pbc
00cf 46           ld Rb, R(hl)
00d0 72           ld R(hl), Rd
00d1 6f           ld Rl, Ra
00d2 6d           ld Rl, Rl
00d3 fd02         ld (Pbc), a
00d5 fe0d         Acp N0x0d
00d7 0b           dec Pbc
00d8 2054         jr Cnz, D$ + 86
00da 68           ld Rl, Rb
00db 65           ld Rh, Rl
00dc 2046         jr Cnz, D$ + 72
00de 4d           ld Rc, Rl
00df 52           ld Rd, Rd
00e0 2047         jr Cnz, D$ + 73
00e2 61           ld Rh, Rc
00e3 6e           ld Rl, R(hl)
00e4 67           ld Rh, Ra
00e5 20fd         jr Cnz, D$ - 1
00e7 01fe0e       ld Pbc, W0x0efe
00ea 0f           rrca
00eb 43           ld Rb, Re
00ec 6f           ld Rl, Ra
00ed 6e           ld Rl, R(hl)
00ee 76           halt
00ef 65           ld Rh, Rl
00f0 72           ld R(hl), Rd
00f1 74           ld R(hl), Rh
00f2 65           ld Rh, Rl
00f3 64           ld Rh, Rh
00f4 2062         jr Cnz, D$ + 100
00f6 79           ld Ra, Rc
00f7 fd02         ld (Pbc), a
00f9 fe0a         Acp N0x0a
00fb 112046       ld Pde, W0x4620
00fe 4d           ld Rc, Rl
00ff 52           ld Rd, Rd
0100 2c           inc Rl
0101 6d           ld Rl, Rl
0102 65           ld Rh, Rl
0103 6d           ld Rl, Rl
0104 62           ld Rh, Rd
0105 65           ld Rh, Rl
0106 72           ld R(hl), Rd
0107 206e         jr Cnz, D$ + 112
0109 75           ld R(hl), Rl
010a 6d           ld Rl, Rl
010b 62           ld Rh, Rd
010c 65           ld Rh, Rl
010d 72           ld R(hl), Rd
010e 2031         jr Cnz, D$ + 51
0110 fd03         inc Pbc
0112 fe07         Acp N0x07
0114 15           dec Rd
0115 20a4         jr Cnz, D$ - 90
0117 2e2e         ld Rl, N0x2e
0119 2e41         ld Rl, N0x41
011b 2020         jr Cnz, D$ + 34
011d 46           ld Rb, R(hl)
011e 4d           ld Rc, Rl
011f 52           ld Rd, Rd
0120 2020         jr Cnz, D$ + 34
0122 50           ld Rd, Rb
0123 52           ld Rd, Rd
0124 4f           ld Rc, Ra
0125 44           ld Rb, Rh
0126 55           ld Rd, Rl
0127 43           ld Rb, Re
0128 54           ld Rd, Rh
0129 2e2e         ld Rl, N0x2e
012b 2ea4         ld Rl, N0xa4
012d fe07         Acp N0x07
012f 1620         ld Rd, N0x20
0131 2a2a2a       ld Phl, (W0x2a2a)
0134 2a2a2a       ld Phl, (W0x2a2a)
0137 2a2a2a       ld Phl, (W0x2a2a)
013a 2a2a2a       ld Phl, (W0x2a2a)
013d 2a2a2a       ld Phl, (W0x2a2a)
0140 2a2a2a       ld Phl, (W0x2a2a)
0143 2a2a2a       ld Phl, (W0x2a2a)
0146 2a2afe       ld Phl, (W0xfe2a)
0149 0d           dec Rc
014a 19           add Phl, Pde
014b 2020         jr Cnz, D$ + 34
014d 204c         jr Cnz, D$ + 78
014f 4f           ld Rc, Ra
0150 41           ld Rb, Rc
0151 44           ld Rb, Rh
0152 49           ld Rc, Rc
0153 4e           ld Rc, R(hl)
0154 47           ld Rb, Ra
0155 2020         jr Cnz, D$ + 34
0157 20ff         jr Cnz, D$ + 1
0159 fe0c         Acp N0x0c
015b 1852         jr D$ + 84
015d 45           ld Rb, Rl
015e 57           ld Rd, Ra
015f 49           ld Rc, Rc
0160 4e           ld Rc, R(hl)
0161 44           ld Rb, Rh
0162 2020         jr Cnz, D$ + 34
0164 43           ld Rb, Re
0165 41           ld Rb, Rc
0166 53           ld Rd, Re
0167 53           ld Rd, Re
0168 45           ld Rb, Rl
0169 54           ld Rd, Rh
016a 54           ld Rd, Rh
016b 45           ld Rb, Rl
016c fe0d         Acp N0x0d
016e 19           add Phl, Pde
016f 50           ld Rd, Rb
0170 52           ld Rd, Rd
0171 45           ld Rb, Rl
0172 53           ld Rd, Re
0173 53           ld Rd, Re
0174 2041         jr Cnz, D$ + 67
0176 4e           ld Rc, R(hl)
0177 59           ld Re, Rc
0178 204b         jr Cnz, D$ + 77
017a 45           ld Rb, Rl
017b 59           ld Re, Rc
017c ff           rst W0x0038
017d fe0c         Acp N0x0c
017f 1820         jr D$ + 34
0181 2020         jr Cnz, D$ + 34
0183 2020         jr Cnz, D$ + 34
0185 2020         jr Cnz, D$ + 34
0187 2020         jr Cnz, D$ + 34
0189 2020         jr Cnz, D$ + 34
018b 2020         jr Cnz, D$ + 34
018d 2020         jr Cnz, D$ + 34
018f 20ff         jr Cnz, D$ + 1
0191 fe0d         Acp N0x0d
0193 19           add Phl, Pde
0194 2020         jr Cnz, D$ + 34
0196 2020         jr Cnz, D$ + 34
0198 2020         jr Cnz, D$ + 34
019a 2020         jr Cnz, D$ + 34
019c 2020         jr Cnz, D$ + 34
019e 2020         jr Cnz, D$ + 34
01a0 20ff         jr Cnz, D$ + 1
01a2 3e01         ld Ra, N0x01
01a4 cd0ebc       call W0xbc0e
01a7 3e00         ld Ra, N0x00
01a9 cde201       call W0x01e2
01ac 11b301       ld Pde, W0x01b3
01af cdc301       call W0x01c3
01b2 c9           ret
01b3 00           nop
01b4 1a           ld a, (Pde)
01b5 0614         ld Rb, N0x14
01b7 00           nop
01b8 00           nop
01b9 00           nop
01ba 00           nop
01bb 00           nop
01bc 00           nop
01bd 00           nop
01be 00           nop
01bf 00           nop
01c0 00           nop
01c1 00           nop
01c2 00           nop
01c3 e5           push Ghl
01c4 d5           push Gde
01c5 c5           push Gbc
01c6 f5           push Gaf
01c7 0610         ld Rb, N0x10
01c9 3e00         ld Ra, N0x00
01cb c5           push Gbc
01cc d5           push Gde
01cd f5           push Gaf
01ce 1a           ld a, (Pde)
01cf 47           ld Rb, Ra
01d0 4f           ld Rc, Ra
01d1 f1           pop Gaf
01d2 f5           push Gaf
01d3 cd32bc       call W0xbc32
01d6 f1           pop Gaf
01d7 d1           pop Gde
01d8 c1           pop Gbc
01d9 3c           inc Ra
01da 13           inc Pde
01db 10ee         djnz D$ - 16
01dd f1           pop Gaf
01de c1           pop Gbc
01df d1           pop Gde
01e0 e1           pop Ghl
01e1 c9           ret
01e2 f5           push Gaf
01e3 c5           push Gbc
01e4 d5           push Gde
01e5 e5           push Ghl
01e6 47           ld Rb, Ra
01e7 4f           ld Rc, Ra
01e8 cd38bc       call W0xbc38
01eb e1           pop Ghl
01ec d1           pop Gde
01ed c1           pop Gbc
01ee f1           pop Gaf
01ef c9           ret
01f0 00           nop
01f1 00           nop
01f2 00           nop
01f3 00           nop
01f4 00           nop
01f5 00           nop
01f6 00           nop
01f7 00           nop
01f8 00           nop
01f9 00           nop
01fa 00           nop
01fb 00           nop
01fc 00           nop
01fd 00           nop
01fe 00           nop
01ff 00           nop
0200 f5           push Gaf
0201 c5           push Gbc
0202 d5           push Gde
0203 e5           push Ghl
0204 183c         jr D$ + 62
0206 f5           push Gaf
0207 c5           push Gbc
0208 d5           push Gde
0209 e5           push Ghl
020a 3e01         ld Ra, N0x01
020c 323221       ld (W0x2132), a
020f 2a4800       ld Phl, (W0x0048)
0212 11d05e       ld Pde, W0x5ed0
0215 19           add Phl, Pde
0216 11a000       ld Pde, W0x00a0
0219 06ff         ld Rb, N0xff
021b 37           scf
021c 3f           ccf
021d 04           inc Rb
021e ed52         sbc hl, Pde
0220 d21d02       jp Cnc, W0x021d
0223 78           ld Ra, Rb
0224 87           Aadd a, Ra
0225 47           ld Rb, Ra
0226 19           add Phl, Pde
0227 78           ld Ra, Rb
0228 320a01       ld (W0x010a), a
022b 7d           ld Ra, Rl
022c 320901       ld (W0x0109), a
022f 3a4401       ld a, (W0x0144)
0232 fe28         Acp N0x28
0234 c24202       jp Cnz, W0x0242
0237 7d           ld Ra, Rl
0238 324d01       ld (W0x014d), a
023b 78           ld Ra, Rb
023c 324e01       ld (W0x014e), a
023f 3a4401       ld a, (W0x0144)
0242 11002c       ld Pde, W0x2c00
0245 cdf102       call W0x02f1
0248 cd8a02       call W0x028a
024b 3a0901       ld a, (W0x0109)
024e 3c           inc Ra
024f 320901       ld (W0x0109), a
0252 211000       ld Phl, W0x0010
0255 19           add Phl, Pde
0256 eb           ex de, hl
0257 cd8a02       call W0x028a
025a 3a0a01       ld a, (W0x010a)
025d 3c           inc Ra
025e 320a01       ld (W0x010a), a
0261 212000       ld Phl, W0x0020
0264 19           add Phl, Pde
0265 eb           ex de, hl
0266 cd8a02       call W0x028a
0269 3a0901       ld a, (W0x0109)
026c 3d           dec Ra
026d 320901       ld (W0x0109), a
0270 eb           ex de, hl
0271 111000       ld Pde, W0x0010
0274 ed52         sbc hl, Pde
0276 eb           ex de, hl
0277 cd8a02       call W0x028a
027a 3e00         ld Ra, N0x00
027c 323221       ld (W0x2132), a
027f 3a3121       ld a, (W0x2131)
0282 a7           Aand Ra
0283 20fa         jr Cnz, D$ - 4
0285 e1           pop Ghl
0286 d1           pop Gde
0287 c1           pop Gbc
0288 f1           pop Gaf
0289 c9           ret
028a f5           push Gaf
028b c5           push Gbc
028c d5           push Gde
028d e5           push Ghl
028e 3a2a01       ld a, (W0x012a)
0291 47           ld Rb, Ra
0292 3a0a01       ld a, (W0x010a)
0295 b8           Acp Rb
0296 faec02       jp Cm, W0x02ec
0299 3a2a01       ld a, (W0x012a)
029c c618         Aadd a, N0x18
029e 47           ld Rb, Ra
029f 3a0a01       ld a, (W0x010a)
02a2 b8           Acp Rb
02a3 f2ec02       jp Cp, W0x02ec
02a6 3a2901       ld a, (W0x0129)
02a9 47           ld Rb, Ra
02aa 3a0901       ld a, (W0x0109)
02ad b8           Acp Rb
02ae faec02       jp Cm, W0x02ec
02b1 3a2901       ld a, (W0x0129)
02b4 c628         Aadd a, N0x28
02b6 47           ld Rb, Ra
02b7 3a0901       ld a, (W0x0109)
02ba b8           Acp Rb
02bb f2ec02       jp Cp, W0x02ec
02be d5           push Gde
02bf 2a3301       ld Phl, (W0x0133)
02c2 3a2901       ld a, (W0x0129)
02c5 47           ld Rb, Ra
02c6 3a0901       ld a, (W0x0109)
02c9 90           Asub Rb
02ca 87           Aadd a, Ra
02cb 1600         ld Rd, N0x00
02cd 5f           ld Re, Ra
02ce 19           add Phl, Pde
02cf 3a2a01       ld a, (W0x012a)
02d2 47           ld Rb, Ra
02d3 3a0a01       ld a, (W0x010a)
02d6 90           Asub Rb
02d7 3c           inc Ra
02d8 47           ld Rb, Ra
02d9 115000       ld Pde, W0x0050
02dc 19           add Phl, Pde
02dd 10fd         djnz D$ - 1
02df 7c           ld Ra, Rh
02e0 fec8         Acp N0xc8
02e2 dae802       jp Cc, W0x02e8
02e5 d608         Asub N0x08
02e7 67           ld Rh, Ra
02e8 d1           pop Gde
02e9 cd0a03       call W0x030a
02ec e1           pop Ghl
02ed d1           pop Gde
02ee c1           pop Gbc
02ef f1           pop Gaf
02f0 c9           ret
02f1 e5           push Ghl
02f2 2600         ld Rh, N0x00
02f4 6f           ld Rl, Ra
02f5 cb25         Osla Rl
02f7 cb14         Orl Rh
02f9 cb25         Osla Rl
02fb cb14         Orl Rh
02fd cb25         Osla Rl
02ff cb14         Orl Rh
0301 cb25         Osla Rl
0303 cb14         Orl Rh
0305 19           add Phl, Pde
0306 54           ld Rd, Rh
0307 5d           ld Re, Rl
0308 e1           pop Ghl
0309 c9           ret
030a e5           push Ghl
030b d5           push Gde
030c c5           push Gbc
030d f5           push Gaf
030e eb           ex de, hl
030f eda0         Lldi
0311 eda0         Lldi
0313 1b           dec Pde
0314 1b           dec Pde
0315 7a           ld Ra, Rd
0316 c608         Aadd a, N0x08
0318 57           ld Rd, Ra
0319 eda0         Lldi
031b eda0         Lldi
031d 1b           dec Pde
031e 1b           dec Pde
031f 7a           ld Ra, Rd
0320 c608         Aadd a, N0x08
0322 57           ld Rd, Ra
0323 eda0         Lldi
0325 eda0         Lldi
0327 1b           dec Pde
0328 1b           dec Pde
0329 7a           ld Ra, Rd
032a c608         Aadd a, N0x08
032c 57           ld Rd, Ra
032d eda0         Lldi
032f eda0         Lldi
0331 1b           dec Pde
0332 1b           dec Pde
0333 7a           ld Ra, Rd
0334 c608         Aadd a, N0x08
0336 57           ld Rd, Ra
0337 eda0         Lldi
0339 eda0         Lldi
033b 1b           dec Pde
033c 1b           dec Pde
033d 7a           ld Ra, Rd
033e c608         Aadd a, N0x08
0340 57           ld Rd, Ra
0341 eda0         Lldi
0343 eda0         Lldi
0345 1b           dec Pde
0346 1b           dec Pde
0347 7a           ld Ra, Rd
0348 c608         Aadd a, N0x08
034a 57           ld Rd, Ra
034b eda0         Lldi
034d eda0         Lldi
034f 1b           dec Pde
0350 1b           dec Pde
0351 7a           ld Ra, Rd
0352 c608         Aadd a, N0x08
0354 57           ld Rd, Ra
0355 eda0         Lldi
0357 eda0         Lldi
0359 f1           pop Gaf
035a c1           pop Gbc
035b d1           pop Gde
035c e1           pop Ghl
035d c9           ret
035e c9           ret
035f 79           ld Ra, Rc
0360 c6f0         Aadd a, N0xf0
0362 6f           ld Rl, Ra
0363 265e         ld Rh, N0x5e
0365 3801         jr Cc, D$ + 3
0367 25           dec Rh
0368 7e           ld Ra, R(hl)
0369 324401       ld (W0x0144), a
036c 2a4800       ld Phl, (W0x0048)
036f 77           ld R(hl), Ra
0370 3c           inc Ra
0371 23           inc Phl
0372 77           ld R(hl), Ra
0373 114f00       ld Pde, W0x004f
0376 19           add Phl, Pde
0377 3c           inc Ra
0378 77           ld R(hl), Ra
0379 3c           inc Ra
037a 23           inc Phl
037b 77           ld R(hl), Ra
037c cd0602       call W0x0206
037f c9           ret
0380 7b           ld Ra, Re
0381 211069       ld Phl, W0x6910
0384 110300       ld Pde, W0x0003
0387 19           add Phl, Pde
0388 be           Acp R(hl)
0389 c28703       jp Cnz, W0x0387
038c 23           inc Phl
038d 3a4600       ld a, (W0x0046)
0390 86           Aadd a, R(hl)
0391 23           inc Phl
0392 324800       ld (W0x0048), a
0395 3a4700       ld a, (W0x0047)
0398 8e           Aadc a, R(hl)
0399 324900       ld (W0x0049), a
039c c9           ret
039d e5           push Ghl
039e c5           push Gbc
039f d5           push Gde
03a0 4f           ld Rc, Ra
03a1 2a4400       ld Phl, (W0x0044)
03a4 1600         ld Rd, N0x00
03a6 19           add Phl, Pde
03a7 77           ld R(hl), Ra
03a8 3a6500       ld a, (W0x0065)
03ab 5f           ld Re, Ra
03ac cb23         Osla Re
03ae 1600         ld Rd, N0x00
03b0 217f67       ld Phl, W0x677f
03b3 19           add Phl, Pde
03b4 3a6400       ld a, (W0x0064)
03b7 cb27         Osla Ra
03b9 86           Aadd a, R(hl)
03ba 5f           ld Re, Ra
03bb 23           inc Phl
03bc 3e00         ld Ra, N0x00
03be 8e           Aadc a, R(hl)
03bf 57           ld Rd, Ra
03c0 ed534600     ld (W0x0046), Pde
03c4 d1           pop Gde
03c5 d5           push Gde
03c6 cd8003       call W0x0380
03c9 cd5f03       call W0x035f
03cc 79           ld Ra, Rc
03cd d1           pop Gde
03ce c1           pop Gbc
03cf e1           pop Ghl
03d0 c9           ret
03d1 e5           push Ghl
03d2 c5           push Gbc
03d3 d5           push Gde
03d4 4f           ld Rc, Ra
03d5 2a1901       ld Phl, (W0x0119)
03d8 77           ld R(hl), Ra
03d9 3a6500       ld a, (W0x0065)
03dc 5f           ld Re, Ra
03dd cb23         Osla Re
03df 1600         ld Rd, N0x00
03e1 217f67       ld Phl, W0x677f
03e4 19           add Phl, Pde
03e5 3a6400       ld a, (W0x0064)
03e8 cb27         Osla Ra
03ea 86           Aadd a, R(hl)
03eb 5f           ld Re, Ra
03ec 23           inc Phl
03ed 3e00         ld Ra, N0x00
03ef 8e           Aadc a, R(hl)
03f0 57           ld Rd, Ra
03f1 ed534800     ld (W0x0048), Pde
03f5 cd5f03       call W0x035f
03f8 79           ld Ra, Rc
03f9 d1           pop Gde
03fa c1           pop Gbc
03fb e1           pop Ghl
03fc c9           ret
03fd ed5f         ld a, r
03ff fdae99       Axor R(iy - 103)
0402 07           rlca
0403 07           rlca
0404 07           rlca
0405 325900       ld (W0x0059), a
0408 c9           ret
0409 e5           push Ghl
040a d5           push Gde
040b 2a5700       ld Phl, (W0x0057)
040e 7c           ld Ra, Rh
040f 1f           rra
0410 1f           rra
0411 e680         Aand N0x80
0413 5f           ld Re, Ra
0414 7d           ld Ra, Rl
0415 1f           rra
0416 e67f         Aand N0x7f
0418 57           ld Rd, Ra
0419 7d           ld Ra, Rl
041a 1f           rra
041b 1f           rra
041c e680         Aand N0x80
041e 85           Aadd a, Rl
041f ce13         Aadc a, N0x13
0421 6f           ld Rl, Ra
0422 7c           ld Ra, Rh
0423 8b           Aadc a, Re
0424 8a           Aadc a, Rd
0425 67           ld Rh, Ra
0426 225700       ld (W0x0057), Phl
0429 d1           pop Gde
042a e1           pop Ghl
042b c9           ret
042c 2a4400       ld Phl, (W0x0044)
042f 1600         ld Rd, N0x00
0431 19           add Phl, Pde
0432 7e           ld Ra, R(hl)
0433 fe07         Acp N0x07
0435 c8           ret Cz
0436 3a5600       ld a, (W0x0056)
0439 c39d03       jp W0x039d
043c 3e0e         ld Ra, N0x0e
043e 323901       ld (W0x0139), a
0441 3eff         ld Ra, N0xff
0443 323d01       ld (W0x013d), a
0446 3e1f         ld Ra, N0x1f
0448 324201       ld (W0x0142), a
044b 3e01         ld Ra, N0x01
044d 323e01       ld (W0x013e), a
0450 323601       ld (W0x0136), a
0453 1e28         ld Re, N0x28
0455 cd2c04       call W0x042c
0458 1e29         ld Re, N0x29
045a cd2c04       call W0x042c
045d fd3596       dec R(iy - 106)
0460 1e2a         ld Re, N0x2a
0462 cd2c04       call W0x042c
0465 1e50         ld Re, N0x50
0467 cd2c04       call W0x042c
046a 1e51         ld Re, N0x51
046c cd2c04       call W0x042c
046f 1e52         ld Re, N0x52
0471 cd2c04       call W0x042c
0474 1e78         ld Re, N0x78
0476 cd2c04       call W0x042c
0479 1e79         ld Re, N0x79
047b cd2c04       call W0x042c
047e 1e7a         ld Re, N0x7a
0480 c32c04       jp W0x042c
0483 fdcba246     bit U0, R(iy - 94)
0487 c8           ret Cz
0488 3e05         ld Ra, N0x05
048a c3d103       jp W0x03d1
048d 3e0e         ld Ra, N0x0e
048f 323901       ld (W0x0139), a
0492 3eff         ld Ra, N0xff
0494 323d01       ld (W0x013d), a
0497 3e1f         ld Ra, N0x1f
0499 324201       ld (W0x0142), a
049c 3e01         ld Ra, N0x01
049e 323e01       ld (W0x013e), a
04a1 323601       ld (W0x0136), a
04a4 1e00         ld Re, N0x00
04a6 cd2c04       call W0x042c
04a9 1e01         ld Re, N0x01
04ab cd2c04       call W0x042c
04ae 1e02         ld Re, N0x02
04b0 cd2c04       call W0x042c
04b3 1e28         ld Re, N0x28
04b5 cd2c04       call W0x042c
04b8 1e29         ld Re, N0x29
04ba cd2c04       call W0x042c
04bd fd3596       dec R(iy - 106)
04c0 1e2a         ld Re, N0x2a
04c2 cd2c04       call W0x042c
04c5 1e50         ld Re, N0x50
04c7 cd2c04       call W0x042c
04ca 1e51         ld Re, N0x51
04cc cd2c04       call W0x042c
04cf 1e52         ld Re, N0x52
04d1 c32c04       jp W0x042c
04d4 0e01         ld Rc, N0x01
04d6 47           ld Rb, Ra
04d7 e60b         Aand N0x0b
04d9 b8           Acp Rb
04da c2e804       jp Cnz, W0x04e8
04dd e608         Aand N0x08
04df cae804       jp Cz, W0x04e8
04e2 0e00         ld Rc, N0x00
04e4 fd36961c     ld R(iy - 106), N0x1c
04e8 3e00         ld Ra, N0x00
04ea b9           Acp Rc
04eb 78           ld Ra, Rb
04ec c9           ret
04ed dd7e29       ld Ra, R(ix + 41)
04f0 e603         Aand N0x03
04f2 5f           ld Re, Ra
04f3 4b           ld Rc, Re
04f4 211430       ld Phl, W0x3014
04f7 1600         ld Rd, N0x00
04f9 19           add Phl, Pde
04fa d5           push Gde
04fb 5e           ld Re, R(hl)
04fc dd19         add Pix, Pde
04fe dd7e00       ld Ra, R(ix + 0)
0501 fe00         Acp N0x00
0503 c21605       jp Cnz, W0x0516
0506 79           ld Ra, Rc
0507 3d           dec Ra
0508 e603         Aand N0x03
050a c60c         Aadd a, N0x0c
050c cd9d03       call W0x039d
050f 3e00         ld Ra, N0x00
0511 cdd103       call W0x03d1
0514 d1           pop Gde
0515 c9           ret
0516 d1           pop Gde
0517 211030       ld Phl, W0x3010
051a 19           add Phl, Pde
051b 5e           ld Re, R(hl)
051c 2a4400       ld Phl, (W0x0044)
051f 19           add Phl, Pde
0520 7e           ld Ra, R(hl)
0521 fe00         Acp N0x00
0523 c23105       jp Cnz, W0x0531
0526 79           ld Ra, Rc
0527 c60c         Aadd a, N0x0c
0529 cd9d03       call W0x039d
052c 3e00         ld Ra, N0x00
052e c3d103       jp W0x03d1
0531 79           ld Ra, Rc
0532 3c           inc Ra
0533 e603         Aand N0x03
0535 c60c         Aadd a, N0x0c
0537 2a1901       ld Phl, (W0x0119)
053a 77           ld R(hl), Ra
053b c9           ret
053c fe38         Acp N0x38
053e c24305       jp Cnz, W0x0543
0541 0e00         ld Rc, N0x00
0543 fe39         Acp N0x39
0545 c24a05       jp Cnz, W0x054a
0548 0e00         ld Rc, N0x00
054a fe3a         Acp N0x3a
054c c0           ret Cnz
054d 0e00         ld Rc, N0x00
054f c9           ret
0550 dd2a4400     ld Pix, (W0x0044)
0554 0e01         ld Rc, N0x01
0556 dd7e01       ld Ra, R(ix + 1)
0559 cd3c05       call W0x053c
055c dd7e28       ld Ra, R(ix + 40)
055f cd3c05       call W0x053c
0562 dd7e2a       ld Ra, R(ix + 42)
0565 cd3c05       call W0x053c
0568 dd7e51       ld Ra, R(ix + 81)
056b cd3c05       call W0x053c
056e 3e00         ld Ra, N0x00
0570 b9           Acp Rc
0571 c9           ret
0572 cd5005       call W0x0550
0575 c2ed04       jp Cnz, W0x04ed
0578 fd36961c     ld R(iy - 106), N0x1c
057c c38d04       jp W0x048d
057f 3e0f         ld Ra, N0x0f
0581 323a01       ld (W0x013a), a
0584 cdfd03       call W0x03fd
0587 e60f         Aand N0x0f
0589 f610         Aor N0x10
058b c608         Aadd a, N0x08
058d 323f01       ld (W0x013f), a
0590 af           Axor Ra
0591 324001       ld (W0x0140), a
0594 3c           inc Ra
0595 323701       ld (W0x0137), a
0598 c9           ret
0599 3e0e         ld Ra, N0x0e
059b 323901       ld (W0x0139), a
059e 3e10         ld Ra, N0x10
05a0 323d01       ld (W0x013d), a
05a3 3e02         ld Ra, N0x02
05a5 323e01       ld (W0x013e), a
05a8 3e1f         ld Ra, N0x1f
05aa 324201       ld (W0x0142), a
05ad 3e01         ld Ra, N0x01
05af 323601       ld (W0x0136), a
05b2 c9           ret
05b3 fe10         Acp N0x10
05b5 c8           ret Cz
05b6 fe14         Acp N0x14
05b8 c8           ret Cz
05b9 fe02         Acp N0x02
05bb c9           ret
05bc 0e01         ld Rc, N0x01
05be 47           ld Rb, Ra
05bf e633         Aand N0x33
05c1 b8           Acp Rb
05c2 c2d105       jp Cnz, W0x05d1
05c5 f630         Aor N0x30
05c7 b8           Acp Rb
05c8 c2d105       jp Cnz, W0x05d1
05cb 0e00         ld Rc, N0x00
05cd fd369621     ld R(iy - 106), N0x21
05d1 3e00         ld Ra, N0x00
05d3 b9           Acp Rc
05d4 78           ld Ra, Rb
05d5 c9           ret
05d6 cdbc05       call W0x05bc
05d9 c8           ret Cz
05da c3d404       jp W0x04d4
05dd dd7e29       ld Ra, R(ix + 41)
05e0 e603         Aand N0x03
05e2 5f           ld Re, Ra
05e3 4b           ld Rc, Re
05e4 211030       ld Phl, W0x3010
05e7 1600         ld Rd, N0x00
05e9 19           add Phl, Pde
05ea d5           push Gde
05eb 5e           ld Re, R(hl)
05ec dd19         add Pix, Pde
05ee dd7e00       ld Ra, R(ix + 0)
05f1 fe00         Acp N0x00
05f3 c20606       jp Cnz, W0x0606
05f6 79           ld Ra, Rc
05f7 3c           inc Ra
05f8 e603         Aand N0x03
05fa c634         Aadd a, N0x34
05fc cd9d03       call W0x039d
05ff 3e00         ld Ra, N0x00
0601 cdd103       call W0x03d1
0604 d1           pop Gde
0605 c9           ret
0606 d1           pop Gde
0607 211430       ld Phl, W0x3014
060a 19           add Phl, Pde
060b 5e           ld Re, R(hl)
060c 2a4400       ld Phl, (W0x0044)
060f 19           add Phl, Pde
0610 7e           ld Ra, R(hl)
0611 fe00         Acp N0x00
0613 c22106       jp Cnz, W0x0621
0616 79           ld Ra, Rc
0617 c634         Aadd a, N0x34
0619 cd9d03       call W0x039d
061c 3e00         ld Ra, N0x00
061e c3d103       jp W0x03d1
0621 79           ld Ra, Rc
0622 3d           dec Ra
0623 e603         Aand N0x03
0625 c634         Aadd a, N0x34
0627 2a1901       ld Phl, (W0x0119)
062a 77           ld R(hl), Ra
062b c9           ret
062c cd5005       call W0x0550
062f c2dd05       jp Cnz, W0x05dd
0632 fd369621     ld R(iy - 106), N0x21
0636 c38d04       jp W0x048d
0639 3a6000       ld a, (W0x0060)
063c fe00         Acp N0x00
063e c24706       jp Cnz, W0x0647
0641 fd36a001     ld R(iy - 96), N0x01
0645 3e01         ld Ra, N0x01
0647 fe01         Acp N0x01
0649 c25b06       jp Cnz, W0x065b
064c dd7e79       ld Ra, R(ix + 121)
064f fe00         Acp N0x00
0651 c25b06       jp Cnz, W0x065b
0654 1e79         ld Re, N0x79
0656 3e13         ld Ra, N0x13
0658 cd9d03       call W0x039d
065b 3e00         ld Ra, N0x00
065d cdd103       call W0x03d1
0660 c39905       jp W0x0599
0663 3e15         ld Ra, N0x15
0665 c3d103       jp W0x03d1
0668 dd7e52       ld Ra, R(ix + 82)
066b fe00         Acp N0x00
066d c26306       jp Cnz, W0x0663
0670 1e2a         ld Re, N0x2a
0672 dd7e2a       ld Ra, R(ix + 42)
0675 fe00         Acp N0x00
0677 c26306       jp Cnz, W0x0663
067a 3e17         ld Ra, N0x17
067c cd9d03       call W0x039d
067f 3e00         ld Ra, N0x00
0681 c3d103       jp W0x03d1
0684 dd7e50       ld Ra, R(ix + 80)
0687 fe00         Acp N0x00
0689 c26806       jp Cnz, W0x0668
068c 1e28         ld Re, N0x28
068e dd7e28       ld Ra, R(ix + 40)
0691 fe00         Acp N0x00
0693 c26806       jp Cnz, W0x0668
0696 3e17         ld Ra, N0x17
0698 cd9d03       call W0x039d
069b 3e00         ld Ra, N0x00
069d c3d103       jp W0x03d1
06a0 dd7e51       ld Ra, R(ix + 81)
06a3 cdb305       call W0x05b3
06a6 ca8406       jp Cz, W0x0684
06a9 fe38         Acp N0x38
06ab c2b506       jp Cnz, W0x06b5
06ae fd36961c     ld R(iy - 106), N0x1c
06b2 c33c04       jp W0x043c
06b5 cdd605       call W0x05d6
06b8 c26306       jp Cnz, W0x0663
06bb c33c04       jp W0x043c
06be dd2a4400     ld Pix, (W0x0044)
06c2 1e51         ld Re, N0x51
06c4 dd7e51       ld Ra, R(ix + 81)
06c7 fe00         Acp N0x00
06c9 c2d606       jp Cnz, W0x06d6
06cc 3e17         ld Ra, N0x17
06ce cd9d03       call W0x039d
06d1 3e00         ld Ra, N0x00
06d3 c3d103       jp W0x03d1
06d6 fe03         Acp N0x03
06d8 ca3906       jp Cz, W0x0639
06db cd7f05       call W0x057f
06de c3a006       jp W0x06a0
06e1 dd7e52       ld Ra, R(ix + 82)
06e4 fe00         Acp N0x00
06e6 c0           ret Cnz
06e7 1e2a         ld Re, N0x2a
06e9 dd7e2a       ld Ra, R(ix + 42)
06ec fe00         Acp N0x00
06ee c0           ret Cnz
06ef 3e17         ld Ra, N0x17
06f1 cd9d03       call W0x039d
06f4 3e00         ld Ra, N0x00
06f6 c3d103       jp W0x03d1
06f9 dd7e50       ld Ra, R(ix + 80)
06fc fe00         Acp N0x00
06fe c2e106       jp Cnz, W0x06e1
0701 1e28         ld Re, N0x28
0703 dd7e28       ld Ra, R(ix + 40)
0706 fe00         Acp N0x00
0708 c2e106       jp Cnz, W0x06e1
070b 3e17         ld Ra, N0x17
070d cd9d03       call W0x039d
0710 3e00         ld Ra, N0x00
0712 c3d103       jp W0x03d1
0715 dd7e51       ld Ra, R(ix + 81)
0718 cdb305       call W0x05b3
071b c0           ret Cnz
071c c3f906       jp W0x06f9
071f dd2a4400     ld Pix, (W0x0044)
0723 1e51         ld Re, N0x51
0725 dd7e51       ld Ra, R(ix + 81)
0728 fe00         Acp N0x00
072a c21507       jp Cnz, W0x0715
072d 3e17         ld Ra, N0x17
072f cd9d03       call W0x039d
0732 3e00         ld Ra, N0x00
0734 cdd103       call W0x03d1
0737 c37f05       jp W0x057f
073a 2a4400       ld Phl, (W0x0044)
073d 1600         ld Rd, N0x00
073f 19           add Phl, Pde
0740 7e           ld Ra, R(hl)
0741 fe00         Acp N0x00
0743 c8           ret Cz
0744 fe01         Acp N0x01
0746 c9           ret
0747 cd3a07       call W0x073a
074a c0           ret Cnz
074b 3e3b         ld Ra, N0x3b
074d c39d03       jp W0x039d
0750 fdcb3f46     bit U0, R(iy + 63)
0754 c8           ret Cz
0755 fd7ea5       ld Ra, R(iy - 91)
0758 e603         Aand N0x03
075a c0           ret Cnz
075b cdfd03       call W0x03fd
075e e601         Aand N0x01
0760 67           ld Rh, Ra
0761 e5           push Ghl
0762 cdfd03       call W0x03fd
0765 e1           pop Ghl
0766 6f           ld Rl, Ra
0767 223f01       ld (W0x013f), Phl
076a 117700       ld Pde, W0x0077
076d a7           Aand Ra
076e ed52         sbc hl, Pde
0770 38e9         jr Cc, D$ - 21
0772 3e0b         ld Ra, N0x0b
0774 323a01       ld (W0x013a), a
0777 3e01         ld Ra, N0x01
0779 323701       ld (W0x0137), a
077c c9           ret
077d fdcb3e46     bit U0, R(iy + 62)
0781 c0           ret Cnz
0782 0e00         ld Rc, N0x00
0784 dd2a4400     ld Pix, (W0x0044)
0788 dd7e01       ld Ra, R(ix + 1)
078b fe00         Acp N0x00
078d cabd07       jp Cz, W0x07bd
0790 fe01         Acp N0x01
0792 cabd07       jp Cz, W0x07bd
0795 dd7e28       ld Ra, R(ix + 40)
0798 fe00         Acp N0x00
079a cabd07       jp Cz, W0x07bd
079d fe01         Acp N0x01
079f cabd07       jp Cz, W0x07bd
07a2 dd7e2a       ld Ra, R(ix + 42)
07a5 fe00         Acp N0x00
07a7 cabd07       jp Cz, W0x07bd
07aa fe01         Acp N0x01
07ac cabd07       jp Cz, W0x07bd
07af dd7e51       ld Ra, R(ix + 81)
07b2 fe00         Acp N0x00
07b4 cabd07       jp Cz, W0x07bd
07b7 fe01         Acp N0x01
07b9 cabd07       jp Cz, W0x07bd
07bc c9           ret
07bd fd363e01     ld R(iy + 62), N0x01
07c1 c9           ret
07c2 fd3440       inc R(iy + 64)
07c5 3a0101       ld a, (W0x0101)
07c8 fec8         Acp N0xc8
07ca dad207       jp Cc, W0x07d2
07cd 3e11         ld Ra, N0x11
07cf c3d103       jp W0x03d1
07d2 fdcb9f46     bit U0, R(iy - 97)
07d6 c2de07       jp Cnz, W0x07de
07d9 3e14         ld Ra, N0x14
07db c3d103       jp W0x03d1
07de cd7d07       call W0x077d
07e1 cdfd03       call W0x03fd
07e4 fda6ae       Aand R(iy - 82)
07e7 fe04         Acp N0x04
07e9 d0           ret Cnc
07ea 5f           ld Re, Ra
07eb 211830       ld Phl, W0x3018
07ee 1600         ld Rd, N0x00
07f0 19           add Phl, Pde
07f1 5e           ld Re, R(hl)
07f2 c34707       jp W0x0747
07f5 3a8200       ld a, (W0x0082)
07f8 fe09         Acp N0x09
07fa c8           ret Cz
07fb fd34c2       inc R(iy - 62)
07fe fd36f160     ld R(iy - 15), N0x60
0802 c9           ret
0803 3ab200       ld a, (W0x00b2)
0806 fdbec7       Acp R(iy - 57)
0809 c4f507       call Cnz, W0x07f5
080c 3ab300       ld a, (W0x00b3)
080f fe04         Acp N0x04
0811 c0           ret Cnz
0812 fdbec8       Acp R(iy - 56)
0815 c8           ret Cz
0816 c3f507       jp W0x07f5
0819 3a8700       ld a, (W0x0087)
081c 32b200       ld (W0x00b2), a
081f 3a8800       ld a, (W0x0088)
0822 32b300       ld (W0x00b3), a
0825 0606         ld Rb, N0x06
0827 218a00       ld Phl, W0x008a
082a 118100       ld Pde, W0x0081
082d b7           Aor Ra
082e 1a           ld a, (Pde)
082f 8e           Aadc a, R(hl)
0830 fe0a         Acp N0x0a
0832 da3708       jp Cc, W0x0837
0835 d60a         Asub N0x0a
0837 77           ld R(hl), Ra
0838 2b           dec Phl
0839 1b           dec Pde
083a 3f           ccf
083b 10f1         djnz D$ - 13
083d c30308       jp W0x0803
0840 3a8300       ld a, (W0x0083)
0843 fe00         Acp N0x00
0845 c8           ret Cz
0846 0606         ld Rb, N0x06
0848 218500       ld Phl, W0x0085
084b 1136b8       ld Pde, W0xb836
084e 7e           ld Ra, R(hl)
084f c630         Aadd a, N0x30
0851 12           ld (Pde), a
0852 23           inc Phl
0853 13           inc Pde
0854 10f8         djnz D$ - 6
0856 c9           ret
0857 3e1f         ld Ra, N0x1f
0859 324201       ld (W0x0142), a
085c 3e0f         ld Ra, N0x0f
085e 323901       ld (W0x0139), a
0861 3eff         ld Ra, N0xff
0863 323d01       ld (W0x013d), a
0866 af           Axor Ra
0867 323e01       ld (W0x013e), a
086a 3e01         ld Ra, N0x01
086c 323601       ld (W0x0136), a
086f c9           ret
0870 3e00         ld Ra, N0x00
0872 fdbef4       Acp R(iy - 12)
0875 c0           ret Cnz
0876 fdbef5       Acp R(iy - 11)
0879 c0           ret Cnz
087a fdbef6       Acp R(iy - 10)
087d c28508       jp Cnz, W0x0885
0880 fd36a901     ld R(iy - 87), N0x01
0884 c9           ret
0885 fd7ef6       ld Ra, R(iy - 10)
0888 c632         Aadd a, N0x32
088a 323f01       ld (W0x013f), a
088d af           Axor Ra
088e 324001       ld (W0x0140), a
0891 3e0f         ld Ra, N0x0f
0893 323a01       ld (W0x013a), a
0896 3e01         ld Ra, N0x01
0898 323701       ld (W0x0137), a
089b c9           ret
089c fd35f6       dec R(iy - 10)
089f f2bd08       jp Cp, W0x08bd
08a2 fd36f609     ld R(iy - 10), N0x09
08a6 fd35f5       dec R(iy - 11)
08a9 f2bd08       jp Cp, W0x08bd
08ac fd36f509     ld R(iy - 11), N0x09
08b0 f2bd08       jp Cp, W0x08bd
08b3 fd35f4       dec R(iy - 12)
08b6 f2bd08       jp Cp, W0x08bd
08b9 fd36f409     ld R(iy - 12), N0x09
08bd c37008       jp W0x0870
08c0 0603         ld Rb, N0x03
08c2 21b400       ld Phl, W0x00b4
08c5 1132b8       ld Pde, W0xb832
08c8 7e           ld Ra, R(hl)
08c9 c630         Aadd a, N0x30
08cb 12           ld (Pde), a
08cc 23           inc Phl
08cd 13           inc Pde
08ce 10f8         djnz D$ - 6
08d0 210000       ld Phl, W0x0000
08d3 221501       ld (W0x0115), Phl
08d6 c9           ret
08d7 cd9c08       call W0x089c
08da cdc008       call W0x08c0
08dd fd34f8       inc R(iy - 8)
08e0 3a5301       ld a, (W0x0153)
08e3 fdbef8       Acp R(iy - 8)
08e6 c0           ret Cnz
08e7 fd36ae0f     ld R(iy - 82), N0x0f
08eb c9           ret
08ec fd35a7       dec R(iy - 89)
08ef c0           ret Cnz
08f0 cd5708       call W0x0857
08f3 fd36a600     ld R(iy - 90), N0x00
08f7 2128b8       ld Phl, W0xb828
08fa c33321       jp W0x2133
08fd fd34f7       inc R(iy - 9)
0900 3ab700       ld a, (W0x00b7)
0903 fe32         Acp N0x32
0905 c0           ret Cnz
0906 fd36f700     ld R(iy - 9), N0x00
090a fdcbb046     bit U0, R(iy - 80)
090e c0           ret Cnz
090f fdcba646     bit U0, R(iy - 90)
0913 c2ec08       jp Cnz, W0x08ec
0916 c3d708       jp W0x08d7
0919 3e0a         ld Ra, N0x0a
091b fd34fa       inc R(iy - 6)
091e fdbefa       Acp R(iy - 6)
0921 c0           ret Cnz
0922 fd36fa00     ld R(iy - 6), N0x00
0926 fd34f9       inc R(iy - 7)
0929 fdbef9       Acp R(iy - 7)
092c c0           ret Cnz
092d fd36f900     ld R(iy - 7), N0x00
0931 c9           ret
0932 3ab900       ld a, (W0x00b9)
0935 c630         Aadd a, N0x30
0937 322fb8       ld (W0xb82f), a
093a 3aba00       ld a, (W0x00ba)
093d c630         Aadd a, N0x30
093f 3230b8       ld (W0xb830), a
0942 c9           ret
0943 3abb00       ld a, (W0x00bb)
0946 c630         Aadd a, N0x30
0948 3229b8       ld (W0xb829), a
094b 3abc00       ld a, (W0x00bc)
094e c630         Aadd a, N0x30
0950 322ab8       ld (W0xb82a), a
0953 c9           ret
0954 3a8000       ld a, (W0x0080)
0957 c630         Aadd a, N0x30
0959 322cb8       ld (W0xb82c), a
095c 3a8100       ld a, (W0x0081)
095f c630         Aadd a, N0x30
0961 322db8       ld (W0xb82d), a
0964 c9           ret
0965 3ab900       ld a, (W0x00b9)
0968 fdbefb       Acp R(iy - 5)
096b c0           ret Cnz
096c 3aba00       ld a, (W0x00ba)
096f fdbefc       Acp R(iy - 4)
0972 c0           ret Cnz
0973 fd36a201     ld R(iy - 94), N0x01
0977 010300       ld Pbc, W0x0003
097a 117f00       ld Pde, W0x007f
097d 21bd00       ld Phl, W0x00bd
0980 edb0         Lldir
0982 cd5409       call W0x0954
0985 3e5c         ld Ra, N0x5c
0987 3229b8       ld (W0xb829), a
098a 322ab8       ld (W0xb82a), a
098d cd5708       call W0x0857
0990 fd36ba08     ld R(iy - 70), N0x08
0994 c9           ret
0995 fd360000     ld R(iy + 0), N0x00
0999 c9           ret
099a fd360001     ld R(iy + 0), N0x01
099e c9           ret
099f d5           push Gde
09a0 cd1908       call W0x0819
09a3 cd1909       call W0x0919
09a6 cd3209       call W0x0932
09a9 cd6509       call W0x0965
09ac 3e92         ld Ra, N0x92
09ae 323f01       ld (W0x013f), a
09b1 3e0f         ld Ra, N0x0f
09b3 323a01       ld (W0x013a), a
09b6 3e01         ld Ra, N0x01
09b8 324001       ld (W0x0140), a
09bb 323701       ld (W0x0137), a
09be d1           pop Gde
09bf c39a09       jp W0x099a
09c2 3a3501       ld a, (W0x0135)
09c5 a7           Aand Ra
09c6 c29a09       jp Cnz, W0x099a
09c9 af           Axor Ra
09ca 323b01       ld (W0x013b), a
09cd 323c01       ld (W0x013c), a
09d0 3e0b         ld Ra, N0x0b
09d2 324101       ld (W0x0141), a
09d5 3e01         ld Ra, N0x01
09d7 323501       ld (W0x0135), a
09da 323801       ld (W0x0138), a
09dd c39a09       jp W0x099a
09e0 3a3501       ld a, (W0x0135)
09e3 a7           Aand Ra
09e4 c29a09       jp Cnz, W0x099a
09e7 af           Axor Ra
09e8 323b01       ld (W0x013b), a
09eb 323c01       ld (W0x013c), a
09ee 3e1c         ld Ra, N0x1c
09f0 324101       ld (W0x0141), a
09f3 3e01         ld Ra, N0x01
09f5 323801       ld (W0x0138), a
09f8 323501       ld (W0x0135), a
09fb c39a09       jp W0x099a
09fe 3a1101       ld a, (W0x0111)
0a01 32c100       ld (W0x00c1), a
0a04 c9           ret
0a05 cdfd03       call W0x03fd
0a08 e603         Aand N0x03
0a0a c0           ret Cnz
0a0b cd9a09       call W0x099a
0a0e cd9905       call W0x0599
0a11 3e11         ld Ra, N0x11
0a13 c39d03       jp W0x039d
0a16 7b           ld Ra, Re
0a17 fe28         Acp N0x28
0a19 c22a0a       jp Cnz, W0x0a2a
0a1c dd7eff       ld Ra, R(ix - 1)
0a1f fe00         Acp N0x00
0a21 c0           ret Cnz
0a22 1e27         ld Re, N0x27
0a24 cd050a       call W0x0a05
0a27 1e28         ld Re, N0x28
0a29 c9           ret
0a2a fe2a         Acp N0x2a
0a2c c0           ret Cnz
0a2d dd7e01       ld Ra, R(ix + 1)
0a30 fe00         Acp N0x00
0a32 c0           ret Cnz
0a33 1e2b         ld Re, N0x2b
0a35 cd050a       call W0x0a05
0a38 1e2a         ld Re, N0x2a
0a3a c9           ret
0a3b cd9509       call W0x0995
0a3e d5           push Gde
0a3f 1600         ld Rd, N0x00
0a41 dd19         add Pix, Pde
0a43 d1           pop Gde
0a44 dd7e00       ld Ra, R(ix + 0)
0a47 fe00         Acp N0x00
0a49 cae009       jp Cz, W0x09e0
0a4c fe01         Acp N0x01
0a4e cac209       jp Cz, W0x09c2
0a51 fe14         Acp N0x14
0a53 ca9f09       jp Cz, W0x099f
0a56 fe05         Acp N0x05
0a58 c2660a       jp Cnz, W0x0a66
0a5b fd36a901     ld R(iy - 87), N0x01
0a5f fd36b401     ld R(iy - 76), N0x01
0a63 c39a09       jp W0x099a
0a66 fe10         Acp N0x10
0a68 ca160a       jp Cz, W0x0a16
0a6b c9           ret
0a6c cd3b0a       call W0x0a3b
0a6f fdcb0046     bit U0, R(iy + 0)
0a73 c8           ret Cz
0a74 cdfe09       call W0x09fe
0a77 fdcb0146     bit U0, R(iy + 1)
0a7b c2860a       jp Cnz, W0x0a86
0a7e 3e00         ld Ra, N0x00
0a80 cd9d03       call W0x039d
0a83 c39509       jp W0x0995
0a86 3e39         ld Ra, N0x39
0a88 cd9d03       call W0x039d
0a8b 3e00         ld Ra, N0x00
0a8d cdd103       call W0x03d1
0a90 c39a09       jp W0x099a
0a93 fd36aa00     ld R(iy - 86), N0x00
0a97 1e2a         ld Re, N0x2a
0a99 cd6c0a       call W0x0a6c
0a9c fdcb0046     bit U0, R(iy + 0)
0aa0 c8           ret Cz
0aa1 fd34ab       inc R(iy - 85)
0aa4 c9           ret
0aa5 fd36aa01     ld R(iy - 86), N0x01
0aa9 1e28         ld Re, N0x28
0aab cd6c0a       call W0x0a6c
0aae fdcb0046     bit U0, R(iy + 0)
0ab2 c8           ret Cz
0ab3 fd35ab       dec R(iy - 85)
0ab6 c9           ret
0ab7 1e01         ld Re, N0x01
0ab9 cd6c0a       call W0x0a6c
0abc fdcb0046     bit U0, R(iy + 0)
0ac0 c8           ret Cz
0ac1 fd35ac       dec R(iy - 84)
0ac4 c9           ret
0ac5 1e51         ld Re, N0x51
0ac7 cd6c0a       call W0x0a6c
0aca fdcb0046     bit U0, R(iy + 0)
0ace c8           ret Cz
0acf fd34ac       inc R(iy - 84)
0ad2 c9           ret
0ad3 cb5f         bit U3, Ra
0ad5 ca930a       jp Cz, W0x0a93
0ad8 cb57         bit U2, Ra
0ada caa50a       jp Cz, W0x0aa5
0add cb4f         bit U1, Ra
0adf cac50a       jp Cz, W0x0ac5
0ae2 cb47         bit U0, Ra
0ae4 cab70a       jp Cz, W0x0ab7
0ae7 c9           ret
0ae8 fd364800     ld R(iy + 72), N0x00
0aec fd364700     ld R(iy + 71), N0x00
0af0 dd2a4400     ld Pix, (W0x0044)
0af4 fdcbb746     bit U0, R(iy - 73)
0af8 ca010b       jp Cz, W0x0b01
0afb 3a5e00       ld a, (W0x005e)
0afe c3070b       jp W0x0b07
0b01 3a0f01       ld a, (W0x010f)
0b04 325e00       ld (W0x005e), a
0b07 cdd30a       call W0x0ad3
0b0a fd36a800     ld R(iy - 88), N0x00
0b0e fd364801     ld R(iy + 72), N0x01
0b12 fd364701     ld R(iy + 71), N0x01
0b16 c9           ret
0b17 2a1901       ld Phl, (W0x0119)
0b1a 7e           ld Ra, R(hl)
0b1b 211f30       ld Phl, W0x301f
0b1e 011400       ld Pbc, W0x0014
0b21 edb1         Mcpir
0b23 7e           ld Ra, R(hl)
0b24 c3d103       jp W0x03d1
0b27 3a6700       ld a, (W0x0067)
0b2a fe00         Acp N0x00
0b2c c0           ret Cnz
0b2d 2a1901       ld Phl, (W0x0119)
0b30 7e           ld Ra, R(hl)
0b31 213330       ld Phl, W0x3033
0b34 010800       ld Pbc, W0x0008
0b37 edb1         Mcpir
0b39 7e           ld Ra, R(hl)
0b3a c3d103       jp W0x03d1
0b3d dd2a4800     ld Pix, (W0x0048)
0b41 dd360000     ld R(ix + 0), N0x00
0b45 dd360101     ld R(ix + 1), N0x01
0b49 dd365002     ld R(ix + 80), N0x02
0b4d dd365103     ld R(ix + 81), N0x03
0b51 3e00         ld Ra, N0x00
0b53 324401       ld (W0x0144), a
0b56 cd0602       call W0x0206
0b59 c9           ret
0b5a dde5         push Gix
0b5c e5           push Ghl
0b5d d5           push Gde
0b5e 3a6500       ld a, (W0x0065)
0b61 5f           ld Re, Ra
0b62 1600         ld Rd, N0x00
0b64 cb23         Osla Re
0b66 217f67       ld Phl, W0x677f
0b69 19           add Phl, Pde
0b6a 3a6400       ld a, (W0x0064)
0b6d cb27         Osla Ra
0b6f 86           Aadd a, R(hl)
0b70 5f           ld Re, Ra
0b71 23           inc Phl
0b72 3e00         ld Ra, N0x00
0b74 8e           Aadc a, R(hl)
0b75 57           ld Rd, Ra
0b76 ed534600     ld (W0x0046), Pde
0b7a d1           pop Gde
0b7b d5           push Gde
0b7c cd8003       call W0x0380
0b7f cd3d0b       call W0x0b3d
0b82 d1           pop Gde
0b83 e1           pop Ghl
0b84 dde1         pop Gix
0b86 c9           ret
0b87 1e29         ld Re, N0x29
0b89 2a1901       ld Phl, (W0x0119)
0b8c fd3402       inc R(iy + 2)
0b8f fdcb024e     bit U1, R(iy + 2)
0b93 c25a0b       jp Cnz, W0x0b5a
0b96 7e           ld Ra, R(hl)
0b97 cdd103       call W0x03d1
0b9a fe25         Acp N0x25
0b9c c0           ret Cnz
0b9d c3270b       jp W0x0b27
0ba0 3a6000       ld a, (W0x0060)
0ba3 fe00         Acp N0x00
0ba5 c2ad0b       jp Cnz, W0x0bad
0ba8 3e01         ld Ra, N0x01
0baa 326000       ld (W0x0060), a
0bad fe01         Acp N0x01
0baf c2c10b       jp Cnz, W0x0bc1
0bb2 1e79         ld Re, N0x79
0bb4 dd7e79       ld Ra, R(ix + 121)
0bb7 fe00         Acp N0x00
0bb9 c2c10b       jp Cnz, W0x0bc1
0bbc 3e17         ld Ra, N0x17
0bbe cd9d03       call W0x039d
0bc1 3e00         ld Ra, N0x00
0bc3 cdd103       call W0x03d1
0bc6 c37f05       jp W0x057f
0bc9 dd7e52       ld Ra, R(ix + 82)
0bcc fe00         Acp N0x00
0bce c0           ret Cnz
0bcf 1e2a         ld Re, N0x2a
0bd1 dd7e2a       ld Ra, R(ix + 42)
0bd4 fe00         Acp N0x00
0bd6 c0           ret Cnz
0bd7 3e13         ld Ra, N0x13
0bd9 cd9d03       call W0x039d
0bdc 3e00         ld Ra, N0x00
0bde c3d103       jp W0x03d1
0be1 dd7e50       ld Ra, R(ix + 80)
0be4 fe00         Acp N0x00
0be6 c2c90b       jp Cnz, W0x0bc9
0be9 1e28         ld Re, N0x28
0beb dd7e28       ld Ra, R(ix + 40)
0bee fe00         Acp N0x00
0bf0 c2c90b       jp Cnz, W0x0bc9
0bf3 3e13         ld Ra, N0x13
0bf5 cd9d03       call W0x039d
0bf8 3e00         ld Ra, N0x00
0bfa c3d103       jp W0x03d1
0bfd dd7e51       ld Ra, R(ix + 81)
0c00 cdb305       call W0x05b3
0c03 c0           ret Cnz
0c04 c3e10b       jp W0x0be1
0c07 dd2a4400     ld Pix, (W0x0044)
0c0b 1e51         ld Re, N0x51
0c0d dd7e51       ld Ra, R(ix + 81)
0c10 fe00         Acp N0x00
0c12 c2fd0b       jp Cnz, W0x0bfd
0c15 3e13         ld Ra, N0x13
0c17 cd9d03       call W0x039d
0c1a 3e00         ld Ra, N0x00
0c1c cdd103       call W0x03d1
0c1f c39905       jp W0x0599
0c22 3e11         ld Ra, N0x11
0c24 c3d103       jp W0x03d1
0c27 dd7e52       ld Ra, R(ix + 82)
0c2a fe00         Acp N0x00
0c2c c2220c       jp Cnz, W0x0c22
0c2f 1e2a         ld Re, N0x2a
0c31 dd7e2a       ld Ra, R(ix + 42)
0c34 fe00         Acp N0x00
0c36 c2220c       jp Cnz, W0x0c22
0c39 3e13         ld Ra, N0x13
0c3b cd9d03       call W0x039d
0c3e 3e00         ld Ra, N0x00
0c40 c3d103       jp W0x03d1
0c43 dd7e50       ld Ra, R(ix + 80)
0c46 fe00         Acp N0x00
0c48 c2270c       jp Cnz, W0x0c27
0c4b 1e28         ld Re, N0x28
0c4d dd7e28       ld Ra, R(ix + 40)
0c50 fe00         Acp N0x00
0c52 c2270c       jp Cnz, W0x0c27
0c55 3e13         ld Ra, N0x13
0c57 cd9d03       call W0x039d
0c5a 3e00         ld Ra, N0x00
0c5c c3d103       jp W0x03d1
0c5f 1e51         ld Re, N0x51
0c61 dd7e51       ld Ra, R(ix + 81)
0c64 cdb305       call W0x05b3
0c67 ca430c       jp Cz, W0x0c43
0c6a fe38         Acp N0x38
0c6c c2760c       jp Cnz, W0x0c76
0c6f fd36961c     ld R(iy - 106), N0x1c
0c73 c33c04       jp W0x043c
0c76 cdd605       call W0x05d6
0c79 c2220c       jp Cnz, W0x0c22
0c7c c33c04       jp W0x043c
0c7f 1e51         ld Re, N0x51
0c81 dd2a4400     ld Pix, (W0x0044)
0c85 dd7e51       ld Ra, R(ix + 81)
0c88 fe00         Acp N0x00
0c8a c2970c       jp Cnz, W0x0c97
0c8d 3e13         ld Ra, N0x13
0c8f cd9d03       call W0x039d
0c92 3e00         ld Ra, N0x00
0c94 c3d103       jp W0x03d1
0c97 fe03         Acp N0x03
0c99 c29f0c       jp Cnz, W0x0c9f
0c9c c3a00b       jp W0x0ba0
0c9f cd9905       call W0x0599
0ca2 c35f0c       jp W0x0c5f
0ca5 3ab100       ld a, (W0x00b1)
0ca8 a7           Aand Ra
0ca9 c8           ret Cz
0caa c3a50c       jp W0x0ca5
0cad 3a1d01       ld a, (W0x011d)
0cb0 3c           inc Ra
0cb1 fe04         Acp N0x04
0cb3 c2b80c       jp Cnz, W0x0cb8
0cb6 3e00         ld Ra, N0x00
0cb8 321d01       ld (W0x011d), a
0cbb 07           rlca
0cbc 07           rlca
0cbd 07           rlca
0cbe 07           rlca
0cbf 218730       ld Phl, W0x3087
0cc2 1600         ld Rd, N0x00
0cc4 5f           ld Re, Ra
0cc5 19           add Phl, Pde
0cc6 cd8228       call W0x2882
0cc9 c9           ret
0cca 3a6b00       ld a, (W0x006b)
0ccd cb27         Osla Ra
0ccf fd9603       Asub R(iy + 3)
0cd2 32cb00       ld (W0x00cb), a
0cd5 3a6c00       ld a, (W0x006c)
0cd8 cb27         Osla Ra
0cda fd9607       Asub R(iy + 7)
0cdd 32cc00       ld (W0x00cc), a
0ce0 c9           ret
0ce1 3acb00       ld a, (W0x00cb)
0ce4 fe06         Acp N0x06
0ce6 f2ed0c       jp Cp, W0x0ced
0ce9 fd3605ff     ld R(iy + 5), N0xff
0ced fe22         Acp N0x22
0cef faf60c       jp Cm, W0x0cf6
0cf2 fd360501     ld R(iy + 5), N0x01
0cf6 fe12         Acp N0x12
0cf8 ca0a0d       jp Cz, W0x0d0a
0cfb fe13         Acp N0x13
0cfd ca0a0d       jp Cz, W0x0d0a
0d00 fe15         Acp N0x15
0d02 ca0a0d       jp Cz, W0x0d0a
0d05 fe14         Acp N0x14
0d07 c20e0d       jp Cnz, W0x0d0e
0d0a fd360500     ld R(iy + 5), N0x00
0d0e 3ac300       ld a, (W0x00c3)
0d11 fe00         Acp N0x00
0d13 c2210d       jp Cnz, W0x0d21
0d16 fdcb057e     bit U7, R(iy + 5)
0d1a ca210d       jp Cz, W0x0d21
0d1d fd360500     ld R(iy + 5), N0x00
0d21 fdbea3       Acp R(iy - 93)
0d24 da320d       jp Cc, W0x0d32
0d27 fdcb057e     bit U7, R(iy + 5)
0d2b c2320d       jp Cnz, W0x0d32
0d2e fd360500     ld R(iy + 5), N0x00
0d32 3ac300       ld a, (W0x00c3)
0d35 fd8605       Aadd a, R(iy + 5)
0d38 32c300       ld (W0x00c3), a
0d3b c9           ret
0d3c 3acc00       ld a, (W0x00cc)
0d3f fe08         Acp N0x08
0d41 f2480d       jp Cp, W0x0d48
0d44 fd3609ff     ld R(iy + 9), N0xff
0d48 fe16         Acp N0x16
0d4a fa510d       jp Cm, W0x0d51
0d4d fd360901     ld R(iy + 9), N0x01
0d51 fe0d         Acp N0x0d
0d53 ca600d       jp Cz, W0x0d60
0d56 fe0e         Acp N0x0e
0d58 ca600d       jp Cz, W0x0d60
0d5b fe0f         Acp N0x0f
0d5d c2640d       jp Cnz, W0x0d64
0d60 fd360900     ld R(iy + 9), N0x00
0d64 3ac700       ld a, (W0x00c7)
0d67 fe00         Acp N0x00
0d69 c2770d       jp Cnz, W0x0d77
0d6c fdcb097e     bit U7, R(iy + 9)
0d70 ca770d       jp Cz, W0x0d77
0d73 fd360900     ld R(iy + 9), N0x00
0d77 fdbeaf       Acp R(iy - 81)
0d7a da880d       jp Cc, W0x0d88
0d7d fdcb097e     bit U7, R(iy + 9)
0d81 c2880d       jp Cnz, W0x0d88
0d84 fd360900     ld R(iy + 9), N0x00
0d88 3ac700       ld a, (W0x00c7)
0d8b fd8609       Aadd a, R(iy + 9)
0d8e 32c700       ld (W0x00c7), a
0d91 c9           ret
0d92 fdcbbb46     bit U0, R(iy - 69)
0d96 caa40d       jp Cz, W0x0da4
0d99 fd36af00     ld R(iy - 81), N0x00
0d9d fd36a300     ld R(iy - 93), N0x00
0da1 c3ac0d       jp W0x0dac
0da4 fd36af14     ld R(iy - 81), N0x14
0da8 fd36a328     ld R(iy - 93), N0x28
0dac fd364700     ld R(iy + 71), N0x00
0db0 cdca0c       call W0x0cca
0db3 cde10c       call W0x0ce1
0db6 3ac500       ld a, (W0x00c5)
0db9 fe00         Acp N0x00
0dbb cad30d       jp Cz, W0x0dd3
0dbe fe01         Acp N0x01
0dc0 c2cb0d       jp Cnz, W0x0dcb
0dc3 3e04         ld Ra, N0x04
0dc5 322f01       ld (W0x012f), a
0dc8 c3f30d       jp W0x0df3
0dcb 3e03         ld Ra, N0x03
0dcd 322f01       ld (W0x012f), a
0dd0 c3f30d       jp W0x0df3
0dd3 cd3c0d       call W0x0d3c
0dd6 3ac900       ld a, (W0x00c9)
0dd9 fe00         Acp N0x00
0ddb caf30d       jp Cz, W0x0df3
0dde 3ac900       ld a, (W0x00c9)
0de1 fe01         Acp N0x01
0de3 c2ee0d       jp Cnz, W0x0dee
0de6 3e02         ld Ra, N0x02
0de8 322f01       ld (W0x012f), a
0deb c3f30d       jp W0x0df3
0dee 3e01         ld Ra, N0x01
0df0 322f01       ld (W0x012f), a
0df3 cdca0c       call W0x0cca
0df6 c9           ret
0df7 e5           push Ghl
0df8 2a4400       ld Phl, (W0x0044)
0dfb 23           inc Phl
0dfc 224400       ld (W0x0044), Phl
0dff 2a1901       ld Phl, (W0x0119)
0e02 23           inc Phl
0e03 221901       ld (W0x0119), Phl
0e06 e1           pop Ghl
0e07 c9           ret
0e08 d5           push Gde
0e09 ca0e0e       jp Cz, W0x0e0e
0e0c 3e28         ld Ra, N0x28
0e0e c690         Aadd a, N0x90
0e10 ce27         Aadc a, N0x27
0e12 324400       ld (W0x0044), a
0e15 6f           ld Rl, Ra
0e16 3e00         ld Ra, N0x00
0e18 ceb0         Aadc a, N0xb0
0e1a 324500       ld (W0x0045), a
0e1d 67           ld Rh, Ra
0e1e 112900       ld Pde, W0x0029
0e21 19           add Phl, Pde
0e22 221901       ld (W0x0119), Phl
0e25 d1           pop Gde
0e26 c9           ret
0e27 c9           ret
0e28 3e01         ld Ra, N0x01
0e2a 324501       ld (W0x0145), a
0e2d 0e0a         ld Rc, N0x0a
0e2f 06ff         ld Rb, N0xff
0e31 c5           push Gbc
0e32 cdfd03       call W0x03fd
0e35 fe18         Acp N0x18
0e37 d2320e       jp Cnc, W0x0e32
0e3a 2a3301       ld Phl, (W0x0133)
0e3d 115000       ld Pde, W0x0050
0e40 47           ld Rb, Ra
0e41 04           inc Rb
0e42 19           add Phl, Pde
0e43 10fd         djnz D$ - 1
0e45 cdfd03       call W0x03fd
0e48 fe28         Acp N0x28
0e4a d2450e       jp Cnc, W0x0e45
0e4d 87           Aadd a, Ra
0e4e 1600         ld Rd, N0x00
0e50 5f           ld Re, Ra
0e51 19           add Phl, Pde
0e52 7c           ld Ra, Rh
0e53 fec8         Acp N0xc8
0e55 da5b0e       jp Cc, W0x0e5b
0e58 d608         Asub N0x08
0e5a 67           ld Rh, Ra
0e5b 110030       ld Pde, W0x3000
0e5e cd0a03       call W0x030a
0e61 c1           pop Gbc
0e62 10cd         djnz D$ - 49
0e64 0d           dec Rc
0e65 c22f0e       jp Cnz, W0x0e2f
0e68 c9           ret
0e69 c9           ret
0e6a 212da1       ld Phl, W0xa12d
0e6d 362a         ld R(hl), N0x2a
0e6f 23           inc Phl
0e70 362a         ld R(hl), N0x2a
0e72 23           inc Phl
0e73 362a         ld R(hl), N0x2a
0e75 21f0ae       ld Phl, W0xaef0
0e78 11f1ae       ld Pde, W0xaef1
0e7b 019f00       ld Pbc, W0x009f
0e7e 362a         ld R(hl), N0x2a
0e80 edb0         Lldir
0e82 c9           ret
0e83 fd361378     ld R(iy + 19), N0x78
0e87 fd36a500     ld R(iy - 91), N0x00
0e8b af           Axor Ra
0e8c cd080e       call W0x0e08
0e8f cdfd03       call W0x03fd
0e92 326400       ld (W0x0064), a
0e95 3e27         ld Ra, N0x27
0e97 fd96a4       Asub R(iy - 92)
0e9a da8f0e       jp Cc, W0x0e8f
0e9d 3c           inc Ra
0e9e 32d400       ld (W0x00d4), a
0ea1 3a6400       ld a, (W0x0064)
0ea4 5f           ld Re, Ra
0ea5 1600         ld Rd, N0x00
0ea7 2a4400       ld Phl, (W0x0044)
0eaa 19           add Phl, Pde
0eab 224400       ld (W0x0044), Phl
0eae 1e29         ld Re, N0x29
0eb0 19           add Phl, Pde
0eb1 221901       ld (W0x0119), Phl
0eb4 7e           ld Ra, R(hl)
0eb5 cd9d03       call W0x039d
0eb8 2a4400       ld Phl, (W0x0044)
0ebb 3ad400       ld a, (W0x00d4)
0ebe 5f           ld Re, Ra
0ebf 1600         ld Rd, N0x00
0ec1 19           add Phl, Pde
0ec2 224400       ld (W0x0044), Phl
0ec5 112900       ld Pde, W0x0029
0ec8 19           add Phl, Pde
0ec9 221901       ld (W0x0119), Phl
0ecc fd34a5       inc R(iy - 91)
0ecf 3a6500       ld a, (W0x0065)
0ed2 fe16         Acp N0x16
0ed4 c28f0e       jp Cnz, W0x0e8f
0ed7 3ad300       ld a, (W0x00d3)
0eda e603         Aand N0x03
0edc c2df0e       jp Cnz, W0x0edf
0edf fd3513       dec R(iy + 19)
0ee2 c2870e       jp Cnz, W0x0e87
0ee5 c9           ret
0ee6 fdcb1546     bit U0, R(iy + 21)
0eea c8           ret Cz
0eeb cdfd03       call W0x03fd
0eee e60f         Aand N0x0f
0ef0 f610         Aor N0x10
0ef2 c608         Aadd a, N0x08
0ef4 323f01       ld (W0x013f), a
0ef7 af           Axor Ra
0ef8 324001       ld (W0x0140), a
0efb 3e0c         ld Ra, N0x0c
0efd 323a01       ld (W0x013a), a
0f00 3e01         ld Ra, N0x01
0f02 323701       ld (W0x0137), a
0f05 c9           ret
0f06 f5           push Gaf
0f07 1131a1       ld Pde, W0xa131
0f0a 2130a1       ld Phl, W0xa130
0f0d 3640         ld R(hl), N0x40
0f0f 01bf0d       ld Pbc, W0x0dbf
0f12 edb0         Lldir
0f14 2a3301       ld Phl, (W0x0133)
0f17 115000       ld Pde, W0x0050
0f1a 19           add Phl, Pde
0f1b 7c           ld Ra, Rh
0f1c fec8         Acp N0xc8
0f1e da240f       jp Cc, W0x0f24
0f21 d608         Asub N0x08
0f23 67           ld Rh, Ra
0f24 110030       ld Pde, W0x3000
0f27 0e04         ld Rc, N0x04
0f29 06c4         ld Rb, N0xc4
0f2b cd0a03       call W0x030a
0f2e 23           inc Phl
0f2f 23           inc Phl
0f30 7c           ld Ra, Rh
0f31 fec8         Acp N0xc8
0f33 da390f       jp Cc, W0x0f39
0f36 d608         Asub N0x08
0f38 67           ld Rh, Ra
0f39 10f0         djnz D$ - 14
0f3b 0d           dec Rc
0f3c c22b0f       jp Cnz, W0x0f2b
0f3f 3e01         ld Ra, N0x01
0f41 324501       ld (W0x0145), a
0f44 324901       ld (W0x0149), a
0f47 f1           pop Gaf
0f48 cd830e       call W0x0e83
0f4b af           Axor Ra
0f4c cd080e       call W0x0e08
0f4f 2a1901       ld Phl, (W0x0119)
0f52 fd36a500     ld R(iy - 91), N0x00
0f56 fd36a400     ld R(iy - 92), N0x00
0f5a 7e           ld Ra, R(hl)
0f5b e5           push Ghl
0f5c cdd103       call W0x03d1
0f5f e1           pop Ghl
0f60 23           inc Phl
0f61 221901       ld (W0x0119), Phl
0f64 11d7ff       ld Pde, W0xffd7
0f67 19           add Phl, Pde
0f68 224400       ld (W0x0044), Phl
0f6b 2a1901       ld Phl, (W0x0119)
0f6e fd34a4       inc R(iy - 92)
0f71 3a6400       ld a, (W0x0064)
0f74 fe28         Acp N0x28
0f76 c25a0f       jp Cnz, W0x0f5a
0f79 fd34a5       inc R(iy - 91)
0f7c 3a6500       ld a, (W0x0065)
0f7f fe16         Acp N0x16
0f81 c2560f       jp Cnz, W0x0f56
0f84 3e00         ld Ra, N0x00
0f86 324501       ld (W0x0145), a
0f89 c3690e       jp W0x0e69
0f8c 3a3501       ld a, (W0x0135)
0f8f a7           Aand Ra
0f90 c8           ret Cz
0f91 215101       ld Phl, W0x0151
0f94 34           inc R(hl)
0f95 7e           ld Ra, R(hl)
0f96 e601         Aand N0x01
0f98 c8           ret Cz
0f99 3e20         ld Ra, N0x20
0f9b 0e07         ld Rc, N0x07
0f9d cd1818       call W0x1818
0fa0 3a3b01       ld a, (W0x013b)
0fa3 0e00         ld Rc, N0x00
0fa5 cd1818       call W0x1818
0fa8 3a3c01       ld a, (W0x013c)
0fab e60f         Aand N0x0f
0fad 0e01         ld Rc, N0x01
0faf cd1818       call W0x1818
0fb2 3a3801       ld a, (W0x0138)
0fb5 3c           inc Ra
0fb6 e60f         Aand N0x0f
0fb8 323801       ld (W0x0138), a
0fbb f5           push Gaf
0fbc 0e08         ld Rc, N0x08
0fbe cd1818       call W0x1818
0fc1 3a4101       ld a, (W0x0141)
0fc4 e61f         Aand N0x1f
0fc6 0e06         ld Rc, N0x06
0fc8 2a3601       ld Phl, (W0x0136)
0fcb 2d           dec Rl
0fcc c41818       call Cnz, W0x1818
0fcf f1           pop Gaf
0fd0 fe0f         Acp N0x0f
0fd2 d8           ret Cc
0fd3 af           Axor Ra
0fd4 323801       ld (W0x0138), a
0fd7 323501       ld (W0x0135), a
0fda 0e08         ld Rc, N0x08
0fdc cd1818       call W0x1818
0fdf c9           ret
0fe0 3e20         ld Ra, N0x20
0fe2 0e07         ld Rc, N0x07
0fe4 cd1818       call W0x1818
0fe7 3ad900       ld a, (W0x00d9)
0fea 3c           inc Ra
0feb 32d900       ld (W0x00d9), a
0fee e603         Aand N0x03
0ff0 203e         jr Cnz, D$ + 64
0ff2 3a3601       ld a, (W0x0136)
0ff5 a7           Aand Ra
0ff6 2838         jr Cz, D$ + 58
0ff8 3a4201       ld a, (W0x0142)
0ffb e61f         Aand N0x1f
0ffd 0e06         ld Rc, N0x06
0fff cd1818       call W0x1818
1002 3a3d01       ld a, (W0x013d)
1005 0e02         ld Rc, N0x02
1007 cd1818       call W0x1818
100a 3a3e01       ld a, (W0x013e)
100d e60f         Aand N0x0f
100f 0e03         ld Rc, N0x03
1011 cd1818       call W0x1818
1014 3a3901       ld a, (W0x0139)
1017 3d           dec Ra
1018 e60f         Aand N0x0f
101a 323901       ld (W0x0139), a
101d 0e09         ld Rc, N0x09
101f cd1818       call W0x1818
1022 3a3901       ld a, (W0x0139)
1025 a7           Aand Ra
1026 2008         jr Cnz, D$ + 10
1028 323601       ld (W0x0136), a
102b 0e09         ld Rc, N0x09
102d cd1818       call W0x1818
1030 3ad900       ld a, (W0x00d9)
1033 e603         Aand N0x03
1035 2805         jr Cz, D$ + 7
1037 fdcb3f46     bit U0, R(iy + 63)
103b c8           ret Cz
103c 3a3701       ld a, (W0x0137)
103f a7           Aand Ra
1040 c8           ret Cz
1041 3e00         ld Ra, N0x00
1043 325001       ld (W0x0150), a
1046 3a3f01       ld a, (W0x013f)
1049 0e04         ld Rc, N0x04
104b cd1818       call W0x1818
104e 3a4001       ld a, (W0x0140)
1051 e60f         Aand N0x0f
1053 0e05         ld Rc, N0x05
1055 cd1818       call W0x1818
1058 3a3a01       ld a, (W0x013a)
105b e60f         Aand N0x0f
105d 3d           dec Ra
105e 323a01       ld (W0x013a), a
1061 0e0a         ld Rc, N0x0a
1063 cd1818       call W0x1818
1066 3a3a01       ld a, (W0x013a)
1069 a7           Aand Ra
106a c0           ret Cnz
106b 323701       ld (W0x0137), a
106e 0e0a         ld Rc, N0x0a
1070 cd1818       call W0x1818
1073 c9           ret
1074 3e00         ld Ra, N0x00
1076 324b01       ld (W0x014b), a
1079 21a02b       ld Phl, W0x2ba0
107c 11a12b       ld Pde, W0x2ba1
107f 010300       ld Pbc, W0x0003
1082 3654         ld R(hl), N0x54
1084 edb0         Lldir
1086 c9           ret
1087 af           Axor Ra
1088 324001       ld (W0x0140), a
108b cdfd03       call W0x03fd
108e e607         Aand N0x07
1090 c60a         Aadd a, N0x0a
1092 323f01       ld (W0x013f), a
1095 3e08         ld Ra, N0x08
1097 323a01       ld (W0x013a), a
109a 3e01         ld Ra, N0x01
109c 323701       ld (W0x0137), a
109f 3a4b01       ld a, (W0x014b)
10a2 a7           Aand Ra
10a3 c0           ret Cnz
10a4 3e4b         ld Ra, N0x4b
10a6 32a32b       ld (W0x2ba3), a
10a9 3e01         ld Ra, N0x01
10ab 324b01       ld (W0x014b), a
10ae c9           ret
10af 3a6000       ld a, (W0x0060)
10b2 fe01         Acp N0x01
10b4 ca8710       jp Cz, W0x1087
10b7 fe02         Acp N0x02
10b9 c0           ret Cnz
10ba cd7410       call W0x1074
10bd fd36a003     ld R(iy - 96), N0x03
10c1 c9           ret
10c2 3a7000       ld a, (W0x0070)
10c5 ee01         Axor N0x01
10c7 fda6a0       Aand R(iy - 96)
10ca fe01         Acp N0x01
10cc c0           ret Cnz
10cd fd344b       inc R(iy + 75)
10d0 3a0b01       ld a, (W0x010b)
10d3 fe32         Acp N0x32
10d5 c0           ret Cnz
10d6 fd364b00     ld R(iy + 75), N0x00
10da fd344c       inc R(iy + 76)
10dd 3a5301       ld a, (W0x0153)
10e0 fdbe4c       Acp R(iy + 76)
10e3 c0           ret Cnz
10e4 fd36a002     ld R(iy - 96), N0x02
10e8 c9           ret
10e9 2a3301       ld Phl, (W0x0133)
10ec 0190b0       ld Pbc, W0xb090
10ef 3ec8         ld Ra, N0xc8
10f1 cd671f       call W0x1f67
10f4 2a3301       ld Phl, (W0x0133)
10f7 112003       ld Pde, W0x0320
10fa 19           add Phl, Pde
10fb 7c           ld Ra, Rh
10fc fec8         Acp N0xc8
10fe da0411       jp Cc, W0x1104
1101 d608         Asub N0x08
1103 67           ld Rh, Ra
1104 0158b1       ld Pbc, W0xb158
1107 3eb4         ld Ra, N0xb4
1109 cd671f       call W0x1f67
110c c9           ret
110d 2a3301       ld Phl, (W0x0133)
1110 11f005       ld Pde, W0x05f0
1113 19           add Phl, Pde
1114 7c           ld Ra, Rh
1115 fec8         Acp N0xc8
1117 da1d11       jp Cc, W0x111d
111a d608         Asub N0x08
111c 67           ld Rh, Ra
111d 010cb2       ld Pbc, W0xb20c
1120 3e78         ld Ra, N0x78
1122 cd671f       call W0x1f67
1125 c9           ret
1126 3a7c1a       ld a, (W0x1a7c)
1129 fe00         Acp N0x00
112b c8           ret Cz
112c ed4b1301     ld Pbc, (W0x0113)
1130 2a1501       ld Phl, (W0x0115)
1133 37           scf
1134 3f           ccf
1135 ed42         sbc hl, Pbc
1137 c8           ret Cz
1138 ed431501     ld (W0x0115), Pbc
113c cdbf26       call W0x26bf
113f cdff22       call W0x22ff
1142 c9           ret
1143 00           nop
1144 00           nop
1145 3a4311       ld a, (W0x1143)
1148 fe00         Acp N0x00
114a c8           ret Cz
114b 3a4411       ld a, (W0x1144)
114e 3d           dec Ra
114f 324411       ld (W0x1144), a
1152 fe00         Acp N0x00
1154 c0           ret Cnz
1155 3a4311       ld a, (W0x1143)
1158 fe01         Acp N0x01
115a ca6d11       jp Cz, W0x116d
115d 3d           dec Ra
115e 324311       ld (W0x1143), a
1161 21eb68       ld Phl, W0x68eb
1164 cd3321       call W0x2133
1167 3e20         ld Ra, N0x20
1169 324411       ld (W0x1144), a
116c c9           ret
116d 3c           inc Ra
116e 324311       ld (W0x1143), a
1171 3e60         ld Ra, N0x60
1173 324411       ld (W0x1144), a
1176 2adb00       ld Phl, (W0x00db)
1179 cd3321       call W0x2133
117c c9           ret
117d cd4511       call W0x1145
1180 cd2611       call W0x1126
1183 cdef2a       call W0x2aef
1186 cdaf10       call W0x10af
1189 cd920d       call W0x0d92
118c cde60e       call W0x0ee6
118f cdc210       call W0x10c2
1192 cdfd08       call W0x08fd
1195 3a4f01       ld a, (W0x014f)
1198 a7           Aand Ra
1199 cce00f       call Cz, W0x0fe0
119c 3a0801       ld a, (W0x0108)
119f 320701       ld (W0x0107), a
11a2 3ab100       ld a, (W0x00b1)
11a5 fe00         Acp N0x00
11a7 2803         jr Cz, D$ + 5
11a9 cd142b       call W0x2b14
11ac c9           ret
11ad dd2a4400     ld Pix, (W0x0044)
11b1 2a1901       ld Phl, (W0x0119)
11b4 5e           ld Re, R(hl)
11b5 cb23         Osla Re
11b7 1c           inc Re
11b8 1600         ld Rd, N0x00
11ba 21705e       ld Phl, W0x5e70
11bd 19           add Phl, Pde
11be 7e           ld Ra, R(hl)
11bf ba           Acp Rd
11c0 c8           ret Cz
11c1 57           ld Rd, Ra
11c2 2b           dec Phl
11c3 5e           ld Re, R(hl)
11c4 eb           ex de, hl
11c5 e9           jp (Phl)
11c6 c5           push Gbc
11c7 dd216801     ld Pix, W0x0168
11cb cd0904       call W0x0409
11ce 0e01         ld Rc, N0x01
11d0 0604         ld Rb, N0x04
11d2 dd23         inc Pix
11d4 ddbe00       Acp R(ix + 0)
11d7 d2dd11       jp Cnc, W0x11dd
11da dd4efc       ld Rc, R(ix - 4)
11dd 10f3         djnz D$ - 11
11df 71           ld R(hl), Rc
11e0 c1           pop Gbc
11e1 c9           ret
11e2 3e01         ld Ra, N0x01
11e4 b7           Aor Ra
11e5 cd080e       call W0x0e08
11e8 2a1901       ld Phl, (W0x0119)
11eb 010448       ld Pbc, W0x4804
11ee cdc611       call W0x11c6
11f1 23           inc Phl
11f2 10fa         djnz D$ - 4
11f4 0d           dec Rc
11f5 c2ee11       jp Cnz, W0x11ee
11f8 c9           ret
11f9 3a7100       ld a, (W0x0071)
11fc fe00         Acp N0x00
11fe c8           ret Cz
11ff 0601         ld Rb, N0x01
1201 10fe         djnz D$ + 0
1203 3d           dec Ra
1204 c2ff11       jp Cnz, W0x11ff
1207 c9           ret
1208 f3           di
1209 f5           push Gaf
120a c5           push Gbc
120b 3e00         ld Ra, N0x00
120d 323501       ld (W0x0135), a
1210 323601       ld (W0x0136), a
1213 323701       ld (W0x0137), a
1216 324101       ld (W0x0141), a
1219 324201       ld (W0x0142), a
121c 3e0e         ld Ra, N0x0e
121e 323801       ld (W0x0138), a
1221 3e01         ld Ra, N0x01
1223 323901       ld (W0x0139), a
1226 323a01       ld (W0x013a), a
1229 323501       ld (W0x0135), a
122c 323601       ld (W0x0136), a
122f 323701       ld (W0x0137), a
1232 cd8c0f       call W0x0f8c
1235 cde00f       call W0x0fe0
1238 3a3501       ld a, (W0x0135)
123b 2a3601       ld Phl, (W0x0136)
123e b5           Aor Rl
123f b4           Aor Rh
1240 a7           Aand Ra
1241 20ef         jr Cnz, D$ - 15
1243 c1           pop Gbc
1244 f1           pop Gaf
1245 fb           ei
1246 c9           ret
1247 3e0c         ld Ra, N0x0c
1249 32fa00       ld (W0x00fa), a
124c 3afa00       ld a, (W0x00fa)
124f fe00         Acp N0x00
1251 c8           ret Cz
1252 c34c12       jp W0x124c
1255 3e32         ld Ra, N0x32
1257 32fa00       ld (W0x00fa), a
125a 3afa00       ld a, (W0x00fa)
125d fe00         Acp N0x00
125f c8           ret Cz
1260 c35a12       jp W0x125a
1263 2a1301       ld Phl, (W0x0113)
1266 22db00       ld (W0x00db), Phl
1269 21eb68       ld Phl, W0x68eb
126c cd3321       call W0x2133
126f 3e02         ld Ra, N0x02
1271 324311       ld (W0x1143), a
1274 3e20         ld Ra, N0x20
1276 324411       ld (W0x1144), a
1279 3a0d01       ld a, (W0x010d)
127c fe00         Acp N0x00
127e c27912       jp Cnz, W0x1279
1281 3a0d01       ld a, (W0x010d)
1284 fe21         Acp N0x21
1286 c28112       jp Cnz, W0x1281
1289 3a0d01       ld a, (W0x010d)
128c fe00         Acp N0x00
128e c28912       jp Cnz, W0x1289
1291 3e00         ld Ra, N0x00
1293 324311       ld (W0x1143), a
1296 2adb00       ld Phl, (W0x00db)
1299 cd3321       call W0x2133
129c c9           ret
129d 3a0d01       ld a, (W0x010d)
12a0 fe21         Acp N0x21
12a2 c2b812       jp Cnz, W0x12b8
12a5 fd36b001     ld R(iy - 80), N0x01
12a9 cd0812       call W0x1208
12ac cd6312       call W0x1263
12af fd36b000     ld R(iy - 80), N0x00
12b3 3e00         ld Ra, N0x00
12b5 320d01       ld (W0x010d), a
12b8 3a0d01       ld a, (W0x010d)
12bb fe1c         Acp N0x1c
12bd c2d112       jp Cnz, W0x12d1
12c0 3a6700       ld a, (W0x0067)
12c3 fe00         Acp N0x00
12c5 c2cc12       jp Cnz, W0x12cc
12c8 fd36a901     ld R(iy - 87), N0x01
12cc 3e00         ld Ra, N0x00
12ce 320d01       ld (W0x010d), a
12d1 3a0e01       ld a, (W0x010e)
12d4 fe06         Acp N0x06
12d6 c2dc12       jp Cnz, W0x12dc
12d9 c3421f       jp W0x1f42
12dc c9           ret
12dd fdcb3e46     bit U0, R(iy + 62)
12e1 c2ef12       jp Cnz, W0x12ef
12e4 fdcb3f46     bit U0, R(iy + 63)
12e8 caef12       jp Cz, W0x12ef
12eb fd369f00     ld R(iy - 97), N0x00
12ef 3afe00       ld a, (W0x00fe)
12f2 32ff00       ld (W0x00ff), a
12f5 fd363e00     ld R(iy + 62), N0x00
12f9 3a0001       ld a, (W0x0100)
12fc 320101       ld (W0x0101), a
12ff fd364000     ld R(iy + 64), N0x00
1303 c9           ret
1304 cdfe09       call W0x09fe
1307 3a6800       ld a, (W0x0068)
130a fe10         Acp N0x10
130c c0           ret Cnz
130d 3ac100       ld a, (W0x00c1)
1310 fe00         Acp N0x00
1312 c0           ret Cnz
1313 3ab800       ld a, (W0x00b8)
1316 fe00         Acp N0x00
1318 c8           ret Cz
1319 fd36a901     ld R(iy - 87), N0x01
131d c9           ret
131e cd9d12       call W0x129d
1321 cd4008       call W0x0840
1324 c9           ret
1325 fd364800     ld R(iy + 72), N0x00
1329 3e10         ld Ra, N0x10
132b fdbea8       Acp R(iy - 88)
132e ca4313       jp Cz, W0x1343
1331 fd34a8       inc R(iy - 88)
1334 fd7ea8       ld Ra, R(iy - 88)
1337 fe01         Acp N0x01
1339 2808         jr Cz, D$ + 10
133b 3e00         ld Ra, N0x00
133d 320701       ld (W0x0107), a
1340 320801       ld (W0x0108), a
1343 cd0413       call W0x1304
1346 cddd12       call W0x12dd
1349 c9           ret
134a fd36a501     ld R(iy - 91), N0x01
134e 3eff         ld Ra, N0xff
1350 b7           Aor Ra
1351 cd080e       call W0x0e08
1354 cd2513       call W0x1325
1357 fd36a400     ld R(iy - 92), N0x00
135b cdad11       call W0x11ad
135e ed4b4400     ld Pbc, (W0x0044)
1362 0a           ld a, (Pbc)
1363 5f           ld Re, Ra
1364 1600         ld Rd, N0x00
1366 21b05d       ld Phl, W0x5db0
1369 19           add Phl, Pde
136a 7e           ld Ra, R(hl)
136b fe00         Acp N0x00
136d ca7113       jp Cz, W0x1371
1370 02           ld (Pbc), a
1371 03           inc Pbc
1372 ed434400     ld (W0x0044), Pbc
1376 212900       ld Phl, W0x0029
1379 09           add Phl, Pbc
137a 221901       ld (W0x0119), Phl
137d fd34a4       inc R(iy - 92)
1380 3a6400       ld a, (W0x0064)
1383 fe28         Acp N0x28
1385 c25b13       jp Cnz, W0x135b
1388 cd5007       call W0x0750
138b cdf911       call W0x11f9
138e fd34a5       inc R(iy - 91)
1391 3a6500       ld a, (W0x0065)
1394 fe16         Acp N0x16
1396 c25713       jp Cnz, W0x1357
1399 cd1e13       call W0x131e
139c c9           ret
139d 3e00         ld Ra, N0x00
139f 32dd00       ld (W0x00dd), a
13a2 32de00       ld (W0x00de), a
13a5 32df00       ld (W0x00df), a
13a8 3ae000       ld a, (W0x00e0)
13ab fe00         Acp N0x00
13ad c8           ret Cz
13ae 47           ld Rb, Ra
13af 3e0a         ld Ra, N0x0a
13b1 fd341f       inc R(iy + 31)
13b4 fdbe1f       Acp R(iy + 31)
13b7 c2ce13       jp Cnz, W0x13ce
13ba fd361f00     ld R(iy + 31), N0x00
13be fd341e       inc R(iy + 30)
13c1 fdbe1e       Acp R(iy + 30)
13c4 c2ce13       jp Cnz, W0x13ce
13c7 fd361e00     ld R(iy + 30), N0x00
13cb fd341d       inc R(iy + 29)
13ce 10e1         djnz D$ - 29
13d0 c9           ret
13d1 3a8300       ld a, (W0x0083)
13d4 fdbead       Acp R(iy - 83)
13d7 ca0014       jp Cz, W0x1400
13da 326d00       ld (W0x006d), a
13dd cb27         Osla Ra
13df 5f           ld Re, Ra
13e0 1600         ld Rd, N0x00
13e2 213f30       ld Phl, W0x303f
13e5 19           add Phl, Pde
13e6 7e           ld Ra, R(hl)
13e7 327b00       ld (W0x007b), a
13ea 21ce60       ld Phl, W0x60ce
13ed 19           add Phl, Pde
13ee 5e           ld Re, R(hl)
13ef 23           inc Phl
13f0 56           ld Rd, R(hl)
13f1 21f860       ld Phl, W0x60f8
13f4 19           add Phl, Pde
13f5 115201       ld Pde, W0x0152
13f8 019300       ld Pbc, W0x0093
13fb edb0         Lldir
13fd cdac28       call W0x28ac
1400 fd5ec4       ld Re, R(iy - 60)
1403 1600         ld Rd, N0x00
1405 215601       ld Phl, W0x0156
1408 19           add Phl, Pde
1409 7e           ld Ra, R(hl)
140a 325700       ld (W0x0057), a
140d fd369800     ld R(iy - 104), N0x00
1411 c9           ret
1412 3e00         ld Ra, N0x00
1414 32fe00       ld (W0x00fe), a
1417 32ff00       ld (W0x00ff), a
141a 326800       ld (W0x0068), a
141d 326900       ld (W0x0069), a
1420 326000       ld (W0x0060), a
1423 320b01       ld (W0x010b), a
1426 320c01       ld (W0x010c), a
1429 326200       ld (W0x0062), a
142c 320001       ld (W0x0100), a
142f 32b800       ld (W0x00b8), a
1432 32b700       ld (W0x00b7), a
1435 327400       ld (W0x0074), a
1438 327000       ld (W0x0070), a
143b cd7410       call W0x1074
143e 3a8400       ld a, (W0x0084)
1441 5f           ld Re, Ra
1442 1600         ld Rd, N0x00
1444 213b30       ld Phl, W0x303b
1447 19           add Phl, Pde
1448 7e           ld Ra, R(hl)
1449 327100       ld (W0x0071), a
144c 216001       ld Phl, W0x0160
144f 19           add Phl, Pde
1450 7e           ld Ra, R(hl)
1451 32e100       ld (W0x00e1), a
1454 32e000       ld (W0x00e0), a
1457 cd9d13       call W0x139d
145a 3add00       ld a, (W0x00dd)
145d 32b400       ld (W0x00b4), a
1460 3ade00       ld a, (W0x00de)
1463 32b500       ld (W0x00b5), a
1466 3adf00       ld a, (W0x00df)
1469 32b600       ld (W0x00b6), a
146c d5           push Gde
146d cdc008       call W0x08c0
1470 d1           pop Gde
1471 215b01       ld Phl, W0x015b
1474 19           add Phl, Pde
1475 7e           ld Ra, R(hl)
1476 32e000       ld (W0x00e0), a
1479 cd9d13       call W0x139d
147c 3ade00       ld a, (W0x00de)
147f 32bb00       ld (W0x00bb), a
1482 3adf00       ld a, (W0x00df)
1485 32bc00       ld (W0x00bc), a
1488 cd4309       call W0x0943
148b 3a5401       ld a, (W0x0154)
148e 32e000       ld (W0x00e0), a
1491 cd9d13       call W0x139d
1494 3add00       ld a, (W0x00dd)
1497 327f00       ld (W0x007f), a
149a 3ade00       ld a, (W0x00de)
149d 328000       ld (W0x0080), a
14a0 3adf00       ld a, (W0x00df)
14a3 328100       ld (W0x0081), a
14a6 3a5501       ld a, (W0x0155)
14a9 32e000       ld (W0x00e0), a
14ac cd9d13       call W0x139d
14af 3add00       ld a, (W0x00dd)
14b2 32bd00       ld (W0x00bd), a
14b5 3ade00       ld a, (W0x00de)
14b8 32be00       ld (W0x00be), a
14bb 3adf00       ld a, (W0x00df)
14be 32bf00       ld (W0x00bf), a
14c1 cd5409       call W0x0954
14c4 fd36f900     ld R(iy - 7), N0x00
14c8 fd36fa00     ld R(iy - 6), N0x00
14cc cd3209       call W0x0932
14cf fd369f01     ld R(iy - 97), N0x01
14d3 fd36a601     ld R(iy - 90), N0x01
14d7 fd36a708     ld R(iy - 89), N0x08
14db 3a7900       ld a, (W0x0079)
14de ee01         Axor N0x01
14e0 fda6b3       Aand R(iy - 77)
14e3 2804         jr Cz, D$ + 6
14e5 fd36a706     ld R(iy - 89), N0x06
14e9 fd36ae7f     ld R(iy - 82), N0x7f
14ed c9           ret
14ee 3eff         ld Ra, N0xff
14f0 323b01       ld (W0x013b), a
14f3 af           Axor Ra
14f4 323c01       ld (W0x013c), a
14f7 3e0a         ld Ra, N0x0a
14f9 323801       ld (W0x0138), a
14fc c9           ret
14fd 217368       ld Phl, W0x6873
1500 cd3321       call W0x2133
1503 cd5512       call W0x1255
1506 c9           ret
1507 0618         ld Rb, N0x18
1509 3a1101       ld a, (W0x0111)
150c 32c100       ld (W0x00c1), a
150f fe00         Acp N0x00
1511 c21615       jp Cnz, W0x1516
1514 0601         ld Rb, N0x01
1516 c5           push Gbc
1517 0609         ld Rb, N0x09
1519 76           halt
151a 10fd         djnz D$ - 1
151c c1           pop Gbc
151d 10ea         djnz D$ - 20
151f c9           ret
1520 3a6800       ld a, (W0x0068)
1523 fe00         Acp N0x00
1525 c22c15       jp Cnz, W0x152c
1528 fd364801     ld R(iy + 72), N0x01
152c fd362214     ld R(iy + 34), N0x14
1530 2a1301       ld Phl, (W0x0113)
1533 22db00       ld (W0x00db), Phl
1536 21af68       ld Phl, W0x68af
1539 cd3321       call W0x2133
153c cd0715       call W0x1507
153f 2adb00       ld Phl, (W0x00db)
1542 cd3321       call W0x2133
1545 cd0715       call W0x1507
1548 cd0715       call W0x1507
154b cd0715       call W0x1507
154e fd3522       dec R(iy + 34)
1551 c25815       jp Cnz, W0x1558
1554 fd360100     ld R(iy + 1), N0x00
1558 3ac100       ld a, (W0x00c1)
155b fe00         Acp N0x00
155d c23015       jp Cnz, W0x1530
1560 fd364800     ld R(iy + 72), N0x00
1564 c9           ret
1565 fd5ec3       ld Re, R(iy - 61)
1568 cb23         Osla Re
156a 1600         ld Rd, N0x00
156c 213f30       ld Phl, W0x303f
156f 19           add Phl, Pde
1570 7e           ld Ra, R(hl)
1571 327b00       ld (W0x007b), a
1574 fe00         Acp N0x00
1576 ca8315       jp Cz, W0x1583
1579 21c368       ld Phl, W0x68c3
157c cd3321       call W0x2133
157f cdf507       call W0x07f5
1582 c9           ret
1583 213cb8       ld Phl, W0xb83c
1586 cd3321       call W0x2133
1589 c9           ret
158a 3ab800       ld a, (W0x00b8)
158d fdbe21       Acp R(iy + 33)
1590 cc2015       call Cz, W0x1520
1593 fdcbb546     bit U0, R(iy - 75)
1597 caa015       jp Cz, W0x15a0
159a cdfd14       call W0x14fd
159d c3a815       jp W0x15a8
15a0 3a8300       ld a, (W0x0083)
15a3 fe00         Acp N0x00
15a5 c46515       call Cnz, W0x1565
15a8 fd361501     ld R(iy + 21), N0x01
15ac cd0812       call W0x1208
15af cd280e       call W0x0e28
15b2 cd270e       call W0x0e27
15b5 fdcbb746     bit U0, R(iy - 73)
15b9 c2c915       jp Cnz, W0x15c9
15bc fdcbb546     bit U0, R(iy - 75)
15c0 c8           ret Cz
15c1 3e01         ld Ra, N0x01
15c3 324501       ld (W0x0145), a
15c6 cd5512       call W0x1255
15c9 3e00         ld Ra, N0x00
15cb 324901       ld (W0x0149), a
15ce 21e730       ld Phl, W0x30e7
15d1 cd8228       call W0x2882
15d4 fdcbb746     bit U0, R(iy - 73)
15d8 c9           ret
15d9 fd363201     ld R(iy + 50), N0x01
15dd c9           ret
15de fd5e25       ld Re, R(iy + 37)
15e1 cb23         Osla Re
15e3 1600         ld Rd, N0x00
15e5 214f67       ld Phl, W0x674f
15e8 19           add Phl, Pde
15e9 5e           ld Re, R(hl)
15ea 23           inc Phl
15eb 56           ld Rd, R(hl)
15ec 2ae400       ld Phl, (W0x00e4)
15ef 2600         ld Rh, N0x00
15f1 19           add Phl, Pde
15f2 224e00       ld (W0x004e), Phl
15f5 c9           ret
15f6 cdde15       call W0x15de
15f9 3ae300       ld a, (W0x00e3)
15fc 77           ld R(hl), Ra
15fd c9           ret
15fe cb27         Osla Ra
1600 5f           ld Re, Ra
1601 1600         ld Rd, N0x00
1603 217730       ld Phl, W0x3077
1606 19           add Phl, Pde
1607 5e           ld Re, R(hl)
1608 23           inc Phl
1609 56           ld Rd, R(hl)
160a 3ae900       ld a, (W0x00e9)
160d fe00         Acp N0x00
160f c8           ret Cz
1610 47           ld Rb, Ra
1611 2a4e00       ld Phl, (W0x004e)
1614 3ae300       ld a, (W0x00e3)
1617 77           ld R(hl), Ra
1618 19           add Phl, Pde
1619 10fc         djnz D$ - 2
161b 224e00       ld (W0x004e), Phl
161e c9           ret
161f cdde15       call W0x15de
1622 3ae600       ld a, (W0x00e6)
1625 32e900       ld (W0x00e9), a
1628 3ae700       ld a, (W0x00e7)
162b cdfe15       call W0x15fe
162e c9           ret
162f cdde15       call W0x15de
1632 3ae700       ld a, (W0x00e7)
1635 32e900       ld (W0x00e9), a
1638 3ae600       ld a, (W0x00e6)
163b fe00         Acp N0x00
163d c8           ret Cz
163e 112800       ld Pde, W0x0028
1641 3ae300       ld a, (W0x00e3)
1644 fd3529       dec R(iy + 41)
1647 fa5b16       jp Cm, W0x165b
164a fd4626       ld Rb, R(iy + 38)
164d 77           ld R(hl), Ra
164e 23           inc Phl
164f 10fc         djnz D$ - 2
1651 2a4e00       ld Phl, (W0x004e)
1654 19           add Phl, Pde
1655 224e00       ld (W0x004e), Phl
1658 c34416       jp W0x1644
165b c9           ret
165c cd2f16       call W0x162f
165f 3ae800       ld a, (W0x00e8)
1662 32e300       ld (W0x00e3), a
1665 fd3424       inc R(iy + 36)
1668 fd3425       inc R(iy + 37)
166b fd3526       dec R(iy + 38)
166e fd3526       dec R(iy + 38)
1671 fd3527       dec R(iy + 39)
1674 fd3527       dec R(iy + 39)
1677 cd2f16       call W0x162f
167a c9           ret
167b cdde15       call W0x15de
167e 3ae600       ld a, (W0x00e6)
1681 3d           dec Ra
1682 32e900       ld (W0x00e9), a
1685 3e02         ld Ra, N0x02
1687 cdfe15       call W0x15fe
168a 3ae700       ld a, (W0x00e7)
168d 3d           dec Ra
168e 32e900       ld (W0x00e9), a
1691 3e04         ld Ra, N0x04
1693 cdfe15       call W0x15fe
1696 3ae600       ld a, (W0x00e6)
1699 3d           dec Ra
169a 32e900       ld (W0x00e9), a
169d 3e06         ld Ra, N0x06
169f cdfe15       call W0x15fe
16a2 3ae700       ld a, (W0x00e7)
16a5 3d           dec Ra
16a6 32e900       ld (W0x00e9), a
16a9 3e00         ld Ra, N0x00
16ab cdfe15       call W0x15fe
16ae c9           ret
16af dd216d01     ld Pix, W0x016d
16b3 dd7e00       ld Ra, R(ix + 0)
16b6 feff         Acp N0xff
16b8 c8           ret Cz
16b9 e63f         Aand N0x3f
16bb 32e300       ld (W0x00e3), a
16be fe25         Acp N0x25
16c0 c2cf16       jp Cnz, W0x16cf
16c3 dd7e01       ld Ra, R(ix + 1)
16c6 326b00       ld (W0x006b), a
16c9 dd7e02       ld Ra, R(ix + 2)
16cc 326c00       ld (W0x006c), a
16cf dd7e01       ld Ra, R(ix + 1)
16d2 32e400       ld (W0x00e4), a
16d5 dd7e02       ld Ra, R(ix + 2)
16d8 32e500       ld (W0x00e5), a
16db dd7e03       ld Ra, R(ix + 3)
16de 32e600       ld (W0x00e6), a
16e1 dd7e04       ld Ra, R(ix + 4)
16e4 32e700       ld (W0x00e7), a
16e7 dd7e05       ld Ra, R(ix + 5)
16ea 32e800       ld (W0x00e8), a
16ed dd7e00       ld Ra, R(ix + 0)
16f0 e6c0         Aand N0xc0
16f2 c20117       jp Cnz, W0x1701
16f5 dd23         inc Pix
16f7 dd23         inc Pix
16f9 dd23         inc Pix
16fb cdf615       call W0x15f6
16fe c3b316       jp W0x16b3
1701 fe40         Acp N0x40
1703 c21617       jp Cnz, W0x1716
1706 dd23         inc Pix
1708 dd23         inc Pix
170a dd23         inc Pix
170c dd23         inc Pix
170e dd23         inc Pix
1710 cd1f16       call W0x161f
1713 c3b316       jp W0x16b3
1716 fe80         Acp N0x80
1718 c22d17       jp Cnz, W0x172d
171b dd23         inc Pix
171d dd23         inc Pix
171f dd23         inc Pix
1721 dd23         inc Pix
1723 dd23         inc Pix
1725 dd23         inc Pix
1727 cd5c16       call W0x165c
172a c3b316       jp W0x16b3
172d dd23         inc Pix
172f dd23         inc Pix
1731 dd23         inc Pix
1733 dd23         inc Pix
1735 dd23         inc Pix
1737 cd7b16       call W0x167b
173a c3b316       jp W0x16b3
173d fd362307     ld R(iy + 35), N0x07
1741 fd362400     ld R(iy + 36), N0x00
1745 fd362502     ld R(iy + 37), N0x02
1749 fd362628     ld R(iy + 38), N0x28
174d fd362716     ld R(iy + 39), N0x16
1751 cd7b16       call W0x167b
1754 c9           ret
1755 3a1801       ld a, (W0x0118)
1758 47           ld Rb, Ra
1759 111400       ld Pde, W0x0014
175c 21ab67       ld Phl, W0x67ab
175f 19           add Phl, Pde
1760 10fd         djnz D$ - 1
1762 115cb2       ld Pde, W0xb25c
1765 011400       ld Pbc, W0x0014
1768 edb0         Lldir
176a c9           ret
176b 3a1801       ld a, (W0x0118)
176e 3c           inc Ra
176f fe06         Acp N0x06
1771 c27617       jp Cnz, W0x1776
1774 3e01         ld Ra, N0x01
1776 321801       ld (W0x0118), a
1779 21ab67       ld Phl, W0x67ab
177c 111400       ld Pde, W0x0014
177f 47           ld Rb, Ra
1780 19           add Phl, Pde
1781 10fd         djnz D$ - 1
1783 115cb2       ld Pde, W0xb25c
1786 011400       ld Pbc, W0x0014
1789 edb0         Lldir
178b c9           ret
178c 3a1801       ld a, (W0x0118)
178f 47           ld Rb, Ra
1790 216530       ld Phl, W0x3065
1793 110300       ld Pde, W0x0003
1796 19           add Phl, Pde
1797 10fd         djnz D$ - 1
1799 7e           ld Ra, R(hl)
179a 321c01       ld (W0x011c), a
179d 23           inc Phl
179e 7e           ld Ra, R(hl)
179f 327300       ld (W0x0073), a
17a2 23           inc Phl
17a3 7e           ld Ra, R(hl)
17a4 327900       ld (W0x0079), a
17a7 c9           ret
17a8 21e730       ld Phl, W0x30e7
17ab cd8228       call W0x2882
17ae 1190b0       ld Pde, W0xb090
17b1 21ef6a       ld Phl, W0x6aef
17b4 017c01       ld Pbc, W0x017c
17b7 edb0         Lldir
17b9 cde910       call W0x10e9
17bc 3aed00       ld a, (W0x00ed)
17bf fdb6b7       Aor R(iy - 73)
17c2 110cb2       ld Pde, W0xb20c
17c5 cae317       jp Cz, W0x17e3
17c8 212368       ld Phl, W0x6823
17cb 011400       ld Pbc, W0x0014
17ce edb0         Lldir
17d0 213768       ld Phl, W0x6837
17d3 011400       ld Pbc, W0x0014
17d6 edb0         Lldir
17d8 21ff68       ld Phl, W0x68ff
17db 011400       ld Pbc, W0x0014
17de edb0         Lldir
17e0 c3fb17       jp W0x17fb
17e3 219b68       ld Phl, W0x689b
17e6 011400       ld Pbc, W0x0014
17e9 edb0         Lldir
17eb 2100b8       ld Phl, W0xb800
17ee 011400       ld Pbc, W0x0014
17f1 edb0         Lldir
17f3 2114b8       ld Phl, W0xb814
17f6 011400       ld Pbc, W0x0014
17f9 edb0         Lldir
17fb 21d768       ld Phl, W0x68d7
17fe 011400       ld Pbc, W0x0014
1801 edb0         Lldir
1803 21bf67       ld Phl, W0x67bf
1806 011400       ld Pbc, W0x0014
1809 edb0         Lldir
180b fd362d00     ld R(iy + 45), N0x00
180f 21ab67       ld Phl, W0x67ab
1812 011400       ld Pbc, W0x0014
1815 edb0         Lldir
1817 c9           ret
1818 c5           push Gbc
1819 f5           push Gaf
181a 47           ld Rb, Ra
181b 79           ld Ra, Rc
181c 48           ld Rc, Rb
181d 06f4         ld Rb, N0xf4
181f ed79         out (c), Ra
1821 06f6         ld Rb, N0xf6
1823 ed78         in Ra, (c)
1825 f6c0         Aor N0xc0
1827 ed79         out (c), Ra
1829 e63f         Aand N0x3f
182b ed79         out (c), Ra
182d 06f4         ld Rb, N0xf4
182f ed49         out (c), Rc
1831 06f6         ld Rb, N0xf6
1833 4f           ld Rc, Ra
1834 f680         Aor N0x80
1836 ed79         out (c), Ra
1838 ed49         out (c), Rc
183a f1           pop Gaf
183b c1           pop Gbc
183c c9           ret
183d 3e3c         ld Ra, N0x3c
183f 0e07         ld Rc, N0x07
1841 cd1818       call W0x1818
1844 3aef00       ld a, (W0x00ef)
1847 b7           Aor Ra
1848 2046         jr Cnz, D$ + 72
184a fd5e2e       ld Re, R(iy + 46)
184d fd342e       inc R(iy + 46)
1850 fd342e       inc R(iy + 46)
1853 217a69       ld Phl, W0x697a
1856 1600         ld Rd, N0x00
1858 19           add Phl, Pde
1859 e5           push Ghl
185a 5e           ld Re, R(hl)
185b cb23         Osla Re
185d cb12         Orl Rd
185f 21796a       ld Phl, W0x6a79
1862 19           add Phl, Pde
1863 7e           ld Ra, R(hl)
1864 0e00         ld Rc, N0x00
1866 cd1818       call W0x1818
1869 23           inc Phl
186a 0c           inc Rc
186b 7e           ld Ra, R(hl)
186c cd1818       call W0x1818
186f e1           pop Ghl
1870 2b           dec Phl
1871 1600         ld Rd, N0x00
1873 5e           ld Re, R(hl)
1874 cb23         Osla Re
1876 cb12         Orl Rd
1878 21796a       ld Phl, W0x6a79
187b 19           add Phl, Pde
187c 7e           ld Ra, R(hl)
187d 0c           inc Rc
187e cd1818       call W0x1818
1881 23           inc Phl
1882 0c           inc Rc
1883 7e           ld Ra, R(hl)
1884 cd1818       call W0x1818
1887 3aee00       ld a, (W0x00ee)
188a b7           Aor Ra
188b 2003         jr Cnz, D$ + 5
188d fd3430       inc R(iy + 48)
1890 3aef00       ld a, (W0x00ef)
1893 c607         Aadd a, N0x07
1895 0e09         ld Rc, N0x09
1897 cd1818       call W0x1818
189a 3aef00       ld a, (W0x00ef)
189d ee07         Axor N0x07
189f c609         Aadd a, N0x09
18a1 0d           dec Rc
18a2 cd1818       call W0x1818
18a5 3e07         ld Ra, N0x07
18a7 fd342f       inc R(iy + 47)
18aa fda62f       Aand R(iy + 47)
18ad 32ef00       ld (W0x00ef), a
18b0 fdcbb746     bit U0, R(iy - 73)
18b4 280b         jr Cz, D$ + 13
18b6 3af000       ld a, (W0x00f0)
18b9 fe02         Acp N0x02
18bb 2004         jr Cnz, D$ + 6
18bd fd363101     ld R(iy + 49), N0x01
18c1 c9           ret
18c2 c9           ret
18c3 3a0f01       ld a, (W0x010f)
18c6 fe0f         Acp N0x0f
18c8 c2d318       jp Cnz, W0x18d3
18cb 3a1101       ld a, (W0x0111)
18ce fe01         Acp N0x01
18d0 c2d318       jp Cnz, W0x18d3
18d3 fdcb3346     bit U0, R(iy + 51)
18d7 c2e118       jp Cnz, W0x18e1
18da fd363301     ld R(iy + 51), N0x01
18de c3f818       jp W0x18f8
18e1 fd341a       inc R(iy + 26)
18e4 fdcb1a46     bit U0, R(iy + 26)
18e8 280b         jr Cz, D$ + 13
18ea 3a7c1a       ld a, (W0x1a7c)
18ed fe00         Acp N0x00
18ef caf518       jp Cz, W0x18f5
18f2 cdad0c       call W0x0cad
18f5 cd3d18       call W0x183d
18f8 c9           ret
18f9 3e00         ld Ra, N0x00
18fb 321e01       ld (W0x011e), a
18fe 212101       ld Phl, W0x0121
1901 cb56         bit U2, R(hl)
1903 c21119       jp Cnz, W0x1911
1906 cd6b17       call W0x176b
1909 cd8c17       call W0x178c
190c 3e01         ld Ra, N0x01
190e 321e01       ld (W0x011e), a
1911 3a0f01       ld a, (W0x010f)
1914 fe0d         Acp N0x0d
1916 c22419       jp Cnz, W0x1924
1919 3e00         ld Ra, N0x00
191b fdbec4       Acp R(iy - 60)
191e ca4319       jp Cz, W0x1943
1921 fd35c4       dec R(iy - 60)
1924 3a0f01       ld a, (W0x010f)
1927 fe0e         Acp N0x0e
1929 c24319       jp Cnz, W0x1943
192c 3e04         ld Ra, N0x04
192e fdbec4       Acp R(iy - 60)
1931 ca3719       jp Cz, W0x1937
1934 fd34c4       inc R(iy - 60)
1937 3a8400       ld a, (W0x0084)
193a fe03         Acp N0x03
193c da4319       jp Cc, W0x1943
193f fd36c301     ld R(iy - 61), N0x01
1943 3a0f01       ld a, (W0x010f)
1946 fe0b         Acp N0x0b
1948 c25b19       jp Cnz, W0x195b
194b 3a8300       ld a, (W0x0083)
194e fe05         Acp N0x05
1950 da7819       jp Cc, W0x1978
1953 d604         Asub N0x04
1955 328300       ld (W0x0083), a
1958 c37819       jp W0x1978
195b 3a0f01       ld a, (W0x010f)
195e fe07         Acp N0x07
1960 c27819       jp Cnz, W0x1978
1963 3a8400       ld a, (W0x0084)
1966 fe03         Acp N0x03
1968 d27819       jp Cnc, W0x1978
196b 3a8300       ld a, (W0x0083)
196e fe0d         Acp N0x0d
1970 d27819       jp Cnc, W0x1978
1973 c604         Aadd a, N0x04
1975 328300       ld (W0x0083), a
1978 3a8400       ld a, (W0x0084)
197b c631         Aadd a, N0x31
197d 3259b2       ld (W0xb259), a
1980 3a8300       ld a, (W0x0083)
1983 c640         Aadd a, N0x40
1985 324fb2       ld (W0xb24f), a
1988 3a0f01       ld a, (W0x010f)
198b fe0f         Acp N0x0f
198d ca9919       jp Cz, W0x1999
1990 3e01         ld Ra, N0x01
1992 321e01       ld (W0x011e), a
1995 3d           dec Ra
1996 32f000       ld (W0x00f0), a
1999 3a1e01       ld a, (W0x011e)
199c cb47         bit U0, Ra
199e caa719       jp Cz, W0x19a7
19a1 cd0d11       call W0x110d
19a4 cd4712       call W0x1247
19a7 c9           ret
19a8 fd36b800     ld R(iy - 72), N0x00
19ac c9           ret
19ad fdcbb846     bit U0, R(iy - 72)
19b1 c2ba19       jp Cnz, W0x19ba
19b4 cdf918       call W0x18f9
19b7 c30a1a       jp W0x1a0a
19ba 212101       ld Phl, W0x0121
19bd cb56         bit U2, R(hl)
19bf c2d919       jp Cnz, W0x19d9
19c2 cda819       call W0x19a8
19c5 cd0d11       call W0x110d
19c8 211f01       ld Phl, W0x011f
19cb 060a         ld Rb, N0x0a
19cd 7e           ld Ra, R(hl)
19ce feff         Acp N0xff
19d0 c2c819       jp Cnz, W0x19c8
19d3 23           inc Phl
19d4 10f7         djnz D$ - 7
19d6 c30a1a       jp W0x1a0a
19d9 3afa00       ld a, (W0x00fa)
19dc fe00         Acp N0x00
19de c20a1a       jp Cnz, W0x1a0a
19e1 3a4801       ld a, (W0x0148)
19e4 fe00         Acp N0x00
19e6 c2fb19       jp Cnz, W0x19fb
19e9 3c           inc Ra
19ea 324801       ld (W0x0148), a
19ed 11e03a       ld Pde, W0x3ae0
19f0 cde820       call W0x20e8
19f3 3ec8         ld Ra, N0xc8
19f5 32fa00       ld (W0x00fa), a
19f8 c30a1a       jp W0x1a0a
19fb 3d           dec Ra
19fc 324801       ld (W0x0148), a
19ff 11e849       ld Pde, W0x49e8
1a02 cde820       call W0x20e8
1a05 3ec8         ld Ra, N0xc8
1a07 32fa00       ld (W0x00fa), a
1a0a fdcbb846     bit U0, R(iy - 72)
1a0e c2211a       jp Cnz, W0x1a21
1a11 3a1101       ld a, (W0x0111)
1a14 fe00         Acp N0x00
1a16 c2211a       jp Cnz, W0x1a21
1a19 fd36b700     ld R(iy - 73), N0x00
1a1d fd363101     ld R(iy + 49), N0x01
1a21 fdcb3146     bit U0, R(iy + 49)
1a25 caad19       jp Cz, W0x19ad
1a28 21e730       ld Phl, W0x30e7
1a2b cd8228       call W0x2882
1a2e c9           ret
1a2f cd8c17       call W0x178c
1a32 3e01         ld Ra, N0x01
1a34 328300       ld (W0x0083), a
1a37 327700       ld (W0x0077), a
1a3a 3e3f         ld Ra, N0x3f
1a3c 320d01       ld (W0x010d), a
1a3f cdad19       call W0x19ad
1a42 fd361501     ld R(iy + 21), N0x01
1a46 fd363200     ld R(iy + 50), N0x00
1a4a cd0812       call W0x1208
1a4d fdcbb746     bit U0, R(iy - 73)
1a51 ca5c1a       jp Cz, W0x1a5c
1a54 fd36c400     ld R(iy - 60), N0x00
1a58 fd36c301     ld R(iy - 61), N0x01
1a5c 3a8300       ld a, (W0x0083)
1a5f c640         Aadd a, N0x40
1a61 324cb8       ld (W0xb84c), a
1a64 3a8400       ld a, (W0x0084)
1a67 c631         Aadd a, N0x31
1a69 324eb8       ld (W0xb84e), a
1a6c 213cb8       ld Phl, W0xb83c
1a6f cd3321       call W0x2133
1a72 3e00         ld Ra, N0x00
1a74 320d01       ld (W0x010d), a
1a77 fd36a901     ld R(iy - 87), N0x01
1a7b c9           ret
1a7c 00           nop
1a7d 3e01         ld Ra, N0x01
1a7f 321c01       ld (W0x011c), a
1a82 3e00         ld Ra, N0x00
1a84 327c1a       ld (W0x1a7c), a
1a87 cda817       call W0x17a8
1a8a fd363100     ld R(iy + 49), N0x00
1a8e fdcbb846     bit U0, R(iy - 72)
1a92 caa31a       jp Cz, W0x1aa3
1a95 11e849       ld Pde, W0x49e8
1a98 cde820       call W0x20e8
1a9b 3e01         ld Ra, N0x01
1a9d 324801       ld (W0x0148), a
1aa0 c3a91a       jp W0x1aa9
1aa3 cd5517       call W0x1755
1aa6 cd0d11       call W0x110d
1aa9 fd363300     ld R(iy + 51), N0x00
1aad fd363201     ld R(iy + 50), N0x01
1ab1 fdcb3346     bit U0, R(iy + 51)
1ab5 cab11a       jp Cz, W0x1ab1
1ab8 3e01         ld Ra, N0x01
1aba 327c1a       ld (W0x1a7c), a
1abd fd362e00     ld R(iy + 46), N0x00
1ac1 fd363000     ld R(iy + 48), N0x00
1ac5 fd362f00     ld R(iy + 47), N0x00
1ac9 c9           ret
1aca 3afa00       ld a, (W0x00fa)
1acd fe00         Acp N0x00
1acf 2803         jr Cz, D$ + 5
1ad1 fd353a       dec R(iy + 58)
1ad4 3e00         ld Ra, N0x00
1ad6 320d01       ld (W0x010d), a
1ad9 320e01       ld (W0x010e), a
1adc cddf1f       call W0x1fdf
1adf cda71f       call W0x1fa7
1ae2 cd2720       call W0x2027
1ae5 3a4901       ld a, (W0x0149)
1ae8 fe00         Acp N0x00
1aea caf61a       jp Cz, W0x1af6
1aed 3a0801       ld a, (W0x0108)
1af0 320701       ld (W0x0107), a
1af3 cd9529       call W0x2995
1af6 fd7e32       ld Ra, R(iy + 50)
1af9 fe01         Acp N0x01
1afb 2004         jr Cnz, D$ + 6
1afd cdc318       call W0x18c3
1b00 c9           ret
1b01 fd7e32       ld Ra, R(iy + 50)
1b04 fe00         Acp N0x00
1b06 cc7d11       call Cz, W0x117d
1b09 c9           ret
1b0a cdd113       call W0x13d1
1b0d cde211       call W0x11e2
1b10 cd3d17       call W0x173d
1b13 cdaf16       call W0x16af
1b16 cd1214       call W0x1412
1b19 3e00         ld Ra, N0x00
1b1b 32c900       ld (W0x00c9), a
1b1e 32ca00       ld (W0x00ca), a
1b21 32c500       ld (W0x00c5), a
1b24 32c600       ld (W0x00c6), a
1b27 cd060f       call W0x0f06
1b2a fd361500     ld R(iy + 21), N0x00
1b2e cd0812       call W0x1208
1b31 cdee14       call W0x14ee
1b34 c9           ret
1b35 2136b8       ld Phl, W0xb836
1b38 1137b8       ld Pde, W0xb837
1b3b 010500       ld Pbc, W0x0005
1b3e 3630         ld R(hl), N0x30
1b40 edb0         Lldir
1b42 3e01         ld Ra, N0x01
1b44 324501       ld (W0x0145), a
1b47 3d           dec Ra
1b48 327200       ld (W0x0072), a
1b4b 327500       ld (W0x0075), a
1b4e fd36c203     ld R(iy - 62), N0x03
1b52 218500       ld Phl, W0x0085
1b55 117c00       ld Pde, W0x007c
1b58 0606         ld Rb, N0x06
1b5a 3e00         ld Ra, N0x00
1b5c 3600         ld R(hl), N0x00
1b5e 2c           inc Rl
1b5f 12           ld (Pde), a
1b60 1c           inc Re
1b61 10f9         djnz D$ - 5
1b63 218200       ld Phl, W0x0082
1b66 11a000       ld Pde, W0x00a0
1b69 010900       ld Pbc, W0x0009
1b6c edb0         Lldir
1b6e 218200       ld Phl, W0x0082
1b71 119100       ld Pde, W0x0091
1b74 010900       ld Pbc, W0x0009
1b77 edb0         Lldir
1b79 eb           ex de, hl
1b7a 010600       ld Pbc, W0x0006
1b7d edb0         Lldir
1b7f c9           ret
1b80 fd35c2       dec R(iy - 62)
1b83 fdcbb246     bit U0, R(iy - 78)
1b87 c2981b       jp Cnz, W0x1b98
1b8a 218200       ld Phl, W0x0082
1b8d 119100       ld Pde, W0x0091
1b90 010f00       ld Pbc, W0x000f
1b93 edb0         Lldir
1b95 c3a31b       jp W0x1ba3
1b98 218200       ld Phl, W0x0082
1b9b 11a000       ld Pde, W0x00a0
1b9e 010f00       ld Pbc, W0x000f
1ba1 edb0         Lldir
1ba3 fdcbb346     bit U0, R(iy - 77)
1ba7 caca1b       jp Cz, W0x1bca
1baa fdcbb246     bit U0, R(iy - 78)
1bae c2bf1b       jp Cnz, W0x1bbf
1bb1 3aa000       ld a, (W0x00a0)
1bb4 fe00         Acp N0x00
1bb6 caca1b       jp Cz, W0x1bca
1bb9 fd34b2       inc R(iy - 78)
1bbc c3ca1b       jp W0x1bca
1bbf 3a9100       ld a, (W0x0091)
1bc2 fe00         Acp N0x00
1bc4 caca1b       jp Cz, W0x1bca
1bc7 fd35b2       dec R(iy - 78)
1bca fdcbb246     bit U0, R(iy - 78)
1bce c2df1b       jp Cnz, W0x1bdf
1bd1 219100       ld Phl, W0x0091
1bd4 118200       ld Pde, W0x0082
1bd7 010f00       ld Pbc, W0x000f
1bda edb0         Lldir
1bdc c3ea1b       jp W0x1bea
1bdf 21a000       ld Phl, W0x00a0
1be2 118200       ld Pde, W0x0082
1be5 010f00       ld Pbc, W0x000f
1be8 edb0         Lldir
1bea 3a8200       ld a, (W0x0082)
1bed fe00         Acp N0x00
1bef c2fe1b       jp Cnz, W0x1bfe
1bf2 fd36b501     ld R(iy - 75), N0x01
1bf6 fd36c203     ld R(iy - 62), N0x03
1bfa fd36b200     ld R(iy - 78), N0x00
1bfe c9           ret
1bff 3e01         ld Ra, N0x01
1c01 323901       ld (W0x0139), a
1c04 323a01       ld (W0x013a), a
1c07 3e0e         ld Ra, N0x0e
1c09 323801       ld (W0x0138), a
1c0c 3e00         ld Ra, N0x00
1c0e 324001       ld (W0x0140), a
1c11 3e01         ld Ra, N0x01
1c13 323501       ld (W0x0135), a
1c16 323601       ld (W0x0136), a
1c19 323701       ld (W0x0137), a
1c1c 0e04         ld Rc, N0x04
1c1e 79           ld Ra, Rc
1c1f c5           push Gbc
1c20 fd8635       Aadd a, R(iy + 53)
1c23 323f01       ld (W0x013f), a
1c26 3e03         ld Ra, N0x03
1c28 32d900       ld (W0x00d9), a
1c2b 3e0f         ld Ra, N0x0f
1c2d 323a01       ld (W0x013a), a
1c30 3e01         ld Ra, N0x01
1c32 324f01       ld (W0x014f), a
1c35 323701       ld (W0x0137), a
1c38 325001       ld (W0x0150), a
1c3b 0600         ld Rb, N0x00
1c3d 10fe         djnz D$ + 0
1c3f c1           pop Gbc
1c40 0d           dec Rc
1c41 20db         jr Cnz, D$ - 35
1c43 af           Axor Ra
1c44 323f01       ld (W0x013f), a
1c47 324001       ld (W0x0140), a
1c4a 324f01       ld (W0x014f), a
1c4d 3e01         ld Ra, N0x01
1c4f 323a01       ld (W0x013a), a
1c52 323701       ld (W0x0137), a
1c55 c9           ret
1c56 fd36b600     ld R(iy - 74), N0x00
1c5a 118b00       ld Pde, W0x008b
1c5d 2136b8       ld Phl, W0xb836
1c60 0606         ld Rb, N0x06
1c62 1a           ld a, (Pde)
1c63 13           inc Pde
1c64 be           Acp R(hl)
1c65 23           inc Phl
1c66 ca721c       jp Cz, W0x1c72
1c69 0601         ld Rb, N0x01
1c6b d2721c       jp Cnc, W0x1c72
1c6e fd36b601     ld R(iy - 74), N0x01
1c72 10ee         djnz D$ - 16
1c74 fdcbb646     bit U0, R(iy - 74)
1c78 ca861c       jp Cz, W0x1c86
1c7b 2136b8       ld Phl, W0xb836
1c7e 118b00       ld Pde, W0x008b
1c81 010600       ld Pbc, W0x0006
1c84 edb0         Lldir
1c86 c9           ret
1c87 219a00       ld Phl, W0x009a
1c8a 1115b8       ld Pde, W0xb815
1c8d 010600       ld Pbc, W0x0006
1c90 edb0         Lldir
1c92 21a900       ld Phl, W0x00a9
1c95 1121b8       ld Pde, W0xb821
1c98 010600       ld Pbc, W0x0006
1c9b edb0         Lldir
1c9d 0606         ld Rb, N0x06
1c9f 219400       ld Phl, W0x0094
1ca2 1101b8       ld Pde, W0xb801
1ca5 7e           ld Ra, R(hl)
1ca6 c630         Aadd a, N0x30
1ca8 12           ld (Pde), a
1ca9 13           inc Pde
1caa 23           inc Phl
1cab 10f8         djnz D$ - 6
1cad 0606         ld Rb, N0x06
1caf 21a300       ld Phl, W0x00a3
1cb2 110db8       ld Pde, W0xb80d
1cb5 7e           ld Ra, R(hl)
1cb6 c630         Aadd a, N0x30
1cb8 12           ld (Pde), a
1cb9 13           inc Pde
1cba 23           inc Phl
1cbb 10f8         djnz D$ - 6
1cbd c9           ret
1cbe fd5ec3       ld Re, R(iy - 61)
1cc1 cb23         Osla Re
1cc3 213e30       ld Phl, W0x303e
1cc6 1600         ld Rd, N0x00
1cc8 19           add Phl, Pde
1cc9 7e           ld Ra, R(hl)
1cca fe15         Acp N0x15
1ccc c2dc1c       jp Cnz, W0x1cdc
1ccf 3a8400       ld a, (W0x0084)
1cd2 fe04         Acp N0x04
1cd4 cada1c       jp Cz, W0x1cda
1cd7 fd34c4       inc R(iy - 60)
1cda 3e01         ld Ra, N0x01
1cdc 328300       ld (W0x0083), a
1cdf c9           ret
1ce0 fd7ef4       ld Ra, R(iy - 12)
1ce3 fdb6f5       Aor R(iy - 11)
1ce6 fdb6f6       Aor R(iy - 10)
1ce9 ca241d       jp Cz, W0x1d24
1cec 217c00       ld Phl, W0x007c
1cef 117d00       ld Pde, W0x007d
1cf2 010500       ld Pbc, W0x0005
1cf5 3600         ld R(hl), N0x00
1cf7 edb0         Lldir
1cf9 3a8400       ld a, (W0x0084)
1cfc 3c           inc Ra
1cfd 328100       ld (W0x0081), a
1d00 3e00         ld Ra, N0x00
1d02 326900       ld (W0x0069), a
1d05 32f500       ld (W0x00f5), a
1d08 cd9c08       call W0x089c
1d0b cdc008       call W0x08c0
1d0e cd1908       call W0x0819
1d11 cd4008       call W0x0840
1d14 cdff1b       call W0x1bff
1d17 fd3435       inc R(iy + 53)
1d1a fdcba946     bit U0, R(iy - 87)
1d1e ca081d       jp Cz, W0x1d08
1d21 cd5512       call W0x1255
1d24 cdbe1c       call W0x1cbe
1d27 c9           ret
1d28 214000       ld Phl, W0x0040
1d2b 114100       ld Pde, W0x0041
1d2e 01a501       ld Pbc, W0x01a5
1d31 3600         ld R(hl), N0x00
1d33 edb0         Lldir
1d35 c9           ret
1d36 cd561c       call W0x1c56
1d39 cd801b       call W0x1b80
1d3c fdcbb546     bit U0, R(iy - 75)
1d40 ca4e1d       jp Cz, W0x1d4e
1d43 3e00         ld Ra, N0x00
1d45 328300       ld (W0x0083), a
1d48 328400       ld (W0x0084), a
1d4b cd871c       call W0x1c87
1d4e c9           ret
1d4f fd36b001     ld R(iy - 80), N0x01
1d53 fd36a000     ld R(iy - 96), N0x00
1d57 fdcbb446     bit U0, R(iy - 76)
1d5b ca641d       jp Cz, W0x1d64
1d5e cde01c       call W0x1ce0
1d61 c3741d       jp W0x1d74
1d64 fdcbbb46     bit U0, R(iy - 69)
1d68 ca711d       jp Cz, W0x1d71
1d6b cdbe1c       call W0x1cbe
1d6e c3741d       jp W0x1d74
1d71 cd361d       call W0x1d36
1d74 fdcbb746     bit U0, R(iy - 73)
1d78 c2ad1d       jp Cnz, W0x1dad
1d7b 3a7200       ld a, (W0x0072)
1d7e c631         Aadd a, N0x31
1d80 3243b8       ld (W0xb843), a
1d83 3a8200       ld a, (W0x0082)
1d86 c630         Aadd a, N0x30
1d88 3246b8       ld (W0xb846), a
1d8b 3a8200       ld a, (W0x0082)
1d8e fe01         Acp N0x01
1d90 c2981d       jp Cnz, W0x1d98
1d93 3e41         ld Ra, N0x41
1d95 c39a1d       jp W0x1d9a
1d98 3e45         ld Ra, N0x45
1d9a 3249b8       ld (W0xb849), a
1d9d 3a8300       ld a, (W0x0083)
1da0 c640         Aadd a, N0x40
1da2 324cb8       ld (W0xb84c), a
1da5 3a8400       ld a, (W0x0084)
1da8 c631         Aadd a, N0x31
1daa 324eb8       ld (W0xb84e), a
1dad c9           ret
1dae cd4a13       call W0x134a
1db1 fdcba946     bit U0, R(iy - 87)
1db5 caae1d       jp Cz, W0x1dae
1db8 cd0812       call W0x1208
1dbb cd4f1d       call W0x1d4f
1dbe cda50c       call W0x0ca5
1dc1 c9           ret
1dc2 3e00         ld Ra, N0x00
1dc4 32f700       ld (W0x00f7), a
1dc7 32f800       ld (W0x00f8), a
1dca 32f600       ld (W0x00f6), a
1dcd 3af600       ld a, (W0x00f6)
1dd0 fe00         Acp N0x00
1dd2 c2011e       jp Cnz, W0x1e01
1dd5 fd5e37       ld Re, R(iy + 55)
1dd8 1600         ld Rd, N0x00
1dda 210e67       ld Phl, W0x670e
1ddd 19           add Phl, Pde
1dde 7e           ld Ra, R(hl)
1ddf 32f600       ld (W0x00f6), a
1de2 e60f         Aand N0x0f
1de4 325e00       ld (W0x005e), a
1de7 c2ee1d       jp Cnz, W0x1dee
1dea 3c           inc Ra
1deb 32f800       ld (W0x00f8), a
1dee fdcb363e     Osrl R(iy + 54)
1df2 fdcb363e     Osrl R(iy + 54)
1df6 fdcb363e     Osrl R(iy + 54)
1dfa fdcb363e     Osrl R(iy + 54)
1dfe fd3437       inc R(iy + 55)
1e01 3a1101       ld a, (W0x0111)
1e04 fe00         Acp N0x00
1e06 c20d1e       jp Cnz, W0x1e0d
1e09 fd363801     ld R(iy + 56), N0x01
1e0d fdcb3846     bit U0, R(iy + 56)
1e11 c21d1e       jp Cnz, W0x1e1d
1e14 cd4a13       call W0x134a
1e17 fd3536       dec R(iy + 54)
1e1a c3cd1d       jp W0x1dcd
1e1d cd0812       call W0x1208
1e20 fdcbb446     bit U0, R(iy - 76)
1e24 ca2a1e       jp Cz, W0x1e2a
1e27 cd4f1d       call W0x1d4f
1e2a fd36c300     ld R(iy - 61), N0x00
1e2e c9           ret
1e2f 3a8300       ld a, (W0x0083)
1e32 fe00         Acp N0x00
1e34 c2431e       jp Cnz, W0x1e43
1e37 cd7d1a       call W0x1a7d
1e3a cd2f1a       call W0x1a2f
1e3d cd351b       call W0x1b35
1e40 c35d1e       jp W0x1e5d
1e43 cd0a1b       call W0x1b0a
1e46 fdcbb746     bit U0, R(iy - 73)
1e4a ca531e       jp Cz, W0x1e53
1e4d cdc21d       call W0x1dc2
1e50 c3561e       jp W0x1e56
1e53 cdae1d       call W0x1dae
1e56 fd364800     ld R(iy + 72), N0x00
1e5a cd8a15       call W0x158a
1e5d c9           ret
1e5e 214b68       ld Phl, W0x684b
1e61 1100b8       ld Pde, W0xb800
1e64 011400       ld Pbc, W0x0014
1e67 edb0         Lldir
1e69 215f68       ld Phl, W0x685f
1e6c 1114b8       ld Pde, W0xb814
1e6f 011400       ld Pbc, W0x0014
1e72 edb0         Lldir
1e74 218768       ld Phl, W0x6887
1e77 113cb8       ld Pde, W0xb83c
1e7a 011400       ld Pbc, W0x0014
1e7d edb0         Lldir
1e7f 2128b8       ld Phl, W0xb828
1e82 1129b8       ld Pde, W0xb829
1e85 3640         ld R(hl), N0x40
1e87 011300       ld Pbc, W0x0013
1e8a edb0         Lldir
1e8c 3e5c         ld Ra, N0x5c
1e8e 322bb8       ld (W0xb82b), a
1e91 c9           ret
1e92 3e00         ld Ra, N0x00
1e94 320701       ld (W0x0107), a
1e97 320801       ld (W0x0108), a
1e9a 32c300       ld (W0x00c3), a
1e9d 32c400       ld (W0x00c4), a
1ea0 32c700       ld (W0x00c7), a
1ea3 32c800       ld (W0x00c8), a
1ea6 328300       ld (W0x0083), a
1ea9 328400       ld (W0x0084), a
1eac 32b100       ld (W0x00b1), a
1eaf 324901       ld (W0x0149), a
1eb2 320d01       ld (W0x010d), a
1eb5 322901       ld (W0x0129), a
1eb8 322a01       ld (W0x012a), a
1ebb 3c           inc Ra
1ebc 32ed00       ld (W0x00ed), a
1ebf 327700       ld (W0x0077), a
1ec2 327800       ld (W0x0078), a
1ec5 321101       ld (W0x0111), a
1ec8 321201       ld (W0x0112), a
1ecb 324501       ld (W0x0145), a
1ece 321c01       ld (W0x011c), a
1ed1 321801       ld (W0x0118), a
1ed4 321d01       ld (W0x011d), a
1ed7 3e03         ld Ra, N0x03
1ed9 324701       ld (W0x0147), a
1edc 3e0f         ld Ra, N0x0f
1ede 320e01       ld (W0x010e), a
1ee1 320f01       ld (W0x010f), a
1ee4 321001       ld (W0x0110), a
1ee7 3eff         ld Ra, N0xff
1ee9 326d00       ld (W0x006d), a
1eec 32f200       ld (W0x00f2), a
1eef 2130a1       ld Phl, W0xa130
1ef2 224000       ld (W0x0040), Phl
1ef5 fdcb3946     bit U0, R(iy + 57)
1ef9 ca351f       jp Cz, W0x1f35
1efc 219a00       ld Phl, W0x009a
1eff 119b00       ld Pde, W0x009b
1f02 010500       ld Pbc, W0x0005
1f05 3630         ld R(hl), N0x30
1f07 edb0         Lldir
1f09 21a900       ld Phl, W0x00a9
1f0c 11aa00       ld Pde, W0x00aa
1f0f 010500       ld Pbc, W0x0005
1f12 3630         ld R(hl), N0x30
1f14 edb0         Lldir
1f16 218b00       ld Phl, W0x008b
1f19 118c00       ld Pde, W0x008c
1f1c 010500       ld Pbc, W0x0005
1f1f 3630         ld R(hl), N0x30
1f21 edb0         Lldir
1f23 3e00         ld Ra, N0x00
1f25 32f900       ld (W0x00f9), a
1f28 327300       ld (W0x0073), a
1f2b ed5f         ld a, r
1f2d fd7799       ld R(iy - 103), Ra
1f30 eeaa         Axor N0xaa
1f32 fd779a       ld R(iy - 102), Ra
1f35 cd270e       call W0x0e27
1f38 cd5e1e       call W0x1e5e
1f3b cda327       call W0x27a3
1f3e cd0812       call W0x1208
1f41 c9           ret
1f42 312da0       ld Psp, W0xa02d
1f45 fd21c000     ld Piy, W0x00c0
1f49 cd921e       call W0x1e92
1f4c cd2f1e       call W0x1e2f
1f4f c34c1f       jp W0x1f4c
1f52 f3           di
1f53 cd281d       call W0x1d28
1f56 cd7728       call W0x2877
1f59 2100c0       ld Phl, W0xc000
1f5c 223301       ld (W0x0133), Phl
1f5f 3e01         ld Ra, N0x01
1f61 32f900       ld (W0x00f9), a
1f64 c3421f       jp W0x1f42
1f67 f5           push Gaf
1f68 c5           push Gbc
1f69 d5           push Gde
1f6a e5           push Ghl
1f6b f5           push Gaf
1f6c 0a           ld a, (Pbc)
1f6d d620         Asub N0x20
1f6f 87           Aadd a, Ra
1f70 110031       ld Pde, W0x3100
1f73 cdf102       call W0x02f1
1f76 cd0a03       call W0x030a
1f79 23           inc Phl
1f7a 23           inc Phl
1f7b f5           push Gaf
1f7c 7c           ld Ra, Rh
1f7d fec8         Acp N0xc8
1f7f da851f       jp Cc, W0x1f85
1f82 d608         Asub N0x08
1f84 67           ld Rh, Ra
1f85 f1           pop Gaf
1f86 3c           inc Ra
1f87 110031       ld Pde, W0x3100
1f8a cdf102       call W0x02f1
1f8d cd0a03       call W0x030a
1f90 23           inc Phl
1f91 23           inc Phl
1f92 f5           push Gaf
1f93 7c           ld Ra, Rh
1f94 fec8         Acp N0xc8
1f96 da9c1f       jp Cc, W0x1f9c
1f99 d608         Asub N0x08
1f9b 67           ld Rh, Ra
1f9c f1           pop Gaf
1f9d 03           inc Pbc
1f9e f1           pop Gaf
1f9f 3d           dec Ra
1fa0 20c9         jr Cnz, D$ - 53
1fa2 e1           pop Ghl
1fa3 d1           pop Gde
1fa4 c1           pop Gbc
1fa5 f1           pop Gaf
1fa6 c9           ret
1fa7 f5           push Gaf
1fa8 e5           push Ghl
1fa9 212101       ld Phl, W0x0121
1fac cb7e         bit U7, R(hl)
1fae 2012         jr Cnz, D$ + 20
1fb0 cb6e         bit U5, R(hl)
1fb2 200e         jr Cnz, D$ + 16
1fb4 212701       ld Phl, W0x0127
1fb7 cb56         bit U2, R(hl)
1fb9 2007         jr Cnz, D$ + 9
1fbb 3e06         ld Ra, N0x06
1fbd 320e01       ld (W0x010e), a
1fc0 181a         jr D$ + 28
1fc2 212701       ld Phl, W0x0127
1fc5 cb56         bit U2, R(hl)
1fc7 2007         jr Cnz, D$ + 9
1fc9 3e1c         ld Ra, N0x1c
1fcb 320d01       ld (W0x010d), a
1fce 180c         jr D$ + 14
1fd0 212401       ld Phl, W0x0124
1fd3 cb7e         bit U7, R(hl)
1fd5 2005         jr Cnz, D$ + 7
1fd7 3e21         ld Ra, N0x21
1fd9 320d01       ld (W0x010d), a
1fdc e1           pop Ghl
1fdd f1           pop Gaf
1fde c9           ret
1fdf e5           push Ghl
1fe0 c5           push Gbc
1fe1 d5           push Gde
1fe2 f5           push Gaf
1fe3 211f01       ld Phl, W0x011f
1fe6 010ef4       ld Pbc, W0xf40e
1fe9 ed49         out (c), Rc
1feb 06f6         ld Rb, N0xf6
1fed ed78         in Ra, (c)
1fef e630         Aand N0x30
1ff1 4f           ld Rc, Ra
1ff2 f6c0         Aor N0xc0
1ff4 ed79         out (c), Ra
1ff6 ed49         out (c), Rc
1ff8 04           inc Rb
1ff9 3e92         ld Ra, N0x92
1ffb ed79         out (c), Ra
1ffd c5           push Gbc
1ffe cbf1         set U6, Rc
2000 06f6         ld Rb, N0xf6
2002 ed49         out (c), Rc
2004 79           ld Ra, Rc
2005 e6f0         Aand N0xf0
2007 06f6         ld Rb, N0xf6
2009 ed79         out (c), Ra
200b 06f4         ld Rb, N0xf4
200d ed50         in Rd, (c)
200f 72           ld R(hl), Rd
2010 23           inc Phl
2011 3c           inc Ra
2012 57           ld Rd, Ra
2013 e60f         Aand N0x0f
2015 fe0a         Acp N0x0a
2017 7a           ld Ra, Rd
2018 20ed         jr Cnz, D$ - 17
201a c1           pop Gbc
201b 3e82         ld Ra, N0x82
201d ed79         out (c), Ra
201f 05           dec Rb
2020 ed49         out (c), Rc
2022 f1           pop Gaf
2023 d1           pop Gde
2024 c1           pop Gbc
2025 e1           pop Ghl
2026 c9           ret
2027 211c01       ld Phl, W0x011c
202a cb46         bit U0, R(hl)
202c ca3220       jp Cz, W0x2032
202f c3ab20       jp W0x20ab
2032 fdcbb946     bit U0, R(iy - 71)
2036 ca4320       jp Cz, W0x2043
2039 fdcbb246     bit U0, R(iy - 78)
203d ca4320       jp Cz, W0x2043
2040 c37720       jp W0x2077
2043 3e0f         ld Ra, N0x0f
2045 212801       ld Phl, W0x0128
2048 cb46         bit U0, R(hl)
204a c24f20       jp Cnz, W0x204f
204d cb87         res U0, Ra
204f cb4e         bit U1, R(hl)
2051 c25620       jp Cnz, W0x2056
2054 cb8f         res U1, Ra
2056 cb56         bit U2, R(hl)
2058 c25d20       jp Cnz, W0x205d
205b cb97         res U2, Ra
205d cb5e         bit U3, R(hl)
205f c26420       jp Cnz, W0x2064
2062 cb9f         res U3, Ra
2064 320f01       ld (W0x010f), a
2067 cb66         bit U4, R(hl)
2069 c27120       jp Cnz, W0x2071
206c 3e00         ld Ra, N0x00
206e c37320       jp W0x2073
2071 3e01         ld Ra, N0x01
2073 321101       ld (W0x0111), a
2076 c9           ret
2077 3e0f         ld Ra, N0x0f
2079 212501       ld Phl, W0x0125
207c cb46         bit U0, R(hl)
207e c28320       jp Cnz, W0x2083
2081 cb87         res U0, Ra
2083 cb4e         bit U1, R(hl)
2085 c28a20       jp Cnz, W0x208a
2088 cb8f         res U1, Ra
208a cb56         bit U2, R(hl)
208c c29120       jp Cnz, W0x2091
208f cb97         res U2, Ra
2091 cb5e         bit U3, R(hl)
2093 c29820       jp Cnz, W0x2098
2096 cb9f         res U3, Ra
2098 320f01       ld (W0x010f), a
209b cb66         bit U4, R(hl)
209d c2a520       jp Cnz, W0x20a5
20a0 3e00         ld Ra, N0x00
20a2 c3a720       jp W0x20a7
20a5 3e01         ld Ra, N0x01
20a7 321101       ld (W0x0111), a
20aa c9           ret
20ab 3e0f         ld Ra, N0x0f
20ad 212201       ld Phl, W0x0122
20b0 cb66         bit U4, R(hl)
20b2 c2b720       jp Cnz, W0x20b7
20b5 cb87         res U0, Ra
20b7 cb76         bit U6, R(hl)
20b9 c2be20       jp Cnz, W0x20be
20bc cb8f         res U1, Ra
20be 212701       ld Phl, W0x0127
20c1 cb7e         bit U7, R(hl)
20c3 c2c820       jp Cnz, W0x20c8
20c6 cb97         res U2, Ra
20c8 212601       ld Phl, W0x0126
20cb cb7e         bit U7, R(hl)
20cd c2d220       jp Cnz, W0x20d2
20d0 cb9f         res U3, Ra
20d2 320f01       ld (W0x010f), a
20d5 212101       ld Phl, W0x0121
20d8 cb6e         bit U5, R(hl)
20da c2e220       jp Cnz, W0x20e2
20dd 3e00         ld Ra, N0x00
20df c3e420       jp W0x20e4
20e2 3e01         ld Ra, N0x01
20e4 321101       ld (W0x0111), a
20e7 c9           ret
20e8 e5           push Ghl
20e9 d5           push Gde
20ea c5           push Gbc
20eb f5           push Gaf
20ec d5           push Gde
20ed 11f005       ld Pde, W0x05f0
20f0 2a3301       ld Phl, (W0x0133)
20f3 19           add Phl, Pde
20f4 7c           ld Ra, Rh
20f5 fec8         Acp N0xc8
20f7 dafd20       jp Cc, W0x20fd
20fa d608         Asub N0x08
20fc 67           ld Rh, Ra
20fd d1           pop Gde
20fe 0608         ld Rb, N0x08
2100 0ec8         ld Rc, N0xc8
2102 c5           push Gbc
2103 e5           push Ghl
2104 06f0         ld Rb, N0xf0
2106 1a           ld a, (Pde)
2107 77           ld R(hl), Ra
2108 23           inc Phl
2109 13           inc Pde
210a 1a           ld a, (Pde)
210b 77           ld R(hl), Ra
210c 13           inc Pde
210d 23           inc Phl
210e 7c           ld Ra, Rh
210f b9           Acp Rc
2110 fa1621       jp Cm, W0x2116
2113 d608         Asub N0x08
2115 67           ld Rh, Ra
2116 10ee         djnz D$ - 16
2118 e1           pop Ghl
2119 c1           pop Gbc
211a 7c           ld Ra, Rh
211b c608         Aadd a, N0x08
211d 67           ld Rh, Ra
211e 79           ld Ra, Rc
211f c608         Aadd a, N0x08
2121 4f           ld Rc, Ra
2122 10de         djnz D$ - 32
2124 f1           pop Gaf
2125 c1           pop Gbc
2126 d1           pop Gde
2127 e1           pop Ghl
2128 c9           ret
2129 3a3221       ld a, (W0x2132)
212c 323121       ld (W0x2131), a
212f a7           Aand Ra
2130 c9           ret
2131 00           nop
2132 00           nop
2133 221301       ld (W0x0113), Phl
2136 223001       ld (W0x0130), Phl
2139 c9           ret
213a 3a2a01       ld a, (W0x012a)
213d 3d           dec Ra
213e 322a01       ld (W0x012a), a
2141 2a3301       ld Phl, (W0x0133)
2144 222b01       ld (W0x012b), Phl
2147 11b0ff       ld Pde, W0xffb0
214a 19           add Phl, Pde
214b 7c           ld Ra, Rh
214c fec0         Acp N0xc0
214e 3003         jr Cnc, D$ + 5
2150 c608         Aadd a, N0x08
2152 67           ld Rh, Ra
2153 223301       ld (W0x0133), Phl
2156 2a4000       ld Phl, (W0x0040)
2159 19           add Phl, Pde
215a 224000       ld (W0x0040), Phl
215d 222d01       ld (W0x012d), Phl
2160 cd3726       call W0x2637
2163 c9           ret
2164 3a2a01       ld a, (W0x012a)
2167 3c           inc Ra
2168 322a01       ld (W0x012a), a
216b 2a3301       ld Phl, (W0x0133)
216e 115000       ld Pde, W0x0050
2171 19           add Phl, Pde
2172 7c           ld Ra, Rh
2173 fec8         Acp N0xc8
2175 da7b21       jp Cc, W0x217b
2178 d608         Asub N0x08
217a 67           ld Rh, Ra
217b 223301       ld (W0x0133), Phl
217e 118007       ld Pde, W0x0780
2181 19           add Phl, Pde
2182 7c           ld Ra, Rh
2183 fec8         Acp N0xc8
2185 da8b21       jp Cc, W0x218b
2188 d608         Asub N0x08
218a 67           ld Rh, Ra
218b 222b01       ld (W0x012b), Phl
218e 2a4000       ld Phl, (W0x0040)
2191 115000       ld Pde, W0x0050
2194 19           add Phl, Pde
2195 224000       ld (W0x0040), Phl
2198 113007       ld Pde, W0x0730
219b 19           add Phl, Pde
219c 222d01       ld (W0x012d), Phl
219f cd3726       call W0x2637
21a2 c9           ret
21a3 3a2901       ld a, (W0x0129)
21a6 3c           inc Ra
21a7 322901       ld (W0x0129), a
21aa 2a3301       ld Phl, (W0x0133)
21ad 23           inc Phl
21ae 23           inc Phl
21af 7c           ld Ra, Rh
21b0 fec8         Acp N0xc8
21b2 dab821       jp Cc, W0x21b8
21b5 d608         Asub N0x08
21b7 67           ld Rh, Ra
21b8 223301       ld (W0x0133), Phl
21bb 119e00       ld Pde, W0x009e
21be 19           add Phl, Pde
21bf 7c           ld Ra, Rh
21c0 fec8         Acp N0xc8
21c2 dac821       jp Cc, W0x21c8
21c5 d608         Asub N0x08
21c7 67           ld Rh, Ra
21c8 222b01       ld (W0x012b), Phl
21cb 2a4000       ld Phl, (W0x0040)
21ce 23           inc Phl
21cf 224000       ld (W0x0040), Phl
21d2 112700       ld Pde, W0x0027
21d5 19           add Phl, Pde
21d6 222d01       ld (W0x012d), Phl
21d9 cddb25       call W0x25db
21dc c9           ret
21dd 3a2901       ld a, (W0x0129)
21e0 3d           dec Ra
21e1 322901       ld (W0x0129), a
21e4 2a3301       ld Phl, (W0x0133)
21e7 2b           dec Phl
21e8 2b           dec Phl
21e9 7c           ld Ra, Rh
21ea fec0         Acp N0xc0
21ec d2f221       jp Cnc, W0x21f2
21ef c608         Aadd a, N0x08
21f1 67           ld Rh, Ra
21f2 223301       ld (W0x0133), Phl
21f5 115000       ld Pde, W0x0050
21f8 19           add Phl, Pde
21f9 7c           ld Ra, Rh
21fa fec8         Acp N0xc8
21fc 3803         jr Cc, D$ + 5
21fe d608         Asub N0x08
2200 67           ld Rh, Ra
2201 222b01       ld (W0x012b), Phl
2204 2a4000       ld Phl, (W0x0040)
2207 2b           dec Phl
2208 224000       ld (W0x0040), Phl
220b 222d01       ld (W0x012d), Phl
220e cddb25       call W0x25db
2211 c9           ret
2212 3a4901       ld a, (W0x0149)
2215 fe00         Acp N0x00
2217 c8           ret Cz
2218 cd2921       call W0x2129
221b c0           ret Cnz
221c cd3a21       call W0x213a
221f 0680         ld Rb, N0x80
2221 10fe         djnz D$ + 0
2223 cd0c23       call W0x230c
2226 cdff22       call W0x22ff
2229 2a3301       ld Phl, (W0x0133)
222c cde022       call W0x22e0
222f 3e05         ld Ra, N0x05
2231 323201       ld (W0x0132), a
2234 3e00         ld Ra, N0x00
2236 322f01       ld (W0x012f), a
2239 320801       ld (W0x0108), a
223c cdfd08       call W0x08fd
223f c9           ret
2240 3a4901       ld a, (W0x0149)
2243 fe00         Acp N0x00
2245 c8           ret Cz
2246 cd2921       call W0x2129
2249 c0           ret Cnz
224a cd6421       call W0x2164
224d 2a3301       ld Phl, (W0x0133)
2250 cde022       call W0x22e0
2253 cdff22       call W0x22ff
2256 cd0c23       call W0x230c
2259 3e03         ld Ra, N0x03
225b 323201       ld (W0x0132), a
225e 3e00         ld Ra, N0x00
2260 322f01       ld (W0x012f), a
2263 320801       ld (W0x0108), a
2266 cdfd08       call W0x08fd
2269 c9           ret
226a 3a4901       ld a, (W0x0149)
226d fe00         Acp N0x00
226f c8           ret Cz
2270 cd2921       call W0x2129
2273 c0           ret Cnz
2274 cddd21       call W0x21dd
2277 2a3301       ld Phl, (W0x0133)
227a cde022       call W0x22e0
227d cdff22       call W0x22ff
2280 cda425       call W0x25a4
2283 3e03         ld Ra, N0x03
2285 323201       ld (W0x0132), a
2288 3e00         ld Ra, N0x00
228a 322f01       ld (W0x012f), a
228d 320801       ld (W0x0108), a
2290 cdfd08       call W0x08fd
2293 c9           ret
2294 3a4901       ld a, (W0x0149)
2297 fe00         Acp N0x00
2299 c8           ret Cz
229a cd2921       call W0x2129
229d c0           ret Cnz
229e cda321       call W0x21a3
22a1 2a3301       ld Phl, (W0x0133)
22a4 cde022       call W0x22e0
22a7 cdff22       call W0x22ff
22aa cda425       call W0x25a4
22ad 3e03         ld Ra, N0x03
22af 323201       ld (W0x0132), a
22b2 3e00         ld Ra, N0x00
22b4 322f01       ld (W0x012f), a
22b7 320801       ld (W0x0108), a
22ba cdfd08       call W0x08fd
22bd c9           ret
22be c5           push Gbc
22bf 06bc         ld Rb, N0xbc
22c1 3e0d         ld Ra, N0x0d
22c3 ed79         out (c), Ra
22c5 06bf         ld Rb, N0xbf
22c7 ed78         in Ra, (c)
22c9 cb27         Osla Ra
22cb f5           push Gaf
22cc 6f           ld Rl, Ra
22cd 06bc         ld Rb, N0xbc
22cf 3e0c         ld Ra, N0x0c
22d1 ed79         out (c), Ra
22d3 06bf         ld Rb, N0xbf
22d5 f1           pop Gaf
22d6 ed78         in Ra, (c)
22d8 17           rla
22d9 e607         Aand N0x07
22db f6c0         Aor N0xc0
22dd 67           ld Rh, Ra
22de c1           pop Gbc
22df c9           ret
22e0 c5           push Gbc
22e1 06bc         ld Rb, N0xbc
22e3 3e0c         ld Ra, N0x0c
22e5 ed79         out (c), Ra
22e7 04           inc Rb
22e8 7c           ld Ra, Rh
22e9 cb3f         Osrl Ra
22eb f5           push Gaf
22ec e607         Aand N0x07
22ee f630         Aor N0x30
22f0 ed79         out (c), Ra
22f2 05           dec Rb
22f3 3e0d         ld Ra, N0x0d
22f5 ed79         out (c), Ra
22f7 04           inc Rb
22f8 f1           pop Gaf
22f9 7d           ld Ra, Rl
22fa 1f           rra
22fb ed79         out (c), Ra
22fd c1           pop Gbc
22fe c9           ret
22ff e5           push Ghl
2300 d5           push Gde
2301 c5           push Gbc
2302 f5           push Gaf
2303 2a3301       ld Phl, (W0x0133)
2306 116b6f       ld Pde, W0x6f6b
2309 c31623       jp W0x2316
230c e5           push Ghl
230d d5           push Gde
230e c5           push Gbc
230f f5           push Gaf
2310 2a2b01       ld Phl, (W0x012b)
2313 116b6c       ld Pde, W0x6c6b
2316 0608         ld Rb, N0x08
2318 0ec8         ld Rc, N0xc8
231a e5           push Ghl
231b 1a           ld a, (Pde)
231c 77           ld R(hl), Ra
231d 13           inc Pde
231e 23           inc Phl
231f 1a           ld a, (Pde)
2320 77           ld R(hl), Ra
2321 23           inc Phl
2322 13           inc Pde
2323 7c           ld Ra, Rh
2324 b9           Acp Rc
2325 fa2b23       jp Cm, W0x232b
2328 d608         Asub N0x08
232a 67           ld Rh, Ra
232b 1a           ld a, (Pde)
232c 77           ld R(hl), Ra
232d 13           inc Pde
232e 23           inc Phl
232f 1a           ld a, (Pde)
2330 77           ld R(hl), Ra
2331 23           inc Phl
2332 13           inc Pde
2333 7c           ld Ra, Rh
2334 b9           Acp Rc
2335 fa3b23       jp Cm, W0x233b
2338 d608         Asub N0x08
233a 67           ld Rh, Ra
233b 1a           ld a, (Pde)
233c 77           ld R(hl), Ra
233d 13           inc Pde
233e 23           inc Phl
233f 1a           ld a, (Pde)
2340 77           ld R(hl), Ra
2341 23           inc Phl
2342 13           inc Pde
2343 7c           ld Ra, Rh
2344 b9           Acp Rc
2345 fa4b23       jp Cm, W0x234b
2348 d608         Asub N0x08
234a 67           ld Rh, Ra
234b 1a           ld a, (Pde)
234c 77           ld R(hl), Ra
234d 13           inc Pde
234e 23           inc Phl
234f 1a           ld a, (Pde)
2350 77           ld R(hl), Ra
2351 23           inc Phl
2352 13           inc Pde
2353 7c           ld Ra, Rh
2354 b9           Acp Rc
2355 fa5b23       jp Cm, W0x235b
2358 d608         Asub N0x08
235a 67           ld Rh, Ra
235b 1a           ld a, (Pde)
235c 77           ld R(hl), Ra
235d 13           inc Pde
235e 23           inc Phl
235f 1a           ld a, (Pde)
2360 77           ld R(hl), Ra
2361 23           inc Phl
2362 13           inc Pde
2363 7c           ld Ra, Rh
2364 b9           Acp Rc
2365 fa6b23       jp Cm, W0x236b
2368 d608         Asub N0x08
236a 67           ld Rh, Ra
236b 1a           ld a, (Pde)
236c 77           ld R(hl), Ra
236d 13           inc Pde
236e 23           inc Phl
236f 1a           ld a, (Pde)
2370 77           ld R(hl), Ra
2371 23           inc Phl
2372 13           inc Pde
2373 7c           ld Ra, Rh
2374 b9           Acp Rc
2375 fa7b23       jp Cm, W0x237b
2378 d608         Asub N0x08
237a 67           ld Rh, Ra
237b 1a           ld a, (Pde)
237c 77           ld R(hl), Ra
237d 13           inc Pde
237e 23           inc Phl
237f 1a           ld a, (Pde)
2380 77           ld R(hl), Ra
2381 23           inc Phl
2382 13           inc Pde
2383 7c           ld Ra, Rh
2384 b9           Acp Rc
2385 fa8b23       jp Cm, W0x238b
2388 d608         Asub N0x08
238a 67           ld Rh, Ra
238b 1a           ld a, (Pde)
238c 77           ld R(hl), Ra
238d 13           inc Pde
238e 23           inc Phl
238f 1a           ld a, (Pde)
2390 77           ld R(hl), Ra
2391 23           inc Phl
2392 13           inc Pde
2393 7c           ld Ra, Rh
2394 b9           Acp Rc
2395 fa9b23       jp Cm, W0x239b
2398 d608         Asub N0x08
239a 67           ld Rh, Ra
239b 1a           ld a, (Pde)
239c 77           ld R(hl), Ra
239d 13           inc Pde
239e 23           inc Phl
239f 1a           ld a, (Pde)
23a0 77           ld R(hl), Ra
23a1 23           inc Phl
23a2 13           inc Pde
23a3 7c           ld Ra, Rh
23a4 b9           Acp Rc
23a5 faab23       jp Cm, W0x23ab
23a8 d608         Asub N0x08
23aa 67           ld Rh, Ra
23ab 1a           ld a, (Pde)
23ac 77           ld R(hl), Ra
23ad 13           inc Pde
23ae 23           inc Phl
23af 1a           ld a, (Pde)
23b0 77           ld R(hl), Ra
23b1 23           inc Phl
23b2 13           inc Pde
23b3 7c           ld Ra, Rh
23b4 b9           Acp Rc
23b5 fabb23       jp Cm, W0x23bb
23b8 d608         Asub N0x08
23ba 67           ld Rh, Ra
23bb 1a           ld a, (Pde)
23bc 77           ld R(hl), Ra
23bd 13           inc Pde
23be 23           inc Phl
23bf 1a           ld a, (Pde)
23c0 77           ld R(hl), Ra
23c1 23           inc Phl
23c2 13           inc Pde
23c3 7c           ld Ra, Rh
23c4 b9           Acp Rc
23c5 facb23       jp Cm, W0x23cb
23c8 d608         Asub N0x08
23ca 67           ld Rh, Ra
23cb 1a           ld a, (Pde)
23cc 77           ld R(hl), Ra
23cd 13           inc Pde
23ce 23           inc Phl
23cf 1a           ld a, (Pde)
23d0 77           ld R(hl), Ra
23d1 23           inc Phl
23d2 13           inc Pde
23d3 7c           ld Ra, Rh
23d4 b9           Acp Rc
23d5 fadb23       jp Cm, W0x23db
23d8 d608         Asub N0x08
23da 67           ld Rh, Ra
23db 1a           ld a, (Pde)
23dc 77           ld R(hl), Ra
23dd 13           inc Pde
23de 23           inc Phl
23df 1a           ld a, (Pde)
23e0 77           ld R(hl), Ra
23e1 23           inc Phl
23e2 13           inc Pde
23e3 7c           ld Ra, Rh
23e4 b9           Acp Rc
23e5 faeb23       jp Cm, W0x23eb
23e8 d608         Asub N0x08
23ea 67           ld Rh, Ra
23eb 1a           ld a, (Pde)
23ec 77           ld R(hl), Ra
23ed 13           inc Pde
23ee 23           inc Phl
23ef 1a           ld a, (Pde)
23f0 77           ld R(hl), Ra
23f1 23           inc Phl
23f2 13           inc Pde
23f3 7c           ld Ra, Rh
23f4 b9           Acp Rc
23f5 fafb23       jp Cm, W0x23fb
23f8 d608         Asub N0x08
23fa 67           ld Rh, Ra
23fb 1a           ld a, (Pde)
23fc 77           ld R(hl), Ra
23fd 13           inc Pde
23fe 23           inc Phl
23ff 1a           ld a, (Pde)
2400 77           ld R(hl), Ra
2401 23           inc Phl
2402 13           inc Pde
2403 7c           ld Ra, Rh
2404 b9           Acp Rc
2405 fa0b24       jp Cm, W0x240b
2408 d608         Asub N0x08
240a 67           ld Rh, Ra
240b 1a           ld a, (Pde)
240c 77           ld R(hl), Ra
240d 13           inc Pde
240e 23           inc Phl
240f 1a           ld a, (Pde)
2410 77           ld R(hl), Ra
2411 23           inc Phl
2412 13           inc Pde
2413 7c           ld Ra, Rh
2414 b9           Acp Rc
2415 fa1b24       jp Cm, W0x241b
2418 d608         Asub N0x08
241a 67           ld Rh, Ra
241b 1a           ld a, (Pde)
241c 77           ld R(hl), Ra
241d 13           inc Pde
241e 23           inc Phl
241f 1a           ld a, (Pde)
2420 77           ld R(hl), Ra
2421 23           inc Phl
2422 13           inc Pde
2423 7c           ld Ra, Rh
2424 b9           Acp Rc
2425 fa2b24       jp Cm, W0x242b
2428 d608         Asub N0x08
242a 67           ld Rh, Ra
242b 1a           ld a, (Pde)
242c 77           ld R(hl), Ra
242d 13           inc Pde
242e 23           inc Phl
242f 1a           ld a, (Pde)
2430 77           ld R(hl), Ra
2431 23           inc Phl
2432 13           inc Pde
2433 7c           ld Ra, Rh
2434 b9           Acp Rc
2435 fa3b24       jp Cm, W0x243b
2438 d608         Asub N0x08
243a 67           ld Rh, Ra
243b 1a           ld a, (Pde)
243c 77           ld R(hl), Ra
243d 13           inc Pde
243e 23           inc Phl
243f 1a           ld a, (Pde)
2440 77           ld R(hl), Ra
2441 23           inc Phl
2442 13           inc Pde
2443 7c           ld Ra, Rh
2444 b9           Acp Rc
2445 fa4b24       jp Cm, W0x244b
2448 d608         Asub N0x08
244a 67           ld Rh, Ra
244b 1a           ld a, (Pde)
244c 77           ld R(hl), Ra
244d 13           inc Pde
244e 23           inc Phl
244f 1a           ld a, (Pde)
2450 77           ld R(hl), Ra
2451 23           inc Phl
2452 13           inc Pde
2453 7c           ld Ra, Rh
2454 b9           Acp Rc
2455 fa5b24       jp Cm, W0x245b
2458 d608         Asub N0x08
245a 67           ld Rh, Ra
245b 1a           ld a, (Pde)
245c 77           ld R(hl), Ra
245d 13           inc Pde
245e 23           inc Phl
245f 1a           ld a, (Pde)
2460 77           ld R(hl), Ra
2461 23           inc Phl
2462 13           inc Pde
2463 7c           ld Ra, Rh
2464 b9           Acp Rc
2465 fa6b24       jp Cm, W0x246b
2468 d608         Asub N0x08
246a 67           ld Rh, Ra
246b 1a           ld a, (Pde)
246c 77           ld R(hl), Ra
246d 13           inc Pde
246e 23           inc Phl
246f 1a           ld a, (Pde)
2470 77           ld R(hl), Ra
2471 23           inc Phl
2472 13           inc Pde
2473 7c           ld Ra, Rh
2474 b9           Acp Rc
2475 fa7b24       jp Cm, W0x247b
2478 d608         Asub N0x08
247a 67           ld Rh, Ra
247b 1a           ld a, (Pde)
247c 77           ld R(hl), Ra
247d 13           inc Pde
247e 23           inc Phl
247f 1a           ld a, (Pde)
2480 77           ld R(hl), Ra
2481 23           inc Phl
2482 13           inc Pde
2483 7c           ld Ra, Rh
2484 b9           Acp Rc
2485 fa8b24       jp Cm, W0x248b
2488 d608         Asub N0x08
248a 67           ld Rh, Ra
248b 1a           ld a, (Pde)
248c 77           ld R(hl), Ra
248d 13           inc Pde
248e 23           inc Phl
248f 1a           ld a, (Pde)
2490 77           ld R(hl), Ra
2491 23           inc Phl
2492 13           inc Pde
2493 7c           ld Ra, Rh
2494 b9           Acp Rc
2495 fa9b24       jp Cm, W0x249b
2498 d608         Asub N0x08
249a 67           ld Rh, Ra
249b 1a           ld a, (Pde)
249c 77           ld R(hl), Ra
249d 13           inc Pde
249e 23           inc Phl
249f 1a           ld a, (Pde)
24a0 77           ld R(hl), Ra
24a1 23           inc Phl
24a2 13           inc Pde
24a3 7c           ld Ra, Rh
24a4 b9           Acp Rc
24a5 faab24       jp Cm, W0x24ab
24a8 d608         Asub N0x08
24aa 67           ld Rh, Ra
24ab 1a           ld a, (Pde)
24ac 77           ld R(hl), Ra
24ad 13           inc Pde
24ae 23           inc Phl
24af 1a           ld a, (Pde)
24b0 77           ld R(hl), Ra
24b1 23           inc Phl
24b2 13           inc Pde
24b3 7c           ld Ra, Rh
24b4 b9           Acp Rc
24b5 fabb24       jp Cm, W0x24bb
24b8 d608         Asub N0x08
24ba 67           ld Rh, Ra
24bb 1a           ld a, (Pde)
24bc 77           ld R(hl), Ra
24bd 13           inc Pde
24be 23           inc Phl
24bf 1a           ld a, (Pde)
24c0 77           ld R(hl), Ra
24c1 23           inc Phl
24c2 13           inc Pde
24c3 7c           ld Ra, Rh
24c4 b9           Acp Rc
24c5 facb24       jp Cm, W0x24cb
24c8 d608         Asub N0x08
24ca 67           ld Rh, Ra
24cb 1a           ld a, (Pde)
24cc 77           ld R(hl), Ra
24cd 13           inc Pde
24ce 23           inc Phl
24cf 1a           ld a, (Pde)
24d0 77           ld R(hl), Ra
24d1 23           inc Phl
24d2 13           inc Pde
24d3 7c           ld Ra, Rh
24d4 b9           Acp Rc
24d5 fadb24       jp Cm, W0x24db
24d8 d608         Asub N0x08
24da 67           ld Rh, Ra
24db 1a           ld a, (Pde)
24dc 77           ld R(hl), Ra
24dd 13           inc Pde
24de 23           inc Phl
24df 1a           ld a, (Pde)
24e0 77           ld R(hl), Ra
24e1 23           inc Phl
24e2 13           inc Pde
24e3 7c           ld Ra, Rh
24e4 b9           Acp Rc
24e5 faeb24       jp Cm, W0x24eb
24e8 d608         Asub N0x08
24ea 67           ld Rh, Ra
24eb 1a           ld a, (Pde)
24ec 77           ld R(hl), Ra
24ed 13           inc Pde
24ee 23           inc Phl
24ef 1a           ld a, (Pde)
24f0 77           ld R(hl), Ra
24f1 23           inc Phl
24f2 13           inc Pde
24f3 7c           ld Ra, Rh
24f4 b9           Acp Rc
24f5 fafb24       jp Cm, W0x24fb
24f8 d608         Asub N0x08
24fa 67           ld Rh, Ra
24fb 1a           ld a, (Pde)
24fc 77           ld R(hl), Ra
24fd 13           inc Pde
24fe 23           inc Phl
24ff 1a           ld a, (Pde)
2500 77           ld R(hl), Ra
2501 23           inc Phl
2502 13           inc Pde
2503 7c           ld Ra, Rh
2504 b9           Acp Rc
2505 fa0b25       jp Cm, W0x250b
2508 d608         Asub N0x08
250a 67           ld Rh, Ra
250b 1a           ld a, (Pde)
250c 77           ld R(hl), Ra
250d 13           inc Pde
250e 23           inc Phl
250f 1a           ld a, (Pde)
2510 77           ld R(hl), Ra
2511 23           inc Phl
2512 13           inc Pde
2513 7c           ld Ra, Rh
2514 b9           Acp Rc
2515 fa1b25       jp Cm, W0x251b
2518 d608         Asub N0x08
251a 67           ld Rh, Ra
251b 1a           ld a, (Pde)
251c 77           ld R(hl), Ra
251d 13           inc Pde
251e 23           inc Phl
251f 1a           ld a, (Pde)
2520 77           ld R(hl), Ra
2521 23           inc Phl
2522 13           inc Pde
2523 7c           ld Ra, Rh
2524 b9           Acp Rc
2525 fa2b25       jp Cm, W0x252b
2528 d608         Asub N0x08
252a 67           ld Rh, Ra
252b 1a           ld a, (Pde)
252c 77           ld R(hl), Ra
252d 13           inc Pde
252e 23           inc Phl
252f 1a           ld a, (Pde)
2530 77           ld R(hl), Ra
2531 23           inc Phl
2532 13           inc Pde
2533 7c           ld Ra, Rh
2534 b9           Acp Rc
2535 fa3b25       jp Cm, W0x253b
2538 d608         Asub N0x08
253a 67           ld Rh, Ra
253b 1a           ld a, (Pde)
253c 77           ld R(hl), Ra
253d 13           inc Pde
253e 23           inc Phl
253f 1a           ld a, (Pde)
2540 77           ld R(hl), Ra
2541 23           inc Phl
2542 13           inc Pde
2543 7c           ld Ra, Rh
2544 b9           Acp Rc
2545 fa4b25       jp Cm, W0x254b
2548 d608         Asub N0x08
254a 67           ld Rh, Ra
254b 1a           ld a, (Pde)
254c 77           ld R(hl), Ra
254d 13           inc Pde
254e 23           inc Phl
254f 1a           ld a, (Pde)
2550 77           ld R(hl), Ra
2551 23           inc Phl
2552 13           inc Pde
2553 7c           ld Ra, Rh
2554 b9           Acp Rc
2555 fa5b25       jp Cm, W0x255b
2558 d608         Asub N0x08
255a 67           ld Rh, Ra
255b 1a           ld a, (Pde)
255c 77           ld R(hl), Ra
255d 13           inc Pde
255e 23           inc Phl
255f 1a           ld a, (Pde)
2560 77           ld R(hl), Ra
2561 23           inc Phl
2562 13           inc Pde
2563 7c           ld Ra, Rh
2564 b9           Acp Rc
2565 fa6b25       jp Cm, W0x256b
2568 d608         Asub N0x08
256a 67           ld Rh, Ra
256b 1a           ld a, (Pde)
256c 77           ld R(hl), Ra
256d 13           inc Pde
256e 23           inc Phl
256f 1a           ld a, (Pde)
2570 77           ld R(hl), Ra
2571 23           inc Phl
2572 13           inc Pde
2573 7c           ld Ra, Rh
2574 b9           Acp Rc
2575 fa7b25       jp Cm, W0x257b
2578 d608         Asub N0x08
257a 67           ld Rh, Ra
257b 1a           ld a, (Pde)
257c 77           ld R(hl), Ra
257d 13           inc Pde
257e 23           inc Phl
257f 1a           ld a, (Pde)
2580 77           ld R(hl), Ra
2581 23           inc Phl
2582 13           inc Pde
2583 7c           ld Ra, Rh
2584 b9           Acp Rc
2585 fa8b25       jp Cm, W0x258b
2588 d608         Asub N0x08
258a 67           ld Rh, Ra
258b 1a           ld a, (Pde)
258c 77           ld R(hl), Ra
258d 13           inc Pde
258e 23           inc Phl
258f 1a           ld a, (Pde)
2590 77           ld R(hl), Ra
2591 13           inc Pde
2592 e1           pop Ghl
2593 7c           ld Ra, Rh
2594 c608         Aadd a, N0x08
2596 67           ld Rh, Ra
2597 79           ld Ra, Rc
2598 c608         Aadd a, N0x08
259a 4f           ld Rc, Ra
259b 05           dec Rb
259c c21a23       jp Cnz, W0x231a
259f f1           pop Gaf
25a0 c1           pop Gbc
25a1 d1           pop Gde
25a2 e1           pop Ghl
25a3 c9           ret
25a4 e5           push Ghl
25a5 d5           push Gde
25a6 c5           push Gbc
25a7 f5           push Gaf
25a8 2a2b01       ld Phl, (W0x012b)
25ab 116b6c       ld Pde, W0x6c6b
25ae 0618         ld Rb, N0x18
25b0 c5           push Gbc
25b1 0608         ld Rb, N0x08
25b3 48           ld Rc, Rb
25b4 1a           ld a, (Pde)
25b5 77           ld R(hl), Ra
25b6 23           inc Phl
25b7 13           inc Pde
25b8 1a           ld a, (Pde)
25b9 77           ld R(hl), Ra
25ba 13           inc Pde
25bb 2b           dec Phl
25bc 7c           ld Ra, Rh
25bd 81           Aadd a, Rc
25be 67           ld Rh, Ra
25bf 10f3         djnz D$ - 11
25c1 7c           ld Ra, Rh
25c2 d640         Asub N0x40
25c4 67           ld Rh, Ra
25c5 d5           push Gde
25c6 115000       ld Pde, W0x0050
25c9 19           add Phl, Pde
25ca 7c           ld Ra, Rh
25cb fec8         Acp N0xc8
25cd 3803         jr Cc, D$ + 5
25cf d608         Asub N0x08
25d1 67           ld Rh, Ra
25d2 d1           pop Gde
25d3 c1           pop Gbc
25d4 10da         djnz D$ - 36
25d6 f1           pop Gaf
25d7 c1           pop Gbc
25d8 d1           pop Gde
25d9 e1           pop Ghl
25da c9           ret
25db e5           push Ghl
25dc d5           push Gde
25dd c5           push Gbc
25de f5           push Gaf
25df d9           exx
25e0 e5           push Ghl
25e1 d5           push Gde
25e2 c5           push Gbc
25e3 d9           exx
25e4 116b6c       ld Pde, W0x6c6b
25e7 2a2d01       ld Phl, (W0x012d)
25ea 0618         ld Rb, N0x18
25ec d5           push Gde
25ed d9           exx
25ee d1           pop Gde
25ef d9           exx
25f0 7e           ld Ra, R(hl)
25f1 d5           push Gde
25f2 115000       ld Pde, W0x0050
25f5 19           add Phl, Pde
25f6 d1           pop Gde
25f7 d9           exx
25f8 6f           ld Rl, Ra
25f9 3e00         ld Ra, N0x00
25fb cb25         Osla Rl
25fd 17           rla
25fe cb25         Osla Rl
2600 17           rla
2601 cb25         Osla Rl
2603 17           rla
2604 cb25         Osla Rl
2606 17           rla
2607 c62c         Aadd a, N0x2c
2609 67           ld Rh, Ra
260a eda0         Lldi
260c eda0         Lldi
260e eda0         Lldi
2610 eda0         Lldi
2612 eda0         Lldi
2614 eda0         Lldi
2616 eda0         Lldi
2618 eda0         Lldi
261a eda0         Lldi
261c eda0         Lldi
261e eda0         Lldi
2620 eda0         Lldi
2622 eda0         Lldi
2624 eda0         Lldi
2626 eda0         Lldi
2628 eda0         Lldi
262a d9           exx
262b 10c3         djnz D$ - 59
262d d9           exx
262e c1           pop Gbc
262f d1           pop Gde
2630 e1           pop Ghl
2631 d9           exx
2632 f1           pop Gaf
2633 c1           pop Gbc
2634 d1           pop Gde
2635 e1           pop Ghl
2636 c9           ret
2637 e5           push Ghl
2638 d5           push Gde
2639 c5           push Gbc
263a f5           push Gaf
263b d9           exx
263c e5           push Ghl
263d d5           push Gde
263e c5           push Gbc
263f d9           exx
2640 116b6c       ld Pde, W0x6c6b
2643 2a2d01       ld Phl, (W0x012d)
2646 0628         ld Rb, N0x28
2648 d5           push Gde
2649 7e           ld Ra, R(hl)
264a 23           inc Phl
264b d9           exx
264c d1           pop Gde
264d 6f           ld Rl, Ra
264e 3e00         ld Ra, N0x00
2650 cb25         Osla Rl
2652 17           rla
2653 cb25         Osla Rl
2655 17           rla
2656 cb25         Osla Rl
2658 17           rla
2659 cb25         Osla Rl
265b 17           rla
265c c62c         Aadd a, N0x2c
265e 67           ld Rh, Ra
265f eda0         Lldi
2661 eda0         Lldi
2663 e5           push Ghl
2664 214e00       ld Phl, W0x004e
2667 19           add Phl, Pde
2668 eb           ex de, hl
2669 e1           pop Ghl
266a eda0         Lldi
266c eda0         Lldi
266e e5           push Ghl
266f 214e00       ld Phl, W0x004e
2672 19           add Phl, Pde
2673 eb           ex de, hl
2674 e1           pop Ghl
2675 eda0         Lldi
2677 eda0         Lldi
2679 e5           push Ghl
267a 214e00       ld Phl, W0x004e
267d 19           add Phl, Pde
267e eb           ex de, hl
267f e1           pop Ghl
2680 eda0         Lldi
2682 eda0         Lldi
2684 e5           push Ghl
2685 214e00       ld Phl, W0x004e
2688 19           add Phl, Pde
2689 eb           ex de, hl
268a e1           pop Ghl
268b eda0         Lldi
268d eda0         Lldi
268f e5           push Ghl
2690 214e00       ld Phl, W0x004e
2693 19           add Phl, Pde
2694 eb           ex de, hl
2695 e1           pop Ghl
2696 eda0         Lldi
2698 eda0         Lldi
269a e5           push Ghl
269b 214e00       ld Phl, W0x004e
269e 19           add Phl, Pde
269f eb           ex de, hl
26a0 e1           pop Ghl
26a1 eda0         Lldi
26a3 eda0         Lldi
26a5 e5           push Ghl
26a6 214e00       ld Phl, W0x004e
26a9 19           add Phl, Pde
26aa eb           ex de, hl
26ab e1           pop Ghl
26ac eda0         Lldi
26ae eda0         Lldi
26b0 d9           exx
26b1 13           inc Pde
26b2 13           inc Pde
26b3 1093         djnz D$ - 107
26b5 d9           exx
26b6 c1           pop Gbc
26b7 d1           pop Gde
26b8 e1           pop Ghl
26b9 d9           exx
26ba f1           pop Gaf
26bb c1           pop Gbc
26bc d1           pop Gde
26bd e1           pop Ghl
26be c9           ret
26bf e5           push Ghl
26c0 d5           push Gde
26c1 c5           push Gbc
26c2 f5           push Gaf
26c3 d9           exx
26c4 e5           push Ghl
26c5 d5           push Gde
26c6 c5           push Gbc
26c7 d9           exx
26c8 116b6f       ld Pde, W0x6f6b
26cb 2a3001       ld Phl, (W0x0130)
26ce 0614         ld Rb, N0x14
26d0 d5           push Gde
26d1 7e           ld Ra, R(hl)
26d2 d620         Asub N0x20
26d4 87           Aadd a, Ra
26d5 23           inc Phl
26d6 d9           exx
26d7 d1           pop Gde
26d8 6f           ld Rl, Ra
26d9 3e00         ld Ra, N0x00
26db cb25         Osla Rl
26dd 17           rla
26de cb25         Osla Rl
26e0 17           rla
26e1 cb25         Osla Rl
26e3 17           rla
26e4 cb25         Osla Rl
26e6 17           rla
26e7 c631         Aadd a, N0x31
26e9 67           ld Rh, Ra
26ea eda0         Lldi
26ec eda0         Lldi
26ee e5           push Ghl
26ef 214e00       ld Phl, W0x004e
26f2 19           add Phl, Pde
26f3 eb           ex de, hl
26f4 e1           pop Ghl
26f5 eda0         Lldi
26f7 eda0         Lldi
26f9 e5           push Ghl
26fa 214e00       ld Phl, W0x004e
26fd 19           add Phl, Pde
26fe eb           ex de, hl
26ff e1           pop Ghl
2700 eda0         Lldi
2702 eda0         Lldi
2704 e5           push Ghl
2705 214e00       ld Phl, W0x004e
2708 19           add Phl, Pde
2709 eb           ex de, hl
270a e1           pop Ghl
270b eda0         Lldi
270d eda0         Lldi
270f e5           push Ghl
2710 214e00       ld Phl, W0x004e
2713 19           add Phl, Pde
2714 eb           ex de, hl
2715 e1           pop Ghl
2716 eda0         Lldi
2718 eda0         Lldi
271a e5           push Ghl
271b 214e00       ld Phl, W0x004e
271e 19           add Phl, Pde
271f eb           ex de, hl
2720 e1           pop Ghl
2721 eda0         Lldi
2723 eda0         Lldi
2725 e5           push Ghl
2726 214e00       ld Phl, W0x004e
2729 19           add Phl, Pde
272a eb           ex de, hl
272b e1           pop Ghl
272c eda0         Lldi
272e eda0         Lldi
2730 e5           push Ghl
2731 214e00       ld Phl, W0x004e
2734 19           add Phl, Pde
2735 eb           ex de, hl
2736 e1           pop Ghl
2737 eda0         Lldi
2739 eda0         Lldi
273b d9           exx
273c 13           inc Pde
273d 13           inc Pde
273e d5           push Gde
273f d9           exx
2740 d1           pop Gde
2741 eda0         Lldi
2743 eda0         Lldi
2745 e5           push Ghl
2746 214e00       ld Phl, W0x004e
2749 19           add Phl, Pde
274a eb           ex de, hl
274b e1           pop Ghl
274c eda0         Lldi
274e eda0         Lldi
2750 e5           push Ghl
2751 214e00       ld Phl, W0x004e
2754 19           add Phl, Pde
2755 eb           ex de, hl
2756 e1           pop Ghl
2757 eda0         Lldi
2759 eda0         Lldi
275b e5           push Ghl
275c 214e00       ld Phl, W0x004e
275f 19           add Phl, Pde
2760 eb           ex de, hl
2761 e1           pop Ghl
2762 eda0         Lldi
2764 eda0         Lldi
2766 e5           push Ghl
2767 214e00       ld Phl, W0x004e
276a 19           add Phl, Pde
276b eb           ex de, hl
276c e1           pop Ghl
276d eda0         Lldi
276f eda0         Lldi
2771 e5           push Ghl
2772 214e00       ld Phl, W0x004e
2775 19           add Phl, Pde
2776 eb           ex de, hl
2777 e1           pop Ghl
2778 eda0         Lldi
277a eda0         Lldi
277c e5           push Ghl
277d 214e00       ld Phl, W0x004e
2780 19           add Phl, Pde
2781 eb           ex de, hl
2782 e1           pop Ghl
2783 eda0         Lldi
2785 eda0         Lldi
2787 e5           push Ghl
2788 214e00       ld Phl, W0x004e
278b 19           add Phl, Pde
278c eb           ex de, hl
278d e1           pop Ghl
278e eda0         Lldi
2790 eda0         Lldi
2792 d9           exx
2793 13           inc Pde
2794 13           inc Pde
2795 05           dec Rb
2796 c2d026       jp Cnz, W0x26d0
2799 d9           exx
279a c1           pop Gbc
279b d1           pop Gde
279c e1           pop Ghl
279d d9           exx
279e f1           pop Gaf
279f c1           pop Gbc
27a0 d1           pop Gde
27a1 e1           pop Ghl
27a2 c9           ret
27a3 2100bc       ld Phl, W0xbc00
27a6 1101bc       ld Pde, W0xbc01
27a9 010001       ld Pbc, W0x0100
27ac 36bd         ld R(hl), N0xbd
27ae edb0         Lldir
27b0 11bdbd       ld Pde, W0xbdbd
27b3 21c427       ld Phl, W0x27c4
27b6 010400       ld Pbc, W0x0004
27b9 edb0         Lldir
27bb f3           di
27bc 3ebc         ld Ra, N0xbc
27be ed47         ld i, a
27c0 ed5e         im U2
27c2 fb           ei
27c3 c9           ret
27c4 f3           di
27c5 c3c827       jp W0x27c8
27c8 f5           push Gaf
27c9 c5           push Gbc
27ca d5           push Gde
27cb e5           push Ghl
27cc dde5         push Gix
27ce fde5         push Giy
27d0 fd21c000     ld Piy, W0x00c0
27d4 01fff5       ld Pbc, W0xf5ff
27d7 ed78         in Ra, (c)
27d9 e601         Aand N0x01
27db 2805         jr Cz, D$ + 7
27dd 3eff         ld Ra, N0xff
27df 323201       ld (W0x0132), a
27e2 3a3201       ld a, (W0x0132)
27e5 3c           inc Ra
27e6 323201       ld (W0x0132), a
27e9 cd9c28       call W0x289c
27ec 3af200       ld a, (W0x00f2)
27ef fe00         Acp N0x00
27f1 c25728       jp Cnz, W0x2857
27f4 3a2f01       ld a, (W0x012f)
27f7 fe00         Acp N0x00
27f9 ca5728       jp Cz, W0x2857
27fc 3a3201       ld a, (W0x0132)
27ff fe00         Acp N0x00
2801 c21728       jp Cnz, W0x2817
2804 3a2f01       ld a, (W0x012f)
2807 fe01         Acp N0x01
2809 c26228       jp Cnz, W0x2862
280c cd1222       call W0x2212
280f 3e03         ld Ra, N0x03
2811 32d900       ld (W0x00d9), a
2814 c36228       jp W0x2862
2817 fe02         Acp N0x02
2819 c22f28       jp Cnz, W0x282f
281c 3a2f01       ld a, (W0x012f)
281f fe02         Acp N0x02
2821 c26228       jp Cnz, W0x2862
2824 cd4022       call W0x2240
2827 3e03         ld Ra, N0x03
2829 32d900       ld (W0x00d9), a
282c c36228       jp W0x2862
282f fe04         Acp N0x04
2831 c26228       jp Cnz, W0x2862
2834 3a2f01       ld a, (W0x012f)
2837 fe03         Acp N0x03
2839 c24728       jp Cnz, W0x2847
283c cd6a22       call W0x226a
283f 3e03         ld Ra, N0x03
2841 32d900       ld (W0x00d9), a
2844 c36228       jp W0x2862
2847 fe04         Acp N0x04
2849 c26228       jp Cnz, W0x2862
284c cd9422       call W0x2294
284f 3e03         ld Ra, N0x03
2851 32d900       ld (W0x00d9), a
2854 c36228       jp W0x2862
2857 3a3201       ld a, (W0x0132)
285a fe05         Acp N0x05
285c c26228       jp Cnz, W0x2862
285f cdca1a       call W0x1aca
2862 cd8c0f       call W0x0f8c
2865 3a4f01       ld a, (W0x014f)
2868 a7           Aand Ra
2869 c4e00f       call Cnz, W0x0fe0
286c fde1         pop Giy
286e dde1         pop Gix
2870 e1           pop Ghl
2871 d1           pop Gde
2872 c1           pop Gbc
2873 f1           pop Gaf
2874 fb           ei
2875 ed4d         reti
2877 01ff7f       ld Pbc, W0x7fff
287a 3e8c         ld Ra, N0x8c
287c ed79         out (c), Ra
287e cd9c28       call W0x289c
2881 c9           ret
2882 e5           push Ghl
2883 d5           push Gde
2884 c5           push Gbc
2885 f5           push Gaf
2886 3e00         ld Ra, N0x00
2888 01ff7f       ld Pbc, W0x7fff
288b ed79         out (c), Ra
288d 56           ld Rd, R(hl)
288e ed51         out (c), Rd
2890 23           inc Phl
2891 3c           inc Ra
2892 fe10         Acp N0x10
2894 c28b28       jp Cnz, W0x288b
2897 f1           pop Gaf
2898 c1           pop Gbc
2899 d1           pop Gde
289a e1           pop Ghl
289b c9           ret
289c c5           push Gbc
289d f5           push Gaf
289e 01ff7f       ld Pbc, W0x7fff
28a1 3e10         ld Ra, N0x10
28a3 ed79         out (c), Ra
28a5 3e54         ld Ra, N0x54
28a7 ed79         out (c), Ra
28a9 f1           pop Gaf
28aa c1           pop Gbc
28ab c9           ret
28ac 3e00         ld Ra, N0x00
28ae 324a01       ld (W0x014a), a
28b1 324b01       ld (W0x014b), a
28b4 cd7410       call W0x1074
28b7 3a8300       ld a, (W0x0083)
28ba 3d           dec Ra
28bb e8           ret Cpe
28bc f5           push Gaf
28bd 21be2b       ld Phl, W0x2bbe
28c0 119a2b       ld Pde, W0x2b9a
28c3 010e00       ld Pbc, W0x000e
28c6 edb0         Lldir
28c8 2600         ld Rh, N0x00
28ca 6f           ld Rl, Ra
28cb cb25         Osla Rl
28cd 85           Aadd a, Rl
28ce 6f           ld Rl, Ra
28cf 113d69       ld Pde, W0x693d
28d2 19           add Phl, Pde
28d3 e5           push Ghl
28d4 119c2b       ld Pde, W0x2b9c
28d7 010300       ld Pbc, W0x0003
28da edb0         Lldir
28dc d1           pop Gde
28dd 1a           ld a, (Pde)
28de 32a22b       ld (W0x2ba2), a
28e1 32a82b       ld (W0x2ba8), a
28e4 13           inc Pde
28e5 1a           ld a, (Pde)
28e6 32a92b       ld (W0x2ba9), a
28e9 13           inc Pde
28ea 1a           ld a, (Pde)
28eb 32a32b       ld (W0x2ba3), a
28ee 3a9d2b       ld a, (W0x2b9d)
28f1 110300       ld Pde, W0x0003
28f4 217a2b       ld Phl, W0x2b7a
28f7 23           inc Phl
28f8 23           inc Phl
28f9 77           ld R(hl), Ra
28fa 23           inc Phl
28fb 77           ld R(hl), Ra
28fc 19           add Phl, Pde
28fd 77           ld R(hl), Ra
28fe 23           inc Phl
28ff 77           ld R(hl), Ra
2900 23           inc Phl
2901 23           inc Phl
2902 77           ld R(hl), Ra
2903 23           inc Phl
2904 77           ld R(hl), Ra
2905 19           add Phl, Pde
2906 77           ld R(hl), Ra
2907 23           inc Phl
2908 77           ld R(hl), Ra
2909 23           inc Phl
290a 23           inc Phl
290b 77           ld R(hl), Ra
290c 23           inc Phl
290d 77           ld R(hl), Ra
290e 19           add Phl, Pde
290f 77           ld R(hl), Ra
2910 23           inc Phl
2911 77           ld R(hl), Ra
2912 19           add Phl, Pde
2913 77           ld R(hl), Ra
2914 19           add Phl, Pde
2915 77           ld R(hl), Ra
2916 23           inc Phl
2917 77           ld R(hl), Ra
2918 19           add Phl, Pde
2919 77           ld R(hl), Ra
291a f1           pop Gaf
291b 6f           ld Rl, Ra
291c 2600         ld Rh, N0x00
291e 11aa2b       ld Pde, W0x2baa
2921 19           add Phl, Pde
2922 7e           ld Ra, R(hl)
2923 1f           rra
2924 3815         jr Cc, D$ + 23
2926 1f           rra
2927 d0           ret Cnc
2928 3e01         ld Ra, N0x01
292a 324b01       ld (W0x014b), a
292d 21a02b       ld Phl, W0x2ba0
2930 11a12b       ld Pde, W0x2ba1
2933 010300       ld Pbc, W0x0003
2936 3654         ld R(hl), N0x54
2938 edb0         Lldir
293a c9           ret
293b 3e01         ld Ra, N0x01
293d 324a01       ld (W0x014a), a
2940 c9           ret
2941 21a72b       ld Phl, W0x2ba7
2944 11a62b       ld Pde, W0x2ba6
2947 010300       ld Pbc, W0x0003
294a 1a           ld a, (Pde)
294b edb0         Lldir
294d 12           ld (Pde), a
294e c9           ret
294f fdcb3f46     bit U0, R(iy + 63)
2953 c8           ret Cz
2954 3aa42b       ld a, (W0x2ba4)
2957 ee18         Axor N0x18
2959 32a42b       ld (W0x2ba4), a
295c 3aa52b       ld a, (W0x2ba5)
295f ee1a         Axor N0x1a
2961 32a52b       ld (W0x2ba5), a
2964 c9           ret
2965 3a4a01       ld a, (W0x014a)
2968 a7           Aand Ra
2969 c8           ret Cz
296a 21a12b       ld Phl, W0x2ba1
296d 119b2b       ld Pde, W0x2b9b
2970 0602         ld Rb, N0x02
2972 1a           ld a, (Pde)
2973 ee54         Axor N0x54
2975 ae           Axor R(hl)
2976 77           ld R(hl), Ra
2977 23           inc Phl
2978 13           inc Pde
2979 10f7         djnz D$ - 7
297b 13           inc Pde
297c 1a           ld a, (Pde)
297d ee54         Axor N0x54
297f ae           Axor R(hl)
2980 77           ld R(hl), Ra
2981 c9           ret
2982 3a4b01       ld a, (W0x014b)
2985 a7           Aand Ra
2986 c8           ret Cz
2987 21a12b       ld Phl, W0x2ba1
298a 11a02b       ld Pde, W0x2ba0
298d 010300       ld Pbc, W0x0003
2990 1a           ld a, (Pde)
2991 edb0         Lldir
2993 12           ld (Pde), a
2994 c9           ret
2995 214c01       ld Phl, W0x014c
2998 34           inc R(hl)
2999 7e           ld Ra, R(hl)
299a e601         Aand N0x01
299c 2006         jr Cnz, D$ + 8
299e cd4129       call W0x2941
29a1 cd8229       call W0x2982
29a4 3a4c01       ld a, (W0x014c)
29a7 e607         Aand N0x07
29a9 2006         jr Cnz, D$ + 8
29ab cd6529       call W0x2965
29ae cd4f29       call W0x294f
29b1 219a2b       ld Phl, W0x2b9a
29b4 11dc2b       ld Pde, W0x2bdc
29b7 011000       ld Pbc, W0x0010
29ba edb0         Lldir
29bc 3a4501       ld a, (W0x0145)
29bf fe00         Acp N0x00
29c1 cade29       jp Cz, W0x29de
29c4 3a4701       ld a, (W0x0147)
29c7 3d           dec Ra
29c8 324701       ld (W0x0147), a
29cb fe00         Acp N0x00
29cd cad629       jp Cz, W0x29d6
29d0 cd332b       call W0x2b33
29d3 c3de29       jp W0x29de
29d6 3e03         ld Ra, N0x03
29d8 324701       ld (W0x0147), a
29db cd2c2b       call W0x2b2c
29de 01ff7f       ld Pbc, W0x7fff
29e1 21dc2b       ld Phl, W0x2bdc
29e4 3e00         ld Ra, N0x00
29e6 5e           ld Re, R(hl)
29e7 ed79         out (c), Ra
29e9 ed59         out (c), Re
29eb 23           inc Phl
29ec 3c           inc Ra
29ed fe10         Acp N0x10
29ef 20f5         jr Cnz, D$ - 9
29f1 cdb22a       call W0x2ab2
29f4 c9           ret
29f5 3a1b01       ld a, (W0x011b)
29f8 fd341a       inc R(iy + 26)
29fb fdcb1a46     bit U0, R(iy + 26)
29ff 2805         jr Cz, D$ + 7
2a01 c620         Aadd a, N0x20
2a03 321b01       ld (W0x011b), a
2a06 87           Aadd a, Ra
2a07 5f           ld Re, Ra
2a08 3e00         ld Ra, N0x00
2a0a ce00         Aadc a, N0x00
2a0c 57           ld Rd, Ra
2a0d 3a5e00       ld a, (W0x005e)
2a10 fe0f         Acp N0x0f
2a12 ca3a2a       jp Cz, W0x2a3a
2a15 fd361600     ld R(iy + 22), N0x00
2a19 fd361700     ld R(iy + 23), N0x00
2a1d fdcbaa46     bit U0, R(iy - 86)
2a21 c22f2a       jp Cnz, W0x2a2f
2a24 21b059       ld Phl, W0x59b0
2a27 19           add Phl, Pde
2a28 11802e       ld Pde, W0x2e80
2a2b cde32a       call W0x2ae3
2a2e c9           ret
2a2f 21b05b       ld Phl, W0x5bb0
2a32 19           add Phl, Pde
2a33 11802e       ld Pde, W0x2e80
2a36 cde32a       call W0x2ae3
2a39 c9           ret
2a3a 3e00         ld Ra, N0x00
2a3c bb           Acp Re
2a3d c2602a       jp Cnz, W0x2a60
2a40 fd361700     ld R(iy + 23), N0x00
2a44 cdfd03       call W0x03fd
2a47 e603         Aand N0x03
2a49 c2502a       jp Cnz, W0x2a50
2a4c fd361701     ld R(iy + 23), N0x01
2a50 cdfd03       call W0x03fd
2a53 e60f         Aand N0x0f
2a55 c2602a       jp Cnz, W0x2a60
2a58 3e01         ld Ra, N0x01
2a5a fdae16       Axor R(iy + 22)
2a5d 32d600       ld (W0x00d6), a
2a60 fdcb1746     bit U0, R(iy + 23)
2a64 ca852a       jp Cz, W0x2a85
2a67 21cc2b       ld Phl, W0x2bcc
2a6a d5           push Gde
2a6b 7a           ld Ra, Rd
2a6c cb23         Osla Re
2a6e 17           rla
2a6f cb23         Osla Re
2a71 17           rla
2a72 87           Aadd a, Ra
2a73 5f           ld Re, Ra
2a74 1600         ld Rd, N0x00
2a76 19           add Phl, Pde
2a77 7e           ld Ra, R(hl)
2a78 23           inc Phl
2a79 66           ld Rh, R(hl)
2a7a 6f           ld Rl, Ra
2a7b 11802e       ld Pde, W0x2e80
2a7e cde92a       call W0x2ae9
2a81 d1           pop Gde
2a82 c3902a       jp W0x2a90
2a85 21f058       ld Phl, W0x58f0
2a88 d5           push Gde
2a89 11802e       ld Pde, W0x2e80
2a8c cde92a       call W0x2ae9
2a8f d1           pop Gde
2a90 fdcb1646     bit U0, R(iy + 22)
2a94 caa82a       jp Cz, W0x2aa8
2a97 215059       ld Phl, W0x5950
2a9a cb7b         bit U7, Re
2a9c 2803         jr Cz, D$ + 5
2a9e 213059       ld Phl, W0x5930
2aa1 11a02e       ld Pde, W0x2ea0
2aa4 cde92a       call W0x2ae9
2aa7 c9           ret
2aa8 211059       ld Phl, W0x5910
2aab 11a02e       ld Pde, W0x2ea0
2aae cde92a       call W0x2ae9
2ab1 c9           ret
2ab2 cdf529       call W0x29f5
2ab5 fdcb4746     bit U0, R(iy + 71)
2ab9 c8           ret Cz
2aba 3a3121       ld a, (W0x2131)
2abd a7           Aand Ra
2abe c0           ret Cnz
2abf 3a0a01       ld a, (W0x010a)
2ac2 6f           ld Rl, Ra
2ac3 3a0901       ld a, (W0x0109)
2ac6 67           ld Rh, Ra
2ac7 e5           push Ghl
2ac8 3a4d01       ld a, (W0x014d)
2acb 320901       ld (W0x0109), a
2ace 3a4e01       ld a, (W0x014e)
2ad1 320a01       ld (W0x010a), a
2ad4 3e28         ld Ra, N0x28
2ad6 cd0002       call W0x0200
2ad9 e1           pop Ghl
2ada 7d           ld Ra, Rl
2adb 320a01       ld (W0x010a), a
2ade 7c           ld Ra, Rh
2adf 320901       ld (W0x0109), a
2ae2 c9           ret
2ae3 014000       ld Pbc, W0x0040
2ae6 edb0         Lldir
2ae8 c9           ret
2ae9 012000       ld Pbc, W0x0020
2aec edb0         Lldir
2aee c9           ret
2aef 3a7a00       ld a, (W0x007a)
2af2 a7           Aand Ra
2af3 c8           ret Cz
2af4 fe01         Acp N0x01
2af6 2806         jr Cz, D$ + 8
2af8 e60f         Aand N0x0f
2afa c640         Aadd a, N0x40
2afc 1802         jr D$ + 4
2afe 3e54         ld Ra, N0x54
2b00 329a2b       ld (W0x2b9a), a
2b03 329f2b       ld (W0x2b9f), a
2b06 217a00       ld Phl, W0x007a
2b09 35           dec R(hl)
2b0a c9           ret
2b0b 3e54         ld Ra, N0x54
2b0d 329a2b       ld (W0x2b9a), a
2b10 329f2b       ld (W0x2b9f), a
2b13 c9           ret
2b14 3ab100       ld a, (W0x00b1)
2b17 fe01         Acp N0x01
2b19 2005         jr Cnz, D$ + 7
2b1b cd0b2b       call W0x2b0b
2b1e 1807         jr D$ + 9
2b20 e60f         Aand N0x0f
2b22 c640         Aadd a, N0x40
2b24 329f2b       ld (W0x2b9f), a
2b27 21b100       ld Phl, W0x00b1
2b2a 35           dec R(hl)
2b2b c9           ret
2b2c 3a4601       ld a, (W0x0146)
2b2f 3c           inc Ra
2b30 324601       ld (W0x0146), a
2b33 3a4601       ld a, (W0x0146)
2b36 fe01         Acp N0x01
2b38 ca562b       jp Cz, W0x2b56
2b3b fe02         Acp N0x02
2b3d ca622b       jp Cz, W0x2b62
2b40 fe03         Acp N0x03
2b42 ca6e2b       jp Cz, W0x2b6e
2b45 21922b       ld Phl, W0x2b92
2b48 11e22b       ld Pde, W0x2be2
2b4b 010800       ld Pbc, W0x0008
2b4e edb0         Lldir
2b50 3e00         ld Ra, N0x00
2b52 324601       ld (W0x0146), a
2b55 c9           ret
2b56 217a2b       ld Phl, W0x2b7a
2b59 11e22b       ld Pde, W0x2be2
2b5c 010800       ld Pbc, W0x0008
2b5f edb0         Lldir
2b61 c9           ret
2b62 21822b       ld Phl, W0x2b82
2b65 11e22b       ld Pde, W0x2be2
2b68 010800       ld Pbc, W0x0008
2b6b edb0         Lldir
2b6d c9           ret
2b6e 218a2b       ld Phl, W0x2b8a
2b71 11e22b       ld Pde, W0x2be2
2b74 010800       ld Pbc, W0x0008
2b77 edb0         Lldir
2b79 c9           ret
2b7a 54           ld Rd, Rh
2b7b 4b           ld Rc, Re
2b7c 40           ld Rb, Rb
2b7d 40           ld Rb, Rb
2b7e 54           ld Rd, Rh
2b7f 54           ld Rd, Rh
2b80 40           ld Rb, Rb
2b81 40           ld Rb, Rb
2b82 4b           ld Rc, Re
2b83 40           ld Rb, Rb
2b84 40           ld Rb, Rb
2b85 54           ld Rd, Rh
2b86 54           ld Rd, Rh
2b87 40           ld Rb, Rb
2b88 40           ld Rb, Rb
2b89 54           ld Rd, Rh
2b8a 40           ld Rb, Rb
2b8b 40           ld Rb, Rb
2b8c 54           ld Rd, Rh
2b8d 4b           ld Rc, Re
2b8e 40           ld Rb, Rb
2b8f 40           ld Rb, Rb
2b90 54           ld Rd, Rh
2b91 54           ld Rd, Rh
2b92 40           ld Rb, Rb
2b93 54           ld Rd, Rh
2b94 4b           ld Rc, Re
2b95 40           ld Rb, Rb
2b96 40           ld Rb, Rb
2b97 54           ld Rd, Rh
2b98 54           ld Rd, Rh
2b99 40           ld Rb, Rb
2b9a 54           ld Rd, Rh
2b9b 4b           ld Rc, Re
2b9c 4e           ld Rc, R(hl)
2b9d 40           ld Rb, Rb
2b9e 56           ld Rd, R(hl)
2b9f 54           ld Rd, Rh
2ba0 54           ld Rd, Rh
2ba1 54           ld Rd, Rh
2ba2 54           ld Rd, Rh
2ba3 4b           ld Rc, Re
2ba4 4e           ld Rc, R(hl)
2ba5 54           ld Rd, Rh
2ba6 40           ld Rb, Rb
2ba7 56           ld Rd, R(hl)
2ba8 4e           ld Rc, R(hl)
2ba9 4b           ld Rc, Re
2baa 00           nop
2bab 00           nop
2bac 00           nop
2bad 010000       ld Pbc, W0x0000
2bb0 00           nop
2bb1 02           ld (Pbc), a
2bb2 00           nop
2bb3 00           nop
2bb4 00           nop
2bb5 00           nop
2bb6 010102       ld Pbc, W0x0201
2bb9 02           ld (Pbc), a
2bba 010000       ld Pbc, W0x0000
2bbd 02           ld (Pbc), a
2bbe 54           ld Rd, Rh
2bbf 4b           ld Rc, Re
2bc0 40           ld Rb, Rb
2bc1 40           ld Rb, Rb
2bc2 40           ld Rb, Rb
2bc3 54           ld Rd, Rh
2bc4 54           ld Rd, Rh
2bc5 4b           ld Rc, Re
2bc6 40           ld Rb, Rb
2bc7 40           ld Rb, Rb
2bc8 4e           ld Rc, R(hl)
2bc9 54           ld Rd, Rh
2bca 54           ld Rd, Rh
2bcb 4b           ld Rc, Re
2bcc f0           ret Cp
2bcd 58           ld Re, Rb
2bce 70           ld R(hl), Rb
2bcf 59           ld Re, Rc
2bd0 70           ld R(hl), Rb
2bd1 59           ld Re, Rc
2bd2 90           Asub Rb
2bd3 59           ld Re, Rc
2bd4 90           Asub Rb
2bd5 59           ld Re, Rc
2bd6 70           ld R(hl), Rb
2bd7 59           ld Re, Rc
2bd8 70           ld R(hl), Rb
2bd9 59           ld Re, Rc
2bda f0           ret Cp
2bdb 58           ld Re, Rb
2bdc 00           nop
2bdd 00           nop
2bde 00           nop
2bdf 00           nop
2be0 00           nop
2be1 00           nop
2be2 00           nop
2be3 00           nop
2be4 00           nop
2be5 00           nop
2be6 00           nop
2be7 00           nop
2be8 00           nop
2be9 00           nop
2bea 00           nop
2beb 00           nop
2bec 00           nop
2bed 00           nop
2bee 00           nop
2bef 00           nop
2bf0 00           nop
2bf1 00           nop
2bf2 00           nop
2bf3 00           nop
2bf4 00           nop
2bf5 00           nop
2bf6 00           nop
2bf7 00           nop
2bf8 00           nop
2bf9 00           nop
2bfa 00           nop
2bfb 00           nop
2bfc 00           nop
2bfd 00           nop
2bfe 00           nop
2bff 00           nop
2c00 cccccc       call Cz, W0xcccc
2c03 cc8844       call Cz, W0x4488
2c06 88           Aadc a, Rb
2c07 44           ld Rb, Rh
2c08 c8           ret Cz
2c09 44           ld Rb, Rh
2c0a c8           ret Cz
2c0b 44           ld Rb, Rh
2c0c cccccc       call Cz, W0xcccc
2c0f cccccc       call Cz, W0xcccc
2c12 cccc88       call Cz, W0x88cc
2c15 44           ld Rb, Rh
2c16 88           Aadc a, Rb
2c17 44           ld Rb, Rh
2c18 c8           ret Cz
2c19 44           ld Rb, Rh
2c1a c8           ret Cz
2c1b 44           ld Rb, Rh
2c1c cccccc       call Cz, W0xcccc
2c1f cccccc       call Cz, W0xcccc
2c22 cccc88       call Cz, W0x88cc
2c25 44           ld Rb, Rh
2c26 88           Aadc a, Rb
2c27 44           ld Rb, Rh
2c28 c8           ret Cz
2c29 44           ld Rb, Rh
2c2a c8           ret Cz
2c2b 44           ld Rb, Rh
2c2c cccccc       call Cz, W0xcccc
2c2f cccccc       call Cz, W0xcccc
2c32 cccc88       call Cz, W0x88cc
2c35 44           ld Rb, Rh
2c36 88           Aadc a, Rb
2c37 44           ld Rb, Rh
2c38 c8           ret Cz
2c39 44           ld Rb, Rh
2c3a c8           ret Cz
2c3b 44           ld Rb, Rh
2c3c cccccc       call Cz, W0xcccc
2c3f ccc080       call Cz, W0x80c0
2c42 c0           ret Cnz
2c43 80           Aadd a, Rb
2c44 0c           inc Rc
2c45 08           ex af, af'
2c46 00           nop
2c47 00           nop
2c48 40           ld Rb, Rb
2c49 c0           ret Cnz
2c4a 04           inc Rb
2c4b c0           ret Cnz
2c4c 04           inc Rb
2c4d 0c           inc Rc
2c4e 00           nop
2c4f 00           nop
2c50 40           ld Rb, Rb
2c51 c0           ret Cnz
2c52 04           inc Rb
2c53 c0           ret Cnz
2c54 04           inc Rb
2c55 0c           inc Rc
2c56 00           nop
2c57 00           nop
2c58 c0           ret Cnz
2c59 80           Aadd a, Rb
2c5a c0           ret Cnz
2c5b 80           Aadd a, Rb
2c5c 0c           inc Rc
2c5d 08           ex af, af'
2c5e 00           nop
2c5f 00           nop
2c60 c0           ret Cnz
2c61 80           Aadd a, Rb
2c62 c0           ret Cnz
2c63 80           Aadd a, Rb
2c64 0c           inc Rc
2c65 08           ex af, af'
2c66 00           nop
2c67 00           nop
2c68 40           ld Rb, Rb
2c69 c0           ret Cnz
2c6a 04           inc Rb
2c6b c0           ret Cnz
2c6c 04           inc Rb
2c6d 0c           inc Rc
2c6e 00           nop
2c6f 00           nop
2c70 40           ld Rb, Rb
2c71 c0           ret Cnz
2c72 04           inc Rb
2c73 c0           ret Cnz
2c74 04           inc Rb
2c75 0c           inc Rc
2c76 00           nop
2c77 00           nop
2c78 c0           ret Cnz
2c79 80           Aadd a, Rb
2c7a c0           ret Cnz
2c7b 80           Aadd a, Rb
2c7c 0c           inc Rc
2c7d 08           ex af, af'
2c7e 00           nop
2c7f 00           nop
2c80 00           nop
2c81 40           ld Rb, Rb
2c82 00           nop
2c83 91           Asub Rc
2c84 00           nop
2c85 d1           pop Gde
2c86 40           ld Rb, Rb
2c87 3f           ccf
2c88 40           ld Rb, Rb
2c89 ff           rst W0x0038
2c8a 91           Asub Rc
2c8b 33           inc Psp
2c8c d1           pop Gde
2c8d f3           di
2c8e 95           Asub Rl
2c8f 3f           ccf
2c90 80           Aadd a, Rb
2c91 00           nop
2c92 62           ld Rh, Rd
2c93 00           nop
2c94 e2003f       jp Cpo, W0x3f00
2c97 80           Aadd a, Rb
2c98 ff           rst W0x0038
2c99 80           Aadd a, Rb
2c9a 33           inc Psp
2c9b 62           ld Rh, Rd
2c9c f3           di
2c9d e23f6a       jp Cpo, W0x6a3f
2ca0 d5           push Gde
2ca1 ff           rst W0x0038
2ca2 91           Asub Rc
2ca3 33           inc Psp
2ca4 d1           pop Gde
2ca5 f3           di
2ca6 40           ld Rb, Rb
2ca7 3f           ccf
2ca8 40           ld Rb, Rb
2ca9 ff           rst W0x0038
2caa 00           nop
2cab 91           Asub Rc
2cac 00           nop
2cad d1           pop Gde
2cae 00           nop
2caf 40           ld Rb, Rb
2cb0 ff           rst W0x0038
2cb1 ea3362       jp Cpe, W0x6233
2cb4 f3           di
2cb5 e23f80       jp Cpo, W0x803f
2cb8 ff           rst W0x0038
2cb9 80           Aadd a, Rb
2cba 62           ld Rh, Rd
2cbb 00           nop
2cbc e20080       jp Cpo, W0x8000
2cbf 00           nop
2cc0 c0           ret Cnz
2cc1 80           Aadd a, Rb
2cc2 c0           ret Cnz
2cc3 80           Aadd a, Rb
2cc4 0c           inc Rc
2cc5 08           ex af, af'
2cc6 c30340       jp W0x4003
2cc9 c0           ret Cnz
2cca 04           inc Rb
2ccb c0           ret Cnz
2ccc 04           inc Rb
2ccd 0c           inc Rc
2cce 3c           inc Ra
2ccf fc40c0       call Cm, W0xc040
2cd2 04           inc Rb
2cd3 c0           ret Cnz
2cd4 04           inc Rb
2cd5 0c           inc Rc
2cd6 fc3cc0       call Cm, W0xc03c
2cd9 80           Aadd a, Rb
2cda c0           ret Cnz
2cdb 80           Aadd a, Rb
2cdc 0c           inc Rc
2cdd 08           ex af, af'
2cde 03           inc Pbc
2cdf c3c080       jp W0x80c0
2ce2 c0           ret Cnz
2ce3 80           Aadd a, Rb
2ce4 0c           inc Rc
2ce5 08           ex af, af'
2ce6 c30340       jp W0x4003
2ce9 c0           ret Cnz
2cea 04           inc Rb
2ceb c0           ret Cnz
2cec 04           inc Rb
2ced 0c           inc Rc
2cee 3c           inc Ra
2cef fc40c0       call Cm, W0xc040
2cf2 04           inc Rb
2cf3 c0           ret Cnz
2cf4 04           inc Rb
2cf5 0c           inc Rc
2cf6 fc3cc0       call Cm, W0xc03c
2cf9 80           Aadd a, Rb
2cfa c0           ret Cnz
2cfb 80           Aadd a, Rb
2cfc 0c           inc Rc
2cfd 08           ex af, af'
2cfe 03           inc Pbc
2cff c33333       jp W0x3333
2d02 33           inc Psp
2d03 33           inc Psp
2d04 73           ld R(hl), Re
2d05 f3           di
2d06 73           ld R(hl), Re
2d07 f3           di
2d08 73           ld R(hl), Re
2d09 3f           ccf
2d0a 73           ld R(hl), Re
2d0b 3f           ccf
2d0c 73           ld R(hl), Re
2d0d 7f           ld Ra, Ra
2d0e 73           ld R(hl), Re
2d0f 7f           ld Ra, Ra
2d10 33           inc Psp
2d11 33           inc Psp
2d12 33           inc Psp
2d13 33           inc Psp
2d14 f3           di
2d15 b3           Aor Re
2d16 f3           di
2d17 b3           Aor Re
2d18 3f           ccf
2d19 b3           Aor Re
2d1a 3f           ccf
2d1b b3           Aor Re
2d1c bf           Acp Ra
2d1d b3           Aor Re
2d1e bf           Acp Ra
2d1f b3           Aor Re
2d20 73           ld R(hl), Re
2d21 7f           ld Ra, Ra
2d22 73           ld R(hl), Re
2d23 7f           ld Ra, Ra
2d24 73           ld R(hl), Re
2d25 3f           ccf
2d26 73           ld R(hl), Re
2d27 3f           ccf
2d28 73           ld R(hl), Re
2d29 f3           di
2d2a 73           ld R(hl), Re
2d2b f3           di
2d2c 33           inc Psp
2d2d 33           inc Psp
2d2e 33           inc Psp
2d2f 33           inc Psp
2d30 bf           Acp Ra
2d31 b3           Aor Re
2d32 bf           Acp Ra
2d33 b3           Aor Re
2d34 3f           ccf
2d35 b3           Aor Re
2d36 3f           ccf
2d37 b3           Aor Re
2d38 f3           di
2d39 b3           Aor Re
2d3a f3           di
2d3b b3           Aor Re
2d3c 33           inc Psp
2d3d 33           inc Psp
2d3e 33           inc Psp
2d3f 33           inc Psp
2d40 92           Asub Rd
2d41 00           nop
2d42 92           Asub Rd
2d43 00           nop
2d44 0600         ld Rb, N0x00
2d46 0600         ld Rb, N0x00
2d48 0608         ld Rb, N0x08
2d4a e8           ret Cpe
2d4b 80           Aadd a, Rb
2d4c e8           ret Cpe
2d4d c0           ret Cnz
2d4e 00           nop
2d4f 40           ld Rb, Rb
2d50 00           nop
2d51 61           ld Rh, Rc
2d52 00           nop
2d53 61           ld Rh, Rc
2d54 00           nop
2d55 09           add Phl, Pbc
2d56 00           nop
2d57 09           add Phl, Pbc
2d58 04           inc Rb
2d59 09           add Phl, Pbc
2d5a 40           ld Rb, Rb
2d5b d4c0d4       call Cnc, W0xd4c0
2d5e 80           Aadd a, Rb
2d5f 00           nop
2d60 00           nop
2d61 40           ld Rb, Rb
2d62 e8           ret Cpe
2d63 c0           ret Cnz
2d64 e8           ret Cpe
2d65 80           Aadd a, Rb
2d66 0608         ld Rb, N0x08
2d68 0600         ld Rb, N0x00
2d6a 0600         ld Rb, N0x00
2d6c 92           Asub Rd
2d6d 00           nop
2d6e 92           Asub Rd
2d6f 00           nop
2d70 80           Aadd a, Rb
2d71 00           nop
2d72 c0           ret Cnz
2d73 d440d4       call Cnc, W0xd440
2d76 04           inc Rb
2d77 09           add Phl, Pbc
2d78 00           nop
2d79 09           add Phl, Pbc
2d7a 00           nop
2d7b 09           add Phl, Pbc
2d7c 00           nop
2d7d 61           ld Rh, Rc
2d7e 00           nop
2d7f 61           ld Rh, Rc
2d80 304f         jr Cnc, D$ + 81
2d82 3025         jr Cnc, D$ + 39
2d84 3030         jr Cnc, D$ + 50
2d86 1a           ld a, (Pde)
2d87 308f         jr Cnc, D$ - 111
2d89 301a         jr Cnc, D$ + 28
2d8b 3030         jr Cnc, D$ + 50
2d8d 3030         jr Cnc, D$ + 50
2d8f 308f         jr Cnc, D$ - 111
2d91 301a         jr Cnc, D$ + 28
2d93 3030         jr Cnc, D$ + 50
2d95 3030         jr Cnc, D$ + 50
2d97 25           dec Rh
2d98 304f         jr Cnc, D$ + 81
2d9a 3025         jr Cnc, D$ + 39
2d9c 3030         jr Cnc, D$ + 50
2d9e 3030         jr Cnc, D$ + 50
2da0 0f           rrca
2da1 30cf         jr Cnc, D$ - 47
2da3 1a           ld a, (Pde)
2da4 cf           rst W0x0008
2da5 1a           ld a, (Pde)
2da6 0f           rrca
2da7 3030         jr Cnc, D$ + 50
2da9 3030         jr Cnc, D$ + 50
2dab 25           dec Rh
2dac 304f         jr Cnc, D$ + 81
2dae 25           dec Rh
2daf 8a           Aadc a, Rd
2db0 3030         jr Cnc, D$ + 50
2db2 3025         jr Cnc, D$ + 39
2db4 3025         jr Cnc, D$ + 39
2db6 3030         jr Cnc, D$ + 50
2db8 3030         jr Cnc, D$ + 50
2dba 1a           ld a, (Pde)
2dbb 308f         jr Cnc, D$ - 111
2dbd 3045         jr Cnc, D$ + 71
2dbf 1a           ld a, (Pde)
2dc0 00           nop
2dc1 c0           ret Cnz
2dc2 40           ld Rb, Rb
2dc3 c8           ret Cz
2dc4 c490c8       call Cnz, W0xc890
2dc7 64           ld Rh, Rh
2dc8 3064         jr Cnc, D$ + 102
2dca 30cc         jr Cnc, D$ - 50
2dcc 64           ld Rh, Rh
2dcd cccccc       call Cz, W0xcccc
2dd0 80           Aadd a, Rb
2dd1 00           nop
2dd2 c8           ret Cz
2dd3 00           nop
2dd4 c0           ret Cnz
2dd5 80           Aadd a, Rb
2dd6 c8           ret Cz
2dd7 c0           ret Cnz
2dd8 c8           ret Cz
2dd9 c0           ret Cnz
2dda 4c           ld Rc, Rh
2ddb c8           ret Cz
2ddc ccc098       call Cz, W0x98c0
2ddf 60           ld Rh, Rb
2de0 88           Aadc a, Rb
2de1 cccc44       call Cz, W0x44cc
2de4 88           Aadc a, Rb
2de5 cccc44       call Cz, W0x44cc
2de8 cc2098       call Cz, W0x9820
2deb 3010         jr Cnc, D$ + 18
2ded 88           Aadc a, Rb
2dee 00           nop
2def cccc0c       call Cz, W0x0ccc
2df2 cc8ccc       call Cz, W0xcc8c
2df5 cccccc       call Cz, W0xcccc
2df8 cc88cc       call Cz, W0xcc88
2dfb 88           Aadc a, Rb
2dfc cc0008       call Cz, W0x0800
2dff 00           nop
2e00 00           nop
2e01 08           ex af, af'
2e02 0c           inc Rc
2e03 00           nop
2e04 04           inc Rb
2e05 0c           inc Rc
2e06 0c           inc Rc
2e07 04           inc Rb
2e08 08           ex af, af'
2e09 1810         jr D$ + 18
2e0b 08           ex af, af'
2e0c 24           inc Rh
2e0d 0c           inc Rc
2e0e 08           ex af, af'
2e0f 0c           inc Rc
2e10 04           inc Rb
2e11 04           inc Rb
2e12 08           ex af, af'
2e13 04           inc Rb
2e14 04           inc Rb
2e15 08           ex af, af'
2e16 0c           inc Rc
2e17 04           inc Rb
2e18 08           ex af, af'
2e19 0c           inc Rc
2e1a 24           inc Rh
2e1b 08           ex af, af'
2e1c 08           ex af, af'
2e1d 0c           inc Rc
2e1e 0c           inc Rc
2e1f 08           ex af, af'
2e20 04           inc Rb
2e21 0c           inc Rc
2e22 0c           inc Rc
2e23 04           inc Rb
2e24 0c           inc Rc
2e25 08           ex af, af'
2e26 04           inc Rb
2e27 0c           inc Rc
2e28 08           ex af, af'
2e29 08           ex af, af'
2e2a 0c           inc Rc
2e2b 00           nop
2e2c 08           ex af, af'
2e2d 0c           inc Rc
2e2e 04           inc Rb
2e2f 00           nop
2e30 0c           inc Rc
2e31 0c           inc Rc
2e32 0c           inc Rc
2e33 08           ex af, af'
2e34 24           inc Rh
2e35 04           inc Rb
2e36 1024         djnz D$ + 38
2e38 08           ex af, af'
2e39 08           ex af, af'
2e3a 0c           inc Rc
2e3b 04           inc Rb
2e3c 04           inc Rb
2e3d 00           nop
2e3e 08           ex af, af'
2e3f 08           ex af, af'
2e40 00           nop
2e41 00           nop
2e42 00           nop
2e43 00           nop
2e44 f0           ret Cp
2e45 a0           Aand Rb
2e46 00           nop
2e47 00           nop
2e48 00           nop
2e49 00           nop
2e4a 00           nop
2e4b 00           nop
2e4c 50           ld Rd, Rb
2e4d a0           Aand Rb
2e4e 00           nop
2e4f 00           nop
2e50 00           nop
2e51 00           nop
2e52 00           nop
2e53 00           nop
2e54 a0           Aand Rb
2e55 a0           Aand Rb
2e56 00           nop
2e57 00           nop
2e58 00           nop
2e59 00           nop
2e5a 00           nop
2e5b 00           nop
2e5c 50           ld Rd, Rb
2e5d f0           ret Cp
2e5e 00           nop
2e5f 00           nop
2e60 00           nop
2e61 00           nop
2e62 00           nop
2e63 00           nop
2e64 00           nop
2e65 00           nop
2e66 a0           Aand Rb
2e67 f0           ret Cp
2e68 00           nop
2e69 00           nop
2e6a 00           nop
2e6b 00           nop
2e6c 00           nop
2e6d 00           nop
2e6e a0           Aand Rb
2e6f 50           ld Rd, Rb
2e70 00           nop
2e71 00           nop
2e72 00           nop
2e73 00           nop
2e74 00           nop
2e75 00           nop
2e76 00           nop
2e77 f0           ret Cp
2e78 00           nop
2e79 00           nop
2e7a 00           nop
2e7b 00           nop
2e7c 00           nop
2e7d 00           nop
2e7e f0           ret Cp
2e7f a0           Aand Rb
2e80 00           nop
2e81 00           nop
2e82 00           nop
2e83 88           Aadc a, Rb
2e84 00           nop
2e85 cc4444       call Cz, W0x4444
2e88 44           ld Rb, Rh
2e89 44           ld Rb, Rh
2e8a 00           nop
2e8b cc0044       call Cz, W0x4400
2e8e 00           nop
2e8f c0           ret Cnz
2e90 00           nop
2e91 00           nop
2e92 44           ld Rb, Rh
2e93 00           nop
2e94 cc0088       call Cz, W0x8800
2e97 88           Aadc a, Rb
2e98 88           Aadc a, Rb
2e99 88           Aadc a, Rb
2e9a cc0088       call Cz, W0x8800
2e9d 00           nop
2e9e c0           ret Cnz
2e9f 00           nop
2ea0 04           inc Rb
2ea1 40           ld Rb, Rb
2ea2 04           inc Rb
2ea3 44           ld Rb, Rh
2ea4 00           nop
2ea5 40           ld Rb, Rb
2ea6 00           nop
2ea7 44           ld Rb, Rh
2ea8 00           nop
2ea9 48           ld Rc, Rb
2eaa 00           nop
2eab 08           ex af, af'
2eac 00           nop
2ead 08           ex af, af'
2eae 40           ld Rb, Rb
2eaf 80           Aadd a, Rb
2eb0 80           Aadd a, Rb
2eb1 08           ex af, af'
2eb2 88           Aadc a, Rb
2eb3 08           ex af, af'
2eb4 80           Aadd a, Rb
2eb5 00           nop
2eb6 88           Aadc a, Rb
2eb7 00           nop
2eb8 84           Aadd a, Rh
2eb9 00           nop
2eba 04           inc Rb
2ebb 00           nop
2ebc 04           inc Rb
2ebd 00           nop
2ebe 40           ld Rb, Rb
2ebf 80           Aadd a, Rb
2ec0 cccccc       call Cz, W0xcccc
2ec3 cc8800       call Cz, W0x0088
2ec6 88           Aadc a, Rb
2ec7 00           nop
2ec8 88           Aadc a, Rb
2ec9 00           nop
2eca 88           Aadc a, Rb
2ecb 00           nop
2ecc 88           Aadc a, Rb
2ecd 00           nop
2ece 88           Aadc a, Rb
2ecf 00           nop
2ed0 cccccc       call Cz, W0xcccc
2ed3 cc0044       call Cz, W0x4400
2ed6 00           nop
2ed7 44           ld Rb, Rh
2ed8 00           nop
2ed9 44           ld Rb, Rh
2eda 00           nop
2edb 44           ld Rb, Rh
2edc 00           nop
2edd 44           ld Rb, Rh
2ede 00           nop
2edf 44           ld Rb, Rh
2ee0 88           Aadc a, Rb
2ee1 00           nop
2ee2 88           Aadc a, Rb
2ee3 00           nop
2ee4 88           Aadc a, Rb
2ee5 00           nop
2ee6 88           Aadc a, Rb
2ee7 00           nop
2ee8 88           Aadc a, Rb
2ee9 00           nop
2eea 88           Aadc a, Rb
2eeb 00           nop
2eec cccccc       call Cz, W0xcccc
2eef cc0044       call Cz, W0x4400
2ef2 00           nop
2ef3 44           ld Rb, Rh
2ef4 00           nop
2ef5 44           ld Rb, Rh
2ef6 00           nop
2ef7 44           ld Rb, Rh
2ef8 00           nop
2ef9 44           ld Rb, Rh
2efa 00           nop
2efb 44           ld Rb, Rh
2efc cccccc       call Cz, W0xcccc
2eff cc0000       call Cz, W0x0000
2f02 00           nop
2f03 00           nop
2f04 00           nop
2f05 00           nop
2f06 00           nop
2f07 00           nop
2f08 00           nop
2f09 00           nop
2f0a 00           nop
2f0b 00           nop
2f0c 00           nop
2f0d 00           nop
2f0e 00           nop
2f0f 00           nop
2f10 00           nop
2f11 00           nop
2f12 00           nop
2f13 00           nop
2f14 00           nop
2f15 00           nop
2f16 00           nop
2f17 00           nop
2f18 00           nop
2f19 00           nop
2f1a 00           nop
2f1b 00           nop
2f1c 00           nop
2f1d 00           nop
2f1e 00           nop
2f1f 00           nop
2f20 00           nop
2f21 00           nop
2f22 00           nop
2f23 00           nop
2f24 00           nop
2f25 00           nop
2f26 00           nop
2f27 00           nop
2f28 00           nop
2f29 00           nop
2f2a 00           nop
2f2b 00           nop
2f2c 00           nop
2f2d 00           nop
2f2e 00           nop
2f2f 00           nop
2f30 00           nop
2f31 00           nop
2f32 00           nop
2f33 00           nop
2f34 00           nop
2f35 00           nop
2f36 00           nop
2f37 00           nop
2f38 00           nop
2f39 00           nop
2f3a 00           nop
2f3b 00           nop
2f3c 00           nop
2f3d 00           nop
2f3e 00           nop
2f3f 00           nop
2f40 00           nop
2f41 00           nop
2f42 00           nop
2f43 00           nop
2f44 00           nop
2f45 00           nop
2f46 00           nop
2f47 00           nop
2f48 00           nop
2f49 00           nop
2f4a 00           nop
2f4b 00           nop
2f4c 00           nop
2f4d 80           Aadd a, Rb
2f4e 40           ld Rb, Rb
2f4f 00           nop
2f50 00           nop
2f51 00           nop
2f52 00           nop
2f53 00           nop
2f54 00           nop
2f55 00           nop
2f56 00           nop
2f57 00           nop
2f58 00           nop
2f59 00           nop
2f5a 40           ld Rb, Rb
2f5b 00           nop
2f5c 00           nop
2f5d 00           nop
2f5e 80           Aadd a, Rb
2f5f 00           nop
2f60 00           nop
2f61 40           ld Rb, Rb
2f62 00           nop
2f63 00           nop
2f64 00           nop
2f65 80           Aadd a, Rb
2f66 40           ld Rb, Rb
2f67 00           nop
2f68 00           nop
2f69 40           ld Rb, Rb
2f6a 00           nop
2f6b 00           nop
2f6c 00           nop
2f6d 00           nop
2f6e 00           nop
2f6f 00           nop
2f70 00           nop
2f71 80           Aadd a, Rb
2f72 80           Aadd a, Rb
2f73 00           nop
2f74 00           nop
2f75 00           nop
2f76 40           ld Rb, Rb
2f77 00           nop
2f78 80           Aadd a, Rb
2f79 00           nop
2f7a 00           nop
2f7b 00           nop
2f7c 00           nop
2f7d 00           nop
2f7e 00           nop
2f7f 00           nop
2f80 00           nop
2f81 00           nop
2f82 00           nop
2f83 00           nop
2f84 00           nop
2f85 00           nop
2f86 00           nop
2f87 84           Aadd a, Rh
2f88 40           ld Rb, Rb
2f89 08           ex af, af'
2f8a 00           nop
2f8b 04           inc Rb
2f8c 40           ld Rb, Rb
2f8d 08           ex af, af'
2f8e 00           nop
2f8f 04           inc Rb
2f90 00           nop
2f91 00           nop
2f92 00           nop
2f93 00           nop
2f94 80           Aadd a, Rb
2f95 00           nop
2f96 00           nop
2f97 00           nop
2f98 48           ld Rc, Rb
2f99 00           nop
2f9a 04           inc Rb
2f9b 00           nop
2f9c 08           ex af, af'
2f9d 80           Aadd a, Rb
2f9e 0c           inc Rc
2f9f 00           nop
2fa0 00           nop
2fa1 08           ex af, af'
2fa2 00           nop
2fa3 04           inc Rb
2fa4 00           nop
2fa5 80           Aadd a, Rb
2fa6 00           nop
2fa7 04           inc Rb
2fa8 00           nop
2fa9 80           Aadd a, Rb
2faa 00           nop
2fab 00           nop
2fac 00           nop
2fad 00           nop
2fae 00           nop
2faf 00           nop
2fb0 08           ex af, af'
2fb1 00           nop
2fb2 04           inc Rb
2fb3 00           nop
2fb4 00           nop
2fb5 00           nop
2fb6 04           inc Rb
2fb7 80           Aadd a, Rb
2fb8 08           ex af, af'
2fb9 00           nop
2fba c0           ret Cnz
2fbb 00           nop
2fbc 00           nop
2fbd 00           nop
2fbe 00           nop
2fbf 00           nop
2fc0 00           nop
2fc1 00           nop
2fc2 40           ld Rb, Rb
2fc3 00           nop
2fc4 00           nop
2fc5 40           ld Rb, Rb
2fc6 40           ld Rb, Rb
2fc7 08           ex af, af'
2fc8 00           nop
2fc9 0c           inc Rc
2fca 84           Aadd a, Rh
2fcb 00           nop
2fcc 04           inc Rb
2fcd 0c           inc Rc
2fce 80           Aadd a, Rb
2fcf 08           ex af, af'
2fd0 00           nop
2fd1 00           nop
2fd2 c0           ret Cnz
2fd3 00           nop
2fd4 0c           inc Rc
2fd5 40           ld Rb, Rb
2fd6 04           inc Rb
2fd7 08           ex af, af'
2fd8 08           ex af, af'
2fd9 40           ld Rb, Rb
2fda 0c           inc Rc
2fdb 08           ex af, af'
2fdc 04           inc Rb
2fdd 00           nop
2fde 08           ex af, af'
2fdf 08           ex af, af'
2fe0 04           inc Rb
2fe1 0c           inc Rc
2fe2 00           nop
2fe3 08           ex af, af'
2fe4 00           nop
2fe5 08           ex af, af'
2fe6 04           inc Rb
2fe7 04           inc Rb
2fe8 08           ex af, af'
2fe9 08           ex af, af'
2fea 80           Aadd a, Rb
2feb 08           ex af, af'
2fec 04           inc Rb
2fed 40           ld Rb, Rb
2fee 40           ld Rb, Rb
2fef 00           nop
2ff0 04           inc Rb
2ff1 40           ld Rb, Rb
2ff2 00           nop
2ff3 08           ex af, af'
2ff4 08           ex af, af'
2ff5 00           nop
2ff6 04           inc Rb
2ff7 80           Aadd a, Rb
2ff8 08           ex af, af'
2ff9 00           nop
2ffa 04           inc Rb
2ffb 00           nop
2ffc 80           Aadd a, Rb
2ffd 80           Aadd a, Rb
2ffe 00           nop
2fff 00           nop
3000 9c           Asbc a, Rh
3001 4e           ld Rc, R(hl)
3002 9c           Asbc a, Rh
3003 4e           ld Rc, R(hl)
3004 dccedc       call Cc, W0xdcce
3007 ce89         Aadc a, N0x89
3009 66           ld Rh, R(hl)
300a 89           Aadc a, Rc
300b 66           ld Rh, R(hl)
300c c9           ret
300d e6c9         Aand N0xc9
300f e628         Aand N0x28
3011 012a51       ld Pbc, W0x512a
3014 51           ld Rd, Rc
3015 2801         jr Cz, D$ + 3
3017 2a0128       ld Phl, (W0x2801)
301a 2a5109       ld Phl, (W0x0951)
301d 09           add Phl, Pbc
301e 09           add Phl, Pbc
301f 1f           rra
3020 00           nop
3021 1e1f         ld Re, N0x1f
3023 1d           dec Re
3024 1e1c         ld Re, N0x1c
3026 1d           dec Re
3027 1b           dec Pde
3028 1c           inc Re
3029 24           inc Rh
302a 14           inc Rd
302b 23           inc Phl
302c 24           inc Rh
302d 222321       ld (W0x2123), Phl
3030 222021       ld (W0x2120), Phl
3033 2838         jr Cz, D$ + 58
3035 27           daa
3036 2826         jr Cz, D$ + 40
3038 27           daa
3039 25           dec Rh
303a 2614         ld Rh, N0x14
303c 0a           ld a, (Pbc)
303d 05           dec Rb
303e 02           ld (Pbc), a
303f 00           nop
3040 02           ld (Pbc), a
3041 00           nop
3042 03           inc Pbc
3043 00           nop
3044 04           inc Rb
3045 00           nop
3046 110006       ld Pde, W0x0600
3049 00           nop
304a 07           rlca
304b 00           nop
304c 08           ex af, af'
304d 00           nop
304e 12           ld (Pde), a
304f 00           nop
3050 0a           ld a, (Pbc)
3051 00           nop
3052 0b           dec Pbc
3053 00           nop
3054 0c           inc Rc
3055 00           nop
3056 13           inc Pde
3057 00           nop
3058 0e00         ld Rc, N0x00
305a 0f           rrca
305b 00           nop
305c 1000         djnz D$ + 2
305e 14           inc Rd
305f 00           nop
3060 05           dec Rb
3061 010901       ld Pbc, W0x0109
3064 0d           dec Rc
3065 011501       ld Pbc, W0x0115
3068 010000       ld Pbc, W0x0000
306b 00           nop
306c 00           nop
306d 00           nop
306e 010100       ld Pbc, W0x0001
3071 00           nop
3072 010000       ld Pbc, W0x0000
3075 0101d8       ld Pbc, W0xd801
3078 ff           rst W0x0038
3079 d9           exx
307a ff           rst W0x0038
307b 010029       ld Pbc, W0x2900
307e 00           nop
307f 2800         jr Cz, D$ + 2
3081 27           daa
3082 00           nop
3083 ff           rst W0x0038
3084 ff           rst W0x0038
3085 d7           rst W0x0010
3086 ff           rst W0x0038
3087 54           ld Rd, Rh
3088 4b           ld Rc, Re
3089 55           ld Rd, Rl
308a 44           ld Rb, Rh
308b 53           ld Rd, Re
308c 4c           ld Rc, Rh
308d 54           ld Rd, Rh
308e 54           ld Rd, Rh
308f 57           ld Rd, Ra
3090 57           ld Rd, Ra
3091 57           ld Rd, Ra
3092 57           ld Rd, Ra
3093 57           ld Rd, Ra
3094 57           ld Rd, Ra
3095 55           ld Rd, Rl
3096 4b           ld Rc, Re
3097 54           ld Rd, Rh
3098 4b           ld Rc, Re
3099 55           ld Rd, Rl
309a 44           ld Rb, Rh
309b 53           ld Rd, Re
309c 4c           ld Rc, Rh
309d 54           ld Rd, Rh
309e 54           ld Rd, Rh
309f 57           ld Rd, Ra
30a0 57           ld Rd, Ra
30a1 57           ld Rd, Ra
30a2 57           ld Rd, Ra
30a3 55           ld Rd, Rl
30a4 4b           ld Rc, Re
30a5 57           ld Rd, Ra
30a6 57           ld Rd, Ra
30a7 54           ld Rd, Rh
30a8 4b           ld Rc, Re
30a9 55           ld Rd, Rl
30aa 44           ld Rb, Rh
30ab 53           ld Rd, Re
30ac 4c           ld Rc, Rh
30ad 54           ld Rd, Rh
30ae 54           ld Rd, Rh
30af 57           ld Rd, Ra
30b0 57           ld Rd, Ra
30b1 55           ld Rd, Rl
30b2 4b           ld Rc, Re
30b3 57           ld Rd, Ra
30b4 57           ld Rd, Ra
30b5 57           ld Rd, Ra
30b6 57           ld Rd, Ra
30b7 54           ld Rd, Rh
30b8 4b           ld Rc, Re
30b9 55           ld Rd, Rl
30ba 44           ld Rb, Rh
30bb 53           ld Rd, Re
30bc 4c           ld Rc, Rh
30bd 54           ld Rd, Rh
30be 54           ld Rd, Rh
30bf 55           ld Rd, Rl
30c0 4b           ld Rc, Re
30c1 57           ld Rd, Ra
30c2 57           ld Rd, Ra
30c3 57           ld Rd, Ra
30c4 57           ld Rd, Ra
30c5 57           ld Rd, Ra
30c6 57           ld Rd, Ra
30c7 54           ld Rd, Rh
30c8 4b           ld Rc, Re
30c9 4e           ld Rc, R(hl)
30ca 40           ld Rb, Rb
30cb 56           ld Rd, R(hl)
30cc 54           ld Rd, Rh
30cd 54           ld Rd, Rh
30ce 40           ld Rb, Rb
30cf 4b           ld Rc, Re
30d0 4e           ld Rc, R(hl)
30d1 4e           ld Rc, R(hl)
30d2 54           ld Rd, Rh
30d3 40           ld Rb, Rb
30d4 54           ld Rd, Rh
30d5 4b           ld Rc, Re
30d6 4e           ld Rc, R(hl)
30d7 54           ld Rd, Rh
30d8 4b           ld Rc, Re
30d9 55           ld Rd, Rl
30da 5c           ld Re, Rh
30db 58           ld Re, Rb
30dc 5d           ld Re, Rl
30dd 4c           ld Rc, Rh
30de 45           ld Rb, Rl
30df 4d           ld Rc, Rl
30e0 56           ld Rd, R(hl)
30e1 46           ld Rb, R(hl)
30e2 57           ld Rd, Ra
30e3 5e           ld Re, R(hl)
30e4 40           ld Rb, Rb
30e5 54           ld Rd, Rh
30e6 4e           ld Rc, R(hl)
30e7 54           ld Rd, Rh
30e8 54           ld Rd, Rh
30e9 54           ld Rd, Rh
30ea 54           ld Rd, Rh
30eb 54           ld Rd, Rh
30ec 54           ld Rd, Rh
30ed 54           ld Rd, Rh
30ee 54           ld Rd, Rh
30ef 54           ld Rd, Rh
30f0 54           ld Rd, Rh
30f1 54           ld Rd, Rh
30f2 54           ld Rd, Rh
30f3 54           ld Rd, Rh
30f4 54           ld Rd, Rh
30f5 54           ld Rd, Rh
30f6 54           ld Rd, Rh
30f7 00           nop
30f8 00           nop
30f9 00           nop
30fa 00           nop
30fb 00           nop
30fc 00           nop
30fd 00           nop
30fe 00           nop
30ff 00           nop
3100 00           nop
3101 00           nop
3102 00           nop
3103 00           nop
3104 00           nop
3105 00           nop
3106 00           nop
3107 00           nop
3108 00           nop
3109 00           nop
310a 00           nop
310b 00           nop
310c 00           nop
310d 00           nop
310e 00           nop
310f 00           nop
3110 00           nop
3111 00           nop
3112 00           nop
3113 00           nop
3114 00           nop
3115 00           nop
3116 00           nop
3117 00           nop
3118 00           nop
3119 00           nop
311a 00           nop
311b 00           nop
311c 00           nop
311d 00           nop
311e 00           nop
311f 00           nop
3120 40           ld Rb, Rb
3121 40           ld Rb, Rb
3122 40           ld Rb, Rb
3123 40           ld Rb, Rb
3124 40           ld Rb, Rb
3125 40           ld Rb, Rb
3126 40           ld Rb, Rb
3127 40           ld Rb, Rb
3128 40           ld Rb, Rb
3129 40           ld Rb, Rb
312a 40           ld Rb, Rb
312b 40           ld Rb, Rb
312c 40           ld Rb, Rb
312d 40           ld Rb, Rb
312e 40           ld Rb, Rb
312f 40           ld Rb, Rb
3130 40           ld Rb, Rb
3131 40           ld Rb, Rb
3132 40           ld Rb, Rb
3133 40           ld Rb, Rb
3134 40           ld Rb, Rb
3135 40           ld Rb, Rb
3136 40           ld Rb, Rb
3137 40           ld Rb, Rb
3138 40           ld Rb, Rb
3139 40           ld Rb, Rb
313a 40           ld Rb, Rb
313b 40           ld Rb, Rb
313c 40           ld Rb, Rb
313d 40           ld Rb, Rb
313e 40           ld Rb, Rb
313f 40           ld Rb, Rb
3140 80           Aadd a, Rb
3141 80           Aadd a, Rb
3142 80           Aadd a, Rb
3143 80           Aadd a, Rb
3144 80           Aadd a, Rb
3145 80           Aadd a, Rb
3146 80           Aadd a, Rb
3147 80           Aadd a, Rb
3148 80           Aadd a, Rb
3149 80           Aadd a, Rb
314a 80           Aadd a, Rb
314b 80           Aadd a, Rb
314c 80           Aadd a, Rb
314d 80           Aadd a, Rb
314e 80           Aadd a, Rb
314f 80           Aadd a, Rb
3150 80           Aadd a, Rb
3151 80           Aadd a, Rb
3152 80           Aadd a, Rb
3153 80           Aadd a, Rb
3154 80           Aadd a, Rb
3155 80           Aadd a, Rb
3156 80           Aadd a, Rb
3157 80           Aadd a, Rb
3158 80           Aadd a, Rb
3159 80           Aadd a, Rb
315a 80           Aadd a, Rb
315b 80           Aadd a, Rb
315c 80           Aadd a, Rb
315d 80           Aadd a, Rb
315e 80           Aadd a, Rb
315f 80           Aadd a, Rb
3160 c0           ret Cnz
3161 c0           ret Cnz
3162 c0           ret Cnz
3163 c0           ret Cnz
3164 c0           ret Cnz
3165 c0           ret Cnz
3166 c0           ret Cnz
3167 c0           ret Cnz
3168 c0           ret Cnz
3169 c0           ret Cnz
316a c0           ret Cnz
316b c0           ret Cnz
316c c0           ret Cnz
316d c0           ret Cnz
316e c0           ret Cnz
316f c0           ret Cnz
3170 c0           ret Cnz
3171 c0           ret Cnz
3172 c0           ret Cnz
3173 c0           ret Cnz
3174 c0           ret Cnz
3175 c0           ret Cnz
3176 c0           ret Cnz
3177 c0           ret Cnz
3178 c0           ret Cnz
3179 c0           ret Cnz
317a c0           ret Cnz
317b c0           ret Cnz
317c c0           ret Cnz
317d c0           ret Cnz
317e c0           ret Cnz
317f c0           ret Cnz
3180 00           nop
3181 40           ld Rb, Rb
3182 00           nop
3183 c0           ret Cnz
3184 40           ld Rb, Rb
3185 80           Aadd a, Rb
3186 00           nop
3187 c0           ret Cnz
3188 00           nop
3189 00           nop
318a 40           ld Rb, Rb
318b c0           ret Cnz
318c 00           nop
318d 40           ld Rb, Rb
318e 00           nop
318f 00           nop
3190 80           Aadd a, Rb
3191 00           nop
3192 c0           ret Cnz
3193 80           Aadd a, Rb
3194 00           nop
3195 00           nop
3196 c0           ret Cnz
3197 00           nop
3198 40           ld Rb, Rb
3199 80           Aadd a, Rb
319a c0           ret Cnz
319b 00           nop
319c 80           Aadd a, Rb
319d 00           nop
319e 00           nop
319f 00           nop
31a0 00           nop
31a1 00           nop
31a2 40           ld Rb, Rb
31a3 80           Aadd a, Rb
31a4 40           ld Rb, Rb
31a5 80           Aadd a, Rb
31a6 00           nop
31a7 40           ld Rb, Rb
31a8 00           nop
31a9 c0           ret Cnz
31aa 40           ld Rb, Rb
31ab 80           Aadd a, Rb
31ac 40           ld Rb, Rb
31ad 00           nop
31ae 00           nop
31af 00           nop
31b0 00           nop
31b1 00           nop
31b2 40           ld Rb, Rb
31b3 80           Aadd a, Rb
31b4 c0           ret Cnz
31b5 00           nop
31b6 80           Aadd a, Rb
31b7 00           nop
31b8 00           nop
31b9 00           nop
31ba 40           ld Rb, Rb
31bb 80           Aadd a, Rb
31bc 40           ld Rb, Rb
31bd 80           Aadd a, Rb
31be 00           nop
31bf 00           nop
31c0 00           nop
31c1 00           nop
31c2 c0           ret Cnz
31c3 00           nop
31c4 c0           ret Cnz
31c5 c0           ret Cnz
31c6 c0           ret Cnz
31c7 c0           ret Cnz
31c8 c0           ret Cnz
31c9 c0           ret Cnz
31ca c0           ret Cnz
31cb c0           ret Cnz
31cc c0           ret Cnz
31cd c0           ret Cnz
31ce c0           ret Cnz
31cf c0           ret Cnz
31d0 00           nop
31d1 00           nop
31d2 00           nop
31d3 00           nop
31d4 00           nop
31d5 00           nop
31d6 c0           ret Cnz
31d7 00           nop
31d8 c0           ret Cnz
31d9 c0           ret Cnz
31da c0           ret Cnz
31db c0           ret Cnz
31dc c0           ret Cnz
31dd c0           ret Cnz
31de c0           ret Cnz
31df c0           ret Cnz
31e0 00           nop
31e1 00           nop
31e2 00           nop
31e3 00           nop
31e4 00           nop
31e5 00           nop
31e6 c0           ret Cnz
31e7 00           nop
31e8 c0           ret Cnz
31e9 c0           ret Cnz
31ea c0           ret Cnz
31eb c0           ret Cnz
31ec c0           ret Cnz
31ed c0           ret Cnz
31ee c0           ret Cnz
31ef c0           ret Cnz
31f0 c0           ret Cnz
31f1 c0           ret Cnz
31f2 c0           ret Cnz
31f3 c0           ret Cnz
31f4 c0           ret Cnz
31f5 c0           ret Cnz
31f6 c0           ret Cnz
31f7 00           nop
31f8 c0           ret Cnz
31f9 c0           ret Cnz
31fa c0           ret Cnz
31fb 00           nop
31fc 00           nop
31fd 00           nop
31fe 00           nop
31ff 00           nop
3200 40           ld Rb, Rb
3201 80           Aadd a, Rb
3202 40           ld Rb, Rb
3203 80           Aadd a, Rb
3204 40           ld Rb, Rb
3205 80           Aadd a, Rb
3206 40           ld Rb, Rb
3207 80           Aadd a, Rb
3208 40           ld Rb, Rb
3209 80           Aadd a, Rb
320a 40           ld Rb, Rb
320b 80           Aadd a, Rb
320c 40           ld Rb, Rb
320d 80           Aadd a, Rb
320e 40           ld Rb, Rb
320f 80           Aadd a, Rb
3210 c0           ret Cnz
3211 c0           ret Cnz
3212 c0           ret Cnz
3213 c0           ret Cnz
3214 c0           ret Cnz
3215 c0           ret Cnz
3216 c0           ret Cnz
3217 c0           ret Cnz
3218 c0           ret Cnz
3219 c0           ret Cnz
321a c0           ret Cnz
321b c0           ret Cnz
321c c0           ret Cnz
321d c0           ret Cnz
321e c0           ret Cnz
321f c0           ret Cnz
3220 00           nop
3221 00           nop
3222 c0           ret Cnz
3223 00           nop
3224 c0           ret Cnz
3225 c0           ret Cnz
3226 c0           ret Cnz
3227 c0           ret Cnz
3228 00           nop
3229 00           nop
322a c0           ret Cnz
322b 00           nop
322c c0           ret Cnz
322d c0           ret Cnz
322e c0           ret Cnz
322f c0           ret Cnz
3230 00           nop
3231 00           nop
3232 00           nop
3233 00           nop
3234 00           nop
3235 00           nop
3236 c0           ret Cnz
3237 00           nop
3238 00           nop
3239 00           nop
323a c0           ret Cnz
323b 00           nop
323c c0           ret Cnz
323d c0           ret Cnz
323e c0           ret Cnz
323f c0           ret Cnz
3240 c0           ret Cnz
3241 c0           ret Cnz
3242 c0           ret Cnz
3243 c0           ret Cnz
3244 c0           ret Cnz
3245 c0           ret Cnz
3246 c0           ret Cnz
3247 c0           ret Cnz
3248 c0           ret Cnz
3249 c0           ret Cnz
324a c0           ret Cnz
324b c0           ret Cnz
324c c0           ret Cnz
324d c0           ret Cnz
324e c0           ret Cnz
324f 00           nop
3250 c0           ret Cnz
3251 c0           ret Cnz
3252 c0           ret Cnz
3253 c0           ret Cnz
3254 c0           ret Cnz
3255 c0           ret Cnz
3256 c0           ret Cnz
3257 c0           ret Cnz
3258 c0           ret Cnz
3259 c0           ret Cnz
325a c0           ret Cnz
325b 00           nop
325c 00           nop
325d 00           nop
325e 00           nop
325f 00           nop
3260 40           ld Rb, Rb
3261 c0           ret Cnz
3262 40           ld Rb, Rb
3263 80           Aadd a, Rb
3264 00           nop
3265 40           ld Rb, Rb
3266 80           Aadd a, Rb
3267 80           Aadd a, Rb
3268 80           Aadd a, Rb
3269 80           Aadd a, Rb
326a 80           Aadd a, Rb
326b 80           Aadd a, Rb
326c 80           Aadd a, Rb
326d 80           Aadd a, Rb
326e 80           Aadd a, Rb
326f 80           Aadd a, Rb
3270 80           Aadd a, Rb
3271 80           Aadd a, Rb
3272 80           Aadd a, Rb
3273 80           Aadd a, Rb
3274 80           Aadd a, Rb
3275 80           Aadd a, Rb
3276 80           Aadd a, Rb
3277 80           Aadd a, Rb
3278 40           ld Rb, Rb
3279 c0           ret Cnz
327a 40           ld Rb, Rb
327b 80           Aadd a, Rb
327c 00           nop
327d 40           ld Rb, Rb
327e 80           Aadd a, Rb
327f 80           Aadd a, Rb
3280 00           nop
3281 00           nop
3282 00           nop
3283 00           nop
3284 00           nop
3285 00           nop
3286 00           nop
3287 00           nop
3288 00           nop
3289 00           nop
328a 00           nop
328b 40           ld Rb, Rb
328c 00           nop
328d 40           ld Rb, Rb
328e 00           nop
328f c0           ret Cnz
3290 00           nop
3291 00           nop
3292 00           nop
3293 00           nop
3294 00           nop
3295 00           nop
3296 00           nop
3297 00           nop
3298 00           nop
3299 00           nop
329a 80           Aadd a, Rb
329b 00           nop
329c 80           Aadd a, Rb
329d 00           nop
329e 00           nop
329f 00           nop
32a0 00           nop
32a1 00           nop
32a2 00           nop
32a3 00           nop
32a4 00           nop
32a5 00           nop
32a6 00           nop
32a7 00           nop
32a8 00           nop
32a9 00           nop
32aa 00           nop
32ab 40           ld Rb, Rb
32ac 00           nop
32ad 40           ld Rb, Rb
32ae 00           nop
32af c0           ret Cnz
32b0 00           nop
32b1 00           nop
32b2 00           nop
32b3 00           nop
32b4 00           nop
32b5 00           nop
32b6 00           nop
32b7 00           nop
32b8 00           nop
32b9 00           nop
32ba 80           Aadd a, Rb
32bb 00           nop
32bc 80           Aadd a, Rb
32bd 00           nop
32be 00           nop
32bf 00           nop
32c0 00           nop
32c1 00           nop
32c2 40           ld Rb, Rb
32c3 c0           ret Cnz
32c4 00           nop
32c5 c0           ret Cnz
32c6 00           nop
32c7 00           nop
32c8 00           nop
32c9 00           nop
32ca 00           nop
32cb 00           nop
32cc c0           ret Cnz
32cd c0           ret Cnz
32ce c0           ret Cnz
32cf c0           ret Cnz
32d0 40           ld Rb, Rb
32d1 c0           ret Cnz
32d2 c0           ret Cnz
32d3 c0           ret Cnz
32d4 c0           ret Cnz
32d5 c0           ret Cnz
32d6 40           ld Rb, Rb
32d7 c0           ret Cnz
32d8 40           ld Rb, Rb
32d9 c0           ret Cnz
32da 40           ld Rb, Rb
32db c0           ret Cnz
32dc c0           ret Cnz
32dd c0           ret Cnz
32de c0           ret Cnz
32df c0           ret Cnz
32e0 00           nop
32e1 00           nop
32e2 00           nop
32e3 00           nop
32e4 00           nop
32e5 00           nop
32e6 00           nop
32e7 00           nop
32e8 00           nop
32e9 40           ld Rb, Rb
32ea 00           nop
32eb c0           ret Cnz
32ec 40           ld Rb, Rb
32ed 80           Aadd a, Rb
32ee c0           ret Cnz
32ef 00           nop
32f0 00           nop
32f1 00           nop
32f2 00           nop
32f3 80           Aadd a, Rb
32f4 40           ld Rb, Rb
32f5 80           Aadd a, Rb
32f6 c0           ret Cnz
32f7 00           nop
32f8 80           Aadd a, Rb
32f9 00           nop
32fa 00           nop
32fb 00           nop
32fc 00           nop
32fd 00           nop
32fe 00           nop
32ff 00           nop
3300 00           nop
3301 00           nop
3302 40           ld Rb, Rb
3303 c0           ret Cnz
3304 c0           ret Cnz
3305 80           Aadd a, Rb
3306 c0           ret Cnz
3307 80           Aadd a, Rb
3308 c0           ret Cnz
3309 80           Aadd a, Rb
330a c0           ret Cnz
330b 80           Aadd a, Rb
330c c0           ret Cnz
330d 80           Aadd a, Rb
330e 40           ld Rb, Rb
330f c0           ret Cnz
3310 00           nop
3311 00           nop
3312 c0           ret Cnz
3313 00           nop
3314 40           ld Rb, Rb
3315 80           Aadd a, Rb
3316 40           ld Rb, Rb
3317 80           Aadd a, Rb
3318 40           ld Rb, Rb
3319 80           Aadd a, Rb
331a 40           ld Rb, Rb
331b 80           Aadd a, Rb
331c c0           ret Cnz
331d 80           Aadd a, Rb
331e c0           ret Cnz
331f 00           nop
3320 00           nop
3321 00           nop
3322 00           nop
3323 40           ld Rb, Rb
3324 00           nop
3325 c0           ret Cnz
3326 00           nop
3327 c0           ret Cnz
3328 00           nop
3329 40           ld Rb, Rb
332a 00           nop
332b 40           ld Rb, Rb
332c 40           ld Rb, Rb
332d c0           ret Cnz
332e 40           ld Rb, Rb
332f c0           ret Cnz
3330 00           nop
3331 00           nop
3332 80           Aadd a, Rb
3333 00           nop
3334 80           Aadd a, Rb
3335 00           nop
3336 80           Aadd a, Rb
3337 00           nop
3338 80           Aadd a, Rb
3339 00           nop
333a 80           Aadd a, Rb
333b 00           nop
333c c0           ret Cnz
333d 80           Aadd a, Rb
333e c0           ret Cnz
333f 80           Aadd a, Rb
3340 00           nop
3341 00           nop
3342 40           ld Rb, Rb
3343 c0           ret Cnz
3344 c0           ret Cnz
3345 00           nop
3346 00           nop
3347 40           ld Rb, Rb
3348 00           nop
3349 c0           ret Cnz
334a 40           ld Rb, Rb
334b c0           ret Cnz
334c c0           ret Cnz
334d c0           ret Cnz
334e c0           ret Cnz
334f c0           ret Cnz
3350 00           nop
3351 00           nop
3352 c0           ret Cnz
3353 00           nop
3354 c0           ret Cnz
3355 80           Aadd a, Rb
3356 c0           ret Cnz
3357 00           nop
3358 80           Aadd a, Rb
3359 00           nop
335a 00           nop
335b 00           nop
335c c0           ret Cnz
335d 80           Aadd a, Rb
335e c0           ret Cnz
335f 80           Aadd a, Rb
3360 00           nop
3361 00           nop
3362 40           ld Rb, Rb
3363 c0           ret Cnz
3364 00           nop
3365 00           nop
3366 00           nop
3367 40           ld Rb, Rb
3368 00           nop
3369 00           nop
336a c0           ret Cnz
336b 80           Aadd a, Rb
336c c0           ret Cnz
336d c0           ret Cnz
336e 40           ld Rb, Rb
336f c0           ret Cnz
3370 00           nop
3371 00           nop
3372 c0           ret Cnz
3373 80           Aadd a, Rb
3374 c0           ret Cnz
3375 00           nop
3376 80           Aadd a, Rb
3377 00           nop
3378 c0           ret Cnz
3379 00           nop
337a 40           ld Rb, Rb
337b 80           Aadd a, Rb
337c 40           ld Rb, Rb
337d 80           Aadd a, Rb
337e c0           ret Cnz
337f 00           nop
3380 00           nop
3381 00           nop
3382 c0           ret Cnz
3383 00           nop
3384 c0           ret Cnz
3385 00           nop
3386 c0           ret Cnz
3387 40           ld Rb, Rb
3388 c0           ret Cnz
3389 c0           ret Cnz
338a 00           nop
338b 40           ld Rb, Rb
338c 00           nop
338d 40           ld Rb, Rb
338e 00           nop
338f 40           ld Rb, Rb
3390 00           nop
3391 00           nop
3392 00           nop
3393 00           nop
3394 00           nop
3395 00           nop
3396 c0           ret Cnz
3397 00           nop
3398 c0           ret Cnz
3399 80           Aadd a, Rb
339a c0           ret Cnz
339b 00           nop
339c c0           ret Cnz
339d 00           nop
339e c0           ret Cnz
339f 00           nop
33a0 00           nop
33a1 00           nop
33a2 c0           ret Cnz
33a3 c0           ret Cnz
33a4 c0           ret Cnz
33a5 80           Aadd a, Rb
33a6 c0           ret Cnz
33a7 c0           ret Cnz
33a8 00           nop
33a9 00           nop
33aa c0           ret Cnz
33ab 80           Aadd a, Rb
33ac c0           ret Cnz
33ad c0           ret Cnz
33ae 40           ld Rb, Rb
33af c0           ret Cnz
33b0 00           nop
33b1 00           nop
33b2 c0           ret Cnz
33b3 80           Aadd a, Rb
33b4 00           nop
33b5 00           nop
33b6 c0           ret Cnz
33b7 00           nop
33b8 40           ld Rb, Rb
33b9 80           Aadd a, Rb
33ba 40           ld Rb, Rb
33bb 80           Aadd a, Rb
33bc c0           ret Cnz
33bd 80           Aadd a, Rb
33be c0           ret Cnz
33bf 00           nop
33c0 00           nop
33c1 00           nop
33c2 40           ld Rb, Rb
33c3 c0           ret Cnz
33c4 c0           ret Cnz
33c5 80           Aadd a, Rb
33c6 c0           ret Cnz
33c7 c0           ret Cnz
33c8 c0           ret Cnz
33c9 80           Aadd a, Rb
33ca c0           ret Cnz
33cb 80           Aadd a, Rb
33cc c0           ret Cnz
33cd c0           ret Cnz
33ce 40           ld Rb, Rb
33cf c0           ret Cnz
33d0 00           nop
33d1 00           nop
33d2 c0           ret Cnz
33d3 00           nop
33d4 00           nop
33d5 00           nop
33d6 c0           ret Cnz
33d7 00           nop
33d8 40           ld Rb, Rb
33d9 80           Aadd a, Rb
33da 40           ld Rb, Rb
33db 80           Aadd a, Rb
33dc c0           ret Cnz
33dd 80           Aadd a, Rb
33de c0           ret Cnz
33df 00           nop
33e0 00           nop
33e1 00           nop
33e2 c0           ret Cnz
33e3 c0           ret Cnz
33e4 80           Aadd a, Rb
33e5 00           nop
33e6 00           nop
33e7 40           ld Rb, Rb
33e8 00           nop
33e9 c0           ret Cnz
33ea 40           ld Rb, Rb
33eb c0           ret Cnz
33ec c0           ret Cnz
33ed 80           Aadd a, Rb
33ee c0           ret Cnz
33ef 80           Aadd a, Rb
33f0 00           nop
33f1 00           nop
33f2 c0           ret Cnz
33f3 80           Aadd a, Rb
33f4 c0           ret Cnz
33f5 80           Aadd a, Rb
33f6 c0           ret Cnz
33f7 00           nop
33f8 80           Aadd a, Rb
33f9 00           nop
33fa 00           nop
33fb 00           nop
33fc 00           nop
33fd 00           nop
33fe 00           nop
33ff 00           nop
3400 00           nop
3401 00           nop
3402 40           ld Rb, Rb
3403 c0           ret Cnz
3404 c0           ret Cnz
3405 80           Aadd a, Rb
3406 40           ld Rb, Rb
3407 c0           ret Cnz
3408 c0           ret Cnz
3409 80           Aadd a, Rb
340a c0           ret Cnz
340b 80           Aadd a, Rb
340c c0           ret Cnz
340d c0           ret Cnz
340e 40           ld Rb, Rb
340f c0           ret Cnz
3410 00           nop
3411 00           nop
3412 c0           ret Cnz
3413 00           nop
3414 40           ld Rb, Rb
3415 80           Aadd a, Rb
3416 c0           ret Cnz
3417 00           nop
3418 40           ld Rb, Rb
3419 80           Aadd a, Rb
341a 40           ld Rb, Rb
341b 80           Aadd a, Rb
341c c0           ret Cnz
341d 80           Aadd a, Rb
341e c0           ret Cnz
341f 00           nop
3420 00           nop
3421 00           nop
3422 40           ld Rb, Rb
3423 c0           ret Cnz
3424 c0           ret Cnz
3425 80           Aadd a, Rb
3426 c0           ret Cnz
3427 80           Aadd a, Rb
3428 40           ld Rb, Rb
3429 c0           ret Cnz
342a 00           nop
342b 40           ld Rb, Rb
342c 00           nop
342d c0           ret Cnz
342e 40           ld Rb, Rb
342f c0           ret Cnz
3430 00           nop
3431 00           nop
3432 c0           ret Cnz
3433 00           nop
3434 40           ld Rb, Rb
3435 80           Aadd a, Rb
3436 40           ld Rb, Rb
3437 80           Aadd a, Rb
3438 c0           ret Cnz
3439 80           Aadd a, Rb
343a c0           ret Cnz
343b 00           nop
343c 80           Aadd a, Rb
343d 00           nop
343e 00           nop
343f 00           nop
3440 00           nop
3441 00           nop
3442 00           nop
3443 00           nop
3444 00           nop
3445 40           ld Rb, Rb
3446 00           nop
3447 40           ld Rb, Rb
3448 00           nop
3449 00           nop
344a 00           nop
344b 40           ld Rb, Rb
344c 00           nop
344d 40           ld Rb, Rb
344e 00           nop
344f 00           nop
3450 00           nop
3451 00           nop
3452 00           nop
3453 00           nop
3454 80           Aadd a, Rb
3455 00           nop
3456 80           Aadd a, Rb
3457 00           nop
3458 00           nop
3459 00           nop
345a 80           Aadd a, Rb
345b 00           nop
345c 80           Aadd a, Rb
345d 00           nop
345e 00           nop
345f 00           nop
3460 00           nop
3461 00           nop
3462 00           nop
3463 00           nop
3464 00           nop
3465 40           ld Rb, Rb
3466 00           nop
3467 40           ld Rb, Rb
3468 00           nop
3469 00           nop
346a 00           nop
346b 40           ld Rb, Rb
346c 00           nop
346d 40           ld Rb, Rb
346e 00           nop
346f c0           ret Cnz
3470 00           nop
3471 00           nop
3472 00           nop
3473 00           nop
3474 80           Aadd a, Rb
3475 00           nop
3476 80           Aadd a, Rb
3477 00           nop
3478 00           nop
3479 00           nop
347a 08           ex af, af'
347b 00           nop
347c 80           Aadd a, Rb
347d 00           nop
347e 00           nop
347f 00           nop
3480 c0           ret Cnz
3481 c0           ret Cnz
3482 00           nop
3483 00           nop
3484 c0           ret Cnz
3485 c0           ret Cnz
3486 00           nop
3487 00           nop
3488 c0           ret Cnz
3489 c0           ret Cnz
348a 00           nop
348b 00           nop
348c c0           ret Cnz
348d c0           ret Cnz
348e 00           nop
348f 00           nop
3490 c0           ret Cnz
3491 c0           ret Cnz
3492 00           nop
3493 00           nop
3494 c0           ret Cnz
3495 c0           ret Cnz
3496 00           nop
3497 00           nop
3498 c0           ret Cnz
3499 c0           ret Cnz
349a 00           nop
349b 00           nop
349c c0           ret Cnz
349d c0           ret Cnz
349e 00           nop
349f 00           nop
34a0 40           ld Rb, Rb
34a1 80           Aadd a, Rb
34a2 40           ld Rb, Rb
34a3 80           Aadd a, Rb
34a4 40           ld Rb, Rb
34a5 80           Aadd a, Rb
34a6 40           ld Rb, Rb
34a7 80           Aadd a, Rb
34a8 40           ld Rb, Rb
34a9 80           Aadd a, Rb
34aa 40           ld Rb, Rb
34ab 80           Aadd a, Rb
34ac 40           ld Rb, Rb
34ad 80           Aadd a, Rb
34ae 40           ld Rb, Rb
34af 80           Aadd a, Rb
34b0 c0           ret Cnz
34b1 c0           ret Cnz
34b2 80           Aadd a, Rb
34b3 80           Aadd a, Rb
34b4 80           Aadd a, Rb
34b5 80           Aadd a, Rb
34b6 c0           ret Cnz
34b7 80           Aadd a, Rb
34b8 c0           ret Cnz
34b9 80           Aadd a, Rb
34ba c0           ret Cnz
34bb 80           Aadd a, Rb
34bc c0           ret Cnz
34bd 80           Aadd a, Rb
34be c0           ret Cnz
34bf c0           ret Cnz
34c0 c0           ret Cnz
34c1 c0           ret Cnz
34c2 80           Aadd a, Rb
34c3 c0           ret Cnz
34c4 80           Aadd a, Rb
34c5 c0           ret Cnz
34c6 c0           ret Cnz
34c7 c0           ret Cnz
34c8 c0           ret Cnz
34c9 c0           ret Cnz
34ca c0           ret Cnz
34cb c0           ret Cnz
34cc c0           ret Cnz
34cd c0           ret Cnz
34ce c0           ret Cnz
34cf c0           ret Cnz
34d0 c0           ret Cnz
34d1 c0           ret Cnz
34d2 80           Aadd a, Rb
34d3 c0           ret Cnz
34d4 80           Aadd a, Rb
34d5 80           Aadd a, Rb
34d6 80           Aadd a, Rb
34d7 80           Aadd a, Rb
34d8 80           Aadd a, Rb
34d9 c0           ret Cnz
34da 80           Aadd a, Rb
34db c0           ret Cnz
34dc 80           Aadd a, Rb
34dd c0           ret Cnz
34de c0           ret Cnz
34df c0           ret Cnz
34e0 c0           ret Cnz
34e1 c0           ret Cnz
34e2 c0           ret Cnz
34e3 c0           ret Cnz
34e4 c0           ret Cnz
34e5 80           Aadd a, Rb
34e6 80           Aadd a, Rb
34e7 80           Aadd a, Rb
34e8 80           Aadd a, Rb
34e9 c0           ret Cnz
34ea c0           ret Cnz
34eb c0           ret Cnz
34ec c0           ret Cnz
34ed c0           ret Cnz
34ee c0           ret Cnz
34ef c0           ret Cnz
34f0 c0           ret Cnz
34f1 c0           ret Cnz
34f2 80           Aadd a, Rb
34f3 c0           ret Cnz
34f4 80           Aadd a, Rb
34f5 c0           ret Cnz
34f6 80           Aadd a, Rb
34f7 c0           ret Cnz
34f8 80           Aadd a, Rb
34f9 c0           ret Cnz
34fa 80           Aadd a, Rb
34fb c0           ret Cnz
34fc 80           Aadd a, Rb
34fd c0           ret Cnz
34fe c0           ret Cnz
34ff c0           ret Cnz
3500 00           nop
3501 00           nop
3502 00           nop
3503 00           nop
3504 00           nop
3505 00           nop
3506 00           nop
3507 00           nop
3508 00           nop
3509 00           nop
350a 00           nop
350b 00           nop
350c 00           nop
350d 00           nop
350e 00           nop
350f 00           nop
3510 00           nop
3511 00           nop
3512 00           nop
3513 00           nop
3514 00           nop
3515 00           nop
3516 00           nop
3517 00           nop
3518 00           nop
3519 00           nop
351a 00           nop
351b 00           nop
351c 00           nop
351d 00           nop
351e 00           nop
351f 00           nop
3520 00           nop
3521 00           nop
3522 00           nop
3523 c0           ret Cnz
3524 40           ld Rb, Rb
3525 c0           ret Cnz
3526 c0           ret Cnz
3527 80           Aadd a, Rb
3528 c0           ret Cnz
3529 80           Aadd a, Rb
352a c0           ret Cnz
352b c0           ret Cnz
352c c0           ret Cnz
352d 80           Aadd a, Rb
352e c0           ret Cnz
352f 80           Aadd a, Rb
3530 00           nop
3531 00           nop
3532 80           Aadd a, Rb
3533 00           nop
3534 c0           ret Cnz
3535 00           nop
3536 40           ld Rb, Rb
3537 80           Aadd a, Rb
3538 40           ld Rb, Rb
3539 80           Aadd a, Rb
353a c0           ret Cnz
353b 80           Aadd a, Rb
353c 40           ld Rb, Rb
353d 80           Aadd a, Rb
353e 40           ld Rb, Rb
353f 80           Aadd a, Rb
3540 00           nop
3541 00           nop
3542 c0           ret Cnz
3543 c0           ret Cnz
3544 c0           ret Cnz
3545 80           Aadd a, Rb
3546 c0           ret Cnz
3547 c0           ret Cnz
3548 c0           ret Cnz
3549 80           Aadd a, Rb
354a c0           ret Cnz
354b 80           Aadd a, Rb
354c c0           ret Cnz
354d c0           ret Cnz
354e c0           ret Cnz
354f c0           ret Cnz
3550 00           nop
3551 00           nop
3552 c0           ret Cnz
3553 00           nop
3554 40           ld Rb, Rb
3555 80           Aadd a, Rb
3556 c0           ret Cnz
3557 00           nop
3558 40           ld Rb, Rb
3559 80           Aadd a, Rb
355a 40           ld Rb, Rb
355b 80           Aadd a, Rb
355c c0           ret Cnz
355d 80           Aadd a, Rb
355e c0           ret Cnz
355f 00           nop
3560 00           nop
3561 00           nop
3562 40           ld Rb, Rb
3563 c0           ret Cnz
3564 c0           ret Cnz
3565 80           Aadd a, Rb
3566 c0           ret Cnz
3567 80           Aadd a, Rb
3568 c0           ret Cnz
3569 80           Aadd a, Rb
356a c0           ret Cnz
356b 80           Aadd a, Rb
356c c0           ret Cnz
356d c0           ret Cnz
356e 40           ld Rb, Rb
356f c0           ret Cnz
3570 00           nop
3571 00           nop
3572 c0           ret Cnz
3573 00           nop
3574 40           ld Rb, Rb
3575 80           Aadd a, Rb
3576 00           nop
3577 00           nop
3578 00           nop
3579 00           nop
357a 40           ld Rb, Rb
357b 80           Aadd a, Rb
357c c0           ret Cnz
357d 80           Aadd a, Rb
357e c0           ret Cnz
357f 00           nop
3580 00           nop
3581 00           nop
3582 c0           ret Cnz
3583 c0           ret Cnz
3584 c0           ret Cnz
3585 80           Aadd a, Rb
3586 c0           ret Cnz
3587 80           Aadd a, Rb
3588 c0           ret Cnz
3589 80           Aadd a, Rb
358a c0           ret Cnz
358b 80           Aadd a, Rb
358c c0           ret Cnz
358d c0           ret Cnz
358e c0           ret Cnz
358f c0           ret Cnz
3590 00           nop
3591 00           nop
3592 80           Aadd a, Rb
3593 00           nop
3594 c0           ret Cnz
3595 00           nop
3596 40           ld Rb, Rb
3597 80           Aadd a, Rb
3598 40           ld Rb, Rb
3599 80           Aadd a, Rb
359a c0           ret Cnz
359b 00           nop
359c c0           ret Cnz
359d 00           nop
359e 80           Aadd a, Rb
359f 00           nop
35a0 00           nop
35a1 00           nop
35a2 c0           ret Cnz
35a3 c0           ret Cnz
35a4 c0           ret Cnz
35a5 80           Aadd a, Rb
35a6 c0           ret Cnz
35a7 c0           ret Cnz
35a8 c0           ret Cnz
35a9 80           Aadd a, Rb
35aa c0           ret Cnz
35ab 80           Aadd a, Rb
35ac c0           ret Cnz
35ad c0           ret Cnz
35ae c0           ret Cnz
35af c0           ret Cnz
35b0 00           nop
35b1 00           nop
35b2 c0           ret Cnz
35b3 80           Aadd a, Rb
35b4 00           nop
35b5 00           nop
35b6 c0           ret Cnz
35b7 00           nop
35b8 00           nop
35b9 00           nop
35ba 00           nop
35bb 00           nop
35bc c0           ret Cnz
35bd 80           Aadd a, Rb
35be c0           ret Cnz
35bf 80           Aadd a, Rb
35c0 00           nop
35c1 00           nop
35c2 c0           ret Cnz
35c3 c0           ret Cnz
35c4 c0           ret Cnz
35c5 80           Aadd a, Rb
35c6 c0           ret Cnz
35c7 c0           ret Cnz
35c8 c0           ret Cnz
35c9 80           Aadd a, Rb
35ca c0           ret Cnz
35cb 80           Aadd a, Rb
35cc c0           ret Cnz
35cd 80           Aadd a, Rb
35ce c0           ret Cnz
35cf 80           Aadd a, Rb
35d0 00           nop
35d1 00           nop
35d2 c0           ret Cnz
35d3 80           Aadd a, Rb
35d4 00           nop
35d5 00           nop
35d6 c0           ret Cnz
35d7 00           nop
35d8 00           nop
35d9 00           nop
35da 00           nop
35db 00           nop
35dc 00           nop
35dd 00           nop
35de 00           nop
35df 00           nop
35e0 00           nop
35e1 00           nop
35e2 40           ld Rb, Rb
35e3 c0           ret Cnz
35e4 c0           ret Cnz
35e5 80           Aadd a, Rb
35e6 c0           ret Cnz
35e7 80           Aadd a, Rb
35e8 c0           ret Cnz
35e9 80           Aadd a, Rb
35ea c0           ret Cnz
35eb 80           Aadd a, Rb
35ec c0           ret Cnz
35ed c0           ret Cnz
35ee 40           ld Rb, Rb
35ef c0           ret Cnz
35f0 00           nop
35f1 00           nop
35f2 c0           ret Cnz
35f3 80           Aadd a, Rb
35f4 00           nop
35f5 00           nop
35f6 00           nop
35f7 00           nop
35f8 c0           ret Cnz
35f9 80           Aadd a, Rb
35fa 40           ld Rb, Rb
35fb 80           Aadd a, Rb
35fc c0           ret Cnz
35fd 80           Aadd a, Rb
35fe c0           ret Cnz
35ff 80           Aadd a, Rb
3600 00           nop
3601 00           nop
3602 c0           ret Cnz
3603 80           Aadd a, Rb
3604 c0           ret Cnz
3605 80           Aadd a, Rb
3606 c0           ret Cnz
3607 c0           ret Cnz
3608 c0           ret Cnz
3609 80           Aadd a, Rb
360a c0           ret Cnz
360b 80           Aadd a, Rb
360c c0           ret Cnz
360d 80           Aadd a, Rb
360e c0           ret Cnz
360f 80           Aadd a, Rb
3610 00           nop
3611 00           nop
3612 40           ld Rb, Rb
3613 80           Aadd a, Rb
3614 40           ld Rb, Rb
3615 80           Aadd a, Rb
3616 c0           ret Cnz
3617 80           Aadd a, Rb
3618 40           ld Rb, Rb
3619 80           Aadd a, Rb
361a 40           ld Rb, Rb
361b 80           Aadd a, Rb
361c 40           ld Rb, Rb
361d 80           Aadd a, Rb
361e 40           ld Rb, Rb
361f 80           Aadd a, Rb
3620 00           nop
3621 00           nop
3622 40           ld Rb, Rb
3623 c0           ret Cnz
3624 00           nop
3625 c0           ret Cnz
3626 00           nop
3627 c0           ret Cnz
3628 00           nop
3629 c0           ret Cnz
362a 00           nop
362b c0           ret Cnz
362c 40           ld Rb, Rb
362d c0           ret Cnz
362e 40           ld Rb, Rb
362f c0           ret Cnz
3630 00           nop
3631 00           nop
3632 c0           ret Cnz
3633 00           nop
3634 80           Aadd a, Rb
3635 00           nop
3636 80           Aadd a, Rb
3637 00           nop
3638 80           Aadd a, Rb
3639 00           nop
363a 80           Aadd a, Rb
363b 00           nop
363c c0           ret Cnz
363d 00           nop
363e c0           ret Cnz
363f 00           nop
3640 00           nop
3641 00           nop
3642 00           nop
3643 00           nop
3644 00           nop
3645 00           nop
3646 00           nop
3647 00           nop
3648 00           nop
3649 00           nop
364a c0           ret Cnz
364b 80           Aadd a, Rb
364c 40           ld Rb, Rb
364d c0           ret Cnz
364e 00           nop
364f c0           ret Cnz
3650 00           nop
3651 00           nop
3652 40           ld Rb, Rb
3653 80           Aadd a, Rb
3654 40           ld Rb, Rb
3655 80           Aadd a, Rb
3656 40           ld Rb, Rb
3657 80           Aadd a, Rb
3658 40           ld Rb, Rb
3659 80           Aadd a, Rb
365a 40           ld Rb, Rb
365b 80           Aadd a, Rb
365c c0           ret Cnz
365d 80           Aadd a, Rb
365e c0           ret Cnz
365f 00           nop
3660 00           nop
3661 00           nop
3662 c0           ret Cnz
3663 80           Aadd a, Rb
3664 c0           ret Cnz
3665 80           Aadd a, Rb
3666 c0           ret Cnz
3667 c0           ret Cnz
3668 c0           ret Cnz
3669 c0           ret Cnz
366a c0           ret Cnz
366b 80           Aadd a, Rb
366c c0           ret Cnz
366d 80           Aadd a, Rb
366e c0           ret Cnz
366f 80           Aadd a, Rb
3670 00           nop
3671 00           nop
3672 40           ld Rb, Rb
3673 80           Aadd a, Rb
3674 c0           ret Cnz
3675 00           nop
3676 80           Aadd a, Rb
3677 00           nop
3678 80           Aadd a, Rb
3679 00           nop
367a c0           ret Cnz
367b 00           nop
367c 40           ld Rb, Rb
367d 80           Aadd a, Rb
367e 40           ld Rb, Rb
367f 80           Aadd a, Rb
3680 00           nop
3681 00           nop
3682 c0           ret Cnz
3683 80           Aadd a, Rb
3684 c0           ret Cnz
3685 80           Aadd a, Rb
3686 c0           ret Cnz
3687 80           Aadd a, Rb
3688 c0           ret Cnz
3689 80           Aadd a, Rb
368a c0           ret Cnz
368b 80           Aadd a, Rb
368c c0           ret Cnz
368d c0           ret Cnz
368e c0           ret Cnz
368f c0           ret Cnz
3690 00           nop
3691 00           nop
3692 00           nop
3693 00           nop
3694 00           nop
3695 00           nop
3696 00           nop
3697 00           nop
3698 00           nop
3699 00           nop
369a 00           nop
369b 00           nop
369c c0           ret Cnz
369d 80           Aadd a, Rb
369e c0           ret Cnz
369f 80           Aadd a, Rb
36a0 00           nop
36a1 00           nop
36a2 c0           ret Cnz
36a3 00           nop
36a4 c0           ret Cnz
36a5 80           Aadd a, Rb
36a6 c0           ret Cnz
36a7 c0           ret Cnz
36a8 c0           ret Cnz
36a9 40           ld Rb, Rb
36aa c0           ret Cnz
36ab 00           nop
36ac c0           ret Cnz
36ad 00           nop
36ae c0           ret Cnz
36af 00           nop
36b0 00           nop
36b1 00           nop
36b2 40           ld Rb, Rb
36b3 80           Aadd a, Rb
36b4 c0           ret Cnz
36b5 80           Aadd a, Rb
36b6 c0           ret Cnz
36b7 80           Aadd a, Rb
36b8 40           ld Rb, Rb
36b9 80           Aadd a, Rb
36ba 40           ld Rb, Rb
36bb 80           Aadd a, Rb
36bc 40           ld Rb, Rb
36bd 80           Aadd a, Rb
36be 40           ld Rb, Rb
36bf 80           Aadd a, Rb
36c0 00           nop
36c1 00           nop
36c2 c0           ret Cnz
36c3 80           Aadd a, Rb
36c4 c0           ret Cnz
36c5 c0           ret Cnz
36c6 c0           ret Cnz
36c7 c0           ret Cnz
36c8 c0           ret Cnz
36c9 c0           ret Cnz
36ca c0           ret Cnz
36cb c0           ret Cnz
36cc c0           ret Cnz
36cd 80           Aadd a, Rb
36ce c0           ret Cnz
36cf 80           Aadd a, Rb
36d0 00           nop
36d1 00           nop
36d2 40           ld Rb, Rb
36d3 80           Aadd a, Rb
36d4 40           ld Rb, Rb
36d5 80           Aadd a, Rb
36d6 c0           ret Cnz
36d7 80           Aadd a, Rb
36d8 c0           ret Cnz
36d9 80           Aadd a, Rb
36da c0           ret Cnz
36db 80           Aadd a, Rb
36dc c0           ret Cnz
36dd 80           Aadd a, Rb
36de 40           ld Rb, Rb
36df 80           Aadd a, Rb
36e0 00           nop
36e1 00           nop
36e2 40           ld Rb, Rb
36e3 c0           ret Cnz
36e4 c0           ret Cnz
36e5 00           nop
36e6 c0           ret Cnz
36e7 00           nop
36e8 c0           ret Cnz
36e9 00           nop
36ea c0           ret Cnz
36eb 00           nop
36ec c0           ret Cnz
36ed c0           ret Cnz
36ee 40           ld Rb, Rb
36ef c0           ret Cnz
36f0 00           nop
36f1 00           nop
36f2 c0           ret Cnz
36f3 00           nop
36f4 40           ld Rb, Rb
36f5 80           Aadd a, Rb
36f6 40           ld Rb, Rb
36f7 80           Aadd a, Rb
36f8 40           ld Rb, Rb
36f9 80           Aadd a, Rb
36fa 40           ld Rb, Rb
36fb 80           Aadd a, Rb
36fc c0           ret Cnz
36fd 80           Aadd a, Rb
36fe c0           ret Cnz
36ff 00           nop
3700 00           nop
3701 00           nop
3702 c0           ret Cnz
3703 c0           ret Cnz
3704 c0           ret Cnz
3705 80           Aadd a, Rb
3706 c0           ret Cnz
3707 80           Aadd a, Rb
3708 c0           ret Cnz
3709 c0           ret Cnz
370a c0           ret Cnz
370b c0           ret Cnz
370c c0           ret Cnz
370d 80           Aadd a, Rb
370e c0           ret Cnz
370f 80           Aadd a, Rb
3710 00           nop
3711 00           nop
3712 c0           ret Cnz
3713 00           nop
3714 40           ld Rb, Rb
3715 80           Aadd a, Rb
3716 40           ld Rb, Rb
3717 80           Aadd a, Rb
3718 c0           ret Cnz
3719 80           Aadd a, Rb
371a c0           ret Cnz
371b 00           nop
371c 00           nop
371d 00           nop
371e 00           nop
371f 00           nop
3720 00           nop
3721 00           nop
3722 00           nop
3723 c0           ret Cnz
3724 c0           ret Cnz
3725 80           Aadd a, Rb
3726 c0           ret Cnz
3727 80           Aadd a, Rb
3728 c0           ret Cnz
3729 80           Aadd a, Rb
372a c0           ret Cnz
372b 80           Aadd a, Rb
372c 40           ld Rb, Rb
372d c0           ret Cnz
372e 00           nop
372f c0           ret Cnz
3730 00           nop
3731 00           nop
3732 c0           ret Cnz
3733 00           nop
3734 40           ld Rb, Rb
3735 80           Aadd a, Rb
3736 40           ld Rb, Rb
3737 80           Aadd a, Rb
3738 40           ld Rb, Rb
3739 80           Aadd a, Rb
373a c0           ret Cnz
373b 00           nop
373c c0           ret Cnz
373d 00           nop
373e 40           ld Rb, Rb
373f 80           Aadd a, Rb
3740 00           nop
3741 00           nop
3742 c0           ret Cnz
3743 c0           ret Cnz
3744 c0           ret Cnz
3745 80           Aadd a, Rb
3746 c0           ret Cnz
3747 80           Aadd a, Rb
3748 c0           ret Cnz
3749 c0           ret Cnz
374a c0           ret Cnz
374b c0           ret Cnz
374c c0           ret Cnz
374d 80           Aadd a, Rb
374e c0           ret Cnz
374f 80           Aadd a, Rb
3750 00           nop
3751 00           nop
3752 c0           ret Cnz
3753 00           nop
3754 40           ld Rb, Rb
3755 80           Aadd a, Rb
3756 40           ld Rb, Rb
3757 80           Aadd a, Rb
3758 c0           ret Cnz
3759 00           nop
375a c0           ret Cnz
375b 00           nop
375c 40           ld Rb, Rb
375d 80           Aadd a, Rb
375e 40           ld Rb, Rb
375f 80           Aadd a, Rb
3760 00           nop
3761 00           nop
3762 40           ld Rb, Rb
3763 c0           ret Cnz
3764 c0           ret Cnz
3765 80           Aadd a, Rb
3766 40           ld Rb, Rb
3767 c0           ret Cnz
3768 00           nop
3769 00           nop
376a 00           nop
376b 00           nop
376c c0           ret Cnz
376d c0           ret Cnz
376e c0           ret Cnz
376f c0           ret Cnz
3770 00           nop
3771 00           nop
3772 c0           ret Cnz
3773 00           nop
3774 00           nop
3775 00           nop
3776 c0           ret Cnz
3777 00           nop
3778 40           ld Rb, Rb
3779 80           Aadd a, Rb
377a 40           ld Rb, Rb
377b 80           Aadd a, Rb
377c c0           ret Cnz
377d 80           Aadd a, Rb
377e c0           ret Cnz
377f 00           nop
3780 00           nop
3781 00           nop
3782 c0           ret Cnz
3783 c0           ret Cnz
3784 00           nop
3785 c0           ret Cnz
3786 00           nop
3787 c0           ret Cnz
3788 00           nop
3789 c0           ret Cnz
378a 00           nop
378b c0           ret Cnz
378c 00           nop
378d c0           ret Cnz
378e 00           nop
378f c0           ret Cnz
3790 00           nop
3791 00           nop
3792 c0           ret Cnz
3793 80           Aadd a, Rb
3794 80           Aadd a, Rb
3795 00           nop
3796 80           Aadd a, Rb
3797 00           nop
3798 80           Aadd a, Rb
3799 00           nop
379a 80           Aadd a, Rb
379b 00           nop
379c 80           Aadd a, Rb
379d 00           nop
379e 80           Aadd a, Rb
379f 00           nop
37a0 00           nop
37a1 00           nop
37a2 c0           ret Cnz
37a3 80           Aadd a, Rb
37a4 c0           ret Cnz
37a5 80           Aadd a, Rb
37a6 c0           ret Cnz
37a7 80           Aadd a, Rb
37a8 c0           ret Cnz
37a9 80           Aadd a, Rb
37aa c0           ret Cnz
37ab 80           Aadd a, Rb
37ac c0           ret Cnz
37ad c0           ret Cnz
37ae c0           ret Cnz
37af c0           ret Cnz
37b0 00           nop
37b1 00           nop
37b2 40           ld Rb, Rb
37b3 80           Aadd a, Rb
37b4 40           ld Rb, Rb
37b5 80           Aadd a, Rb
37b6 40           ld Rb, Rb
37b7 80           Aadd a, Rb
37b8 40           ld Rb, Rb
37b9 80           Aadd a, Rb
37ba 40           ld Rb, Rb
37bb 80           Aadd a, Rb
37bc c0           ret Cnz
37bd 80           Aadd a, Rb
37be c0           ret Cnz
37bf 80           Aadd a, Rb
37c0 00           nop
37c1 00           nop
37c2 c0           ret Cnz
37c3 80           Aadd a, Rb
37c4 c0           ret Cnz
37c5 80           Aadd a, Rb
37c6 c0           ret Cnz
37c7 80           Aadd a, Rb
37c8 c0           ret Cnz
37c9 80           Aadd a, Rb
37ca c0           ret Cnz
37cb c0           ret Cnz
37cc 40           ld Rb, Rb
37cd c0           ret Cnz
37ce 00           nop
37cf c0           ret Cnz
37d0 00           nop
37d1 00           nop
37d2 40           ld Rb, Rb
37d3 80           Aadd a, Rb
37d4 40           ld Rb, Rb
37d5 80           Aadd a, Rb
37d6 40           ld Rb, Rb
37d7 80           Aadd a, Rb
37d8 40           ld Rb, Rb
37d9 80           Aadd a, Rb
37da c0           ret Cnz
37db 80           Aadd a, Rb
37dc c0           ret Cnz
37dd 00           nop
37de 80           Aadd a, Rb
37df 00           nop
37e0 00           nop
37e1 00           nop
37e2 c0           ret Cnz
37e3 00           nop
37e4 c0           ret Cnz
37e5 00           nop
37e6 c0           ret Cnz
37e7 40           ld Rb, Rb
37e8 c0           ret Cnz
37e9 c0           ret Cnz
37ea c0           ret Cnz
37eb c0           ret Cnz
37ec c0           ret Cnz
37ed 80           Aadd a, Rb
37ee c0           ret Cnz
37ef 00           nop
37f0 00           nop
37f1 00           nop
37f2 40           ld Rb, Rb
37f3 80           Aadd a, Rb
37f4 40           ld Rb, Rb
37f5 80           Aadd a, Rb
37f6 40           ld Rb, Rb
37f7 80           Aadd a, Rb
37f8 c0           ret Cnz
37f9 80           Aadd a, Rb
37fa c0           ret Cnz
37fb 80           Aadd a, Rb
37fc c0           ret Cnz
37fd 80           Aadd a, Rb
37fe 40           ld Rb, Rb
37ff 80           Aadd a, Rb
3800 00           nop
3801 00           nop
3802 c0           ret Cnz
3803 80           Aadd a, Rb
3804 c0           ret Cnz
3805 80           Aadd a, Rb
3806 00           nop
3807 c0           ret Cnz
3808 00           nop
3809 c0           ret Cnz
380a c0           ret Cnz
380b 80           Aadd a, Rb
380c c0           ret Cnz
380d 80           Aadd a, Rb
380e c0           ret Cnz
380f 80           Aadd a, Rb
3810 00           nop
3811 00           nop
3812 40           ld Rb, Rb
3813 80           Aadd a, Rb
3814 40           ld Rb, Rb
3815 80           Aadd a, Rb
3816 c0           ret Cnz
3817 00           nop
3818 c0           ret Cnz
3819 00           nop
381a 40           ld Rb, Rb
381b 80           Aadd a, Rb
381c 40           ld Rb, Rb
381d 80           Aadd a, Rb
381e 40           ld Rb, Rb
381f 80           Aadd a, Rb
3820 00           nop
3821 00           nop
3822 c0           ret Cnz
3823 00           nop
3824 c0           ret Cnz
3825 00           nop
3826 40           ld Rb, Rb
3827 c0           ret Cnz
3828 00           nop
3829 c0           ret Cnz
382a 00           nop
382b c0           ret Cnz
382c 00           nop
382d c0           ret Cnz
382e 00           nop
382f c0           ret Cnz
3830 00           nop
3831 00           nop
3832 40           ld Rb, Rb
3833 80           Aadd a, Rb
3834 40           ld Rb, Rb
3835 80           Aadd a, Rb
3836 c0           ret Cnz
3837 00           nop
3838 80           Aadd a, Rb
3839 00           nop
383a 80           Aadd a, Rb
383b 00           nop
383c 80           Aadd a, Rb
383d 00           nop
383e 80           Aadd a, Rb
383f 00           nop
3840 00           nop
3841 00           nop
3842 c0           ret Cnz
3843 c0           ret Cnz
3844 00           nop
3845 40           ld Rb, Rb
3846 00           nop
3847 c0           ret Cnz
3848 40           ld Rb, Rb
3849 c0           ret Cnz
384a c0           ret Cnz
384b 80           Aadd a, Rb
384c c0           ret Cnz
384d c0           ret Cnz
384e c0           ret Cnz
384f c0           ret Cnz
3850 00           nop
3851 00           nop
3852 c0           ret Cnz
3853 80           Aadd a, Rb
3854 c0           ret Cnz
3855 00           nop
3856 80           Aadd a, Rb
3857 00           nop
3858 00           nop
3859 00           nop
385a 00           nop
385b 00           nop
385c c0           ret Cnz
385d 80           Aadd a, Rb
385e c0           ret Cnz
385f 80           Aadd a, Rb
3860 00           nop
3861 00           nop
3862 00           nop
3863 00           nop
3864 00           nop
3865 40           ld Rb, Rb
3866 00           nop
3867 40           ld Rb, Rb
3868 00           nop
3869 40           ld Rb, Rb
386a 00           nop
386b 40           ld Rb, Rb
386c 00           nop
386d 40           ld Rb, Rb
386e 00           nop
386f 00           nop
3870 00           nop
3871 00           nop
3872 c0           ret Cnz
3873 00           nop
3874 80           Aadd a, Rb
3875 00           nop
3876 80           Aadd a, Rb
3877 00           nop
3878 80           Aadd a, Rb
3879 00           nop
387a 80           Aadd a, Rb
387b 00           nop
387c 80           Aadd a, Rb
387d 00           nop
387e c0           ret Cnz
387f 00           nop
3880 00           nop
3881 00           nop
3882 00           nop
3883 40           ld Rb, Rb
3884 00           nop
3885 80           Aadd a, Rb
3886 40           ld Rb, Rb
3887 c0           ret Cnz
3888 80           Aadd a, Rb
3889 00           nop
388a 40           ld Rb, Rb
388b c0           ret Cnz
388c 00           nop
388d 80           Aadd a, Rb
388e 00           nop
388f 40           ld Rb, Rb
3890 00           nop
3891 00           nop
3892 00           nop
3893 00           nop
3894 80           Aadd a, Rb
3895 00           nop
3896 c0           ret Cnz
3897 00           nop
3898 00           nop
3899 80           Aadd a, Rb
389a c0           ret Cnz
389b 00           nop
389c 80           Aadd a, Rb
389d 00           nop
389e 00           nop
389f 00           nop
38a0 00           nop
38a1 00           nop
38a2 00           nop
38a3 c0           ret Cnz
38a4 00           nop
38a5 40           ld Rb, Rb
38a6 00           nop
38a7 40           ld Rb, Rb
38a8 00           nop
38a9 40           ld Rb, Rb
38aa 00           nop
38ab 40           ld Rb, Rb
38ac 00           nop
38ad 40           ld Rb, Rb
38ae 00           nop
38af c0           ret Cnz
38b0 00           nop
38b1 00           nop
38b2 00           nop
38b3 00           nop
38b4 80           Aadd a, Rb
38b5 00           nop
38b6 80           Aadd a, Rb
38b7 00           nop
38b8 80           Aadd a, Rb
38b9 00           nop
38ba 80           Aadd a, Rb
38bb 00           nop
38bc 80           Aadd a, Rb
38bd 00           nop
38be 00           nop
38bf 00           nop
38c0 00           nop
38c1 00           nop
38c2 00           nop
38c3 80           Aadd a, Rb
38c4 00           nop
38c5 c0           ret Cnz
38c6 40           ld Rb, Rb
38c7 40           ld Rb, Rb
38c8 40           ld Rb, Rb
38c9 40           ld Rb, Rb
38ca 00           nop
38cb c0           ret Cnz
38cc 00           nop
38cd 40           ld Rb, Rb
38ce 00           nop
38cf c0           ret Cnz
38d0 00           nop
38d1 00           nop
38d2 40           ld Rb, Rb
38d3 00           nop
38d4 c0           ret Cnz
38d5 00           nop
38d6 80           Aadd a, Rb
38d7 80           Aadd a, Rb
38d8 80           Aadd a, Rb
38d9 80           Aadd a, Rb
38da c0           ret Cnz
38db 00           nop
38dc 80           Aadd a, Rb
38dd 00           nop
38de c0           ret Cnz
38df 00           nop
38e0 00           nop
38e1 00           nop
38e2 00           nop
38e3 00           nop
38e4 00           nop
38e5 00           nop
38e6 00           nop
38e7 00           nop
38e8 c0           ret Cnz
38e9 c0           ret Cnz
38ea 00           nop
38eb 00           nop
38ec 00           nop
38ed 00           nop
38ee 00           nop
38ef 00           nop
38f0 00           nop
38f1 00           nop
38f2 00           nop
38f3 00           nop
38f4 00           nop
38f5 00           nop
38f6 00           nop
38f7 00           nop
38f8 c0           ret Cnz
38f9 c0           ret Cnz
38fa 00           nop
38fb 00           nop
38fc 00           nop
38fd 00           nop
38fe 00           nop
38ff 00           nop
3900 cc30cc       call Cz, W0xcc30
3903 30cc         jr Cnc, D$ - 50
3905 30cc         jr Cnc, D$ - 50
3907 30cc         jr Cnc, D$ - 50
3909 30cc         jr Cnc, D$ - 50
390b 30cc         jr Cnc, D$ - 50
390d 30cc         jr Cnc, D$ - 50
390f 3030         jr Cnc, D$ + 50
3911 3030         jr Cnc, D$ + 50
3913 3030         jr Cnc, D$ + 50
3915 3030         jr Cnc, D$ + 50
3917 3030         jr Cnc, D$ + 50
3919 3030         jr Cnc, D$ + 50
391b 3030         jr Cnc, D$ + 50
391d 3030         jr Cnc, D$ + 50
391f 3030         jr Cnc, D$ + 50
3921 3030         jr Cnc, D$ + 50
3923 3030         jr Cnc, D$ + 50
3925 3030         jr Cnc, D$ + 50
3927 3030         jr Cnc, D$ + 50
3929 3030         jr Cnc, D$ + 50
392b 3030         jr Cnc, D$ + 50
392d 3030         jr Cnc, D$ + 50
392f 3030         jr Cnc, D$ + 50
3931 3030         jr Cnc, D$ + 50
3933 3030         jr Cnc, D$ + 50
3935 3030         jr Cnc, D$ + 50
3937 3030         jr Cnc, D$ + 50
3939 3030         jr Cnc, D$ + 50
393b 3030         jr Cnc, D$ + 50
393d 3030         jr Cnc, D$ + 50
393f 3061         jr Cnc, D$ + 99
3941 73           ld R(hl), Re
3942 3033         jr Cnc, D$ + 53
3944 3075         jr Cnc, D$ + 119
3946 3030         jr Cnc, D$ + 50
3948 3030         jr Cnc, D$ + 50
394a 3030         jr Cnc, D$ + 50
394c 3030         jr Cnc, D$ + 50
394e 3030         jr Cnc, D$ + 50
3950 43           ld Rb, Re
3951 73           ld R(hl), Re
3952 03           inc Pbc
3953 33           inc Psp
3954 4f           ld Rc, Ra
3955 7f           ld Ra, Ra
3956 0f           rrca
3957 3f           ccf
3958 73           ld R(hl), Re
3959 43           ld Rb, Re
395a 33           inc Psp
395b 03           inc Pbc
395c 7f           ld Ra, Ra
395d 4f           ld Rc, Ra
395e 3f           ccf
395f 0f           rrca
3960 cc30cc       call Cz, W0xcc30
3963 30cc         jr Cnc, D$ - 50
3965 30cc         jr Cnc, D$ - 50
3967 30cc         jr Cnc, D$ - 50
3969 30cc         jr Cnc, D$ - 50
396b 30cc         jr Cnc, D$ - 50
396d 30cc         jr Cnc, D$ - 50
396f 3043         jr Cnc, D$ + 69
3971 73           ld R(hl), Re
3972 03           inc Pbc
3973 33           inc Psp
3974 4f           ld Rc, Ra
3975 7f           ld Ra, Ra
3976 0f           rrca
3977 3f           ccf
3978 73           ld R(hl), Re
3979 43           ld Rb, Re
397a 33           inc Psp
397b 03           inc Pbc
397c 7f           ld Ra, Ra
397d 4f           ld Rc, Ra
397e 3f           ccf
397f 0f           rrca
3980 3030         jr Cnc, D$ + 50
3982 3030         jr Cnc, D$ + 50
3984 3030         jr Cnc, D$ + 50
3986 3030         jr Cnc, D$ + 50
3988 3030         jr Cnc, D$ + 50
398a 3021         jr Cnc, D$ + 35
398c 304f         jr Cnc, D$ + 81
398e 35           dec R(hl)
398f 0f           rrca
3990 43           ld Rb, Re
3991 73           ld R(hl), Re
3992 03           inc Pbc
3993 33           inc Psp
3994 4f           ld Rc, Ra
3995 7f           ld Ra, Ra
3996 0f           rrca
3997 3f           ccf
3998 73           ld R(hl), Re
3999 43           ld Rb, Re
399a 33           inc Psp
399b 03           inc Pbc
399c 7f           ld Ra, Ra
399d 4f           ld Rc, Ra
399e 3f           ccf
399f 0f           rrca
39a0 43           ld Rb, Re
39a1 73           ld R(hl), Re
39a2 03           inc Pbc
39a3 33           inc Psp
39a4 4f           ld Rc, Ra
39a5 7f           ld Ra, Ra
39a6 0f           rrca
39a7 3f           ccf
39a8 73           ld R(hl), Re
39a9 43           ld Rb, Re
39aa 33           inc Psp
39ab 03           inc Pbc
39ac 7f           ld Ra, Ra
39ad 4f           ld Rc, Ra
39ae 3f           ccf
39af 0f           rrca
39b0 cc30cc       call Cz, W0xcc30
39b3 30cc         jr Cnc, D$ - 50
39b5 30cc         jr Cnc, D$ - 50
39b7 30cc         jr Cnc, D$ - 50
39b9 30cc         jr Cnc, D$ - 50
39bb 30cc         jr Cnc, D$ - 50
39bd 30cc         jr Cnc, D$ - 50
39bf 3030         jr Cnc, D$ + 50
39c1 3030         jr Cnc, D$ + 50
39c3 3030         jr Cnc, D$ + 50
39c5 3030         jr Cnc, D$ + 50
39c7 3030         jr Cnc, D$ + 50
39c9 3030         jr Cnc, D$ + 50
39cb 3030         jr Cnc, D$ + 50
39cd 3030         jr Cnc, D$ + 50
39cf 3043         jr Cnc, D$ + 69
39d1 73           ld R(hl), Re
39d2 03           inc Pbc
39d3 33           inc Psp
39d4 4f           ld Rc, Ra
39d5 7f           ld Ra, Ra
39d6 0f           rrca
39d7 3f           ccf
39d8 73           ld R(hl), Re
39d9 43           ld Rb, Re
39da 33           inc Psp
39db 03           inc Pbc
39dc 7f           ld Ra, Ra
39dd 4f           ld Rc, Ra
39de 3f           ccf
39df 0f           rrca
39e0 43           ld Rb, Re
39e1 73           ld R(hl), Re
39e2 03           inc Pbc
39e3 33           inc Psp
39e4 4f           ld Rc, Ra
39e5 7f           ld Ra, Ra
39e6 0f           rrca
39e7 3f           ccf
39e8 73           ld R(hl), Re
39e9 43           ld Rb, Re
39ea 33           inc Psp
39eb 03           inc Pbc
39ec 7f           ld Ra, Ra
39ed 4f           ld Rc, Ra
39ee 3f           ccf
39ef 0f           rrca
39f0 61           ld Rh, Rc
39f1 73           ld R(hl), Re
39f2 3033         jr Cnc, D$ + 53
39f4 3075         jr Cnc, D$ + 119
39f6 3030         jr Cnc, D$ + 50
39f8 3030         jr Cnc, D$ + 50
39fa 3030         jr Cnc, D$ + 50
39fc 3030         jr Cnc, D$ + 50
39fe 3030         jr Cnc, D$ + 50
3a00 43           ld Rb, Re
3a01 73           ld R(hl), Re
3a02 03           inc Pbc
3a03 33           inc Psp
3a04 4f           ld Rc, Ra
3a05 7f           ld Ra, Ra
3a06 0f           rrca
3a07 3f           ccf
3a08 73           ld R(hl), Re
3a09 43           ld Rb, Re
3a0a 33           inc Psp
3a0b 03           inc Pbc
3a0c 7f           ld Ra, Ra
3a0d 4f           ld Rc, Ra
3a0e 3f           ccf
3a0f 0f           rrca
3a10 3030         jr Cnc, D$ + 50
3a12 3030         jr Cnc, D$ + 50
3a14 3030         jr Cnc, D$ + 50
3a16 3030         jr Cnc, D$ + 50
3a18 3030         jr Cnc, D$ + 50
3a1a 3021         jr Cnc, D$ + 35
3a1c 304f         jr Cnc, D$ + 81
3a1e 35           dec R(hl)
3a1f 0f           rrca
3a20 3030         jr Cnc, D$ + 50
3a22 3030         jr Cnc, D$ + 50
3a24 3030         jr Cnc, D$ + 50
3a26 3030         jr Cnc, D$ + 50
3a28 3030         jr Cnc, D$ + 50
3a2a 3030         jr Cnc, D$ + 50
3a2c 3030         jr Cnc, D$ + 50
3a2e 3030         jr Cnc, D$ + 50
3a30 61           ld Rh, Rc
3a31 73           ld R(hl), Re
3a32 3033         jr Cnc, D$ + 53
3a34 3075         jr Cnc, D$ + 119
3a36 3030         jr Cnc, D$ + 50
3a38 3030         jr Cnc, D$ + 50
3a3a 3030         jr Cnc, D$ + 50
3a3c 3030         jr Cnc, D$ + 50
3a3e 3030         jr Cnc, D$ + 50
3a40 3030         jr Cnc, D$ + 50
3a42 3030         jr Cnc, D$ + 50
3a44 3030         jr Cnc, D$ + 50
3a46 3030         jr Cnc, D$ + 50
3a48 3030         jr Cnc, D$ + 50
3a4a 3030         jr Cnc, D$ + 50
3a4c 3030         jr Cnc, D$ + 50
3a4e 3030         jr Cnc, D$ + 50
3a50 3030         jr Cnc, D$ + 50
3a52 3030         jr Cnc, D$ + 50
3a54 3030         jr Cnc, D$ + 50
3a56 3030         jr Cnc, D$ + 50
3a58 3030         jr Cnc, D$ + 50
3a5a 3021         jr Cnc, D$ + 35
3a5c 304f         jr Cnc, D$ + 81
3a5e 35           dec R(hl)
3a5f 0f           rrca
3a60 43           ld Rb, Re
3a61 73           ld R(hl), Re
3a62 03           inc Pbc
3a63 33           inc Psp
3a64 4f           ld Rc, Ra
3a65 7f           ld Ra, Ra
3a66 0f           rrca
3a67 3f           ccf
3a68 73           ld R(hl), Re
3a69 43           ld Rb, Re
3a6a 33           inc Psp
3a6b 03           inc Pbc
3a6c 7f           ld Ra, Ra
3a6d 4f           ld Rc, Ra
3a6e 3f           ccf
3a6f 0f           rrca
3a70 43           ld Rb, Re
3a71 73           ld R(hl), Re
3a72 03           inc Pbc
3a73 33           inc Psp
3a74 4f           ld Rc, Ra
3a75 7f           ld Ra, Ra
3a76 0f           rrca
3a77 3f           ccf
3a78 73           ld R(hl), Re
3a79 43           ld Rb, Re
3a7a 33           inc Psp
3a7b 03           inc Pbc
3a7c 7f           ld Ra, Ra
3a7d 4f           ld Rc, Ra
3a7e 3f           ccf
3a7f 0f           rrca
3a80 c0           ret Cnz
3a81 c0           ret Cnz
3a82 c0           ret Cnz
3a83 c0           ret Cnz
3a84 c0           ret Cnz
3a85 c0           ret Cnz
3a86 c0           ret Cnz
3a87 c0           ret Cnz
3a88 c0           ret Cnz
3a89 c0           ret Cnz
3a8a c0           ret Cnz
3a8b c0           ret Cnz
3a8c c0           ret Cnz
3a8d c0           ret Cnz
3a8e c0           ret Cnz
3a8f c0           ret Cnz
3a90 c0           ret Cnz
3a91 c0           ret Cnz
3a92 c0           ret Cnz
3a93 c0           ret Cnz
3a94 c0           ret Cnz
3a95 c0           ret Cnz
3a96 c0           ret Cnz
3a97 c0           ret Cnz
3a98 c0           ret Cnz
3a99 c0           ret Cnz
3a9a c0           ret Cnz
3a9b c0           ret Cnz
3a9c c0           ret Cnz
3a9d c0           ret Cnz
3a9e c0           ret Cnz
3a9f c0           ret Cnz
3aa0 c0           ret Cnz
3aa1 c0           ret Cnz
3aa2 c0           ret Cnz
3aa3 c0           ret Cnz
3aa4 c0           ret Cnz
3aa5 c0           ret Cnz
3aa6 c0           ret Cnz
3aa7 c0           ret Cnz
3aa8 c0           ret Cnz
3aa9 c0           ret Cnz
3aaa c0           ret Cnz
3aab c0           ret Cnz
3aac c0           ret Cnz
3aad c0           ret Cnz
3aae c0           ret Cnz
3aaf c0           ret Cnz
3ab0 43           ld Rb, Re
3ab1 73           ld R(hl), Re
3ab2 03           inc Pbc
3ab3 33           inc Psp
3ab4 4f           ld Rc, Ra
3ab5 7f           ld Ra, Ra
3ab6 0f           rrca
3ab7 3f           ccf
3ab8 73           ld R(hl), Re
3ab9 43           ld Rb, Re
3aba 33           inc Psp
3abb 03           inc Pbc
3abc 7f           ld Ra, Ra
3abd 4f           ld Rc, Ra
3abe 3f           ccf
3abf 0f           rrca
3ac0 43           ld Rb, Re
3ac1 73           ld R(hl), Re
3ac2 03           inc Pbc
3ac3 33           inc Psp
3ac4 4f           ld Rc, Ra
3ac5 7f           ld Ra, Ra
3ac6 0f           rrca
3ac7 3f           ccf
3ac8 73           ld R(hl), Re
3ac9 43           ld Rb, Re
3aca 33           inc Psp
3acb 03           inc Pbc
3acc 7f           ld Ra, Ra
3acd 4f           ld Rc, Ra
3ace 3f           ccf
3acf 0f           rrca
3ad0 c0           ret Cnz
3ad1 c0           ret Cnz
3ad2 c0           ret Cnz
3ad3 c0           ret Cnz
3ad4 c0           ret Cnz
3ad5 c0           ret Cnz
3ad6 c0           ret Cnz
3ad7 c0           ret Cnz
3ad8 c0           ret Cnz
3ad9 c0           ret Cnz
3ada c0           ret Cnz
3adb c0           ret Cnz
3adc c0           ret Cnz
3add c0           ret Cnz
3ade c0           ret Cnz
3adf c0           ret Cnz
3ae0 00           nop
3ae1 00           nop
3ae2 00           nop
3ae3 00           nop
3ae4 00           nop
3ae5 00           nop
3ae6 00           nop
3ae7 00           nop
3ae8 00           nop
3ae9 00           nop
3aea 00           nop
3aeb 00           nop
3aec 00           nop
3aed 00           nop
3aee 00           nop
3aef 00           nop
3af0 00           nop
3af1 00           nop
3af2 00           nop
3af3 00           nop
3af4 00           nop
3af5 00           nop
3af6 00           nop
3af7 00           nop
3af8 00           nop
3af9 00           nop
3afa 00           nop
3afb 00           nop
3afc 00           nop
3afd 00           nop
3afe 00           nop
3aff 00           nop
3b00 00           nop
3b01 00           nop
3b02 00           nop
3b03 00           nop
3b04 00           nop
3b05 00           nop
3b06 00           nop
3b07 00           nop
3b08 00           nop
3b09 00           nop
3b0a 00           nop
3b0b 00           nop
3b0c 00           nop
3b0d 00           nop
3b0e 00           nop
3b0f 00           nop
3b10 00           nop
3b11 00           nop
3b12 00           nop
3b13 00           nop
3b14 00           nop
3b15 00           nop
3b16 00           nop
3b17 00           nop
3b18 00           nop
3b19 00           nop
3b1a 00           nop
3b1b 00           nop
3b1c 00           nop
3b1d 00           nop
3b1e 00           nop
3b1f 00           nop
3b20 00           nop
3b21 00           nop
3b22 00           nop
3b23 00           nop
3b24 00           nop
3b25 00           nop
3b26 00           nop
3b27 00           nop
3b28 00           nop
3b29 00           nop
3b2a 00           nop
3b2b 00           nop
3b2c 00           nop
3b2d 00           nop
3b2e 00           nop
3b2f 00           nop
3b30 00           nop
3b31 00           nop
3b32 00           nop
3b33 00           nop
3b34 00           nop
3b35 00           nop
3b36 00           nop
3b37 00           nop
3b38 00           nop
3b39 00           nop
3b3a 00           nop
3b3b 00           nop
3b3c 00           nop
3b3d 00           nop
3b3e 00           nop
3b3f 00           nop
3b40 00           nop
3b41 00           nop
3b42 00           nop
3b43 00           nop
3b44 00           nop
3b45 00           nop
3b46 00           nop
3b47 00           nop
3b48 00           nop
3b49 00           nop
3b4a 00           nop
3b4b 00           nop
3b4c 00           nop
3b4d 00           nop
3b4e 00           nop
3b4f 00           nop
3b50 00           nop
3b51 00           nop
3b52 00           nop
3b53 00           nop
3b54 00           nop
3b55 00           nop
3b56 00           nop
3b57 00           nop
3b58 00           nop
3b59 00           nop
3b5a 00           nop
3b5b 00           nop
3b5c 00           nop
3b5d 00           nop
3b5e 00           nop
3b5f 00           nop
3b60 00           nop
3b61 00           nop
3b62 00           nop
3b63 00           nop
3b64 00           nop
3b65 00           nop
3b66 00           nop
3b67 00           nop
3b68 00           nop
3b69 00           nop
3b6a 00           nop
3b6b 00           nop
3b6c 00           nop
3b6d 00           nop
3b6e 00           nop
3b6f 00           nop
3b70 00           nop
3b71 00           nop
3b72 00           nop
3b73 00           nop
3b74 00           nop
3b75 00           nop
3b76 00           nop
3b77 00           nop
3b78 00           nop
3b79 00           nop
3b7a 00           nop
3b7b 00           nop
3b7c 00           nop
3b7d 00           nop
3b7e 00           nop
3b7f 00           nop
3b80 40           ld Rb, Rb
3b81 f0           ret Cp
3b82 f0           ret Cp
3b83 f0           ret Cp
3b84 f0           ret Cp
3b85 00           nop
3b86 00           nop
3b87 00           nop
3b88 00           nop
3b89 f0           ret Cp
3b8a f0           ret Cp
3b8b 00           nop
3b8c 00           nop
3b8d 00           nop
3b8e 00           nop
3b8f a0           Aand Rb
3b90 00           nop
3b91 00           nop
3b92 a0           Aand Rb
3b93 00           nop
3b94 00           nop
3b95 00           nop
3b96 00           nop
3b97 00           nop
3b98 00           nop
3b99 a0           Aand Rb
3b9a 00           nop
3b9b 00           nop
3b9c 00           nop
3b9d 00           nop
3b9e 00           nop
3b9f 00           nop
3ba0 a0           Aand Rb
3ba1 00           nop
3ba2 00           nop
3ba3 00           nop
3ba4 00           nop
3ba5 00           nop
3ba6 00           nop
3ba7 a0           Aand Rb
3ba8 00           nop
3ba9 00           nop
3baa 00           nop
3bab 00           nop
3bac 00           nop
3bad 00           nop
3bae a0           Aand Rb
3baf 00           nop
3bb0 00           nop
3bb1 00           nop
3bb2 00           nop
3bb3 00           nop
3bb4 00           nop
3bb5 a0           Aand Rb
3bb6 00           nop
3bb7 00           nop
3bb8 00           nop
3bb9 00           nop
3bba 00           nop
3bbb 00           nop
3bbc a0           Aand Rb
3bbd 00           nop
3bbe 00           nop
3bbf 00           nop
3bc0 00           nop
3bc1 00           nop
3bc2 00           nop
3bc3 a0           Aand Rb
3bc4 00           nop
3bc5 00           nop
3bc6 00           nop
3bc7 00           nop
3bc8 00           nop
3bc9 00           nop
3bca f0           ret Cp
3bcb f0           ret Cp
3bcc f0           ret Cp
3bcd f0           ret Cp
3bce f0           ret Cp
3bcf 80           Aadd a, Rb
3bd0 40           ld Rb, Rb
3bd1 f0           ret Cp
3bd2 f0           ret Cp
3bd3 f0           ret Cp
3bd4 f0           ret Cp
3bd5 00           nop
3bd6 00           nop
3bd7 50           ld Rd, Rb
3bd8 00           nop
3bd9 00           nop
3bda 00           nop
3bdb 00           nop
3bdc a0           Aand Rb
3bdd 00           nop
3bde 00           nop
3bdf a0           Aand Rb
3be0 00           nop
3be1 00           nop
3be2 a0           Aand Rb
3be3 00           nop
3be4 00           nop
3be5 00           nop
3be6 00           nop
3be7 00           nop
3be8 f0           ret Cp
3be9 a0           Aand Rb
3bea 00           nop
3beb 00           nop
3bec 00           nop
3bed 00           nop
3bee 00           nop
3bef f0           ret Cp
3bf0 a0           Aand Rb
3bf1 00           nop
3bf2 00           nop
3bf3 f0           ret Cp
3bf4 a0           Aand Rb
3bf5 00           nop
3bf6 00           nop
3bf7 a0           Aand Rb
3bf8 00           nop
3bf9 00           nop
3bfa 00           nop
3bfb 00           nop
3bfc 00           nop
3bfd f0           ret Cp
3bfe f0           ret Cp
3bff a0           Aand Rb
3c00 00           nop
3c01 00           nop
3c02 00           nop
3c03 00           nop
3c04 00           nop
3c05 a0           Aand Rb
3c06 00           nop
3c07 00           nop
3c08 f0           ret Cp
3c09 a0           Aand Rb
3c0a 00           nop
3c0b 00           nop
3c0c a0           Aand Rb
3c0d 00           nop
3c0e 00           nop
3c0f 00           nop
3c10 00           nop
3c11 00           nop
3c12 50           ld Rd, Rb
3c13 f0           ret Cp
3c14 f0           ret Cp
3c15 a0           Aand Rb
3c16 00           nop
3c17 00           nop
3c18 f0           ret Cp
3c19 f0           ret Cp
3c1a f0           ret Cp
3c1b f0           ret Cp
3c1c f0           ret Cp
3c1d f0           ret Cp
3c1e f0           ret Cp
3c1f 80           Aadd a, Rb
3c20 40           ld Rb, Rb
3c21 f0           ret Cp
3c22 f0           ret Cp
3c23 f0           ret Cp
3c24 f0           ret Cp
3c25 f0           ret Cp
3c26 f0           ret Cp
3c27 f0           ret Cp
3c28 f0           ret Cp
3c29 f0           ret Cp
3c2a f0           ret Cp
3c2b f0           ret Cp
3c2c f0           ret Cp
3c2d f0           ret Cp
3c2e f0           ret Cp
3c2f f0           ret Cp
3c30 f0           ret Cp
3c31 f0           ret Cp
3c32 f0           ret Cp
3c33 f0           ret Cp
3c34 f0           ret Cp
3c35 f0           ret Cp
3c36 f0           ret Cp
3c37 f0           ret Cp
3c38 f0           ret Cp
3c39 f0           ret Cp
3c3a f0           ret Cp
3c3b f0           ret Cp
3c3c f0           ret Cp
3c3d f0           ret Cp
3c3e f0           ret Cp
3c3f f0           ret Cp
3c40 f0           ret Cp
3c41 f0           ret Cp
3c42 f0           ret Cp
3c43 f0           ret Cp
3c44 f0           ret Cp
3c45 f0           ret Cp
3c46 f0           ret Cp
3c47 f0           ret Cp
3c48 f0           ret Cp
3c49 f0           ret Cp
3c4a f0           ret Cp
3c4b f0           ret Cp
3c4c f0           ret Cp
3c4d f0           ret Cp
3c4e f0           ret Cp
3c4f f0           ret Cp
3c50 f0           ret Cp
3c51 f0           ret Cp
3c52 f0           ret Cp
3c53 f0           ret Cp
3c54 f0           ret Cp
3c55 f0           ret Cp
3c56 f0           ret Cp
3c57 f0           ret Cp
3c58 f0           ret Cp
3c59 f0           ret Cp
3c5a f0           ret Cp
3c5b f0           ret Cp
3c5c f0           ret Cp
3c5d f0           ret Cp
3c5e f0           ret Cp
3c5f f0           ret Cp
3c60 f0           ret Cp
3c61 f0           ret Cp
3c62 f0           ret Cp
3c63 f0           ret Cp
3c64 f0           ret Cp
3c65 f0           ret Cp
3c66 f0           ret Cp
3c67 f0           ret Cp
3c68 f0           ret Cp
3c69 f0           ret Cp
3c6a f0           ret Cp
3c6b f0           ret Cp
3c6c f0           ret Cp
3c6d f0           ret Cp
3c6e f0           ret Cp
3c6f 80           Aadd a, Rb
3c70 00           nop
3c71 00           nop
3c72 00           nop
3c73 00           nop
3c74 00           nop
3c75 00           nop
3c76 00           nop
3c77 00           nop
3c78 00           nop
3c79 00           nop
3c7a 00           nop
3c7b 00           nop
3c7c 00           nop
3c7d 00           nop
3c7e 00           nop
3c7f 00           nop
3c80 00           nop
3c81 00           nop
3c82 00           nop
3c83 00           nop
3c84 00           nop
3c85 00           nop
3c86 00           nop
3c87 00           nop
3c88 00           nop
3c89 00           nop
3c8a 00           nop
3c8b 00           nop
3c8c 00           nop
3c8d 00           nop
3c8e 00           nop
3c8f 00           nop
3c90 00           nop
3c91 00           nop
3c92 00           nop
3c93 00           nop
3c94 00           nop
3c95 00           nop
3c96 00           nop
3c97 00           nop
3c98 00           nop
3c99 00           nop
3c9a 00           nop
3c9b 00           nop
3c9c 00           nop
3c9d 00           nop
3c9e 00           nop
3c9f 00           nop
3ca0 00           nop
3ca1 00           nop
3ca2 00           nop
3ca3 00           nop
3ca4 00           nop
3ca5 00           nop
3ca6 00           nop
3ca7 00           nop
3ca8 00           nop
3ca9 00           nop
3caa 00           nop
3cab 00           nop
3cac 00           nop
3cad 00           nop
3cae 00           nop
3caf 00           nop
3cb0 00           nop
3cb1 00           nop
3cb2 00           nop
3cb3 00           nop
3cb4 00           nop
3cb5 00           nop
3cb6 00           nop
3cb7 00           nop
3cb8 00           nop
3cb9 00           nop
3cba 00           nop
3cbb 00           nop
3cbc 00           nop
3cbd 00           nop
3cbe 00           nop
3cbf 00           nop
3cc0 00           nop
3cc1 00           nop
3cc2 00           nop
3cc3 00           nop
3cc4 00           nop
3cc5 00           nop
3cc6 00           nop
3cc7 00           nop
3cc8 00           nop
3cc9 00           nop
3cca 00           nop
3ccb 00           nop
3ccc 00           nop
3ccd 00           nop
3cce 00           nop
3ccf 00           nop
3cd0 00           nop
3cd1 00           nop
3cd2 00           nop
3cd3 00           nop
3cd4 00           nop
3cd5 00           nop
3cd6 00           nop
3cd7 00           nop
3cd8 00           nop
3cd9 00           nop
3cda 00           nop
3cdb 00           nop
3cdc 00           nop
3cdd 00           nop
3cde 00           nop
3cdf 00           nop
3ce0 00           nop
3ce1 00           nop
3ce2 00           nop
3ce3 00           nop
3ce4 00           nop
3ce5 00           nop
3ce6 00           nop
3ce7 00           nop
3ce8 00           nop
3ce9 00           nop
3cea 00           nop
3ceb 00           nop
3cec 00           nop
3ced 00           nop
3cee 00           nop
3cef 00           nop
3cf0 00           nop
3cf1 00           nop
3cf2 00           nop
3cf3 00           nop
3cf4 00           nop
3cf5 00           nop
3cf6 00           nop
3cf7 00           nop
3cf8 00           nop
3cf9 00           nop
3cfa 00           nop
3cfb 00           nop
3cfc 00           nop
3cfd 00           nop
3cfe 00           nop
3cff 00           nop
3d00 00           nop
3d01 00           nop
3d02 00           nop
3d03 00           nop
3d04 00           nop
3d05 00           nop
3d06 00           nop
3d07 00           nop
3d08 00           nop
3d09 00           nop
3d0a 00           nop
3d0b 00           nop
3d0c 00           nop
3d0d 00           nop
3d0e 00           nop
3d0f 00           nop
3d10 40           ld Rb, Rb
3d11 c0           ret Cnz
3d12 c0           ret Cnz
3d13 c0           ret Cnz
3d14 c0           ret Cnz
3d15 c0           ret Cnz
3d16 c0           ret Cnz
3d17 c0           ret Cnz
3d18 c0           ret Cnz
3d19 c0           ret Cnz
3d1a c0           ret Cnz
3d1b c0           ret Cnz
3d1c c0           ret Cnz
3d1d c0           ret Cnz
3d1e c0           ret Cnz
3d1f c0           ret Cnz
3d20 c0           ret Cnz
3d21 c0           ret Cnz
3d22 c0           ret Cnz
3d23 c0           ret Cnz
3d24 c0           ret Cnz
3d25 c0           ret Cnz
3d26 c0           ret Cnz
3d27 c0           ret Cnz
3d28 c0           ret Cnz
3d29 c0           ret Cnz
3d2a c0           ret Cnz
3d2b c0           ret Cnz
3d2c c0           ret Cnz
3d2d c0           ret Cnz
3d2e c0           ret Cnz
3d2f c0           ret Cnz
3d30 c0           ret Cnz
3d31 c0           ret Cnz
3d32 c0           ret Cnz
3d33 c0           ret Cnz
3d34 c0           ret Cnz
3d35 c0           ret Cnz
3d36 c0           ret Cnz
3d37 c0           ret Cnz
3d38 c0           ret Cnz
3d39 c0           ret Cnz
3d3a c0           ret Cnz
3d3b c0           ret Cnz
3d3c c0           ret Cnz
3d3d c0           ret Cnz
3d3e c0           ret Cnz
3d3f c0           ret Cnz
3d40 c0           ret Cnz
3d41 c0           ret Cnz
3d42 c0           ret Cnz
3d43 c0           ret Cnz
3d44 c0           ret Cnz
3d45 c0           ret Cnz
3d46 c0           ret Cnz
3d47 c0           ret Cnz
3d48 c0           ret Cnz
3d49 c0           ret Cnz
3d4a c0           ret Cnz
3d4b c0           ret Cnz
3d4c c0           ret Cnz
3d4d c0           ret Cnz
3d4e c0           ret Cnz
3d4f c0           ret Cnz
3d50 c0           ret Cnz
3d51 c0           ret Cnz
3d52 c0           ret Cnz
3d53 c0           ret Cnz
3d54 c0           ret Cnz
3d55 c0           ret Cnz
3d56 c0           ret Cnz
3d57 c0           ret Cnz
3d58 c0           ret Cnz
3d59 c0           ret Cnz
3d5a c0           ret Cnz
3d5b c0           ret Cnz
3d5c c0           ret Cnz
3d5d c0           ret Cnz
3d5e c0           ret Cnz
3d5f 80           Aadd a, Rb
3d60 40           ld Rb, Rb
3d61 f0           ret Cp
3d62 f0           ret Cp
3d63 f0           ret Cp
3d64 f0           ret Cp
3d65 c0           ret Cnz
3d66 c0           ret Cnz
3d67 c0           ret Cnz
3d68 c0           ret Cnz
3d69 d0           ret Cnc
3d6a e0           ret Cpo
3d6b c0           ret Cnz
3d6c c0           ret Cnz
3d6d c0           ret Cnz
3d6e c0           ret Cnz
3d6f e0           ret Cpo
3d70 c0           ret Cnz
3d71 c0           ret Cnz
3d72 e0           ret Cpo
3d73 c0           ret Cnz
3d74 c0           ret Cnz
3d75 c0           ret Cnz
3d76 c0           ret Cnz
3d77 c0           ret Cnz
3d78 c0           ret Cnz
3d79 e0           ret Cpo
3d7a c0           ret Cnz
3d7b c0           ret Cnz
3d7c c0           ret Cnz
3d7d c0           ret Cnz
3d7e c0           ret Cnz
3d7f c0           ret Cnz
3d80 e0           ret Cpo
3d81 c0           ret Cnz
3d82 c0           ret Cnz
3d83 c0           ret Cnz
3d84 c0           ret Cnz
3d85 c0           ret Cnz
3d86 c0           ret Cnz
3d87 e0           ret Cpo
3d88 c0           ret Cnz
3d89 c0           ret Cnz
3d8a c0           ret Cnz
3d8b c0           ret Cnz
3d8c c0           ret Cnz
3d8d c0           ret Cnz
3d8e e0           ret Cpo
3d8f c0           ret Cnz
3d90 c0           ret Cnz
3d91 c0           ret Cnz
3d92 c0           ret Cnz
3d93 c0           ret Cnz
3d94 c0           ret Cnz
3d95 e0           ret Cpo
3d96 c0           ret Cnz
3d97 c0           ret Cnz
3d98 c0           ret Cnz
3d99 c0           ret Cnz
3d9a c0           ret Cnz
3d9b c0           ret Cnz
3d9c e0           ret Cpo
3d9d c0           ret Cnz
3d9e c0           ret Cnz
3d9f c0           ret Cnz
3da0 c0           ret Cnz
3da1 c0           ret Cnz
3da2 c0           ret Cnz
3da3 e0           ret Cpo
3da4 c0           ret Cnz
3da5 c0           ret Cnz
3da6 c0           ret Cnz
3da7 c0           ret Cnz
3da8 c0           ret Cnz
3da9 c0           ret Cnz
3daa f0           ret Cp
3dab f0           ret Cp
3dac f0           ret Cp
3dad f0           ret Cp
3dae f0           ret Cp
3daf 80           Aadd a, Rb
3db0 40           ld Rb, Rb
3db1 f0           ret Cp
3db2 f0           ret Cp
3db3 f0           ret Cp
3db4 f0           ret Cp
3db5 c0           ret Cnz
3db6 c0           ret Cnz
3db7 d0           ret Cnc
3db8 c0           ret Cnz
3db9 c0           ret Cnz
3dba c0           ret Cnz
3dbb c0           ret Cnz
3dbc e0           ret Cpo
3dbd c0           ret Cnz
3dbe c0           ret Cnz
3dbf e0           ret Cpo
3dc0 c0           ret Cnz
3dc1 c0           ret Cnz
3dc2 e0           ret Cpo
3dc3 c0           ret Cnz
3dc4 c0           ret Cnz
3dc5 c0           ret Cnz
3dc6 c0           ret Cnz
3dc7 f0           ret Cp
3dc8 f0           ret Cp
3dc9 e0           ret Cpo
3dca c0           ret Cnz
3dcb c0           ret Cnz
3dcc c0           ret Cnz
3dcd c0           ret Cnz
3dce f0           ret Cp
3dcf f0           ret Cp
3dd0 e0           ret Cpo
3dd1 c0           ret Cnz
3dd2 c0           ret Cnz
3dd3 f0           ret Cp
3dd4 e0           ret Cpo
3dd5 c0           ret Cnz
3dd6 c0           ret Cnz
3dd7 e0           ret Cpo
3dd8 c0           ret Cnz
3dd9 c0           ret Cnz
3dda c0           ret Cnz
3ddb c0           ret Cnz
3ddc f0           ret Cp
3ddd f0           ret Cp
3dde f0           ret Cp
3ddf f0           ret Cp
3de0 f0           ret Cp
3de1 f0           ret Cp
3de2 e0           ret Cpo
3de3 c0           ret Cnz
3de4 c0           ret Cnz
3de5 e0           ret Cpo
3de6 c0           ret Cnz
3de7 c0           ret Cnz
3de8 f0           ret Cp
3de9 e0           ret Cpo
3dea c0           ret Cnz
3deb c0           ret Cnz
3dec e0           ret Cpo
3ded c0           ret Cnz
3dee c0           ret Cnz
3def c0           ret Cnz
3df0 c0           ret Cnz
3df1 c0           ret Cnz
3df2 d0           ret Cnc
3df3 f0           ret Cp
3df4 f0           ret Cp
3df5 e0           ret Cpo
3df6 c0           ret Cnz
3df7 c0           ret Cnz
3df8 f0           ret Cp
3df9 f0           ret Cp
3dfa f0           ret Cp
3dfb f0           ret Cp
3dfc f0           ret Cp
3dfd f0           ret Cp
3dfe f0           ret Cp
3dff 80           Aadd a, Rb
3e00 40           ld Rb, Rb
3e01 f0           ret Cp
3e02 f0           ret Cp
3e03 f0           ret Cp
3e04 f0           ret Cp
3e05 f0           ret Cp
3e06 f0           ret Cp
3e07 f0           ret Cp
3e08 f0           ret Cp
3e09 f0           ret Cp
3e0a f0           ret Cp
3e0b f0           ret Cp
3e0c f0           ret Cp
3e0d f0           ret Cp
3e0e f0           ret Cp
3e0f f0           ret Cp
3e10 f0           ret Cp
3e11 f0           ret Cp
3e12 f0           ret Cp
3e13 f0           ret Cp
3e14 f0           ret Cp
3e15 f0           ret Cp
3e16 f0           ret Cp
3e17 f0           ret Cp
3e18 f0           ret Cp
3e19 f0           ret Cp
3e1a f0           ret Cp
3e1b f0           ret Cp
3e1c f0           ret Cp
3e1d f0           ret Cp
3e1e f0           ret Cp
3e1f f0           ret Cp
3e20 f0           ret Cp
3e21 f0           ret Cp
3e22 f0           ret Cp
3e23 f0           ret Cp
3e24 f0           ret Cp
3e25 f0           ret Cp
3e26 f0           ret Cp
3e27 f0           ret Cp
3e28 f0           ret Cp
3e29 f0           ret Cp
3e2a f0           ret Cp
3e2b f0           ret Cp
3e2c f0           ret Cp
3e2d f0           ret Cp
3e2e f0           ret Cp
3e2f f0           ret Cp
3e30 f0           ret Cp
3e31 f0           ret Cp
3e32 f0           ret Cp
3e33 f0           ret Cp
3e34 f0           ret Cp
3e35 f0           ret Cp
3e36 f0           ret Cp
3e37 f0           ret Cp
3e38 f0           ret Cp
3e39 f0           ret Cp
3e3a f0           ret Cp
3e3b f0           ret Cp
3e3c f0           ret Cp
3e3d f0           ret Cp
3e3e f0           ret Cp
3e3f f0           ret Cp
3e40 f0           ret Cp
3e41 f0           ret Cp
3e42 f0           ret Cp
3e43 f0           ret Cp
3e44 f0           ret Cp
3e45 f0           ret Cp
3e46 f0           ret Cp
3e47 f0           ret Cp
3e48 f0           ret Cp
3e49 f0           ret Cp
3e4a f0           ret Cp
3e4b f0           ret Cp
3e4c f0           ret Cp
3e4d f0           ret Cp
3e4e f0           ret Cp
3e4f 80           Aadd a, Rb
3e50 00           nop
3e51 00           nop
3e52 00           nop
3e53 00           nop
3e54 00           nop
3e55 00           nop
3e56 00           nop
3e57 00           nop
3e58 00           nop
3e59 00           nop
3e5a 00           nop
3e5b 00           nop
3e5c 00           nop
3e5d 00           nop
3e5e 00           nop
3e5f 00           nop
3e60 00           nop
3e61 00           nop
3e62 00           nop
3e63 00           nop
3e64 00           nop
3e65 00           nop
3e66 00           nop
3e67 00           nop
3e68 00           nop
3e69 00           nop
3e6a 00           nop
3e6b 00           nop
3e6c 00           nop
3e6d 00           nop
3e6e 00           nop
3e6f 00           nop
3e70 00           nop
3e71 00           nop
3e72 00           nop
3e73 00           nop
3e74 00           nop
3e75 00           nop
3e76 00           nop
3e77 00           nop
3e78 00           nop
3e79 00           nop
3e7a 00           nop
3e7b 00           nop
3e7c 00           nop
3e7d 00           nop
3e7e 00           nop
3e7f 00           nop
3e80 00           nop
3e81 00           nop
3e82 00           nop
3e83 00           nop
3e84 00           nop
3e85 00           nop
3e86 00           nop
3e87 00           nop
3e88 00           nop
3e89 00           nop
3e8a 00           nop
3e8b 00           nop
3e8c 00           nop
3e8d 00           nop
3e8e 00           nop
3e8f 00           nop
3e90 00           nop
3e91 00           nop
3e92 00           nop
3e93 00           nop
3e94 00           nop
3e95 00           nop
3e96 00           nop
3e97 00           nop
3e98 00           nop
3e99 00           nop
3e9a 00           nop
3e9b 00           nop
3e9c 00           nop
3e9d 00           nop
3e9e 00           nop
3e9f 00           nop
3ea0 00           nop
3ea1 00           nop
3ea2 00           nop
3ea3 00           nop
3ea4 00           nop
3ea5 00           nop
3ea6 00           nop
3ea7 00           nop
3ea8 00           nop
3ea9 00           nop
3eaa 00           nop
3eab 00           nop
3eac 00           nop
3ead 00           nop
3eae 00           nop
3eaf 00           nop
3eb0 00           nop
3eb1 00           nop
3eb2 00           nop
3eb3 00           nop
3eb4 00           nop
3eb5 00           nop
3eb6 00           nop
3eb7 00           nop
3eb8 00           nop
3eb9 00           nop
3eba 00           nop
3ebb 00           nop
3ebc 00           nop
3ebd 00           nop
3ebe 00           nop
3ebf 00           nop
3ec0 00           nop
3ec1 00           nop
3ec2 00           nop
3ec3 00           nop
3ec4 00           nop
3ec5 00           nop
3ec6 00           nop
3ec7 00           nop
3ec8 00           nop
3ec9 00           nop
3eca 00           nop
3ecb 00           nop
3ecc 00           nop
3ecd 00           nop
3ece 00           nop
3ecf 00           nop
3ed0 00           nop
3ed1 00           nop
3ed2 00           nop
3ed3 00           nop
3ed4 00           nop
3ed5 00           nop
3ed6 00           nop
3ed7 00           nop
3ed8 00           nop
3ed9 00           nop
3eda 00           nop
3edb 00           nop
3edc 00           nop
3edd 00           nop
3ede 00           nop
3edf 00           nop
3ee0 00           nop
3ee1 00           nop
3ee2 00           nop
3ee3 00           nop
3ee4 00           nop
3ee5 00           nop
3ee6 00           nop
3ee7 00           nop
3ee8 00           nop
3ee9 00           nop
3eea 00           nop
3eeb 00           nop
3eec 00           nop
3eed 00           nop
3eee 00           nop
3eef 00           nop
3ef0 40           ld Rb, Rb
3ef1 f0           ret Cp
3ef2 f0           ret Cp
3ef3 f0           ret Cp
3ef4 f0           ret Cp
3ef5 f0           ret Cp
3ef6 f0           ret Cp
3ef7 f0           ret Cp
3ef8 f0           ret Cp
3ef9 f0           ret Cp
3efa f0           ret Cp
3efb f0           ret Cp
3efc f0           ret Cp
3efd f0           ret Cp
3efe f0           ret Cp
3eff f0           ret Cp
3f00 f0           ret Cp
3f01 f0           ret Cp
3f02 f0           ret Cp
3f03 f0           ret Cp
3f04 f0           ret Cp
3f05 f0           ret Cp
3f06 f0           ret Cp
3f07 f0           ret Cp
3f08 f0           ret Cp
3f09 f0           ret Cp
3f0a f0           ret Cp
3f0b f0           ret Cp
3f0c f0           ret Cp
3f0d f0           ret Cp
3f0e f0           ret Cp
3f0f f0           ret Cp
3f10 f0           ret Cp
3f11 f0           ret Cp
3f12 f0           ret Cp
3f13 f0           ret Cp
3f14 f0           ret Cp
3f15 f0           ret Cp
3f16 f0           ret Cp
3f17 f0           ret Cp
3f18 f0           ret Cp
3f19 f0           ret Cp
3f1a f0           ret Cp
3f1b f0           ret Cp
3f1c f0           ret Cp
3f1d f0           ret Cp
3f1e f0           ret Cp
3f1f f0           ret Cp
3f20 f0           ret Cp
3f21 f0           ret Cp
3f22 f0           ret Cp
3f23 f0           ret Cp
3f24 f0           ret Cp
3f25 f0           ret Cp
3f26 f0           ret Cp
3f27 f0           ret Cp
3f28 f0           ret Cp
3f29 f0           ret Cp
3f2a f0           ret Cp
3f2b f0           ret Cp
3f2c f0           ret Cp
3f2d f0           ret Cp
3f2e f0           ret Cp
3f2f f0           ret Cp
3f30 f0           ret Cp
3f31 f0           ret Cp
3f32 f0           ret Cp
3f33 f0           ret Cp
3f34 f0           ret Cp
3f35 f0           ret Cp
3f36 f0           ret Cp
3f37 f0           ret Cp
3f38 f0           ret Cp
3f39 f0           ret Cp
3f3a f0           ret Cp
3f3b f0           ret Cp
3f3c f0           ret Cp
3f3d f0           ret Cp
3f3e f0           ret Cp
3f3f 80           Aadd a, Rb
3f40 40           ld Rb, Rb
3f41 f0           ret Cp
3f42 f0           ret Cp
3f43 f0           ret Cp
3f44 f0           ret Cp
3f45 00           nop
3f46 00           nop
3f47 00           nop
3f48 00           nop
3f49 50           ld Rd, Rb
3f4a a0           Aand Rb
3f4b 00           nop
3f4c 00           nop
3f4d 00           nop
3f4e 00           nop
3f4f a0           Aand Rb
3f50 00           nop
3f51 00           nop
3f52 a0           Aand Rb
3f53 00           nop
3f54 00           nop
3f55 00           nop
3f56 00           nop
3f57 00           nop
3f58 00           nop
3f59 a0           Aand Rb
3f5a 00           nop
3f5b 00           nop
3f5c 00           nop
3f5d 00           nop
3f5e 00           nop
3f5f 00           nop
3f60 a0           Aand Rb
3f61 00           nop
3f62 00           nop
3f63 00           nop
3f64 00           nop
3f65 00           nop
3f66 00           nop
3f67 a0           Aand Rb
3f68 00           nop
3f69 00           nop
3f6a 00           nop
3f6b 00           nop
3f6c 00           nop
3f6d 00           nop
3f6e a0           Aand Rb
3f6f 00           nop
3f70 00           nop
3f71 00           nop
3f72 00           nop
3f73 00           nop
3f74 00           nop
3f75 a0           Aand Rb
3f76 00           nop
3f77 00           nop
3f78 00           nop
3f79 00           nop
3f7a 00           nop
3f7b 00           nop
3f7c a0           Aand Rb
3f7d 00           nop
3f7e 00           nop
3f7f f0           ret Cp
3f80 f0           ret Cp
3f81 f0           ret Cp
3f82 f0           ret Cp
3f83 f0           ret Cp
3f84 f0           ret Cp
3f85 a0           Aand Rb
3f86 00           nop
3f87 00           nop
3f88 f0           ret Cp
3f89 f0           ret Cp
3f8a f0           ret Cp
3f8b f0           ret Cp
3f8c f0           ret Cp
3f8d f0           ret Cp
3f8e f0           ret Cp
3f8f 80           Aadd a, Rb
3f90 40           ld Rb, Rb
3f91 f0           ret Cp
3f92 f0           ret Cp
3f93 f0           ret Cp
3f94 f0           ret Cp
3f95 00           nop
3f96 00           nop
3f97 50           ld Rd, Rb
3f98 a0           Aand Rb
3f99 00           nop
3f9a 00           nop
3f9b 50           ld Rd, Rb
3f9c a0           Aand Rb
3f9d 00           nop
3f9e 00           nop
3f9f a0           Aand Rb
3fa0 00           nop
3fa1 00           nop
3fa2 a0           Aand Rb
3fa3 00           nop
3fa4 00           nop
3fa5 00           nop
3fa6 00           nop
3fa7 50           ld Rd, Rb
3fa8 f0           ret Cp
3fa9 a0           Aand Rb
3faa 00           nop
3fab 00           nop
3fac 00           nop
3fad 00           nop
3fae 50           ld Rd, Rb
3faf f0           ret Cp
3fb0 a0           Aand Rb
3fb1 00           nop
3fb2 00           nop
3fb3 f0           ret Cp
3fb4 a0           Aand Rb
3fb5 00           nop
3fb6 00           nop
3fb7 a0           Aand Rb
3fb8 00           nop
3fb9 00           nop
3fba 00           nop
3fbb 00           nop
3fbc 50           ld Rd, Rb
3fbd f0           ret Cp
3fbe f0           ret Cp
3fbf f0           ret Cp
3fc0 f0           ret Cp
3fc1 f0           ret Cp
3fc2 f0           ret Cp
3fc3 00           nop
3fc4 00           nop
3fc5 a0           Aand Rb
3fc6 00           nop
3fc7 00           nop
3fc8 f0           ret Cp
3fc9 a0           Aand Rb
3fca 00           nop
3fcb 00           nop
3fcc a0           Aand Rb
3fcd 00           nop
3fce 00           nop
3fcf f0           ret Cp
3fd0 f0           ret Cp
3fd1 f0           ret Cp
3fd2 f0           ret Cp
3fd3 f0           ret Cp
3fd4 f0           ret Cp
3fd5 a0           Aand Rb
3fd6 00           nop
3fd7 00           nop
3fd8 f0           ret Cp
3fd9 f0           ret Cp
3fda f0           ret Cp
3fdb f0           ret Cp
3fdc f0           ret Cp
3fdd f0           ret Cp
3fde f0           ret Cp
3fdf 80           Aadd a, Rb
3fe0 40           ld Rb, Rb
3fe1 c0           ret Cnz
3fe2 c0           ret Cnz
3fe3 c0           ret Cnz
3fe4 c0           ret Cnz
3fe5 c0           ret Cnz
3fe6 c0           ret Cnz
3fe7 c0           ret Cnz
3fe8 c0           ret Cnz
3fe9 c0           ret Cnz
3fea c0           ret Cnz
3feb c0           ret Cnz
3fec c0           ret Cnz
3fed c0           ret Cnz
3fee c0           ret Cnz
3fef c0           ret Cnz
3ff0 c0           ret Cnz
3ff1 c0           ret Cnz
3ff2 c0           ret Cnz
3ff3 c0           ret Cnz
3ff4 c0           ret Cnz
3ff5 c0           ret Cnz
3ff6 c0           ret Cnz
3ff7 c0           ret Cnz
3ff8 c0           ret Cnz
3ff9 c0           ret Cnz
3ffa c0           ret Cnz
3ffb c0           ret Cnz
3ffc c0           ret Cnz
3ffd c0           ret Cnz
3ffe c0           ret Cnz
3fff c0           ret Cnz
4000 c0           ret Cnz
4001 c0           ret Cnz
4002 c0           ret Cnz
4003 c0           ret Cnz
4004 c0           ret Cnz
4005 c0           ret Cnz
4006 c0           ret Cnz
4007 c0           ret Cnz
4008 c0           ret Cnz
4009 c0           ret Cnz
400a c0           ret Cnz
400b c0           ret Cnz
400c c0           ret Cnz
400d c0           ret Cnz
400e c0           ret Cnz
400f c0           ret Cnz
4010 c0           ret Cnz
4011 c0           ret Cnz
4012 c0           ret Cnz
4013 c0           ret Cnz
4014 c0           ret Cnz
4015 c0           ret Cnz
4016 c0           ret Cnz
4017 c0           ret Cnz
4018 c0           ret Cnz
4019 c0           ret Cnz
401a c0           ret Cnz
401b c0           ret Cnz
401c c0           ret Cnz
401d c0           ret Cnz
401e c0           ret Cnz
401f c0           ret Cnz
4020 c0           ret Cnz
4021 c0           ret Cnz
4022 c0           ret Cnz
4023 c0           ret Cnz
4024 c0           ret Cnz
4025 c0           ret Cnz
4026 c0           ret Cnz
4027 c0           ret Cnz
4028 c0           ret Cnz
4029 c0           ret Cnz
402a c0           ret Cnz
402b c0           ret Cnz
402c c0           ret Cnz
402d c0           ret Cnz
402e c0           ret Cnz
402f 80           Aadd a, Rb
4030 00           nop
4031 00           nop
4032 00           nop
4033 00           nop
4034 00           nop
4035 00           nop
4036 00           nop
4037 00           nop
4038 00           nop
4039 00           nop
403a 00           nop
403b 00           nop
403c 00           nop
403d 00           nop
403e 00           nop
403f 00           nop
4040 00           nop
4041 00           nop
4042 00           nop
4043 00           nop
4044 00           nop
4045 00           nop
4046 00           nop
4047 00           nop
4048 00           nop
4049 00           nop
404a 00           nop
404b 00           nop
404c 00           nop
404d 00           nop
404e 00           nop
404f 00           nop
4050 00           nop
4051 00           nop
4052 00           nop
4053 00           nop
4054 00           nop
4055 00           nop
4056 00           nop
4057 00           nop
4058 00           nop
4059 00           nop
405a 00           nop
405b 00           nop
405c 00           nop
405d 00           nop
405e 00           nop
405f 00           nop
4060 00           nop
4061 00           nop
4062 00           nop
4063 00           nop
4064 00           nop
4065 00           nop
4066 00           nop
4067 00           nop
4068 00           nop
4069 00           nop
406a 00           nop
406b 00           nop
406c 00           nop
406d 00           nop
406e 00           nop
406f 00           nop
4070 00           nop
4071 00           nop
4072 00           nop
4073 00           nop
4074 00           nop
4075 00           nop
4076 00           nop
4077 00           nop
4078 00           nop
4079 00           nop
407a 00           nop
407b 00           nop
407c 00           nop
407d 00           nop
407e 00           nop
407f 00           nop
4080 00           nop
4081 00           nop
4082 00           nop
4083 00           nop
4084 00           nop
4085 00           nop
4086 00           nop
4087 00           nop
4088 00           nop
4089 00           nop
408a 00           nop
408b 00           nop
408c 00           nop
408d 00           nop
408e 00           nop
408f 00           nop
4090 00           nop
4091 00           nop
4092 00           nop
4093 00           nop
4094 00           nop
4095 00           nop
4096 00           nop
4097 00           nop
4098 00           nop
4099 00           nop
409a 00           nop
409b 00           nop
409c 00           nop
409d 00           nop
409e 00           nop
409f 00           nop
40a0 00           nop
40a1 00           nop
40a2 00           nop
40a3 00           nop
40a4 00           nop
40a5 00           nop
40a6 00           nop
40a7 00           nop
40a8 00           nop
40a9 00           nop
40aa 00           nop
40ab 00           nop
40ac 00           nop
40ad 00           nop
40ae 00           nop
40af 00           nop
40b0 00           nop
40b1 00           nop
40b2 00           nop
40b3 00           nop
40b4 00           nop
40b5 00           nop
40b6 00           nop
40b7 00           nop
40b8 00           nop
40b9 00           nop
40ba 00           nop
40bb 00           nop
40bc 00           nop
40bd 00           nop
40be 00           nop
40bf 00           nop
40c0 00           nop
40c1 00           nop
40c2 00           nop
40c3 00           nop
40c4 00           nop
40c5 00           nop
40c6 00           nop
40c7 00           nop
40c8 00           nop
40c9 00           nop
40ca 00           nop
40cb 00           nop
40cc 00           nop
40cd 00           nop
40ce 00           nop
40cf 00           nop
40d0 40           ld Rb, Rb
40d1 f0           ret Cp
40d2 f0           ret Cp
40d3 f0           ret Cp
40d4 f0           ret Cp
40d5 f0           ret Cp
40d6 f0           ret Cp
40d7 f0           ret Cp
40d8 f0           ret Cp
40d9 f0           ret Cp
40da f0           ret Cp
40db f0           ret Cp
40dc f0           ret Cp
40dd f0           ret Cp
40de f0           ret Cp
40df f0           ret Cp
40e0 f0           ret Cp
40e1 f0           ret Cp
40e2 f0           ret Cp
40e3 f0           ret Cp
40e4 f0           ret Cp
40e5 f0           ret Cp
40e6 f0           ret Cp
40e7 f0           ret Cp
40e8 f0           ret Cp
40e9 f0           ret Cp
40ea f0           ret Cp
40eb f0           ret Cp
40ec f0           ret Cp
40ed f0           ret Cp
40ee f0           ret Cp
40ef f0           ret Cp
40f0 f0           ret Cp
40f1 f0           ret Cp
40f2 f0           ret Cp
40f3 f0           ret Cp
40f4 f0           ret Cp
40f5 f0           ret Cp
40f6 f0           ret Cp
40f7 f0           ret Cp
40f8 f0           ret Cp
40f9 f0           ret Cp
40fa f0           ret Cp
40fb f0           ret Cp
40fc f0           ret Cp
40fd f0           ret Cp
40fe f0           ret Cp
40ff f0           ret Cp
4100 f0           ret Cp
4101 f0           ret Cp
4102 f0           ret Cp
4103 f0           ret Cp
4104 f0           ret Cp
4105 f0           ret Cp
4106 f0           ret Cp
4107 f0           ret Cp
4108 f0           ret Cp
4109 f0           ret Cp
410a f0           ret Cp
410b f0           ret Cp
410c f0           ret Cp
410d f0           ret Cp
410e f0           ret Cp
410f f0           ret Cp
4110 f0           ret Cp
4111 f0           ret Cp
4112 f0           ret Cp
4113 f0           ret Cp
4114 f0           ret Cp
4115 f0           ret Cp
4116 f0           ret Cp
4117 f0           ret Cp
4118 f0           ret Cp
4119 f0           ret Cp
411a f0           ret Cp
411b f0           ret Cp
411c f0           ret Cp
411d f0           ret Cp
411e f0           ret Cp
411f 80           Aadd a, Rb
4120 40           ld Rb, Rb
4121 f0           ret Cp
4122 f0           ret Cp
4123 f0           ret Cp
4124 f0           ret Cp
4125 c0           ret Cnz
4126 c0           ret Cnz
4127 c0           ret Cnz
4128 c0           ret Cnz
4129 d0           ret Cnc
412a e0           ret Cpo
412b c0           ret Cnz
412c c0           ret Cnz
412d c0           ret Cnz
412e c0           ret Cnz
412f e0           ret Cpo
4130 c0           ret Cnz
4131 c0           ret Cnz
4132 e0           ret Cpo
4133 c0           ret Cnz
4134 c0           ret Cnz
4135 f0           ret Cp
4136 c0           ret Cnz
4137 c0           ret Cnz
4138 c0           ret Cnz
4139 e0           ret Cpo
413a c0           ret Cnz
413b c0           ret Cnz
413c f0           ret Cp
413d c0           ret Cnz
413e c0           ret Cnz
413f c0           ret Cnz
4140 e0           ret Cpo
4141 c0           ret Cnz
4142 c0           ret Cnz
4143 f0           ret Cp
4144 e0           ret Cpo
4145 c0           ret Cnz
4146 c0           ret Cnz
4147 e0           ret Cpo
4148 c0           ret Cnz
4149 c0           ret Cnz
414a f0           ret Cp
414b c0           ret Cnz
414c c0           ret Cnz
414d c0           ret Cnz
414e e0           ret Cpo
414f c0           ret Cnz
4150 c0           ret Cnz
4151 f0           ret Cp
4152 f0           ret Cp
4153 f0           ret Cp
4154 f0           ret Cp
4155 e0           ret Cpo
4156 c0           ret Cnz
4157 c0           ret Cnz
4158 f0           ret Cp
4159 e0           ret Cpo
415a c0           ret Cnz
415b c0           ret Cnz
415c e0           ret Cpo
415d c0           ret Cnz
415e c0           ret Cnz
415f f0           ret Cp
4160 f0           ret Cp
4161 f0           ret Cp
4162 f0           ret Cp
4163 f0           ret Cp
4164 f0           ret Cp
4165 e0           ret Cpo
4166 c0           ret Cnz
4167 c0           ret Cnz
4168 f0           ret Cp
4169 f0           ret Cp
416a f0           ret Cp
416b f0           ret Cp
416c f0           ret Cp
416d f0           ret Cp
416e f0           ret Cp
416f 80           Aadd a, Rb
4170 40           ld Rb, Rb
4171 f0           ret Cp
4172 f0           ret Cp
4173 f0           ret Cp
4174 f0           ret Cp
4175 c0           ret Cnz
4176 c0           ret Cnz
4177 d0           ret Cnc
4178 e0           ret Cpo
4179 c0           ret Cnz
417a c0           ret Cnz
417b d0           ret Cnc
417c e0           ret Cpo
417d c0           ret Cnz
417e c0           ret Cnz
417f e0           ret Cpo
4180 c0           ret Cnz
4181 c0           ret Cnz
4182 e0           ret Cpo
4183 c0           ret Cnz
4184 c0           ret Cnz
4185 e0           ret Cpo
4186 c0           ret Cnz
4187 c0           ret Cnz
4188 f0           ret Cp
4189 e0           ret Cpo
418a c0           ret Cnz
418b c0           ret Cnz
418c e0           ret Cpo
418d c0           ret Cnz
418e c0           ret Cnz
418f f0           ret Cp
4190 e0           ret Cpo
4191 c0           ret Cnz
4192 c0           ret Cnz
4193 c0           ret Cnz
4194 c0           ret Cnz
4195 c0           ret Cnz
4196 c0           ret Cnz
4197 e0           ret Cpo
4198 c0           ret Cnz
4199 c0           ret Cnz
419a e0           ret Cpo
419b c0           ret Cnz
419c c0           ret Cnz
419d f0           ret Cp
419e e0           ret Cpo
419f c0           ret Cnz
41a0 c0           ret Cnz
41a1 c0           ret Cnz
41a2 c0           ret Cnz
41a3 c0           ret Cnz
41a4 c0           ret Cnz
41a5 e0           ret Cpo
41a6 c0           ret Cnz
41a7 c0           ret Cnz
41a8 c0           ret Cnz
41a9 c0           ret Cnz
41aa c0           ret Cnz
41ab c0           ret Cnz
41ac e0           ret Cpo
41ad c0           ret Cnz
41ae c0           ret Cnz
41af f0           ret Cp
41b0 f0           ret Cp
41b1 f0           ret Cp
41b2 f0           ret Cp
41b3 f0           ret Cp
41b4 f0           ret Cp
41b5 e0           ret Cpo
41b6 c0           ret Cnz
41b7 c0           ret Cnz
41b8 f0           ret Cp
41b9 f0           ret Cp
41ba f0           ret Cp
41bb f0           ret Cp
41bc f0           ret Cp
41bd f0           ret Cp
41be f0           ret Cp
41bf 80           Aadd a, Rb
41c0 00           nop
41c1 00           nop
41c2 00           nop
41c3 00           nop
41c4 00           nop
41c5 00           nop
41c6 00           nop
41c7 00           nop
41c8 00           nop
41c9 00           nop
41ca 00           nop
41cb 00           nop
41cc 00           nop
41cd 00           nop
41ce 00           nop
41cf 00           nop
41d0 00           nop
41d1 00           nop
41d2 00           nop
41d3 00           nop
41d4 00           nop
41d5 00           nop
41d6 00           nop
41d7 00           nop
41d8 00           nop
41d9 00           nop
41da 00           nop
41db 00           nop
41dc 00           nop
41dd 00           nop
41de 00           nop
41df 00           nop
41e0 00           nop
41e1 00           nop
41e2 00           nop
41e3 00           nop
41e4 00           nop
41e5 00           nop
41e6 00           nop
41e7 00           nop
41e8 00           nop
41e9 00           nop
41ea 00           nop
41eb 00           nop
41ec 00           nop
41ed 00           nop
41ee 00           nop
41ef 00           nop
41f0 00           nop
41f1 00           nop
41f2 00           nop
41f3 00           nop
41f4 00           nop
41f5 00           nop
41f6 00           nop
41f7 00           nop
41f8 00           nop
41f9 00           nop
41fa 00           nop
41fb 00           nop
41fc 00           nop
41fd 00           nop
41fe 00           nop
41ff 00           nop
4200 00           nop
4201 00           nop
4202 00           nop
4203 00           nop
4204 00           nop
4205 00           nop
4206 00           nop
4207 00           nop
4208 00           nop
4209 00           nop
420a 00           nop
420b 00           nop
420c 00           nop
420d 00           nop
420e 00           nop
420f 00           nop
4210 00           nop
4211 00           nop
4212 00           nop
4213 00           nop
4214 00           nop
4215 00           nop
4216 00           nop
4217 00           nop
4218 00           nop
4219 00           nop
421a 00           nop
421b 00           nop
421c 00           nop
421d 00           nop
421e 00           nop
421f 00           nop
4220 00           nop
4221 00           nop
4222 00           nop
4223 00           nop
4224 00           nop
4225 00           nop
4226 00           nop
4227 00           nop
4228 00           nop
4229 00           nop
422a 00           nop
422b 00           nop
422c 00           nop
422d 00           nop
422e 00           nop
422f 00           nop
4230 00           nop
4231 00           nop
4232 00           nop
4233 00           nop
4234 00           nop
4235 00           nop
4236 00           nop
4237 00           nop
4238 00           nop
4239 00           nop
423a 00           nop
423b 00           nop
423c 00           nop
423d 00           nop
423e 00           nop
423f 00           nop
4240 00           nop
4241 00           nop
4242 00           nop
4243 00           nop
4244 00           nop
4245 00           nop
4246 00           nop
4247 00           nop
4248 00           nop
4249 00           nop
424a 00           nop
424b 00           nop
424c 00           nop
424d 00           nop
424e 00           nop
424f 00           nop
4250 00           nop
4251 00           nop
4252 00           nop
4253 00           nop
4254 00           nop
4255 00           nop
4256 00           nop
4257 00           nop
4258 00           nop
4259 00           nop
425a 00           nop
425b 00           nop
425c 00           nop
425d 00           nop
425e 00           nop
425f 00           nop
4260 00           nop
4261 00           nop
4262 00           nop
4263 00           nop
4264 00           nop
4265 00           nop
4266 00           nop
4267 00           nop
4268 00           nop
4269 00           nop
426a 00           nop
426b 00           nop
426c 00           nop
426d 00           nop
426e 00           nop
426f 00           nop
4270 00           nop
4271 00           nop
4272 00           nop
4273 00           nop
4274 00           nop
4275 00           nop
4276 00           nop
4277 00           nop
4278 00           nop
4279 00           nop
427a 00           nop
427b 00           nop
427c 00           nop
427d 00           nop
427e 00           nop
427f 00           nop
4280 00           nop
4281 00           nop
4282 00           nop
4283 00           nop
4284 00           nop
4285 00           nop
4286 00           nop
4287 00           nop
4288 00           nop
4289 00           nop
428a 00           nop
428b 00           nop
428c 00           nop
428d 00           nop
428e 00           nop
428f 00           nop
4290 00           nop
4291 00           nop
4292 00           nop
4293 00           nop
4294 00           nop
4295 00           nop
4296 00           nop
4297 00           nop
4298 00           nop
4299 00           nop
429a 00           nop
429b 00           nop
429c 00           nop
429d 00           nop
429e 00           nop
429f 00           nop
42a0 00           nop
42a1 00           nop
42a2 00           nop
42a3 00           nop
42a4 00           nop
42a5 00           nop
42a6 00           nop
42a7 00           nop
42a8 00           nop
42a9 00           nop
42aa 00           nop
42ab 00           nop
42ac 00           nop
42ad 00           nop
42ae 00           nop
42af 00           nop
42b0 40           ld Rb, Rb
42b1 f0           ret Cp
42b2 f0           ret Cp
42b3 f0           ret Cp
42b4 f0           ret Cp
42b5 f0           ret Cp
42b6 f0           ret Cp
42b7 f0           ret Cp
42b8 f0           ret Cp
42b9 f0           ret Cp
42ba f0           ret Cp
42bb f0           ret Cp
42bc f0           ret Cp
42bd f0           ret Cp
42be f0           ret Cp
42bf f0           ret Cp
42c0 f0           ret Cp
42c1 f0           ret Cp
42c2 f0           ret Cp
42c3 f0           ret Cp
42c4 f0           ret Cp
42c5 f0           ret Cp
42c6 f0           ret Cp
42c7 f0           ret Cp
42c8 f0           ret Cp
42c9 f0           ret Cp
42ca f0           ret Cp
42cb f0           ret Cp
42cc f0           ret Cp
42cd f0           ret Cp
42ce f0           ret Cp
42cf f0           ret Cp
42d0 f0           ret Cp
42d1 f0           ret Cp
42d2 f0           ret Cp
42d3 f0           ret Cp
42d4 f0           ret Cp
42d5 f0           ret Cp
42d6 f0           ret Cp
42d7 f0           ret Cp
42d8 f0           ret Cp
42d9 f0           ret Cp
42da f0           ret Cp
42db f0           ret Cp
42dc f0           ret Cp
42dd f0           ret Cp
42de f0           ret Cp
42df f0           ret Cp
42e0 f0           ret Cp
42e1 f0           ret Cp
42e2 f0           ret Cp
42e3 f0           ret Cp
42e4 f0           ret Cp
42e5 f0           ret Cp
42e6 f0           ret Cp
42e7 f0           ret Cp
42e8 f0           ret Cp
42e9 f0           ret Cp
42ea f0           ret Cp
42eb f0           ret Cp
42ec f0           ret Cp
42ed f0           ret Cp
42ee f0           ret Cp
42ef f0           ret Cp
42f0 f0           ret Cp
42f1 f0           ret Cp
42f2 f0           ret Cp
42f3 f0           ret Cp
42f4 f0           ret Cp
42f5 f0           ret Cp
42f6 f0           ret Cp
42f7 f0           ret Cp
42f8 f0           ret Cp
42f9 f0           ret Cp
42fa f0           ret Cp
42fb f0           ret Cp
42fc f0           ret Cp
42fd f0           ret Cp
42fe f0           ret Cp
42ff 80           Aadd a, Rb
4300 40           ld Rb, Rb
4301 f0           ret Cp
4302 f0           ret Cp
4303 f0           ret Cp
4304 f0           ret Cp
4305 00           nop
4306 00           nop
4307 00           nop
4308 00           nop
4309 00           nop
430a 00           nop
430b 00           nop
430c 00           nop
430d 00           nop
430e 00           nop
430f a0           Aand Rb
4310 00           nop
4311 00           nop
4312 a0           Aand Rb
4313 00           nop
4314 00           nop
4315 00           nop
4316 00           nop
4317 00           nop
4318 00           nop
4319 a0           Aand Rb
431a 00           nop
431b 00           nop
431c 00           nop
431d 00           nop
431e 00           nop
431f 00           nop
4320 a0           Aand Rb
4321 00           nop
4322 00           nop
4323 f0           ret Cp
4324 a0           Aand Rb
4325 00           nop
4326 00           nop
4327 a0           Aand Rb
4328 00           nop
4329 00           nop
432a 00           nop
432b 00           nop
432c 00           nop
432d 00           nop
432e a0           Aand Rb
432f 00           nop
4330 50           ld Rd, Rb
4331 f0           ret Cp
4332 f0           ret Cp
4333 f0           ret Cp
4334 f0           ret Cp
4335 a0           Aand Rb
4336 00           nop
4337 00           nop
4338 f0           ret Cp
4339 a0           Aand Rb
433a 00           nop
433b 00           nop
433c a0           Aand Rb
433d 00           nop
433e 00           nop
433f f0           ret Cp
4340 f0           ret Cp
4341 f0           ret Cp
4342 f0           ret Cp
4343 f0           ret Cp
4344 f0           ret Cp
4345 a0           Aand Rb
4346 00           nop
4347 00           nop
4348 f0           ret Cp
4349 f0           ret Cp
434a f0           ret Cp
434b f0           ret Cp
434c f0           ret Cp
434d f0           ret Cp
434e f0           ret Cp
434f 80           Aadd a, Rb
4350 40           ld Rb, Rb
4351 f0           ret Cp
4352 f0           ret Cp
4353 f0           ret Cp
4354 f0           ret Cp
4355 00           nop
4356 00           nop
4357 50           ld Rd, Rb
4358 a0           Aand Rb
4359 00           nop
435a 00           nop
435b 50           ld Rd, Rb
435c a0           Aand Rb
435d 00           nop
435e 00           nop
435f a0           Aand Rb
4360 00           nop
4361 00           nop
4362 a0           Aand Rb
4363 00           nop
4364 00           nop
4365 a0           Aand Rb
4366 00           nop
4367 00           nop
4368 f0           ret Cp
4369 a0           Aand Rb
436a 00           nop
436b 00           nop
436c a0           Aand Rb
436d 00           nop
436e 00           nop
436f f0           ret Cp
4370 a0           Aand Rb
4371 00           nop
4372 00           nop
4373 00           nop
4374 00           nop
4375 00           nop
4376 00           nop
4377 a0           Aand Rb
4378 00           nop
4379 00           nop
437a a0           Aand Rb
437b 00           nop
437c 00           nop
437d f0           ret Cp
437e a0           Aand Rb
437f 00           nop
4380 00           nop
4381 00           nop
4382 00           nop
4383 00           nop
4384 00           nop
4385 a0           Aand Rb
4386 00           nop
4387 00           nop
4388 00           nop
4389 00           nop
438a 00           nop
438b 00           nop
438c a0           Aand Rb
438d 00           nop
438e 00           nop
438f f0           ret Cp
4390 f0           ret Cp
4391 f0           ret Cp
4392 f0           ret Cp
4393 f0           ret Cp
4394 f0           ret Cp
4395 a0           Aand Rb
4396 00           nop
4397 00           nop
4398 f0           ret Cp
4399 f0           ret Cp
439a f0           ret Cp
439b f0           ret Cp
439c f0           ret Cp
439d f0           ret Cp
439e f0           ret Cp
439f 80           Aadd a, Rb
43a0 00           nop
43a1 00           nop
43a2 00           nop
43a3 00           nop
43a4 00           nop
43a5 00           nop
43a6 00           nop
43a7 00           nop
43a8 00           nop
43a9 00           nop
43aa 00           nop
43ab 00           nop
43ac 00           nop
43ad 00           nop
43ae 00           nop
43af 00           nop
43b0 00           nop
43b1 00           nop
43b2 00           nop
43b3 00           nop
43b4 00           nop
43b5 00           nop
43b6 00           nop
43b7 00           nop
43b8 00           nop
43b9 00           nop
43ba 00           nop
43bb 00           nop
43bc 00           nop
43bd 00           nop
43be 00           nop
43bf 00           nop
43c0 00           nop
43c1 00           nop
43c2 00           nop
43c3 00           nop
43c4 00           nop
43c5 00           nop
43c6 00           nop
43c7 00           nop
43c8 00           nop
43c9 00           nop
43ca 00           nop
43cb 00           nop
43cc 00           nop
43cd 00           nop
43ce 00           nop
43cf 00           nop
43d0 00           nop
43d1 00           nop
43d2 00           nop
43d3 00           nop
43d4 00           nop
43d5 00           nop
43d6 00           nop
43d7 00           nop
43d8 00           nop
43d9 00           nop
43da 00           nop
43db 00           nop
43dc 00           nop
43dd 00           nop
43de 00           nop
43df 00           nop
43e0 00           nop
43e1 00           nop
43e2 00           nop
43e3 00           nop
43e4 00           nop
43e5 00           nop
43e6 00           nop
43e7 00           nop
43e8 00           nop
43e9 00           nop
43ea 00           nop
43eb 00           nop
43ec 00           nop
43ed 00           nop
43ee 00           nop
43ef 00           nop
43f0 00           nop
43f1 00           nop
43f2 00           nop
43f3 00           nop
43f4 00           nop
43f5 00           nop
43f6 00           nop
43f7 00           nop
43f8 00           nop
43f9 00           nop
43fa 00           nop
43fb 00           nop
43fc 00           nop
43fd 00           nop
43fe 00           nop
43ff 00           nop
4400 00           nop
4401 00           nop
4402 00           nop
4403 00           nop
4404 00           nop
4405 00           nop
4406 00           nop
4407 00           nop
4408 00           nop
4409 00           nop
440a 00           nop
440b 00           nop
440c 00           nop
440d 00           nop
440e 00           nop
440f 00           nop
4410 00           nop
4411 00           nop
4412 00           nop
4413 00           nop
4414 00           nop
4415 00           nop
4416 00           nop
4417 00           nop
4418 00           nop
4419 00           nop
441a 00           nop
441b 00           nop
441c 00           nop
441d 00           nop
441e 00           nop
441f 00           nop
4420 00           nop
4421 00           nop
4422 00           nop
4423 00           nop
4424 00           nop
4425 00           nop
4426 00           nop
4427 00           nop
4428 00           nop
4429 00           nop
442a 00           nop
442b 00           nop
442c 00           nop
442d 00           nop
442e 00           nop
442f 00           nop
4430 00           nop
4431 00           nop
4432 00           nop
4433 00           nop
4434 00           nop
4435 00           nop
4436 00           nop
4437 00           nop
4438 00           nop
4439 00           nop
443a 00           nop
443b 00           nop
443c 00           nop
443d 00           nop
443e 00           nop
443f 00           nop
4440 00           nop
4441 00           nop
4442 00           nop
4443 00           nop
4444 00           nop
4445 00           nop
4446 00           nop
4447 00           nop
4448 00           nop
4449 00           nop
444a 00           nop
444b 00           nop
444c 00           nop
444d 00           nop
444e 00           nop
444f 00           nop
4450 00           nop
4451 00           nop
4452 00           nop
4453 00           nop
4454 00           nop
4455 00           nop
4456 00           nop
4457 00           nop
4458 00           nop
4459 00           nop
445a 00           nop
445b 00           nop
445c 00           nop
445d 00           nop
445e 00           nop
445f 00           nop
4460 00           nop
4461 00           nop
4462 00           nop
4463 00           nop
4464 00           nop
4465 00           nop
4466 00           nop
4467 00           nop
4468 00           nop
4469 00           nop
446a 00           nop
446b 00           nop
446c 00           nop
446d 00           nop
446e 00           nop
446f 00           nop
4470 00           nop
4471 00           nop
4472 00           nop
4473 00           nop
4474 00           nop
4475 00           nop
4476 00           nop
4477 00           nop
4478 00           nop
4479 00           nop
447a 00           nop
447b 00           nop
447c 00           nop
447d 00           nop
447e 00           nop
447f 00           nop
4480 00           nop
4481 00           nop
4482 00           nop
4483 00           nop
4484 00           nop
4485 00           nop
4486 00           nop
4487 00           nop
4488 00           nop
4489 00           nop
448a 00           nop
448b 00           nop
448c 00           nop
448d 00           nop
448e 00           nop
448f 00           nop
4490 40           ld Rb, Rb
4491 f0           ret Cp
4492 f0           ret Cp
4493 f0           ret Cp
4494 f0           ret Cp
4495 c0           ret Cnz
4496 c0           ret Cnz
4497 c0           ret Cnz
4498 c0           ret Cnz
4499 f0           ret Cp
449a f0           ret Cp
449b c0           ret Cnz
449c c0           ret Cnz
449d c0           ret Cnz
449e c0           ret Cnz
449f e0           ret Cpo
44a0 c0           ret Cnz
44a1 c0           ret Cnz
44a2 e0           ret Cpo
44a3 c0           ret Cnz
44a4 c0           ret Cnz
44a5 c0           ret Cnz
44a6 c0           ret Cnz
44a7 c0           ret Cnz
44a8 f0           ret Cp
44a9 e0           ret Cpo
44aa c0           ret Cnz
44ab c0           ret Cnz
44ac c0           ret Cnz
44ad c0           ret Cnz
44ae c0           ret Cnz
44af f0           ret Cp
44b0 f0           ret Cp
44b1 e0           ret Cpo
44b2 c0           ret Cnz
44b3 c0           ret Cnz
44b4 c0           ret Cnz
44b5 c0           ret Cnz
44b6 f0           ret Cp
44b7 e0           ret Cpo
44b8 c0           ret Cnz
44b9 c0           ret Cnz
44ba c0           ret Cnz
44bb c0           ret Cnz
44bc c0           ret Cnz
44bd f0           ret Cp
44be f0           ret Cp
44bf e0           ret Cpo
44c0 c0           ret Cnz
44c1 c0           ret Cnz
44c2 c0           ret Cnz
44c3 c0           ret Cnz
44c4 c0           ret Cnz
44c5 f0           ret Cp
44c6 e0           ret Cpo
44c7 c0           ret Cnz
44c8 c0           ret Cnz
44c9 c0           ret Cnz
44ca c0           ret Cnz
44cb f0           ret Cp
44cc e0           ret Cpo
44cd c0           ret Cnz
44ce c0           ret Cnz
44cf c0           ret Cnz
44d0 c0           ret Cnz
44d1 c0           ret Cnz
44d2 c0           ret Cnz
44d3 e0           ret Cpo
44d4 c0           ret Cnz
44d5 c0           ret Cnz
44d6 c0           ret Cnz
44d7 c0           ret Cnz
44d8 c0           ret Cnz
44d9 c0           ret Cnz
44da f0           ret Cp
44db f0           ret Cp
44dc f0           ret Cp
44dd f0           ret Cp
44de f0           ret Cp
44df 80           Aadd a, Rb
44e0 40           ld Rb, Rb
44e1 f0           ret Cp
44e2 f0           ret Cp
44e3 f0           ret Cp
44e4 f0           ret Cp
44e5 c0           ret Cnz
44e6 c0           ret Cnz
44e7 c0           ret Cnz
44e8 c0           ret Cnz
44e9 c0           ret Cnz
44ea c0           ret Cnz
44eb c0           ret Cnz
44ec c0           ret Cnz
44ed c0           ret Cnz
44ee c0           ret Cnz
44ef e0           ret Cpo
44f0 c0           ret Cnz
44f1 c0           ret Cnz
44f2 e0           ret Cpo
44f3 c0           ret Cnz
44f4 c0           ret Cnz
44f5 c0           ret Cnz
44f6 c0           ret Cnz
44f7 c0           ret Cnz
44f8 c0           ret Cnz
44f9 e0           ret Cpo
44fa c0           ret Cnz
44fb c0           ret Cnz
44fc c0           ret Cnz
44fd c0           ret Cnz
44fe c0           ret Cnz
44ff c0           ret Cnz
4500 e0           ret Cpo
4501 c0           ret Cnz
4502 c0           ret Cnz
4503 f0           ret Cp
4504 e0           ret Cpo
4505 c0           ret Cnz
4506 c0           ret Cnz
4507 e0           ret Cpo
4508 c0           ret Cnz
4509 c0           ret Cnz
450a c0           ret Cnz
450b c0           ret Cnz
450c c0           ret Cnz
450d c0           ret Cnz
450e e0           ret Cpo
450f c0           ret Cnz
4510 c0           ret Cnz
4511 c0           ret Cnz
4512 c0           ret Cnz
4513 d0           ret Cnc
4514 f0           ret Cp
4515 e0           ret Cpo
4516 c0           ret Cnz
4517 c0           ret Cnz
4518 f0           ret Cp
4519 e0           ret Cpo
451a c0           ret Cnz
451b c0           ret Cnz
451c e0           ret Cpo
451d c0           ret Cnz
451e c0           ret Cnz
451f c0           ret Cnz
4520 c0           ret Cnz
4521 c0           ret Cnz
4522 d0           ret Cnc
4523 f0           ret Cp
4524 f0           ret Cp
4525 e0           ret Cpo
4526 c0           ret Cnz
4527 c0           ret Cnz
4528 f0           ret Cp
4529 f0           ret Cp
452a f0           ret Cp
452b f0           ret Cp
452c f0           ret Cp
452d f0           ret Cp
452e f0           ret Cp
452f 80           Aadd a, Rb
4530 40           ld Rb, Rb
4531 f0           ret Cp
4532 f0           ret Cp
4533 f0           ret Cp
4534 f0           ret Cp
4535 c0           ret Cnz
4536 c0           ret Cnz
4537 d0           ret Cnc
4538 f0           ret Cp
4539 c0           ret Cnz
453a c0           ret Cnz
453b f0           ret Cp
453c e0           ret Cpo
453d c0           ret Cnz
453e c0           ret Cnz
453f e0           ret Cpo
4540 c0           ret Cnz
4541 c0           ret Cnz
4542 e0           ret Cpo
4543 c0           ret Cnz
4544 c0           ret Cnz
4545 f0           ret Cp
4546 c0           ret Cnz
4547 c0           ret Cnz
4548 d0           ret Cnc
4549 e0           ret Cpo
454a c0           ret Cnz
454b c0           ret Cnz
454c f0           ret Cp
454d c0           ret Cnz
454e c0           ret Cnz
454f d0           ret Cnc
4550 e0           ret Cpo
4551 c0           ret Cnz
4552 c0           ret Cnz
4553 c0           ret Cnz
4554 c0           ret Cnz
4555 c0           ret Cnz
4556 c0           ret Cnz
4557 e0           ret Cpo
4558 c0           ret Cnz
4559 c0           ret Cnz
455a f0           ret Cp
455b c0           ret Cnz
455c c0           ret Cnz
455d d0           ret Cnc
455e e0           ret Cpo
455f c0           ret Cnz
4560 c0           ret Cnz
4561 c0           ret Cnz
4562 c0           ret Cnz
4563 c0           ret Cnz
4564 c0           ret Cnz
4565 e0           ret Cpo
4566 c0           ret Cnz
4567 c0           ret Cnz
4568 c0           ret Cnz
4569 c0           ret Cnz
456a c0           ret Cnz
456b c0           ret Cnz
456c e0           ret Cpo
456d c0           ret Cnz
456e c0           ret Cnz
456f f0           ret Cp
4570 f0           ret Cp
4571 f0           ret Cp
4572 f0           ret Cp
4573 f0           ret Cp
4574 f0           ret Cp
4575 e0           ret Cpo
4576 c0           ret Cnz
4577 c0           ret Cnz
4578 f0           ret Cp
4579 f0           ret Cp
457a f0           ret Cp
457b f0           ret Cp
457c f0           ret Cp
457d f0           ret Cp
457e f0           ret Cp
457f 80           Aadd a, Rb
4580 00           nop
4581 00           nop
4582 00           nop
4583 00           nop
4584 00           nop
4585 00           nop
4586 00           nop
4587 00           nop
4588 00           nop
4589 00           nop
458a 00           nop
458b 00           nop
458c 00           nop
458d 00           nop
458e 00           nop
458f 00           nop
4590 00           nop
4591 00           nop
4592 00           nop
4593 00           nop
4594 00           nop
4595 00           nop
4596 00           nop
4597 00           nop
4598 00           nop
4599 00           nop
459a 00           nop
459b 00           nop
459c 00           nop
459d 00           nop
459e 00           nop
459f 00           nop
45a0 00           nop
45a1 00           nop
45a2 00           nop
45a3 00           nop
45a4 00           nop
45a5 00           nop
45a6 00           nop
45a7 00           nop
45a8 00           nop
45a9 00           nop
45aa 00           nop
45ab 00           nop
45ac 00           nop
45ad 00           nop
45ae 00           nop
45af 00           nop
45b0 00           nop
45b1 00           nop
45b2 00           nop
45b3 00           nop
45b4 00           nop
45b5 00           nop
45b6 00           nop
45b7 00           nop
45b8 00           nop
45b9 00           nop
45ba 00           nop
45bb 00           nop
45bc 00           nop
45bd 00           nop
45be 00           nop
45bf 00           nop
45c0 00           nop
45c1 00           nop
45c2 00           nop
45c3 00           nop
45c4 00           nop
45c5 00           nop
45c6 00           nop
45c7 00           nop
45c8 00           nop
45c9 00           nop
45ca 00           nop
45cb 00           nop
45cc 00           nop
45cd 00           nop
45ce 00           nop
45cf 00           nop
45d0 00           nop
45d1 00           nop
45d2 00           nop
45d3 00           nop
45d4 00           nop
45d5 00           nop
45d6 00           nop
45d7 00           nop
45d8 00           nop
45d9 00           nop
45da 00           nop
45db 00           nop
45dc 00           nop
45dd 00           nop
45de 00           nop
45df 00           nop
45e0 00           nop
45e1 00           nop
45e2 00           nop
45e3 00           nop
45e4 00           nop
45e5 00           nop
45e6 00           nop
45e7 00           nop
45e8 00           nop
45e9 00           nop
45ea 00           nop
45eb 00           nop
45ec 00           nop
45ed 00           nop
45ee 00           nop
45ef 00           nop
45f0 00           nop
45f1 00           nop
45f2 00           nop
45f3 00           nop
45f4 00           nop
45f5 00           nop
45f6 00           nop
45f7 00           nop
45f8 00           nop
45f9 00           nop
45fa 00           nop
45fb 00           nop
45fc 00           nop
45fd 00           nop
45fe 00           nop
45ff 00           nop
4600 00           nop
4601 00           nop
4602 00           nop
4603 00           nop
4604 00           nop
4605 00           nop
4606 00           nop
4607 00           nop
4608 00           nop
4609 00           nop
460a 00           nop
460b 00           nop
460c 00           nop
460d 00           nop
460e 00           nop
460f 00           nop
4610 00           nop
4611 00           nop
4612 00           nop
4613 00           nop
4614 00           nop
4615 00           nop
4616 00           nop
4617 00           nop
4618 00           nop
4619 00           nop
461a 00           nop
461b 00           nop
461c 00           nop
461d 00           nop
461e 00           nop
461f 00           nop
4620 00           nop
4621 00           nop
4622 00           nop
4623 00           nop
4624 00           nop
4625 00           nop
4626 00           nop
4627 00           nop
4628 00           nop
4629 00           nop
462a 00           nop
462b 00           nop
462c 00           nop
462d 00           nop
462e 00           nop
462f 00           nop
4630 00           nop
4631 00           nop
4632 00           nop
4633 00           nop
4634 00           nop
4635 00           nop
4636 00           nop
4637 00           nop
4638 00           nop
4639 00           nop
463a 00           nop
463b 00           nop
463c 00           nop
463d 00           nop
463e 00           nop
463f 00           nop
4640 00           nop
4641 00           nop
4642 00           nop
4643 00           nop
4644 00           nop
4645 00           nop
4646 00           nop
4647 00           nop
4648 00           nop
4649 00           nop
464a 00           nop
464b 00           nop
464c 00           nop
464d 00           nop
464e 00           nop
464f 00           nop
4650 00           nop
4651 00           nop
4652 00           nop
4653 00           nop
4654 00           nop
4655 00           nop
4656 00           nop
4657 00           nop
4658 00           nop
4659 00           nop
465a 00           nop
465b 00           nop
465c 00           nop
465d 00           nop
465e 00           nop
465f 00           nop
4660 00           nop
4661 00           nop
4662 00           nop
4663 00           nop
4664 00           nop
4665 00           nop
4666 00           nop
4667 00           nop
4668 00           nop
4669 00           nop
466a 00           nop
466b 00           nop
466c 00           nop
466d 00           nop
466e 00           nop
466f 00           nop
4670 40           ld Rb, Rb
4671 f0           ret Cp
4672 f0           ret Cp
4673 f0           ret Cp
4674 f0           ret Cp
4675 00           nop
4676 00           nop
4677 00           nop
4678 00           nop
4679 f0           ret Cp
467a f0           ret Cp
467b 00           nop
467c 00           nop
467d 00           nop
467e 00           nop
467f a0           Aand Rb
4680 00           nop
4681 00           nop
4682 a0           Aand Rb
4683 00           nop
4684 00           nop
4685 00           nop
4686 00           nop
4687 00           nop
4688 50           ld Rd, Rb
4689 a0           Aand Rb
468a 00           nop
468b 00           nop
468c 00           nop
468d 00           nop
468e 00           nop
468f 50           ld Rd, Rb
4690 f0           ret Cp
4691 00           nop
4692 00           nop
4693 00           nop
4694 00           nop
4695 00           nop
4696 50           ld Rd, Rb
4697 a0           Aand Rb
4698 00           nop
4699 00           nop
469a 00           nop
469b 00           nop
469c 00           nop
469d 50           ld Rd, Rb
469e f0           ret Cp
469f 00           nop
46a0 00           nop
46a1 00           nop
46a2 00           nop
46a3 00           nop
46a4 00           nop
46a5 f0           ret Cp
46a6 00           nop
46a7 00           nop
46a8 00           nop
46a9 00           nop
46aa 00           nop
46ab 50           ld Rd, Rb
46ac a0           Aand Rb
46ad 00           nop
46ae 00           nop
46af 00           nop
46b0 00           nop
46b1 00           nop
46b2 00           nop
46b3 a0           Aand Rb
46b4 00           nop
46b5 00           nop
46b6 00           nop
46b7 00           nop
46b8 00           nop
46b9 00           nop
46ba f0           ret Cp
46bb f0           ret Cp
46bc f0           ret Cp
46bd f0           ret Cp
46be f0           ret Cp
46bf 80           Aadd a, Rb
46c0 40           ld Rb, Rb
46c1 f0           ret Cp
46c2 f0           ret Cp
46c3 f0           ret Cp
46c4 f0           ret Cp
46c5 00           nop
46c6 00           nop
46c7 50           ld Rd, Rb
46c8 00           nop
46c9 00           nop
46ca 00           nop
46cb 00           nop
46cc a0           Aand Rb
46cd 00           nop
46ce 00           nop
46cf a0           Aand Rb
46d0 00           nop
46d1 00           nop
46d2 a0           Aand Rb
46d3 00           nop
46d4 00           nop
46d5 00           nop
46d6 00           nop
46d7 00           nop
46d8 00           nop
46d9 a0           Aand Rb
46da 00           nop
46db 00           nop
46dc 00           nop
46dd 00           nop
46de 00           nop
46df 00           nop
46e0 a0           Aand Rb
46e1 00           nop
46e2 00           nop
46e3 f0           ret Cp
46e4 a0           Aand Rb
46e5 00           nop
46e6 00           nop
46e7 a0           Aand Rb
46e8 00           nop
46e9 00           nop
46ea 00           nop
46eb 00           nop
46ec 00           nop
46ed 00           nop
46ee a0           Aand Rb
46ef 00           nop
46f0 00           nop
46f1 00           nop
46f2 00           nop
46f3 00           nop
46f4 f0           ret Cp
46f5 a0           Aand Rb
46f6 00           nop
46f7 00           nop
46f8 f0           ret Cp
46f9 a0           Aand Rb
46fa 00           nop
46fb 00           nop
46fc a0           Aand Rb
46fd 00           nop
46fe 00           nop
46ff 00           nop
4700 00           nop
4701 00           nop
4702 50           ld Rd, Rb
4703 f0           ret Cp
4704 f0           ret Cp
4705 a0           Aand Rb
4706 00           nop
4707 00           nop
4708 f0           ret Cp
4709 f0           ret Cp
470a f0           ret Cp
470b f0           ret Cp
470c f0           ret Cp
470d f0           ret Cp
470e f0           ret Cp
470f 80           Aadd a, Rb
4710 40           ld Rb, Rb
4711 f0           ret Cp
4712 f0           ret Cp
4713 f0           ret Cp
4714 f0           ret Cp
4715 00           nop
4716 00           nop
4717 50           ld Rd, Rb
4718 f0           ret Cp
4719 00           nop
471a 00           nop
471b f0           ret Cp
471c a0           Aand Rb
471d 00           nop
471e 00           nop
471f a0           Aand Rb
4720 00           nop
4721 00           nop
4722 a0           Aand Rb
4723 00           nop
4724 00           nop
4725 f0           ret Cp
4726 00           nop
4727 00           nop
4728 50           ld Rd, Rb
4729 a0           Aand Rb
472a 00           nop
472b 00           nop
472c f0           ret Cp
472d 00           nop
472e 00           nop
472f 50           ld Rd, Rb
4730 f0           ret Cp
4731 00           nop
4732 00           nop
4733 00           nop
4734 00           nop
4735 00           nop
4736 50           ld Rd, Rb
4737 a0           Aand Rb
4738 00           nop
4739 00           nop
473a f0           ret Cp
473b 00           nop
473c 00           nop
473d 50           ld Rd, Rb
473e a0           Aand Rb
473f 00           nop
4740 00           nop
4741 00           nop
4742 00           nop
4743 00           nop
4744 50           ld Rd, Rb
4745 f0           ret Cp
4746 00           nop
4747 00           nop
4748 00           nop
4749 00           nop
474a 00           nop
474b 50           ld Rd, Rb
474c a0           Aand Rb
474d 00           nop
474e 00           nop
474f f0           ret Cp
4750 f0           ret Cp
4751 f0           ret Cp
4752 f0           ret Cp
4753 f0           ret Cp
4754 f0           ret Cp
4755 a0           Aand Rb
4756 00           nop
4757 00           nop
4758 f0           ret Cp
4759 f0           ret Cp
475a f0           ret Cp
475b f0           ret Cp
475c f0           ret Cp
475d f0           ret Cp
475e f0           ret Cp
475f 80           Aadd a, Rb
4760 00           nop
4761 00           nop
4762 00           nop
4763 00           nop
4764 00           nop
4765 00           nop
4766 00           nop
4767 00           nop
4768 00           nop
4769 00           nop
476a 00           nop
476b 00           nop
476c 00           nop
476d 00           nop
476e 00           nop
476f 00           nop
4770 00           nop
4771 00           nop
4772 00           nop
4773 00           nop
4774 00           nop
4775 00           nop
4776 00           nop
4777 00           nop
4778 00           nop
4779 00           nop
477a 00           nop
477b 00           nop
477c 00           nop
477d 00           nop
477e 00           nop
477f 00           nop
4780 00           nop
4781 00           nop
4782 00           nop
4783 00           nop
4784 00           nop
4785 00           nop
4786 00           nop
4787 00           nop
4788 00           nop
4789 00           nop
478a 00           nop
478b 00           nop
478c 00           nop
478d 00           nop
478e 00           nop
478f 00           nop
4790 00           nop
4791 00           nop
4792 00           nop
4793 00           nop
4794 00           nop
4795 00           nop
4796 00           nop
4797 00           nop
4798 00           nop
4799 00           nop
479a 00           nop
479b 00           nop
479c 00           nop
479d 00           nop
479e 00           nop
479f 00           nop
47a0 00           nop
47a1 00           nop
47a2 00           nop
47a3 00           nop
47a4 00           nop
47a5 00           nop
47a6 00           nop
47a7 00           nop
47a8 00           nop
47a9 00           nop
47aa 00           nop
47ab 00           nop
47ac 00           nop
47ad 00           nop
47ae 00           nop
47af 00           nop
47b0 00           nop
47b1 00           nop
47b2 00           nop
47b3 00           nop
47b4 00           nop
47b5 00           nop
47b6 00           nop
47b7 00           nop
47b8 00           nop
47b9 00           nop
47ba 00           nop
47bb 00           nop
47bc 00           nop
47bd 00           nop
47be 00           nop
47bf 00           nop
47c0 00           nop
47c1 00           nop
47c2 00           nop
47c3 00           nop
47c4 00           nop
47c5 00           nop
47c6 00           nop
47c7 00           nop
47c8 00           nop
47c9 00           nop
47ca 00           nop
47cb 00           nop
47cc 00           nop
47cd 00           nop
47ce 00           nop
47cf 00           nop
47d0 00           nop
47d1 00           nop
47d2 00           nop
47d3 00           nop
47d4 00           nop
47d5 00           nop
47d6 00           nop
47d7 00           nop
47d8 00           nop
47d9 00           nop
47da 00           nop
47db 00           nop
47dc 00           nop
47dd 00           nop
47de 00           nop
47df 00           nop
47e0 00           nop
47e1 00           nop
47e2 00           nop
47e3 00           nop
47e4 00           nop
47e5 00           nop
47e6 00           nop
47e7 00           nop
47e8 00           nop
47e9 00           nop
47ea 00           nop
47eb 00           nop
47ec 00           nop
47ed 00           nop
47ee 00           nop
47ef 00           nop
47f0 00           nop
47f1 00           nop
47f2 00           nop
47f3 00           nop
47f4 00           nop
47f5 00           nop
47f6 00           nop
47f7 00           nop
47f8 00           nop
47f9 00           nop
47fa 00           nop
47fb 00           nop
47fc 00           nop
47fd 00           nop
47fe 00           nop
47ff 00           nop
4800 00           nop
4801 00           nop
4802 00           nop
4803 00           nop
4804 00           nop
4805 00           nop
4806 00           nop
4807 00           nop
4808 00           nop
4809 00           nop
480a 00           nop
480b 00           nop
480c 00           nop
480d 00           nop
480e 00           nop
480f 00           nop
4810 00           nop
4811 00           nop
4812 00           nop
4813 00           nop
4814 00           nop
4815 00           nop
4816 00           nop
4817 00           nop
4818 00           nop
4819 00           nop
481a 00           nop
481b 00           nop
481c 00           nop
481d 00           nop
481e 00           nop
481f 00           nop
4820 00           nop
4821 00           nop
4822 00           nop
4823 00           nop
4824 00           nop
4825 00           nop
4826 00           nop
4827 00           nop
4828 00           nop
4829 00           nop
482a 00           nop
482b 00           nop
482c 00           nop
482d 00           nop
482e 00           nop
482f 00           nop
4830 00           nop
4831 00           nop
4832 00           nop
4833 00           nop
4834 00           nop
4835 00           nop
4836 00           nop
4837 00           nop
4838 00           nop
4839 00           nop
483a 00           nop
483b 00           nop
483c 00           nop
483d 00           nop
483e 00           nop
483f 00           nop
4840 00           nop
4841 00           nop
4842 00           nop
4843 00           nop
4844 00           nop
4845 00           nop
4846 00           nop
4847 00           nop
4848 00           nop
4849 00           nop
484a 00           nop
484b 00           nop
484c 00           nop
484d 00           nop
484e 00           nop
484f 00           nop
4850 40           ld Rb, Rb
4851 f0           ret Cp
4852 f0           ret Cp
4853 f0           ret Cp
4854 f0           ret Cp
4855 c0           ret Cnz
4856 c0           ret Cnz
4857 c0           ret Cnz
4858 c0           ret Cnz
4859 f0           ret Cp
485a f0           ret Cp
485b c0           ret Cnz
485c c0           ret Cnz
485d c0           ret Cnz
485e c0           ret Cnz
485f e0           ret Cpo
4860 c0           ret Cnz
4861 c0           ret Cnz
4862 e0           ret Cpo
4863 c0           ret Cnz
4864 c0           ret Cnz
4865 c0           ret Cnz
4866 c0           ret Cnz
4867 c0           ret Cnz
4868 c0           ret Cnz
4869 e0           ret Cpo
486a c0           ret Cnz
486b c0           ret Cnz
486c c0           ret Cnz
486d c0           ret Cnz
486e c0           ret Cnz
486f c0           ret Cnz
4870 e0           ret Cpo
4871 c0           ret Cnz
4872 c0           ret Cnz
4873 c0           ret Cnz
4874 c0           ret Cnz
4875 c0           ret Cnz
4876 c0           ret Cnz
4877 e0           ret Cpo
4878 c0           ret Cnz
4879 c0           ret Cnz
487a c0           ret Cnz
487b c0           ret Cnz
487c c0           ret Cnz
487d c0           ret Cnz
487e e0           ret Cpo
487f c0           ret Cnz
4880 c0           ret Cnz
4881 c0           ret Cnz
4882 c0           ret Cnz
4883 c0           ret Cnz
4884 c0           ret Cnz
4885 e0           ret Cpo
4886 c0           ret Cnz
4887 c0           ret Cnz
4888 c0           ret Cnz
4889 c0           ret Cnz
488a c0           ret Cnz
488b c0           ret Cnz
488c e0           ret Cpo
488d c0           ret Cnz
488e c0           ret Cnz
488f c0           ret Cnz
4890 c0           ret Cnz
4891 c0           ret Cnz
4892 c0           ret Cnz
4893 e0           ret Cpo
4894 c0           ret Cnz
4895 c0           ret Cnz
4896 c0           ret Cnz
4897 c0           ret Cnz
4898 c0           ret Cnz
4899 c0           ret Cnz
489a f0           ret Cp
489b f0           ret Cp
489c f0           ret Cp
489d f0           ret Cp
489e f0           ret Cp
489f 80           Aadd a, Rb
48a0 40           ld Rb, Rb
48a1 f0           ret Cp
48a2 f0           ret Cp
48a3 f0           ret Cp
48a4 f0           ret Cp
48a5 c0           ret Cnz
48a6 c0           ret Cnz
48a7 d0           ret Cnc
48a8 c0           ret Cnz
48a9 c0           ret Cnz
48aa c0           ret Cnz
48ab c0           ret Cnz
48ac e0           ret Cpo
48ad c0           ret Cnz
48ae c0           ret Cnz
48af e0           ret Cpo
48b0 c0           ret Cnz
48b1 c0           ret Cnz
48b2 e0           ret Cpo
48b3 c0           ret Cnz
48b4 c0           ret Cnz
48b5 c0           ret Cnz
48b6 c0           ret Cnz
48b7 c0           ret Cnz
48b8 d0           ret Cnc
48b9 e0           ret Cpo
48ba c0           ret Cnz
48bb c0           ret Cnz
48bc c0           ret Cnz
48bd c0           ret Cnz
48be c0           ret Cnz
48bf d0           ret Cnc
48c0 e0           ret Cpo
48c1 c0           ret Cnz
48c2 c0           ret Cnz
48c3 f0           ret Cp
48c4 e0           ret Cpo
48c5 c0           ret Cnz
48c6 c0           ret Cnz
48c7 e0           ret Cpo
48c8 c0           ret Cnz
48c9 c0           ret Cnz
48ca c0           ret Cnz
48cb c0           ret Cnz
48cc c0           ret Cnz
48cd d0           ret Cnc
48ce e0           ret Cpo
48cf c0           ret Cnz
48d0 c0           ret Cnz
48d1 c0           ret Cnz
48d2 c0           ret Cnz
48d3 c0           ret Cnz
48d4 d0           ret Cnc
48d5 e0           ret Cpo
48d6 c0           ret Cnz
48d7 c0           ret Cnz
48d8 f0           ret Cp
48d9 e0           ret Cpo
48da c0           ret Cnz
48db c0           ret Cnz
48dc e0           ret Cpo
48dd c0           ret Cnz
48de c0           ret Cnz
48df c0           ret Cnz
48e0 c0           ret Cnz
48e1 c0           ret Cnz
48e2 d0           ret Cnc
48e3 f0           ret Cp
48e4 f0           ret Cp
48e5 e0           ret Cpo
48e6 c0           ret Cnz
48e7 c0           ret Cnz
48e8 f0           ret Cp
48e9 f0           ret Cp
48ea f0           ret Cp
48eb f0           ret Cp
48ec f0           ret Cp
48ed f0           ret Cp
48ee f0           ret Cp
48ef 80           Aadd a, Rb
48f0 40           ld Rb, Rb
48f1 f0           ret Cp
48f2 f0           ret Cp
48f3 f0           ret Cp
48f4 f0           ret Cp
48f5 c0           ret Cnz
48f6 c0           ret Cnz
48f7 d0           ret Cnc
48f8 f0           ret Cp
48f9 c0           ret Cnz
48fa c0           ret Cnz
48fb f0           ret Cp
48fc e0           ret Cpo
48fd c0           ret Cnz
48fe c0           ret Cnz
48ff e0           ret Cpo
4900 c0           ret Cnz
4901 c0           ret Cnz
4902 e0           ret Cpo
4903 c0           ret Cnz
4904 c0           ret Cnz
4905 f0           ret Cp
4906 e0           ret Cpo
4907 c0           ret Cnz
4908 c0           ret Cnz
4909 e0           ret Cpo
490a c0           ret Cnz
490b c0           ret Cnz
490c f0           ret Cp
490d e0           ret Cpo
490e c0           ret Cnz
490f c0           ret Cnz
4910 f0           ret Cp
4911 e0           ret Cpo
4912 c0           ret Cnz
4913 c0           ret Cnz
4914 c0           ret Cnz
4915 c0           ret Cnz
4916 f0           ret Cp
4917 e0           ret Cpo
4918 c0           ret Cnz
4919 c0           ret Cnz
491a f0           ret Cp
491b e0           ret Cpo
491c c0           ret Cnz
491d c0           ret Cnz
491e e0           ret Cpo
491f c0           ret Cnz
4920 c0           ret Cnz
4921 c0           ret Cnz
4922 c0           ret Cnz
4923 c0           ret Cnz
4924 f0           ret Cp
4925 f0           ret Cp
4926 e0           ret Cpo
4927 c0           ret Cnz
4928 c0           ret Cnz
4929 c0           ret Cnz
492a c0           ret Cnz
492b f0           ret Cp
492c e0           ret Cpo
492d c0           ret Cnz
492e c0           ret Cnz
492f f0           ret Cp
4930 f0           ret Cp
4931 f0           ret Cp
4932 f0           ret Cp
4933 f0           ret Cp
4934 f0           ret Cp
4935 e0           ret Cpo
4936 c0           ret Cnz
4937 c0           ret Cnz
4938 f0           ret Cp
4939 f0           ret Cp
493a f0           ret Cp
493b f0           ret Cp
493c f0           ret Cp
493d f0           ret Cp
493e f0           ret Cp
493f 80           Aadd a, Rb
4940 00           nop
4941 00           nop
4942 00           nop
4943 00           nop
4944 00           nop
4945 00           nop
4946 00           nop
4947 00           nop
4948 00           nop
4949 00           nop
494a 00           nop
494b 00           nop
494c 00           nop
494d 00           nop
494e 00           nop
494f 00           nop
4950 00           nop
4951 00           nop
4952 00           nop
4953 00           nop
4954 00           nop
4955 00           nop
4956 00           nop
4957 00           nop
4958 00           nop
4959 00           nop
495a 00           nop
495b 00           nop
495c 00           nop
495d 00           nop
495e 00           nop
495f 00           nop
4960 00           nop
4961 00           nop
4962 00           nop
4963 00           nop
4964 00           nop
4965 00           nop
4966 00           nop
4967 00           nop
4968 00           nop
4969 00           nop
496a 00           nop
496b 00           nop
496c 00           nop
496d 00           nop
496e 00           nop
496f 00           nop
4970 00           nop
4971 00           nop
4972 00           nop
4973 00           nop
4974 00           nop
4975 00           nop
4976 00           nop
4977 00           nop
4978 00           nop
4979 00           nop
497a 00           nop
497b 00           nop
497c 00           nop
497d 00           nop
497e 00           nop
497f 00           nop
4980 00           nop
4981 00           nop
4982 00           nop
4983 00           nop
4984 00           nop
4985 00           nop
4986 00           nop
4987 00           nop
4988 00           nop
4989 00           nop
498a 00           nop
498b 00           nop
498c 00           nop
498d 00           nop
498e 00           nop
498f 00           nop
4990 00           nop
4991 00           nop
4992 00           nop
4993 00           nop
4994 00           nop
4995 00           nop
4996 00           nop
4997 00           nop
4998 00           nop
4999 00           nop
499a 00           nop
499b 00           nop
499c 00           nop
499d 00           nop
499e 00           nop
499f 00           nop
49a0 00           nop
49a1 00           nop
49a2 00           nop
49a3 00           nop
49a4 00           nop
49a5 00           nop
49a6 00           nop
49a7 00           nop
49a8 00           nop
49a9 00           nop
49aa 00           nop
49ab 00           nop
49ac 00           nop
49ad 00           nop
49ae 00           nop
49af 00           nop
49b0 00           nop
49b1 00           nop
49b2 00           nop
49b3 00           nop
49b4 00           nop
49b5 00           nop
49b6 00           nop
49b7 00           nop
49b8 00           nop
49b9 00           nop
49ba 00           nop
49bb 00           nop
49bc 00           nop
49bd 00           nop
49be 00           nop
49bf 00           nop
49c0 00           nop
49c1 00           nop
49c2 00           nop
49c3 00           nop
49c4 00           nop
49c5 00           nop
49c6 00           nop
49c7 00           nop
49c8 00           nop
49c9 00           nop
49ca 00           nop
49cb 00           nop
49cc 00           nop
49cd 00           nop
49ce 00           nop
49cf 00           nop
49d0 00           nop
49d1 00           nop
49d2 00           nop
49d3 00           nop
49d4 00           nop
49d5 00           nop
49d6 00           nop
49d7 00           nop
49d8 00           nop
49d9 00           nop
49da 00           nop
49db 00           nop
49dc 00           nop
49dd 00           nop
49de 00           nop
49df 00           nop
49e0 00           nop
49e1 00           nop
49e2 00           nop
49e3 00           nop
49e4 00           nop
49e5 00           nop
49e6 00           nop
49e7 00           nop
49e8 00           nop
49e9 00           nop
49ea 00           nop
49eb 00           nop
49ec 00           nop
49ed 00           nop
49ee 00           nop
49ef 00           nop
49f0 00           nop
49f1 00           nop
49f2 00           nop
49f3 00           nop
49f4 00           nop
49f5 00           nop
49f6 00           nop
49f7 00           nop
49f8 00           nop
49f9 00           nop
49fa 00           nop
49fb 00           nop
49fc 00           nop
49fd 00           nop
49fe 00           nop
49ff 00           nop
4a00 00           nop
4a01 00           nop
4a02 00           nop
4a03 00           nop
4a04 00           nop
4a05 00           nop
4a06 00           nop
4a07 00           nop
4a08 00           nop
4a09 00           nop
4a0a 00           nop
4a0b 00           nop
4a0c 00           nop
4a0d 00           nop
4a0e 00           nop
4a0f c0           ret Cnz
4a10 80           Aadd a, Rb
4a11 00           nop
4a12 00           nop
4a13 00           nop
4a14 00           nop
4a15 00           nop
4a16 00           nop
4a17 00           nop
4a18 00           nop
4a19 00           nop
4a1a 00           nop
4a1b 00           nop
4a1c 00           nop
4a1d 00           nop
4a1e 00           nop
4a1f 00           nop
4a20 00           nop
4a21 00           nop
4a22 00           nop
4a23 00           nop
4a24 00           nop
4a25 00           nop
4a26 00           nop
4a27 00           nop
4a28 00           nop
4a29 00           nop
4a2a 00           nop
4a2b 00           nop
4a2c 00           nop
4a2d 00           nop
4a2e 00           nop
4a2f 00           nop
4a30 00           nop
4a31 00           nop
4a32 00           nop
4a33 00           nop
4a34 00           nop
4a35 00           nop
4a36 00           nop
4a37 00           nop
4a38 00           nop
4a39 00           nop
4a3a 00           nop
4a3b 00           nop
4a3c 00           nop
4a3d 00           nop
4a3e 00           nop
4a3f 00           nop
4a40 00           nop
4a41 00           nop
4a42 00           nop
4a43 00           nop
4a44 00           nop
4a45 00           nop
4a46 00           nop
4a47 00           nop
4a48 00           nop
4a49 00           nop
4a4a 00           nop
4a4b 00           nop
4a4c 00           nop
4a4d 00           nop
4a4e 00           nop
4a4f 00           nop
4a50 00           nop
4a51 00           nop
4a52 00           nop
4a53 00           nop
4a54 00           nop
4a55 00           nop
4a56 00           nop
4a57 00           nop
4a58 00           nop
4a59 c0           ret Cnz
4a5a c0           ret Cnz
4a5b c0           ret Cnz
4a5c c0           ret Cnz
4a5d c0           ret Cnz
4a5e c0           ret Cnz
4a5f c0           ret Cnz
4a60 0c           inc Rc
4a61 0c           inc Rc
4a62 0c           inc Rc
4a63 0c           inc Rc
4a64 0c           inc Rc
4a65 0c           inc Rc
4a66 0c           inc Rc
4a67 44           ld Rb, Rh
4a68 cccc88       call Cz, W0x88cc
4a6b cc88cc       call Cz, W0xcc88
4a6e cccccc       call Cz, W0xcccc
4a71 44           ld Rb, Rh
4a72 cccccc       call Cz, W0xcccc
4a75 88           Aadc a, Rb
4a76 cccc04       call Cz, W0x04cc
4a79 0c           inc Rc
4a7a 0c           inc Rc
4a7b 0c           inc Rc
4a7c 0c           inc Rc
4a7d 0c           inc Rc
4a7e 0c           inc Rc
4a7f 0c           inc Rc
4a80 0c           inc Rc
4a81 0c           inc Rc
4a82 0c           inc Rc
4a83 0c           inc Rc
4a84 0c           inc Rc
4a85 0c           inc Rc
4a86 0c           inc Rc
4a87 0c           inc Rc
4a88 00           nop
4a89 00           nop
4a8a 00           nop
4a8b 00           nop
4a8c 00           nop
4a8d 00           nop
4a8e 00           nop
4a8f 00           nop
4a90 00           nop
4a91 00           nop
4a92 00           nop
4a93 00           nop
4a94 00           nop
4a95 00           nop
4a96 00           nop
4a97 00           nop
4a98 00           nop
4a99 00           nop
4a9a 00           nop
4a9b 00           nop
4a9c 00           nop
4a9d 00           nop
4a9e 00           nop
4a9f 00           nop
4aa0 00           nop
4aa1 00           nop
4aa2 00           nop
4aa3 00           nop
4aa4 00           nop
4aa5 00           nop
4aa6 00           nop
4aa7 00           nop
4aa8 00           nop
4aa9 00           nop
4aaa c0           ret Cnz
4aab c0           ret Cnz
4aac c0           ret Cnz
4aad c0           ret Cnz
4aae c0           ret Cnz
4aaf 84           Aadd a, Rh
4ab0 0c           inc Rc
4ab1 0c           inc Rc
4ab2 00           nop
4ab3 00           nop
4ab4 00           nop
4ab5 00           nop
4ab6 00           nop
4ab7 44           ld Rb, Rh
4ab8 cc0000       call Cz, W0x0000
4abb cc88cc       call Cz, W0xcc88
4abe 88           Aadc a, Rb
4abf cccc44       call Cz, W0x44cc
4ac2 cccccc       call Cz, W0xcccc
4ac5 88           Aadc a, Rb
4ac6 cccc00       call Cz, W0x00cc
4ac9 00           nop
4aca 00           nop
4acb 00           nop
4acc 00           nop
4acd 00           nop
4ace 00           nop
4acf 00           nop
4ad0 00           nop
4ad1 00           nop
4ad2 00           nop
4ad3 00           nop
4ad4 00           nop
4ad5 00           nop
4ad6 00           nop
4ad7 00           nop
4ad8 00           nop
4ad9 00           nop
4ada 00           nop
4adb 00           nop
4adc 00           nop
4add 00           nop
4ade 00           nop
4adf 00           nop
4ae0 00           nop
4ae1 00           nop
4ae2 00           nop
4ae3 00           nop
4ae4 00           nop
4ae5 00           nop
4ae6 00           nop
4ae7 00           nop
4ae8 00           nop
4ae9 00           nop
4aea 00           nop
4aeb 00           nop
4aec 00           nop
4aed 00           nop
4aee 00           nop
4aef 00           nop
4af0 00           nop
4af1 00           nop
4af2 00           nop
4af3 00           nop
4af4 00           nop
4af5 00           nop
4af6 00           nop
4af7 00           nop
4af8 c0           ret Cnz
4af9 00           nop
4afa 00           nop
4afb cccccc       call Cz, W0xcccc
4afe 00           nop
4aff c0           ret Cnz
4b00 80           Aadd a, Rb
4b01 04           inc Rb
4b02 0c           inc Rc
4b03 0c           inc Rc
4b04 00           nop
4b05 00           nop
4b06 00           nop
4b07 04           inc Rb
4b08 0c           inc Rc
4b09 08           ex af, af'
4b0a 00           nop
4b0b 0c           inc Rc
4b0c 0c           inc Rc
4b0d 0c           inc Rc
4b0e 0c           inc Rc
4b0f 0c           inc Rc
4b10 0c           inc Rc
4b11 04           inc Rb
4b12 0c           inc Rc
4b13 0c           inc Rc
4b14 0c           inc Rc
4b15 0c           inc Rc
4b16 0c           inc Rc
4b17 0c           inc Rc
4b18 00           nop
4b19 00           nop
4b1a 00           nop
4b1b 00           nop
4b1c 00           nop
4b1d 00           nop
4b1e 00           nop
4b1f 00           nop
4b20 00           nop
4b21 00           nop
4b22 00           nop
4b23 00           nop
4b24 00           nop
4b25 00           nop
4b26 00           nop
4b27 00           nop
4b28 00           nop
4b29 00           nop
4b2a 00           nop
4b2b 00           nop
4b2c 00           nop
4b2d 00           nop
4b2e 00           nop
4b2f 00           nop
4b30 00           nop
4b31 00           nop
4b32 00           nop
4b33 00           nop
4b34 00           nop
4b35 00           nop
4b36 00           nop
4b37 00           nop
4b38 00           nop
4b39 00           nop
4b3a 00           nop
4b3b 00           nop
4b3c 00           nop
4b3d 00           nop
4b3e 00           nop
4b3f 00           nop
4b40 00           nop
4b41 00           nop
4b42 00           nop
4b43 00           nop
4b44 00           nop
4b45 00           nop
4b46 00           nop
4b47 00           nop
4b48 00           nop
4b49 00           nop
4b4a 00           nop
4b4b 00           nop
4b4c 00           nop
4b4d cccccc       call Cz, W0xcccc
4b50 00           nop
4b51 00           nop
4b52 00           nop
4b53 0c           inc Rc
4b54 0c           inc Rc
4b55 0c           inc Rc
4b56 00           nop
4b57 04           inc Rb
4b58 0c           inc Rc
4b59 08           ex af, af'
4b5a 00           nop
4b5b 0c           inc Rc
4b5c 0c           inc Rc
4b5d 0c           inc Rc
4b5e 0c           inc Rc
4b5f 0c           inc Rc
4b60 0c           inc Rc
4b61 04           inc Rb
4b62 0c           inc Rc
4b63 0c           inc Rc
4b64 0c           inc Rc
4b65 0c           inc Rc
4b66 0c           inc Rc
4b67 08           ex af, af'
4b68 00           nop
4b69 00           nop
4b6a 00           nop
4b6b 00           nop
4b6c 00           nop
4b6d 00           nop
4b6e 00           nop
4b6f 00           nop
4b70 00           nop
4b71 00           nop
4b72 00           nop
4b73 00           nop
4b74 00           nop
4b75 00           nop
4b76 00           nop
4b77 00           nop
4b78 00           nop
4b79 00           nop
4b7a 00           nop
4b7b 00           nop
4b7c 00           nop
4b7d 00           nop
4b7e 00           nop
4b7f 00           nop
4b80 00           nop
4b81 00           nop
4b82 00           nop
4b83 00           nop
4b84 00           nop
4b85 00           nop
4b86 00           nop
4b87 00           nop
4b88 00           nop
4b89 00           nop
4b8a 00           nop
4b8b 00           nop
4b8c 00           nop
4b8d 00           nop
4b8e 00           nop
4b8f 00           nop
4b90 00           nop
4b91 00           nop
4b92 00           nop
4b93 00           nop
4b94 00           nop
4b95 00           nop
4b96 00           nop
4b97 00           nop
4b98 00           nop
4b99 00           nop
4b9a 00           nop
4b9b 00           nop
4b9c 00           nop
4b9d 00           nop
4b9e 00           nop
4b9f cccc88       call Cz, W0x88cc
4ba2 00           nop
4ba3 00           nop
4ba4 00           nop
4ba5 00           nop
4ba6 00           nop
4ba7 00           nop
4ba8 00           nop
4ba9 00           nop
4baa 00           nop
4bab 00           nop
4bac 00           nop
4bad 00           nop
4bae 00           nop
4baf 00           nop
4bb0 00           nop
4bb1 00           nop
4bb2 00           nop
4bb3 00           nop
4bb4 00           nop
4bb5 0c           inc Rc
4bb6 0c           inc Rc
4bb7 0c           inc Rc
4bb8 00           nop
4bb9 00           nop
4bba 04           inc Rb
4bbb 00           nop
4bbc 00           nop
4bbd 00           nop
4bbe 00           nop
4bbf 00           nop
4bc0 00           nop
4bc1 00           nop
4bc2 00           nop
4bc3 00           nop
4bc4 00           nop
4bc5 00           nop
4bc6 00           nop
4bc7 00           nop
4bc8 00           nop
4bc9 00           nop
4bca 00           nop
4bcb 00           nop
4bcc 00           nop
4bcd 00           nop
4bce 00           nop
4bcf 00           nop
4bd0 00           nop
4bd1 00           nop
4bd2 00           nop
4bd3 00           nop
4bd4 00           nop
4bd5 00           nop
4bd6 00           nop
4bd7 00           nop
4bd8 00           nop
4bd9 00           nop
4bda 00           nop
4bdb 00           nop
4bdc 00           nop
4bdd 00           nop
4bde 00           nop
4bdf 00           nop
4be0 00           nop
4be1 00           nop
4be2 00           nop
4be3 00           nop
4be4 00           nop
4be5 00           nop
4be6 00           nop
4be7 00           nop
4be8 00           nop
4be9 00           nop
4bea 00           nop
4beb 00           nop
4bec 00           nop
4bed 00           nop
4bee 00           nop
4bef c0           ret Cnz
4bf0 80           Aadd a, Rb
4bf1 00           nop
4bf2 00           nop
4bf3 00           nop
4bf4 00           nop
4bf5 00           nop
4bf6 00           nop
4bf7 44           ld Rb, Rh
4bf8 cccc88       call Cz, W0x88cc
4bfb cc88cc       call Cz, W0xcc88
4bfe cccc88       call Cz, W0x88cc
4c01 00           nop
4c02 cccc44       call Cz, W0x44cc
4c05 cccccc       call Cz, W0xcccc
4c08 cc44cc       call Cz, W0xcc44
4c0b cccccc       call Cz, W0xcccc
4c0e cccccc       call Cz, W0xcccc
4c11 cccccc       call Cz, W0xcccc
4c14 cccccc       call Cz, W0xcccc
4c17 cc0000       call Cz, W0x0000
4c1a 00           nop
4c1b 00           nop
4c1c 00           nop
4c1d 00           nop
4c1e 00           nop
4c1f 00           nop
4c20 00           nop
4c21 00           nop
4c22 00           nop
4c23 00           nop
4c24 00           nop
4c25 00           nop
4c26 00           nop
4c27 00           nop
4c28 00           nop
4c29 00           nop
4c2a 00           nop
4c2b 00           nop
4c2c 00           nop
4c2d 00           nop
4c2e 00           nop
4c2f 00           nop
4c30 00           nop
4c31 00           nop
4c32 00           nop
4c33 00           nop
4c34 00           nop
4c35 00           nop
4c36 00           nop
4c37 00           nop
4c38 00           nop
4c39 40           ld Rb, Rb
4c3a c0           ret Cnz
4c3b c0           ret Cnz
4c3c c0           ret Cnz
4c3d c0           ret Cnz
4c3e c0           ret Cnz
4c3f 84           Aadd a, Rh
4c40 0c           inc Rc
4c41 0c           inc Rc
4c42 0c           inc Rc
4c43 0c           inc Rc
4c44 0c           inc Rc
4c45 0c           inc Rc
4c46 0c           inc Rc
4c47 44           ld Rb, Rh
4c48 cccc88       call Cz, W0x88cc
4c4b cc88cc       call Cz, W0xcc88
4c4e cccccc       call Cz, W0xcccc
4c51 44           ld Rb, Rh
4c52 cccccc       call Cz, W0xcccc
4c55 88           Aadc a, Rb
4c56 cccc04       call Cz, W0x04cc
4c59 0c           inc Rc
4c5a 0c           inc Rc
4c5b 0c           inc Rc
4c5c 0c           inc Rc
4c5d 0c           inc Rc
4c5e 0c           inc Rc
4c5f 0c           inc Rc
4c60 0c           inc Rc
4c61 0c           inc Rc
4c62 0c           inc Rc
4c63 0c           inc Rc
4c64 0c           inc Rc
4c65 0c           inc Rc
4c66 0c           inc Rc
4c67 0c           inc Rc
4c68 00           nop
4c69 00           nop
4c6a 00           nop
4c6b 00           nop
4c6c 00           nop
4c6d 00           nop
4c6e 00           nop
4c6f 00           nop
4c70 00           nop
4c71 00           nop
4c72 00           nop
4c73 00           nop
4c74 00           nop
4c75 00           nop
4c76 00           nop
4c77 00           nop
4c78 00           nop
4c79 00           nop
4c7a 00           nop
4c7b 00           nop
4c7c 00           nop
4c7d 00           nop
4c7e 00           nop
4c7f 00           nop
4c80 00           nop
4c81 00           nop
4c82 00           nop
4c83 00           nop
4c84 00           nop
4c85 00           nop
4c86 00           nop
4c87 00           nop
4c88 00           nop
4c89 00           nop
4c8a c0           ret Cnz
4c8b c0           ret Cnz
4c8c c0           ret Cnz
4c8d c0           ret Cnz
4c8e c0           ret Cnz
4c8f 84           Aadd a, Rh
4c90 0c           inc Rc
4c91 0c           inc Rc
4c92 08           ex af, af'
4c93 00           nop
4c94 00           nop
4c95 00           nop
4c96 00           nop
4c97 44           ld Rb, Rh
4c98 cc0000       call Cz, W0x0000
4c9b cc88cc       call Cz, W0xcc88
4c9e 88           Aadc a, Rb
4c9f 44           ld Rb, Rh
4ca0 cc44cc       call Cz, W0xcc44
4ca3 cc8800       call Cz, W0x0088
4ca6 cccc00       call Cz, W0x00cc
4ca9 00           nop
4caa 00           nop
4cab 00           nop
4cac 00           nop
4cad 00           nop
4cae 00           nop
4caf 00           nop
4cb0 00           nop
4cb1 00           nop
4cb2 00           nop
4cb3 00           nop
4cb4 00           nop
4cb5 00           nop
4cb6 00           nop
4cb7 00           nop
4cb8 00           nop
4cb9 00           nop
4cba 00           nop
4cbb 00           nop
4cbc 00           nop
4cbd 00           nop
4cbe 00           nop
4cbf 00           nop
4cc0 00           nop
4cc1 00           nop
4cc2 00           nop
4cc3 00           nop
4cc4 00           nop
4cc5 00           nop
4cc6 00           nop
4cc7 00           nop
4cc8 00           nop
4cc9 00           nop
4cca 00           nop
4ccb 00           nop
4ccc 00           nop
4ccd 00           nop
4cce 00           nop
4ccf 00           nop
4cd0 00           nop
4cd1 00           nop
4cd2 00           nop
4cd3 00           nop
4cd4 00           nop
4cd5 00           nop
4cd6 00           nop
4cd7 00           nop
4cd8 00           nop
4cd9 00           nop
4cda 00           nop
4cdb cccccc       call Cz, W0xcccc
4cde 00           nop
4cdf 40           ld Rb, Rb
4ce0 80           Aadd a, Rb
4ce1 04           inc Rb
4ce2 0c           inc Rc
4ce3 0c           inc Rc
4ce4 08           ex af, af'
4ce5 00           nop
4ce6 00           nop
4ce7 04           inc Rb
4ce8 0c           inc Rc
4ce9 08           ex af, af'
4cea 00           nop
4ceb 0c           inc Rc
4cec 0c           inc Rc
4ced 08           ex af, af'
4cee 04           inc Rb
4cef 0c           inc Rc
4cf0 0c           inc Rc
4cf1 04           inc Rb
4cf2 0c           inc Rc
4cf3 0c           inc Rc
4cf4 0c           inc Rc
4cf5 0c           inc Rc
4cf6 0c           inc Rc
4cf7 0c           inc Rc
4cf8 00           nop
4cf9 00           nop
4cfa 00           nop
4cfb 00           nop
4cfc 00           nop
4cfd 00           nop
4cfe 00           nop
4cff 00           nop
4d00 00           nop
4d01 00           nop
4d02 00           nop
4d03 00           nop
4d04 00           nop
4d05 00           nop
4d06 00           nop
4d07 00           nop
4d08 00           nop
4d09 00           nop
4d0a 00           nop
4d0b 00           nop
4d0c 00           nop
4d0d 00           nop
4d0e 00           nop
4d0f 00           nop
4d10 00           nop
4d11 00           nop
4d12 00           nop
4d13 00           nop
4d14 00           nop
4d15 00           nop
4d16 00           nop
4d17 00           nop
4d18 00           nop
4d19 00           nop
4d1a 00           nop
4d1b 00           nop
4d1c 00           nop
4d1d 00           nop
4d1e 00           nop
4d1f 00           nop
4d20 00           nop
4d21 00           nop
4d22 00           nop
4d23 00           nop
4d24 00           nop
4d25 00           nop
4d26 00           nop
4d27 00           nop
4d28 00           nop
4d29 00           nop
4d2a 00           nop
4d2b 00           nop
4d2c 00           nop
4d2d cccccc       call Cz, W0xcccc
4d30 00           nop
4d31 00           nop
4d32 00           nop
4d33 04           inc Rb
4d34 0c           inc Rc
4d35 0c           inc Rc
4d36 08           ex af, af'
4d37 04           inc Rb
4d38 0c           inc Rc
4d39 08           ex af, af'
4d3a 00           nop
4d3b 0c           inc Rc
4d3c 0c           inc Rc
4d3d 0c           inc Rc
4d3e 0c           inc Rc
4d3f 0c           inc Rc
4d40 0c           inc Rc
4d41 04           inc Rb
4d42 0c           inc Rc
4d43 0c           inc Rc
4d44 0c           inc Rc
4d45 0c           inc Rc
4d46 08           ex af, af'
4d47 00           nop
4d48 00           nop
4d49 00           nop
4d4a 00           nop
4d4b 00           nop
4d4c 00           nop
4d4d 00           nop
4d4e 00           nop
4d4f 00           nop
4d50 00           nop
4d51 00           nop
4d52 00           nop
4d53 00           nop
4d54 00           nop
4d55 00           nop
4d56 00           nop
4d57 00           nop
4d58 00           nop
4d59 00           nop
4d5a 00           nop
4d5b 00           nop
4d5c 00           nop
4d5d 00           nop
4d5e 00           nop
4d5f 00           nop
4d60 00           nop
4d61 00           nop
4d62 00           nop
4d63 00           nop
4d64 00           nop
4d65 00           nop
4d66 00           nop
4d67 00           nop
4d68 00           nop
4d69 00           nop
4d6a 00           nop
4d6b 00           nop
4d6c 00           nop
4d6d 00           nop
4d6e 00           nop
4d6f 00           nop
4d70 00           nop
4d71 00           nop
4d72 00           nop
4d73 00           nop
4d74 00           nop
4d75 00           nop
4d76 00           nop
4d77 00           nop
4d78 00           nop
4d79 00           nop
4d7a 00           nop
4d7b 00           nop
4d7c 00           nop
4d7d 00           nop
4d7e 00           nop
4d7f cccc88       call Cz, W0x88cc
4d82 44           ld Rb, Rh
4d83 cc88cc       call Cz, W0xcc88
4d86 cc44cc       call Cz, W0xcc44
4d89 44           ld Rb, Rh
4d8a 00           nop
4d8b 44           ld Rb, Rh
4d8c 44           ld Rb, Rh
4d8d cc88cc       call Cz, W0xcc88
4d90 cc44cc       call Cz, W0xcc44
4d93 88           Aadc a, Rb
4d94 00           nop
4d95 00           nop
4d96 00           nop
4d97 00           nop
4d98 00           nop
4d99 00           nop
4d9a 0c           inc Rc
4d9b 00           nop
4d9c 00           nop
4d9d 04           inc Rb
4d9e 00           nop
4d9f 04           inc Rb
4da0 00           nop
4da1 0c           inc Rc
4da2 0c           inc Rc
4da3 04           inc Rb
4da4 0c           inc Rc
4da5 08           ex af, af'
4da6 08           ex af, af'
4da7 00           nop
4da8 00           nop
4da9 00           nop
4daa 00           nop
4dab 00           nop
4dac 00           nop
4dad 00           nop
4dae 00           nop
4daf 00           nop
4db0 00           nop
4db1 00           nop
4db2 00           nop
4db3 00           nop
4db4 00           nop
4db5 00           nop
4db6 00           nop
4db7 00           nop
4db8 00           nop
4db9 00           nop
4dba 00           nop
4dbb 00           nop
4dbc 00           nop
4dbd 00           nop
4dbe 00           nop
4dbf 00           nop
4dc0 00           nop
4dc1 00           nop
4dc2 00           nop
4dc3 00           nop
4dc4 00           nop
4dc5 00           nop
4dc6 00           nop
4dc7 00           nop
4dc8 00           nop
4dc9 00           nop
4dca 00           nop
4dcb 00           nop
4dcc 00           nop
4dcd 00           nop
4dce 40           ld Rb, Rb
4dcf c0           ret Cnz
4dd0 80           Aadd a, Rb
4dd1 00           nop
4dd2 00           nop
4dd3 00           nop
4dd4 00           nop
4dd5 00           nop
4dd6 00           nop
4dd7 44           ld Rb, Rh
4dd8 cccc88       call Cz, W0x88cc
4ddb cc88cc       call Cz, W0xcc88
4dde cccccc       call Cz, W0xcccc
4de1 44           ld Rb, Rh
4de2 cccc44       call Cz, W0x44cc
4de5 cccccc       call Cz, W0xcccc
4de8 cc44cc       call Cz, W0xcc44
4deb cccccc       call Cz, W0xcccc
4dee cccccc       call Cz, W0xcccc
4df1 cccccc       call Cz, W0xcccc
4df4 cccccc       call Cz, W0xcccc
4df7 cc0000       call Cz, W0x0000
4dfa 00           nop
4dfb 00           nop
4dfc 00           nop
4dfd 00           nop
4dfe 00           nop
4dff 00           nop
4e00 00           nop
4e01 00           nop
4e02 00           nop
4e03 00           nop
4e04 00           nop
4e05 00           nop
4e06 00           nop
4e07 00           nop
4e08 00           nop
4e09 00           nop
4e0a 00           nop
4e0b 00           nop
4e0c 00           nop
4e0d 00           nop
4e0e 00           nop
4e0f 00           nop
4e10 00           nop
4e11 00           nop
4e12 00           nop
4e13 00           nop
4e14 00           nop
4e15 00           nop
4e16 00           nop
4e17 00           nop
4e18 00           nop
4e19 00           nop
4e1a c0           ret Cnz
4e1b c0           ret Cnz
4e1c c0           ret Cnz
4e1d c0           ret Cnz
4e1e c0           ret Cnz
4e1f 0c           inc Rc
4e20 0c           inc Rc
4e21 0c           inc Rc
4e22 0c           inc Rc
4e23 0c           inc Rc
4e24 0c           inc Rc
4e25 0c           inc Rc
4e26 0c           inc Rc
4e27 44           ld Rb, Rh
4e28 cccc88       call Cz, W0x88cc
4e2b cc88cc       call Cz, W0xcc88
4e2e cccc88       call Cz, W0x88cc
4e31 44           ld Rb, Rh
4e32 cccccc       call Cz, W0xcccc
4e35 88           Aadc a, Rb
4e36 cccc04       call Cz, W0x04cc
4e39 0c           inc Rc
4e3a 0c           inc Rc
4e3b 0c           inc Rc
4e3c 0c           inc Rc
4e3d 0c           inc Rc
4e3e 0c           inc Rc
4e3f 0c           inc Rc
4e40 0c           inc Rc
4e41 0c           inc Rc
4e42 0c           inc Rc
4e43 0c           inc Rc
4e44 0c           inc Rc
4e45 0c           inc Rc
4e46 0c           inc Rc
4e47 0c           inc Rc
4e48 00           nop
4e49 00           nop
4e4a 00           nop
4e4b 00           nop
4e4c 00           nop
4e4d 00           nop
4e4e 00           nop
4e4f 00           nop
4e50 00           nop
4e51 00           nop
4e52 00           nop
4e53 00           nop
4e54 00           nop
4e55 00           nop
4e56 00           nop
4e57 00           nop
4e58 00           nop
4e59 00           nop
4e5a 00           nop
4e5b 00           nop
4e5c 00           nop
4e5d 00           nop
4e5e 00           nop
4e5f 00           nop
4e60 00           nop
4e61 00           nop
4e62 00           nop
4e63 00           nop
4e64 00           nop
4e65 00           nop
4e66 00           nop
4e67 00           nop
4e68 00           nop
4e69 40           ld Rb, Rb
4e6a c0           ret Cnz
4e6b c0           ret Cnz
4e6c c0           ret Cnz
4e6d 40           ld Rb, Rb
4e6e c0           ret Cnz
4e6f c0           ret Cnz
4e70 0c           inc Rc
4e71 0c           inc Rc
4e72 08           ex af, af'
4e73 00           nop
4e74 00           nop
4e75 00           nop
4e76 00           nop
4e77 00           nop
4e78 00           nop
4e79 00           nop
4e7a 00           nop
4e7b 00           nop
4e7c 00           nop
4e7d 00           nop
4e7e 00           nop
4e7f 00           nop
4e80 00           nop
4e81 00           nop
4e82 00           nop
4e83 00           nop
4e84 00           nop
4e85 00           nop
4e86 00           nop
4e87 00           nop
4e88 00           nop
4e89 00           nop
4e8a 00           nop
4e8b 00           nop
4e8c 00           nop
4e8d 00           nop
4e8e 00           nop
4e8f 00           nop
4e90 00           nop
4e91 00           nop
4e92 00           nop
4e93 00           nop
4e94 00           nop
4e95 00           nop
4e96 00           nop
4e97 00           nop
4e98 00           nop
4e99 00           nop
4e9a 00           nop
4e9b 00           nop
4e9c 00           nop
4e9d 00           nop
4e9e 00           nop
4e9f 00           nop
4ea0 00           nop
4ea1 00           nop
4ea2 00           nop
4ea3 00           nop
4ea4 00           nop
4ea5 00           nop
4ea6 00           nop
4ea7 00           nop
4ea8 00           nop
4ea9 00           nop
4eaa 00           nop
4eab 00           nop
4eac 00           nop
4ead 00           nop
4eae 00           nop
4eaf 00           nop
4eb0 00           nop
4eb1 00           nop
4eb2 00           nop
4eb3 00           nop
4eb4 00           nop
4eb5 00           nop
4eb6 00           nop
4eb7 00           nop
4eb8 00           nop
4eb9 00           nop
4eba 00           nop
4ebb 44           ld Rb, Rh
4ebc cccc88       call Cz, W0x88cc
4ebf 00           nop
4ec0 80           Aadd a, Rb
4ec1 04           inc Rb
4ec2 0c           inc Rc
4ec3 0c           inc Rc
4ec4 08           ex af, af'
4ec5 00           nop
4ec6 00           nop
4ec7 04           inc Rb
4ec8 0c           inc Rc
4ec9 08           ex af, af'
4eca 00           nop
4ecb 0c           inc Rc
4ecc 0c           inc Rc
4ecd 00           nop
4ece 00           nop
4ecf 0c           inc Rc
4ed0 0c           inc Rc
4ed1 04           inc Rb
4ed2 0c           inc Rc
4ed3 08           ex af, af'
4ed4 00           nop
4ed5 00           nop
4ed6 0c           inc Rc
4ed7 0c           inc Rc
4ed8 00           nop
4ed9 00           nop
4eda 00           nop
4edb 00           nop
4edc 00           nop
4edd 00           nop
4ede 00           nop
4edf 00           nop
4ee0 00           nop
4ee1 00           nop
4ee2 00           nop
4ee3 00           nop
4ee4 00           nop
4ee5 00           nop
4ee6 00           nop
4ee7 00           nop
4ee8 00           nop
4ee9 00           nop
4eea 00           nop
4eeb 00           nop
4eec 00           nop
4eed 00           nop
4eee 00           nop
4eef 00           nop
4ef0 00           nop
4ef1 00           nop
4ef2 00           nop
4ef3 00           nop
4ef4 00           nop
4ef5 00           nop
4ef6 00           nop
4ef7 00           nop
4ef8 00           nop
4ef9 00           nop
4efa 00           nop
4efb 00           nop
4efc 00           nop
4efd 00           nop
4efe 00           nop
4eff 00           nop
4f00 00           nop
4f01 00           nop
4f02 00           nop
4f03 00           nop
4f04 00           nop
4f05 00           nop
4f06 00           nop
4f07 00           nop
4f08 00           nop
4f09 00           nop
4f0a 00           nop
4f0b 00           nop
4f0c 00           nop
4f0d 44           ld Rb, Rh
4f0e cccc88       call Cz, W0x88cc
4f11 00           nop
4f12 00           nop
4f13 04           inc Rb
4f14 0c           inc Rc
4f15 0c           inc Rc
4f16 08           ex af, af'
4f17 04           inc Rb
4f18 0c           inc Rc
4f19 08           ex af, af'
4f1a 00           nop
4f1b 0c           inc Rc
4f1c 0c           inc Rc
4f1d 0c           inc Rc
4f1e 0c           inc Rc
4f1f 0c           inc Rc
4f20 0c           inc Rc
4f21 04           inc Rb
4f22 0c           inc Rc
4f23 0c           inc Rc
4f24 0c           inc Rc
4f25 0c           inc Rc
4f26 08           ex af, af'
4f27 00           nop
4f28 00           nop
4f29 00           nop
4f2a 00           nop
4f2b 00           nop
4f2c 00           nop
4f2d 00           nop
4f2e 00           nop
4f2f 00           nop
4f30 00           nop
4f31 00           nop
4f32 00           nop
4f33 00           nop
4f34 00           nop
4f35 00           nop
4f36 00           nop
4f37 00           nop
4f38 00           nop
4f39 00           nop
4f3a 00           nop
4f3b 00           nop
4f3c 00           nop
4f3d 00           nop
4f3e 00           nop
4f3f 00           nop
4f40 00           nop
4f41 00           nop
4f42 00           nop
4f43 00           nop
4f44 00           nop
4f45 00           nop
4f46 00           nop
4f47 00           nop
4f48 00           nop
4f49 00           nop
4f4a 00           nop
4f4b 00           nop
4f4c 00           nop
4f4d 00           nop
4f4e 00           nop
4f4f 00           nop
4f50 00           nop
4f51 00           nop
4f52 00           nop
4f53 00           nop
4f54 00           nop
4f55 00           nop
4f56 00           nop
4f57 00           nop
4f58 00           nop
4f59 00           nop
4f5a 00           nop
4f5b 00           nop
4f5c 00           nop
4f5d 00           nop
4f5e 00           nop
4f5f 44           ld Rb, Rh
4f60 cc8844       call Cz, W0x4488
4f63 cc88cc       call Cz, W0xcc88
4f66 cc44cc       call Cz, W0xcc44
4f69 44           ld Rb, Rh
4f6a 00           nop
4f6b 44           ld Rb, Rh
4f6c 44           ld Rb, Rh
4f6d cc88cc       call Cz, W0xcc88
4f70 cc44cc       call Cz, W0xcc44
4f73 88           Aadc a, Rb
4f74 00           nop
4f75 00           nop
4f76 00           nop
4f77 00           nop
4f78 00           nop
4f79 00           nop
4f7a 08           ex af, af'
4f7b 04           inc Rb
4f7c 0c           inc Rc
4f7d 04           inc Rb
4f7e 08           ex af, af'
4f7f 0c           inc Rc
4f80 00           nop
4f81 08           ex af, af'
4f82 04           inc Rb
4f83 04           inc Rb
4f84 00           nop
4f85 08           ex af, af'
4f86 08           ex af, af'
4f87 00           nop
4f88 00           nop
4f89 00           nop
4f8a 00           nop
4f8b 00           nop
4f8c 00           nop
4f8d 00           nop
4f8e 00           nop
4f8f 00           nop
4f90 00           nop
4f91 00           nop
4f92 00           nop
4f93 00           nop
4f94 00           nop
4f95 00           nop
4f96 00           nop
4f97 00           nop
4f98 00           nop
4f99 00           nop
4f9a 00           nop
4f9b 00           nop
4f9c 00           nop
4f9d 00           nop
4f9e 00           nop
4f9f 00           nop
4fa0 00           nop
4fa1 00           nop
4fa2 00           nop
4fa3 00           nop
4fa4 00           nop
4fa5 00           nop
4fa6 00           nop
4fa7 00           nop
4fa8 00           nop
4fa9 00           nop
4faa 00           nop
4fab 00           nop
4fac 00           nop
4fad 00           nop
4fae 40           ld Rb, Rb
4faf c0           ret Cnz
4fb0 80           Aadd a, Rb
4fb1 00           nop
4fb2 00           nop
4fb3 00           nop
4fb4 00           nop
4fb5 00           nop
4fb6 00           nop
4fb7 44           ld Rb, Rh
4fb8 cccc88       call Cz, W0x88cc
4fbb cc88cc       call Cz, W0xcc88
4fbe cccccc       call Cz, W0xcccc
4fc1 44           ld Rb, Rh
4fc2 cccc44       call Cz, W0x44cc
4fc5 cccccc       call Cz, W0xcccc
4fc8 cc44cc       call Cz, W0xcc44
4fcb cccccc       call Cz, W0xcccc
4fce cccccc       call Cz, W0xcccc
4fd1 cccccc       call Cz, W0xcccc
4fd4 cccccc       call Cz, W0xcccc
4fd7 cc0000       call Cz, W0x0000
4fda 00           nop
4fdb 00           nop
4fdc 00           nop
4fdd 00           nop
4fde 00           nop
4fdf 00           nop
4fe0 00           nop
4fe1 00           nop
4fe2 00           nop
4fe3 00           nop
4fe4 00           nop
4fe5 00           nop
4fe6 00           nop
4fe7 00           nop
4fe8 00           nop
4fe9 00           nop
4fea 00           nop
4feb 00           nop
4fec 00           nop
4fed 00           nop
4fee 00           nop
4fef 00           nop
4ff0 00           nop
4ff1 00           nop
4ff2 00           nop
4ff3 00           nop
4ff4 00           nop
4ff5 00           nop
4ff6 00           nop
4ff7 00           nop
4ff8 00           nop
4ff9 00           nop
4ffa c0           ret Cnz
4ffb c0           ret Cnz
4ffc c0           ret Cnz
4ffd c0           ret Cnz
4ffe c0           ret Cnz
4fff 0c           inc Rc
5000 0c           inc Rc
5001 0c           inc Rc
5002 0c           inc Rc
5003 0c           inc Rc
5004 0c           inc Rc
5005 0c           inc Rc
5006 0c           inc Rc
5007 44           ld Rb, Rh
5008 cc0000       call Cz, W0x0000
500b cc88cc       call Cz, W0xcc88
500e 88           Aadc a, Rb
500f cc0000       call Cz, W0x0000
5012 00           nop
5013 00           nop
5014 cc88cc       call Cz, W0xcc88
5017 cc040c       call Cz, W0x0c04
501a 0c           inc Rc
501b 0c           inc Rc
501c 0c           inc Rc
501d 0c           inc Rc
501e 0c           inc Rc
501f 0c           inc Rc
5020 0c           inc Rc
5021 0c           inc Rc
5022 0c           inc Rc
5023 0c           inc Rc
5024 0c           inc Rc
5025 0c           inc Rc
5026 0c           inc Rc
5027 0c           inc Rc
5028 00           nop
5029 00           nop
502a 00           nop
502b 00           nop
502c 00           nop
502d 00           nop
502e 00           nop
502f 00           nop
5030 00           nop
5031 00           nop
5032 00           nop
5033 00           nop
5034 00           nop
5035 00           nop
5036 00           nop
5037 00           nop
5038 00           nop
5039 00           nop
503a 00           nop
503b 00           nop
503c 00           nop
503d 00           nop
503e 00           nop
503f 00           nop
5040 00           nop
5041 00           nop
5042 00           nop
5043 00           nop
5044 00           nop
5045 00           nop
5046 00           nop
5047 00           nop
5048 00           nop
5049 c0           ret Cnz
504a c0           ret Cnz
504b c0           ret Cnz
504c cccccc       call Cz, W0xcccc
504f cc0c0c       call Cz, W0x0c0c
5052 0c           inc Rc
5053 04           inc Rb
5054 0c           inc Rc
5055 0c           inc Rc
5056 0c           inc Rc
5057 0c           inc Rc
5058 0c           inc Rc
5059 0c           inc Rc
505a 08           ex af, af'
505b 04           inc Rb
505c 0c           inc Rc
505d 0c           inc Rc
505e 0c           inc Rc
505f 0c           inc Rc
5060 08           ex af, af'
5061 04           inc Rb
5062 0c           inc Rc
5063 0c           inc Rc
5064 0c           inc Rc
5065 0c           inc Rc
5066 0c           inc Rc
5067 00           nop
5068 00           nop
5069 00           nop
506a 00           nop
506b 00           nop
506c 00           nop
506d 00           nop
506e 00           nop
506f 00           nop
5070 00           nop
5071 00           nop
5072 00           nop
5073 00           nop
5074 00           nop
5075 00           nop
5076 00           nop
5077 00           nop
5078 00           nop
5079 00           nop
507a 00           nop
507b 00           nop
507c 00           nop
507d 00           nop
507e 00           nop
507f 00           nop
5080 00           nop
5081 00           nop
5082 00           nop
5083 00           nop
5084 00           nop
5085 00           nop
5086 00           nop
5087 00           nop
5088 00           nop
5089 00           nop
508a 00           nop
508b 00           nop
508c 00           nop
508d 00           nop
508e 00           nop
508f 00           nop
5090 00           nop
5091 00           nop
5092 00           nop
5093 00           nop
5094 00           nop
5095 00           nop
5096 00           nop
5097 00           nop
5098 00           nop
5099 00           nop
509a 00           nop
509b 44           ld Rb, Rh
509c cccc88       call Cz, W0x88cc
509f 00           nop
50a0 c0           ret Cnz
50a1 00           nop
50a2 0c           inc Rc
50a3 0c           inc Rc
50a4 0c           inc Rc
50a5 00           nop
50a6 00           nop
50a7 04           inc Rb
50a8 0c           inc Rc
50a9 08           ex af, af'
50aa 00           nop
50ab 0c           inc Rc
50ac 0c           inc Rc
50ad 00           nop
50ae 00           nop
50af 0c           inc Rc
50b0 0c           inc Rc
50b1 04           inc Rb
50b2 0c           inc Rc
50b3 08           ex af, af'
50b4 00           nop
50b5 00           nop
50b6 0c           inc Rc
50b7 0c           inc Rc
50b8 00           nop
50b9 00           nop
50ba 00           nop
50bb 00           nop
50bc 00           nop
50bd 00           nop
50be 00           nop
50bf 00           nop
50c0 00           nop
50c1 00           nop
50c2 00           nop
50c3 00           nop
50c4 00           nop
50c5 00           nop
50c6 00           nop
50c7 00           nop
50c8 0c           inc Rc
50c9 0c           inc Rc
50ca 0c           inc Rc
50cb 0c           inc Rc
50cc 0c           inc Rc
50cd 0c           inc Rc
50ce 0c           inc Rc
50cf 0c           inc Rc
50d0 0c           inc Rc
50d1 0c           inc Rc
50d2 0c           inc Rc
50d3 0c           inc Rc
50d4 0c           inc Rc
50d5 0c           inc Rc
50d6 0c           inc Rc
50d7 0c           inc Rc
50d8 0c           inc Rc
50d9 0c           inc Rc
50da 0c           inc Rc
50db 0c           inc Rc
50dc 0c           inc Rc
50dd 0c           inc Rc
50de 0c           inc Rc
50df 0c           inc Rc
50e0 0c           inc Rc
50e1 0c           inc Rc
50e2 0c           inc Rc
50e3 0c           inc Rc
50e4 0c           inc Rc
50e5 0c           inc Rc
50e6 0c           inc Rc
50e7 0c           inc Rc
50e8 0c           inc Rc
50e9 0c           inc Rc
50ea 0c           inc Rc
50eb 0c           inc Rc
50ec 0c           inc Rc
50ed 4c           ld Rc, Rh
50ee cccc8c       call Cz, W0x8ccc
50f1 0c           inc Rc
50f2 0c           inc Rc
50f3 0c           inc Rc
50f4 0c           inc Rc
50f5 0c           inc Rc
50f6 0c           inc Rc
50f7 04           inc Rb
50f8 0c           inc Rc
50f9 08           ex af, af'
50fa 00           nop
50fb 0c           inc Rc
50fc 0c           inc Rc
50fd 0c           inc Rc
50fe 0c           inc Rc
50ff 0c           inc Rc
5100 0c           inc Rc
5101 04           inc Rb
5102 0c           inc Rc
5103 0c           inc Rc
5104 0c           inc Rc
5105 0c           inc Rc
5106 08           ex af, af'
5107 00           nop
5108 00           nop
5109 00           nop
510a 00           nop
510b 00           nop
510c 00           nop
510d 00           nop
510e 00           nop
510f 00           nop
5110 00           nop
5111 00           nop
5112 00           nop
5113 00           nop
5114 00           nop
5115 00           nop
5116 00           nop
5117 00           nop
5118 cccccc       call Cz, W0xcccc
511b cccccc       call Cz, W0xcccc
511e cccccc       call Cz, W0xcccc
5121 cccccc       call Cz, W0xcccc
5124 cccccc       call Cz, W0xcccc
5127 cccccc       call Cz, W0xcccc
512a cccccc       call Cz, W0xcccc
512d cccccc       call Cz, W0xcccc
5130 cccccc       call Cz, W0xcccc
5133 cccccc       call Cz, W0xcccc
5136 cccccc       call Cz, W0xcccc
5139 cccccc       call Cz, W0xcccc
513c cccccc       call Cz, W0xcccc
513f cccc88       call Cz, W0x88cc
5142 44           ld Rb, Rh
5143 00           nop
5144 88           Aadc a, Rb
5145 88           Aadc a, Rb
5146 00           nop
5147 00           nop
5148 88           Aadc a, Rb
5149 44           ld Rb, Rh
514a 00           nop
514b 44           ld Rb, Rh
514c 44           ld Rb, Rh
514d 00           nop
514e 88           Aadc a, Rb
514f 88           Aadc a, Rb
5150 44           ld Rb, Rh
5151 44           ld Rb, Rh
5152 00           nop
5153 00           nop
5154 00           nop
5155 00           nop
5156 00           nop
5157 00           nop
5158 00           nop
5159 00           nop
515a 08           ex af, af'
515b 0c           inc Rc
515c 00           nop
515d 00           nop
515e 08           ex af, af'
515f 04           inc Rb
5160 00           nop
5161 08           ex af, af'
5162 04           inc Rb
5163 04           inc Rb
5164 00           nop
5165 08           ex af, af'
5166 08           ex af, af'
5167 04           inc Rb
5168 00           nop
5169 00           nop
516a 00           nop
516b 00           nop
516c 00           nop
516d 00           nop
516e 00           nop
516f 00           nop
5170 00           nop
5171 00           nop
5172 00           nop
5173 00           nop
5174 00           nop
5175 00           nop
5176 00           nop
5177 00           nop
5178 00           nop
5179 00           nop
517a 00           nop
517b 00           nop
517c 00           nop
517d 00           nop
517e 00           nop
517f 00           nop
5180 00           nop
5181 00           nop
5182 00           nop
5183 00           nop
5184 00           nop
5185 00           nop
5186 00           nop
5187 00           nop
5188 00           nop
5189 00           nop
518a 00           nop
518b 00           nop
518c 00           nop
518d 00           nop
518e c0           ret Cnz
518f c0           ret Cnz
5190 80           Aadd a, Rb
5191 00           nop
5192 00           nop
5193 40           ld Rb, Rb
5194 80           Aadd a, Rb
5195 00           nop
5196 00           nop
5197 44           ld Rb, Rh
5198 cccc88       call Cz, W0x88cc
519b cc88cc       call Cz, W0xcc88
519e cccccc       call Cz, W0xcccc
51a1 44           ld Rb, Rh
51a2 cccc44       call Cz, W0x44cc
51a5 cccccc       call Cz, W0xcccc
51a8 cc44cc       call Cz, W0xcc44
51ab cccccc       call Cz, W0xcccc
51ae cccccc       call Cz, W0xcccc
51b1 cccccc       call Cz, W0xcccc
51b4 cccccc       call Cz, W0xcccc
51b7 cc0000       call Cz, W0x0000
51ba 00           nop
51bb 00           nop
51bc 00           nop
51bd 00           nop
51be 00           nop
51bf 00           nop
51c0 00           nop
51c1 00           nop
51c2 00           nop
51c3 00           nop
51c4 00           nop
51c5 00           nop
51c6 00           nop
51c7 00           nop
51c8 00           nop
51c9 00           nop
51ca 00           nop
51cb 00           nop
51cc 00           nop
51cd 00           nop
51ce 00           nop
51cf 00           nop
51d0 00           nop
51d1 00           nop
51d2 00           nop
51d3 00           nop
51d4 00           nop
51d5 00           nop
51d6 00           nop
51d7 00           nop
51d8 00           nop
51d9 00           nop
51da 40           ld Rb, Rb
51db c0           ret Cnz
51dc c0           ret Cnz
51dd c0           ret Cnz
51de c0           ret Cnz
51df 0c           inc Rc
51e0 0c           inc Rc
51e1 0c           inc Rc
51e2 08           ex af, af'
51e3 00           nop
51e4 00           nop
51e5 00           nop
51e6 00           nop
51e7 44           ld Rb, Rh
51e8 cc0000       call Cz, W0x0000
51eb cc88cc       call Cz, W0xcc88
51ee 88           Aadc a, Rb
51ef cc0000       call Cz, W0x0000
51f2 00           nop
51f3 00           nop
51f4 cc88cc       call Cz, W0xcc88
51f7 cc040c       call Cz, W0x0c04
51fa 0c           inc Rc
51fb 0c           inc Rc
51fc 0c           inc Rc
51fd 0c           inc Rc
51fe 0c           inc Rc
51ff 0c           inc Rc
5200 0c           inc Rc
5201 0c           inc Rc
5202 0c           inc Rc
5203 0c           inc Rc
5204 0c           inc Rc
5205 0c           inc Rc
5206 0c           inc Rc
5207 0c           inc Rc
5208 00           nop
5209 00           nop
520a 00           nop
520b 00           nop
520c 00           nop
520d 00           nop
520e 00           nop
520f 00           nop
5210 00           nop
5211 00           nop
5212 00           nop
5213 00           nop
5214 00           nop
5215 00           nop
5216 00           nop
5217 00           nop
5218 00           nop
5219 00           nop
521a 00           nop
521b 00           nop
521c 00           nop
521d 00           nop
521e 00           nop
521f 00           nop
5220 00           nop
5221 00           nop
5222 00           nop
5223 00           nop
5224 00           nop
5225 00           nop
5226 00           nop
5227 00           nop
5228 00           nop
5229 c0           ret Cnz
522a c0           ret Cnz
522b c4cccc       call Cnz, W0xcccc
522e cccc04       call Cz, W0x04cc
5231 0c           inc Rc
5232 0c           inc Rc
5233 00           nop
5234 0c           inc Rc
5235 0c           inc Rc
5236 0c           inc Rc
5237 0c           inc Rc
5238 0c           inc Rc
5239 0c           inc Rc
523a 08           ex af, af'
523b 0c           inc Rc
523c 0c           inc Rc
523d 0c           inc Rc
523e 0c           inc Rc
523f 0c           inc Rc
5240 0c           inc Rc
5241 04           inc Rb
5242 0c           inc Rc
5243 0c           inc Rc
5244 0c           inc Rc
5245 0c           inc Rc
5246 0c           inc Rc
5247 08           ex af, af'
5248 00           nop
5249 00           nop
524a 00           nop
524b 00           nop
524c 00           nop
524d 00           nop
524e 00           nop
524f 00           nop
5250 00           nop
5251 00           nop
5252 00           nop
5253 00           nop
5254 00           nop
5255 00           nop
5256 00           nop
5257 00           nop
5258 00           nop
5259 00           nop
525a 00           nop
525b 00           nop
525c 00           nop
525d 00           nop
525e 00           nop
525f 00           nop
5260 00           nop
5261 00           nop
5262 00           nop
5263 00           nop
5264 00           nop
5265 00           nop
5266 00           nop
5267 00           nop
5268 00           nop
5269 00           nop
526a 00           nop
526b 00           nop
526c 00           nop
526d 00           nop
526e 00           nop
526f 00           nop
5270 00           nop
5271 00           nop
5272 00           nop
5273 00           nop
5274 00           nop
5275 00           nop
5276 00           nop
5277 00           nop
5278 00           nop
5279 00           nop
527a 00           nop
527b 00           nop
527c cccccc       call Cz, W0xcccc
527f 00           nop
5280 40           ld Rb, Rb
5281 00           nop
5282 0c           inc Rc
5283 0c           inc Rc
5284 0c           inc Rc
5285 00           nop
5286 00           nop
5287 04           inc Rb
5288 0c           inc Rc
5289 08           ex af, af'
528a 00           nop
528b 0c           inc Rc
528c 0c           inc Rc
528d 00           nop
528e 00           nop
528f 0c           inc Rc
5290 0c           inc Rc
5291 04           inc Rb
5292 0c           inc Rc
5293 08           ex af, af'
5294 00           nop
5295 00           nop
5296 0c           inc Rc
5297 0c           inc Rc
5298 00           nop
5299 00           nop
529a 00           nop
529b 00           nop
529c 00           nop
529d 00           nop
529e 00           nop
529f 00           nop
52a0 00           nop
52a1 00           nop
52a2 00           nop
52a3 00           nop
52a4 00           nop
52a5 00           nop
52a6 00           nop
52a7 00           nop
52a8 0c           inc Rc
52a9 0c           inc Rc
52aa 0c           inc Rc
52ab 0c           inc Rc
52ac 0c           inc Rc
52ad 0c           inc Rc
52ae 0c           inc Rc
52af 0c           inc Rc
52b0 0c           inc Rc
52b1 0c           inc Rc
52b2 0c           inc Rc
52b3 0c           inc Rc
52b4 0c           inc Rc
52b5 0c           inc Rc
52b6 0c           inc Rc
52b7 0c           inc Rc
52b8 0c           inc Rc
52b9 0c           inc Rc
52ba 0c           inc Rc
52bb 0c           inc Rc
52bc 0c           inc Rc
52bd 0c           inc Rc
52be 0c           inc Rc
52bf 0c           inc Rc
52c0 0c           inc Rc
52c1 0c           inc Rc
52c2 0c           inc Rc
52c3 0c           inc Rc
52c4 0c           inc Rc
52c5 0c           inc Rc
52c6 0c           inc Rc
52c7 0c           inc Rc
52c8 0c           inc Rc
52c9 0c           inc Rc
52ca 0c           inc Rc
52cb 0c           inc Rc
52cc 0c           inc Rc
52cd 0c           inc Rc
52ce cccccc       call Cz, W0xcccc
52d1 0c           inc Rc
52d2 0c           inc Rc
52d3 0c           inc Rc
52d4 0c           inc Rc
52d5 0c           inc Rc
52d6 0c           inc Rc
52d7 04           inc Rb
52d8 0c           inc Rc
52d9 08           ex af, af'
52da 00           nop
52db 0c           inc Rc
52dc 0c           inc Rc
52dd 00           nop
52de 00           nop
52df 0c           inc Rc
52e0 0c           inc Rc
52e1 04           inc Rb
52e2 0c           inc Rc
52e3 08           ex af, af'
52e4 04           inc Rb
52e5 0c           inc Rc
52e6 0c           inc Rc
52e7 0c           inc Rc
52e8 00           nop
52e9 00           nop
52ea 00           nop
52eb 00           nop
52ec 00           nop
52ed 00           nop
52ee 00           nop
52ef 00           nop
52f0 00           nop
52f1 00           nop
52f2 00           nop
52f3 00           nop
52f4 00           nop
52f5 00           nop
52f6 00           nop
52f7 00           nop
52f8 cccccc       call Cz, W0xcccc
52fb cccccc       call Cz, W0xcccc
52fe cccccc       call Cz, W0xcccc
5301 cccccc       call Cz, W0xcccc
5304 cccccc       call Cz, W0xcccc
5307 cccccc       call Cz, W0xcccc
530a cccccc       call Cz, W0xcccc
530d cccccc       call Cz, W0xcccc
5310 cccccc       call Cz, W0xcccc
5313 cccccc       call Cz, W0xcccc
5316 cccccc       call Cz, W0xcccc
5319 cccccc       call Cz, W0xcccc
531c cccccc       call Cz, W0xcccc
531f cccc00       call Cz, W0x00cc
5322 44           ld Rb, Rh
5323 00           nop
5324 88           Aadc a, Rb
5325 cc8800       call Cz, W0x0088
5328 88           Aadc a, Rb
5329 44           ld Rb, Rh
532a 44           ld Rb, Rh
532b 44           ld Rb, Rh
532c 44           ld Rb, Rh
532d cc88cc       call Cz, W0xcc88
5330 cc44cc       call Cz, W0xcc44
5333 00           nop
5334 88           Aadc a, Rb
5335 88           Aadc a, Rb
5336 88           Aadc a, Rb
5337 cc8800       call Cz, W0x0088
533a 08           ex af, af'
533b 0c           inc Rc
533c 00           nop
533d 00           nop
533e 08           ex af, af'
533f 04           inc Rb
5340 00           nop
5341 0c           inc Rc
5342 0c           inc Rc
5343 04           inc Rb
5344 0c           inc Rc
5345 08           ex af, af'
5346 0c           inc Rc
5347 0c           inc Rc
5348 00           nop
5349 00           nop
534a 00           nop
534b 00           nop
534c 00           nop
534d 00           nop
534e 00           nop
534f 00           nop
5350 00           nop
5351 00           nop
5352 00           nop
5353 00           nop
5354 00           nop
5355 00           nop
5356 00           nop
5357 00           nop
5358 00           nop
5359 00           nop
535a 00           nop
535b 00           nop
535c 00           nop
535d 00           nop
535e 00           nop
535f 00           nop
5360 00           nop
5361 00           nop
5362 00           nop
5363 00           nop
5364 00           nop
5365 00           nop
5366 00           nop
5367 00           nop
5368 00           nop
5369 00           nop
536a 00           nop
536b 00           nop
536c 00           nop
536d 00           nop
536e c0           ret Cnz
536f c0           ret Cnz
5370 80           Aadd a, Rb
5371 00           nop
5372 c0           ret Cnz
5373 c0           ret Cnz
5374 00           nop
5375 00           nop
5376 00           nop
5377 44           ld Rb, Rh
5378 cc0000       call Cz, W0x0000
537b cc88cc       call Cz, W0xcc88
537e 88           Aadc a, Rb
537f 44           ld Rb, Rh
5380 cc44cc       call Cz, W0xcc44
5383 00           nop
5384 00           nop
5385 00           nop
5386 cccc00       call Cz, W0x00cc
5389 44           ld Rb, Rh
538a cccccc       call Cz, W0xcccc
538d cccccc       call Cz, W0xcccc
5390 cccccc       call Cz, W0xcccc
5393 cccccc       call Cz, W0xcccc
5396 cccc00       call Cz, W0x00cc
5399 00           nop
539a 00           nop
539b 00           nop
539c 00           nop
539d 00           nop
539e 00           nop
539f 00           nop
53a0 00           nop
53a1 00           nop
53a2 00           nop
53a3 00           nop
53a4 00           nop
53a5 00           nop
53a6 00           nop
53a7 00           nop
53a8 00           nop
53a9 00           nop
53aa 00           nop
53ab 00           nop
53ac 00           nop
53ad 00           nop
53ae 00           nop
53af 00           nop
53b0 00           nop
53b1 00           nop
53b2 00           nop
53b3 00           nop
53b4 00           nop
53b5 00           nop
53b6 00           nop
53b7 00           nop
53b8 00           nop
53b9 00           nop
53ba 00           nop
53bb c0           ret Cnz
53bc c0           ret Cnz
53bd c0           ret Cnz
53be c0           ret Cnz
53bf 0c           inc Rc
53c0 0c           inc Rc
53c1 0c           inc Rc
53c2 00           nop
53c3 00           nop
53c4 00           nop
53c5 00           nop
53c6 00           nop
53c7 44           ld Rb, Rh
53c8 cc0000       call Cz, W0x0000
53cb cc88cc       call Cz, W0xcc88
53ce 88           Aadc a, Rb
53cf cccc44       call Cz, W0x44cc
53d2 cccccc       call Cz, W0xcccc
53d5 88           Aadc a, Rb
53d6 cccc00       call Cz, W0x00cc
53d9 00           nop
53da 00           nop
53db 00           nop
53dc 00           nop
53dd 00           nop
53de 00           nop
53df 00           nop
53e0 00           nop
53e1 00           nop
53e2 00           nop
53e3 00           nop
53e4 00           nop
53e5 00           nop
53e6 00           nop
53e7 00           nop
53e8 00           nop
53e9 00           nop
53ea 00           nop
53eb 00           nop
53ec 00           nop
53ed 00           nop
53ee 00           nop
53ef 00           nop
53f0 00           nop
53f1 00           nop
53f2 00           nop
53f3 00           nop
53f4 00           nop
53f5 00           nop
53f6 00           nop
53f7 00           nop
53f8 00           nop
53f9 00           nop
53fa 00           nop
53fb 00           nop
53fc 00           nop
53fd 00           nop
53fe 00           nop
53ff 00           nop
5400 00           nop
5401 00           nop
5402 00           nop
5403 00           nop
5404 00           nop
5405 00           nop
5406 00           nop
5407 00           nop
5408 40           ld Rb, Rb
5409 c0           ret Cnz
540a c0           ret Cnz
540b cccccc       call Cz, W0xcccc
540e cccc04       call Cz, W0x04cc
5411 0c           inc Rc
5412 0c           inc Rc
5413 08           ex af, af'
5414 0c           inc Rc
5415 0c           inc Rc
5416 0c           inc Rc
5417 0c           inc Rc
5418 0c           inc Rc
5419 0c           inc Rc
541a 08           ex af, af'
541b 0c           inc Rc
541c 0c           inc Rc
541d 0c           inc Rc
541e 0c           inc Rc
541f 0c           inc Rc
5420 0c           inc Rc
5421 04           inc Rb
5422 0c           inc Rc
5423 0c           inc Rc
5424 0c           inc Rc
5425 0c           inc Rc
5426 0c           inc Rc
5427 0c           inc Rc
5428 00           nop
5429 00           nop
542a 00           nop
542b 00           nop
542c 00           nop
542d 00           nop
542e 00           nop
542f 00           nop
5430 00           nop
5431 00           nop
5432 00           nop
5433 00           nop
5434 00           nop
5435 00           nop
5436 00           nop
5437 00           nop
5438 00           nop
5439 00           nop
543a 00           nop
543b 00           nop
543c 00           nop
543d 00           nop
543e 00           nop
543f 00           nop
5440 00           nop
5441 00           nop
5442 00           nop
5443 00           nop
5444 00           nop
5445 00           nop
5446 00           nop
5447 00           nop
5448 00           nop
5449 00           nop
544a 00           nop
544b 00           nop
544c 00           nop
544d 00           nop
544e 00           nop
544f 00           nop
5450 00           nop
5451 00           nop
5452 00           nop
5453 00           nop
5454 00           nop
5455 00           nop
5456 00           nop
5457 00           nop
5458 00           nop
5459 00           nop
545a 00           nop
545b 00           nop
545c cccccc       call Cz, W0xcccc
545f 00           nop
5460 00           nop
5461 00           nop
5462 04           inc Rb
5463 0c           inc Rc
5464 0c           inc Rc
5465 08           ex af, af'
5466 00           nop
5467 04           inc Rb
5468 0c           inc Rc
5469 08           ex af, af'
546a 00           nop
546b 0c           inc Rc
546c 0c           inc Rc
546d 00           nop
546e 00           nop
546f 0c           inc Rc
5470 0c           inc Rc
5471 04           inc Rb
5472 0c           inc Rc
5473 08           ex af, af'
5474 00           nop
5475 00           nop
5476 0c           inc Rc
5477 0c           inc Rc
5478 00           nop
5479 00           nop
547a 00           nop
547b 00           nop
547c 00           nop
547d 00           nop
547e 00           nop
547f 00           nop
5480 00           nop
5481 00           nop
5482 00           nop
5483 00           nop
5484 00           nop
5485 00           nop
5486 00           nop
5487 00           nop
5488 0c           inc Rc
5489 0c           inc Rc
548a 0c           inc Rc
548b 0c           inc Rc
548c 0c           inc Rc
548d 0c           inc Rc
548e 0c           inc Rc
548f 0c           inc Rc
5490 0c           inc Rc
5491 0c           inc Rc
5492 0c           inc Rc
5493 0c           inc Rc
5494 0c           inc Rc
5495 0c           inc Rc
5496 0c           inc Rc
5497 0c           inc Rc
5498 0c           inc Rc
5499 0c           inc Rc
549a 0c           inc Rc
549b 0c           inc Rc
549c 0c           inc Rc
549d 0c           inc Rc
549e 0c           inc Rc
549f 0c           inc Rc
54a0 0c           inc Rc
54a1 0c           inc Rc
54a2 0c           inc Rc
54a3 0c           inc Rc
54a4 0c           inc Rc
54a5 0c           inc Rc
54a6 0c           inc Rc
54a7 0c           inc Rc
54a8 0c           inc Rc
54a9 0c           inc Rc
54aa 0c           inc Rc
54ab 0c           inc Rc
54ac 0c           inc Rc
54ad 0c           inc Rc
54ae cccccc       call Cz, W0xcccc
54b1 0c           inc Rc
54b2 0c           inc Rc
54b3 0c           inc Rc
54b4 0c           inc Rc
54b5 0c           inc Rc
54b6 0c           inc Rc
54b7 04           inc Rb
54b8 0c           inc Rc
54b9 08           ex af, af'
54ba 00           nop
54bb 0c           inc Rc
54bc 0c           inc Rc
54bd 00           nop
54be 00           nop
54bf 0c           inc Rc
54c0 0c           inc Rc
54c1 04           inc Rb
54c2 0c           inc Rc
54c3 08           ex af, af'
54c4 04           inc Rb
54c5 0c           inc Rc
54c6 0c           inc Rc
54c7 0c           inc Rc
54c8 00           nop
54c9 00           nop
54ca 00           nop
54cb 00           nop
54cc 00           nop
54cd 00           nop
54ce 00           nop
54cf 00           nop
54d0 00           nop
54d1 00           nop
54d2 00           nop
54d3 00           nop
54d4 00           nop
54d5 00           nop
54d6 00           nop
54d7 00           nop
54d8 cccccc       call Cz, W0xcccc
54db cccccc       call Cz, W0xcccc
54de cccccc       call Cz, W0xcccc
54e1 cccccc       call Cz, W0xcccc
54e4 cccccc       call Cz, W0xcccc
54e7 cccccc       call Cz, W0xcccc
54ea cccccc       call Cz, W0xcccc
54ed cccccc       call Cz, W0xcccc
54f0 cccccc       call Cz, W0xcccc
54f3 cccccc       call Cz, W0xcccc
54f6 cccccc       call Cz, W0xcccc
54f9 cccccc       call Cz, W0xcccc
54fc cccccc       call Cz, W0xcccc
54ff cccc00       call Cz, W0x00cc
5502 44           ld Rb, Rh
5503 00           nop
5504 88           Aadc a, Rb
5505 cc8800       call Cz, W0x0088
5508 88           Aadc a, Rb
5509 44           ld Rb, Rh
550a 44           ld Rb, Rh
550b 44           ld Rb, Rh
550c 44           ld Rb, Rh
550d cc88cc       call Cz, W0xcc88
5510 cc4400       call Cz, W0x0044
5513 00           nop
5514 88           Aadc a, Rb
5515 cc8888       call Cz, W0x8888
5518 00           nop
5519 00           nop
551a 08           ex af, af'
551b 0c           inc Rc
551c 00           nop
551d 00           nop
551e 08           ex af, af'
551f 04           inc Rb
5520 00           nop
5521 00           nop
5522 04           inc Rb
5523 04           inc Rb
5524 00           nop
5525 08           ex af, af'
5526 00           nop
5527 04           inc Rb
5528 00           nop
5529 00           nop
552a 00           nop
552b 00           nop
552c 00           nop
552d 00           nop
552e 00           nop
552f 00           nop
5530 00           nop
5531 00           nop
5532 00           nop
5533 00           nop
5534 00           nop
5535 00           nop
5536 00           nop
5537 00           nop
5538 00           nop
5539 00           nop
553a 00           nop
553b 00           nop
553c 00           nop
553d 00           nop
553e 00           nop
553f 00           nop
5540 00           nop
5541 00           nop
5542 00           nop
5543 00           nop
5544 00           nop
5545 00           nop
5546 00           nop
5547 00           nop
5548 c0           ret Cnz
5549 c0           ret Cnz
554a 00           nop
554b 00           nop
554c 00           nop
554d 40           ld Rb, Rb
554e c0           ret Cnz
554f c0           ret Cnz
5550 c0           ret Cnz
5551 c0           ret Cnz
5552 c0           ret Cnz
5553 80           Aadd a, Rb
5554 00           nop
5555 00           nop
5556 00           nop
5557 44           ld Rb, Rh
5558 cc0000       call Cz, W0x0000
555b cc88cc       call Cz, W0xcc88
555e 88           Aadc a, Rb
555f 44           ld Rb, Rh
5560 cc44cc       call Cz, W0xcc44
5563 00           nop
5564 00           nop
5565 00           nop
5566 cccc00       call Cz, W0x00cc
5569 00           nop
556a 00           nop
556b 00           nop
556c 00           nop
556d 00           nop
556e 00           nop
556f 00           nop
5570 00           nop
5571 00           nop
5572 00           nop
5573 00           nop
5574 00           nop
5575 00           nop
5576 00           nop
5577 00           nop
5578 00           nop
5579 00           nop
557a 00           nop
557b 00           nop
557c 00           nop
557d 00           nop
557e 00           nop
557f 00           nop
5580 00           nop
5581 00           nop
5582 00           nop
5583 00           nop
5584 00           nop
5585 00           nop
5586 00           nop
5587 00           nop
5588 00           nop
5589 00           nop
558a 00           nop
558b 00           nop
558c 00           nop
558d 00           nop
558e 00           nop
558f 00           nop
5590 00           nop
5591 00           nop
5592 00           nop
5593 00           nop
5594 00           nop
5595 00           nop
5596 00           nop
5597 00           nop
5598 00           nop
5599 00           nop
559a 40           ld Rb, Rb
559b c0           ret Cnz
559c c0           ret Cnz
559d c0           ret Cnz
559e c0           ret Cnz
559f 0c           inc Rc
55a0 0c           inc Rc
55a1 0c           inc Rc
55a2 00           nop
55a3 00           nop
55a4 00           nop
55a5 00           nop
55a6 00           nop
55a7 44           ld Rb, Rh
55a8 cc0000       call Cz, W0x0000
55ab cc88cc       call Cz, W0xcc88
55ae 88           Aadc a, Rb
55af cccc44       call Cz, W0x44cc
55b2 cccccc       call Cz, W0xcccc
55b5 88           Aadc a, Rb
55b6 cccc00       call Cz, W0x00cc
55b9 00           nop
55ba 00           nop
55bb 00           nop
55bc 00           nop
55bd 00           nop
55be 00           nop
55bf 00           nop
55c0 00           nop
55c1 00           nop
55c2 00           nop
55c3 00           nop
55c4 00           nop
55c5 00           nop
55c6 00           nop
55c7 00           nop
55c8 00           nop
55c9 00           nop
55ca 00           nop
55cb 00           nop
55cc 00           nop
55cd 00           nop
55ce 00           nop
55cf 00           nop
55d0 00           nop
55d1 00           nop
55d2 00           nop
55d3 00           nop
55d4 00           nop
55d5 00           nop
55d6 00           nop
55d7 00           nop
55d8 00           nop
55d9 00           nop
55da 00           nop
55db 00           nop
55dc 00           nop
55dd 00           nop
55de 00           nop
55df 00           nop
55e0 00           nop
55e1 00           nop
55e2 00           nop
55e3 00           nop
55e4 00           nop
55e5 00           nop
55e6 00           nop
55e7 00           nop
55e8 40           ld Rb, Rb
55e9 c0           ret Cnz
55ea 80           Aadd a, Rb
55eb cccccc       call Cz, W0xcccc
55ee cccc88       call Cz, W0x88cc
55f1 0c           inc Rc
55f2 0c           inc Rc
55f3 08           ex af, af'
55f4 04           inc Rb
55f5 0c           inc Rc
55f6 0c           inc Rc
55f7 0c           inc Rc
55f8 0c           inc Rc
55f9 0c           inc Rc
55fa 08           ex af, af'
55fb 0c           inc Rc
55fc 0c           inc Rc
55fd 0c           inc Rc
55fe 0c           inc Rc
55ff 0c           inc Rc
5600 0c           inc Rc
5601 04           inc Rb
5602 0c           inc Rc
5603 0c           inc Rc
5604 0c           inc Rc
5605 0c           inc Rc
5606 0c           inc Rc
5607 0c           inc Rc
5608 00           nop
5609 00           nop
560a 00           nop
560b 00           nop
560c 00           nop
560d 00           nop
560e 00           nop
560f 00           nop
5610 00           nop
5611 00           nop
5612 00           nop
5613 00           nop
5614 00           nop
5615 00           nop
5616 00           nop
5617 00           nop
5618 00           nop
5619 00           nop
561a 00           nop
561b 00           nop
561c 00           nop
561d 00           nop
561e 00           nop
561f 00           nop
5620 00           nop
5621 00           nop
5622 00           nop
5623 00           nop
5624 00           nop
5625 00           nop
5626 00           nop
5627 00           nop
5628 00           nop
5629 00           nop
562a 00           nop
562b 00           nop
562c 00           nop
562d 00           nop
562e 00           nop
562f 00           nop
5630 00           nop
5631 00           nop
5632 00           nop
5633 00           nop
5634 00           nop
5635 00           nop
5636 00           nop
5637 00           nop
5638 00           nop
5639 00           nop
563a 00           nop
563b 00           nop
563c 44           ld Rb, Rh
563d cccc88       call Cz, W0x88cc
5640 00           nop
5641 00           nop
5642 04           inc Rb
5643 0c           inc Rc
5644 0c           inc Rc
5645 08           ex af, af'
5646 00           nop
5647 04           inc Rb
5648 0c           inc Rc
5649 08           ex af, af'
564a 00           nop
564b 0c           inc Rc
564c 0c           inc Rc
564d 0c           inc Rc
564e 0c           inc Rc
564f 0c           inc Rc
5650 0c           inc Rc
5651 04           inc Rb
5652 0c           inc Rc
5653 0c           inc Rc
5654 0c           inc Rc
5655 0c           inc Rc
5656 0c           inc Rc
5657 0c           inc Rc
5658 00           nop
5659 00           nop
565a 00           nop
565b 00           nop
565c 00           nop
565d 00           nop
565e 00           nop
565f 00           nop
5660 00           nop
5661 00           nop
5662 00           nop
5663 00           nop
5664 00           nop
5665 00           nop
5666 00           nop
5667 00           nop
5668 0c           inc Rc
5669 0c           inc Rc
566a 0c           inc Rc
566b 0c           inc Rc
566c 0c           inc Rc
566d 0c           inc Rc
566e 0c           inc Rc
566f 0c           inc Rc
5670 0c           inc Rc
5671 0c           inc Rc
5672 0c           inc Rc
5673 0c           inc Rc
5674 0c           inc Rc
5675 0c           inc Rc
5676 0c           inc Rc
5677 0c           inc Rc
5678 0c           inc Rc
5679 0c           inc Rc
567a 0c           inc Rc
567b 0c           inc Rc
567c 0c           inc Rc
567d 0c           inc Rc
567e 0c           inc Rc
567f 0c           inc Rc
5680 0c           inc Rc
5681 0c           inc Rc
5682 0c           inc Rc
5683 0c           inc Rc
5684 0c           inc Rc
5685 0c           inc Rc
5686 0c           inc Rc
5687 0c           inc Rc
5688 0c           inc Rc
5689 0c           inc Rc
568a 0c           inc Rc
568b 0c           inc Rc
568c 0c           inc Rc
568d 0c           inc Rc
568e 4c           ld Rc, Rh
568f cccc8c       call Cz, W0x8ccc
5692 0c           inc Rc
5693 0c           inc Rc
5694 0c           inc Rc
5695 0c           inc Rc
5696 08           ex af, af'
5697 04           inc Rb
5698 0c           inc Rc
5699 08           ex af, af'
569a 00           nop
569b 0c           inc Rc
569c 0c           inc Rc
569d 00           nop
569e 00           nop
569f 0c           inc Rc
56a0 0c           inc Rc
56a1 04           inc Rb
56a2 0c           inc Rc
56a3 08           ex af, af'
56a4 04           inc Rb
56a5 0c           inc Rc
56a6 0c           inc Rc
56a7 0c           inc Rc
56a8 00           nop
56a9 00           nop
56aa 00           nop
56ab 00           nop
56ac 00           nop
56ad 00           nop
56ae 00           nop
56af 00           nop
56b0 00           nop
56b1 00           nop
56b2 00           nop
56b3 00           nop
56b4 00           nop
56b5 00           nop
56b6 00           nop
56b7 00           nop
56b8 cccccc       call Cz, W0xcccc
56bb cccccc       call Cz, W0xcccc
56be cccccc       call Cz, W0xcccc
56c1 cccccc       call Cz, W0xcccc
56c4 cccccc       call Cz, W0xcccc
56c7 cccccc       call Cz, W0xcccc
56ca cccccc       call Cz, W0xcccc
56cd cccccc       call Cz, W0xcccc
56d0 cccccc       call Cz, W0xcccc
56d3 cccccc       call Cz, W0xcccc
56d6 cccccc       call Cz, W0xcccc
56d9 cccccc       call Cz, W0xcccc
56dc cccccc       call Cz, W0xcccc
56df cc8800       call Cz, W0x0088
56e2 44           ld Rb, Rh
56e3 cc8888       call Cz, W0x8888
56e6 00           nop
56e7 00           nop
56e8 88           Aadc a, Rb
56e9 44           ld Rb, Rh
56ea cccc44       call Cz, W0x44cc
56ed 00           nop
56ee 88           Aadc a, Rb
56ef 88           Aadc a, Rb
56f0 88           Aadc a, Rb
56f1 44           ld Rb, Rh
56f2 cc8888       call Cz, W0x8888
56f5 88           Aadc a, Rb
56f6 88           Aadc a, Rb
56f7 88           Aadc a, Rb
56f8 00           nop
56f9 00           nop
56fa 04           inc Rb
56fb 04           inc Rb
56fc 0c           inc Rc
56fd 04           inc Rb
56fe 08           ex af, af'
56ff 04           inc Rb
5700 00           nop
5701 00           nop
5702 04           inc Rb
5703 04           inc Rb
5704 00           nop
5705 08           ex af, af'
5706 00           nop
5707 04           inc Rb
5708 00           nop
5709 00           nop
570a 00           nop
570b 00           nop
570c 00           nop
570d 00           nop
570e 00           nop
570f 00           nop
5710 00           nop
5711 00           nop
5712 00           nop
5713 00           nop
5714 00           nop
5715 00           nop
5716 00           nop
5717 00           nop
5718 00           nop
5719 00           nop
571a 00           nop
571b 00           nop
571c 00           nop
571d 00           nop
571e 00           nop
571f 00           nop
5720 00           nop
5721 00           nop
5722 00           nop
5723 00           nop
5724 00           nop
5725 00           nop
5726 00           nop
5727 00           nop
5728 40           ld Rb, Rb
5729 c0           ret Cnz
572a c0           ret Cnz
572b 80           Aadd a, Rb
572c 00           nop
572d c0           ret Cnz
572e c0           ret Cnz
572f c0           ret Cnz
5730 84           Aadd a, Rh
5731 0c           inc Rc
5732 0c           inc Rc
5733 0c           inc Rc
5734 0c           inc Rc
5735 0c           inc Rc
5736 0c           inc Rc
5737 44           ld Rb, Rh
5738 cccc88       call Cz, W0x88cc
573b cc88cc       call Cz, W0xcc88
573e cccccc       call Cz, W0xcccc
5741 44           ld Rb, Rh
5742 cccccc       call Cz, W0xcccc
5745 00           nop
5746 cccc00       call Cz, W0x00cc
5749 00           nop
574a 00           nop
574b 00           nop
574c 00           nop
574d 00           nop
574e 00           nop
574f 00           nop
5750 00           nop
5751 00           nop
5752 00           nop
5753 00           nop
5754 00           nop
5755 00           nop
5756 00           nop
5757 00           nop
5758 00           nop
5759 00           nop
575a 00           nop
575b 00           nop
575c 00           nop
575d 00           nop
575e 00           nop
575f 00           nop
5760 00           nop
5761 00           nop
5762 00           nop
5763 00           nop
5764 00           nop
5765 00           nop
5766 00           nop
5767 00           nop
5768 00           nop
5769 00           nop
576a 00           nop
576b 00           nop
576c 00           nop
576d 00           nop
576e 00           nop
576f 00           nop
5770 00           nop
5771 00           nop
5772 00           nop
5773 00           nop
5774 00           nop
5775 00           nop
5776 00           nop
5777 00           nop
5778 00           nop
5779 00           nop
577a 40           ld Rb, Rb
577b c0           ret Cnz
577c c0           ret Cnz
577d c0           ret Cnz
577e c0           ret Cnz
577f 0c           inc Rc
5780 0c           inc Rc
5781 0c           inc Rc
5782 00           nop
5783 00           nop
5784 00           nop
5785 00           nop
5786 00           nop
5787 44           ld Rb, Rh
5788 cc0000       call Cz, W0x0000
578b cc88cc       call Cz, W0xcc88
578e 88           Aadc a, Rb
578f cccc44       call Cz, W0x44cc
5792 cccccc       call Cz, W0xcccc
5795 88           Aadc a, Rb
5796 cccc00       call Cz, W0x00cc
5799 00           nop
579a 00           nop
579b 00           nop
579c 00           nop
579d 00           nop
579e 00           nop
579f 00           nop
57a0 00           nop
57a1 00           nop
57a2 00           nop
57a3 00           nop
57a4 00           nop
57a5 00           nop
57a6 00           nop
57a7 00           nop
57a8 00           nop
57a9 00           nop
57aa 00           nop
57ab 00           nop
57ac 00           nop
57ad 00           nop
57ae 00           nop
57af 00           nop
57b0 00           nop
57b1 00           nop
57b2 00           nop
57b3 00           nop
57b4 00           nop
57b5 00           nop
57b6 00           nop
57b7 00           nop
57b8 00           nop
57b9 00           nop
57ba 00           nop
57bb 00           nop
57bc 00           nop
57bd 00           nop
57be 00           nop
57bf 00           nop
57c0 00           nop
57c1 00           nop
57c2 00           nop
57c3 00           nop
57c4 00           nop
57c5 00           nop
57c6 00           nop
57c7 00           nop
57c8 c0           ret Cnz
57c9 80           Aadd a, Rb
57ca 00           nop
57cb cccccc       call Cz, W0xcccc
57ce cccc88       call Cz, W0x88cc
57d1 0c           inc Rc
57d2 0c           inc Rc
57d3 0c           inc Rc
57d4 04           inc Rb
57d5 0c           inc Rc
57d6 0c           inc Rc
57d7 0c           inc Rc
57d8 0c           inc Rc
57d9 0c           inc Rc
57da 08           ex af, af'
57db 0c           inc Rc
57dc 0c           inc Rc
57dd 0c           inc Rc
57de 0c           inc Rc
57df 0c           inc Rc
57e0 0c           inc Rc
57e1 04           inc Rb
57e2 0c           inc Rc
57e3 0c           inc Rc
57e4 0c           inc Rc
57e5 0c           inc Rc
57e6 0c           inc Rc
57e7 0c           inc Rc
57e8 00           nop
57e9 00           nop
57ea 00           nop
57eb 00           nop
57ec 00           nop
57ed 00           nop
57ee 00           nop
57ef 00           nop
57f0 00           nop
57f1 00           nop
57f2 00           nop
57f3 00           nop
57f4 00           nop
57f5 00           nop
57f6 00           nop
57f7 00           nop
57f8 00           nop
57f9 00           nop
57fa 00           nop
57fb 00           nop
57fc 00           nop
57fd 00           nop
57fe 00           nop
57ff 00           nop
5800 00           nop
5801 00           nop
5802 00           nop
5803 00           nop
5804 00           nop
5805 00           nop
5806 00           nop
5807 00           nop
5808 00           nop
5809 00           nop
580a 00           nop
580b 00           nop
580c 00           nop
580d 00           nop
580e 00           nop
580f 00           nop
5810 00           nop
5811 00           nop
5812 00           nop
5813 00           nop
5814 00           nop
5815 00           nop
5816 00           nop
5817 00           nop
5818 00           nop
5819 00           nop
581a 00           nop
581b 00           nop
581c 44           ld Rb, Rh
581d cccc88       call Cz, W0x88cc
5820 00           nop
5821 00           nop
5822 00           nop
5823 0c           inc Rc
5824 0c           inc Rc
5825 0c           inc Rc
5826 00           nop
5827 04           inc Rb
5828 0c           inc Rc
5829 08           ex af, af'
582a 00           nop
582b 0c           inc Rc
582c 0c           inc Rc
582d 0c           inc Rc
582e 0c           inc Rc
582f 0c           inc Rc
5830 0c           inc Rc
5831 04           inc Rb
5832 0c           inc Rc
5833 0c           inc Rc
5834 0c           inc Rc
5835 0c           inc Rc
5836 0c           inc Rc
5837 0c           inc Rc
5838 00           nop
5839 00           nop
583a 00           nop
583b 00           nop
583c 00           nop
583d 00           nop
583e 00           nop
583f 00           nop
5840 00           nop
5841 00           nop
5842 00           nop
5843 00           nop
5844 00           nop
5845 00           nop
5846 00           nop
5847 00           nop
5848 0c           inc Rc
5849 0c           inc Rc
584a 0c           inc Rc
584b 0c           inc Rc
584c 0c           inc Rc
584d 0c           inc Rc
584e 0c           inc Rc
584f 0c           inc Rc
5850 0c           inc Rc
5851 0c           inc Rc
5852 0c           inc Rc
5853 0c           inc Rc
5854 0c           inc Rc
5855 0c           inc Rc
5856 0c           inc Rc
5857 0c           inc Rc
5858 0c           inc Rc
5859 0c           inc Rc
585a 0c           inc Rc
585b 0c           inc Rc
585c 0c           inc Rc
585d 0c           inc Rc
585e 0c           inc Rc
585f 0c           inc Rc
5860 0c           inc Rc
5861 0c           inc Rc
5862 0c           inc Rc
5863 0c           inc Rc
5864 0c           inc Rc
5865 0c           inc Rc
5866 0c           inc Rc
5867 0c           inc Rc
5868 0c           inc Rc
5869 0c           inc Rc
586a 0c           inc Rc
586b 0c           inc Rc
586c 0c           inc Rc
586d 0c           inc Rc
586e 4c           ld Rc, Rh
586f cccc8c       call Cz, W0x8ccc
5872 0c           inc Rc
5873 0c           inc Rc
5874 0c           inc Rc
5875 0c           inc Rc
5876 00           nop
5877 04           inc Rb
5878 0c           inc Rc
5879 08           ex af, af'
587a 00           nop
587b 0c           inc Rc
587c 0c           inc Rc
587d 00           nop
587e 00           nop
587f 0c           inc Rc
5880 0c           inc Rc
5881 04           inc Rb
5882 0c           inc Rc
5883 08           ex af, af'
5884 04           inc Rb
5885 0c           inc Rc
5886 0c           inc Rc
5887 0c           inc Rc
5888 00           nop
5889 00           nop
588a 00           nop
588b 00           nop
588c 00           nop
588d 00           nop
588e 00           nop
588f 00           nop
5890 00           nop
5891 00           nop
5892 00           nop
5893 00           nop
5894 00           nop
5895 00           nop
5896 00           nop
5897 00           nop
5898 cccccc       call Cz, W0xcccc
589b cccccc       call Cz, W0xcccc
589e cccccc       call Cz, W0xcccc
58a1 cccccc       call Cz, W0xcccc
58a4 cccccc       call Cz, W0xcccc
58a7 cccccc       call Cz, W0xcccc
58aa cccccc       call Cz, W0xcccc
58ad cccccc       call Cz, W0xcccc
58b0 cccccc       call Cz, W0xcccc
58b3 cccccc       call Cz, W0xcccc
58b6 cccccc       call Cz, W0xcccc
58b9 cccccc       call Cz, W0xcccc
58bc cccccc       call Cz, W0xcccc
58bf cc8800       call Cz, W0x0088
58c2 44           ld Rb, Rh
58c3 cc8888       call Cz, W0x8888
58c6 00           nop
58c7 00           nop
58c8 88           Aadc a, Rb
58c9 00           nop
58ca 88           Aadc a, Rb
58cb 88           Aadc a, Rb
58cc 44           ld Rb, Rh
58cd 00           nop
58ce 88           Aadc a, Rb
58cf 88           Aadc a, Rb
58d0 cc44cc       call Cz, W0xcc44
58d3 88           Aadc a, Rb
58d4 88           Aadc a, Rb
58d5 88           Aadc a, Rb
58d6 88           Aadc a, Rb
58d7 cc8888       call Cz, W0x8888
58da 04           inc Rb
58db 00           nop
58dc 00           nop
58dd 04           inc Rb
58de 00           nop
58df 0c           inc Rc
58e0 08           ex af, af'
58e1 0c           inc Rc
58e2 0c           inc Rc
58e3 04           inc Rb
58e4 0c           inc Rc
58e5 08           ex af, af'
58e6 00           nop
58e7 04           inc Rb
58e8 00           nop
58e9 00           nop
58ea 00           nop
58eb 00           nop
58ec 00           nop
58ed 00           nop
58ee 00           nop
58ef 00           nop
58f0 00           nop
58f1 00           nop
58f2 00           nop
58f3 88           Aadc a, Rb
58f4 00           nop
58f5 cc4444       call Cz, W0x4444
58f8 44           ld Rb, Rh
58f9 44           ld Rb, Rh
58fa 00           nop
58fb cc0044       call Cz, W0x4400
58fe 00           nop
58ff c0           ret Cnz
5900 00           nop
5901 00           nop
5902 44           ld Rb, Rh
5903 00           nop
5904 cc0088       call Cz, W0x8800
5907 88           Aadc a, Rb
5908 88           Aadc a, Rb
5909 88           Aadc a, Rb
590a cc0088       call Cz, W0x8800
590d 00           nop
590e c0           ret Cnz
590f 00           nop
5910 04           inc Rb
5911 40           ld Rb, Rb
5912 04           inc Rb
5913 44           ld Rb, Rh
5914 00           nop
5915 40           ld Rb, Rb
5916 00           nop
5917 44           ld Rb, Rh
5918 00           nop
5919 48           ld Rc, Rb
591a 00           nop
591b 08           ex af, af'
591c 00           nop
591d 08           ex af, af'
591e 40           ld Rb, Rb
591f 80           Aadd a, Rb
5920 80           Aadd a, Rb
5921 08           ex af, af'
5922 88           Aadc a, Rb
5923 08           ex af, af'
5924 80           Aadd a, Rb
5925 00           nop
5926 88           Aadc a, Rb
5927 00           nop
5928 84           Aadd a, Rh
5929 00           nop
592a 04           inc Rb
592b 00           nop
592c 04           inc Rb
592d 00           nop
592e 40           ld Rb, Rb
592f 80           Aadd a, Rb
5930 04           inc Rb
5931 40           ld Rb, Rb
5932 00           nop
5933 4c           ld Rc, Rh
5934 00           nop
5935 40           ld Rb, Rb
5936 00           nop
5937 44           ld Rb, Rh
5938 00           nop
5939 48           ld Rc, Rb
593a 00           nop
593b 08           ex af, af'
593c 00           nop
593d 08           ex af, af'
593e 40           ld Rb, Rb
593f 80           Aadd a, Rb
5940 80           Aadd a, Rb
5941 08           ex af, af'
5942 8c           Aadc a, Rh
5943 00           nop
5944 80           Aadd a, Rb
5945 00           nop
5946 88           Aadc a, Rb
5947 00           nop
5948 84           Aadd a, Rh
5949 00           nop
594a 04           inc Rb
594b 00           nop
594c 04           inc Rb
594d 00           nop
594e 40           ld Rb, Rb
594f 80           Aadd a, Rb
5950 04           inc Rb
5951 40           ld Rb, Rb
5952 00           nop
5953 4c           ld Rc, Rh
5954 00           nop
5955 40           ld Rb, Rb
5956 00           nop
5957 44           ld Rb, Rh
5958 00           nop
5959 48           ld Rc, Rb
595a 00           nop
595b 08           ex af, af'
595c 40           ld Rb, Rb
595d 80           Aadd a, Rb
595e 00           nop
595f 00           nop
5960 80           Aadd a, Rb
5961 08           ex af, af'
5962 8c           Aadc a, Rh
5963 00           nop
5964 80           Aadd a, Rb
5965 00           nop
5966 88           Aadc a, Rb
5967 00           nop
5968 84           Aadd a, Rh
5969 00           nop
596a 04           inc Rb
596b 00           nop
596c 04           inc Rb
596d 00           nop
596e 40           ld Rb, Rb
596f 80           Aadd a, Rb
5970 00           nop
5971 00           nop
5972 00           nop
5973 88           Aadc a, Rb
5974 00           nop
5975 cc44cc       call Cz, W0xcc44
5978 44           ld Rb, Rh
5979 44           ld Rb, Rh
597a 00           nop
597b cc0044       call Cz, W0x4400
597e 00           nop
597f c0           ret Cnz
5980 00           nop
5981 00           nop
5982 44           ld Rb, Rh
5983 00           nop
5984 cc00cc       call Cz, W0xcc00
5987 88           Aadc a, Rb
5988 88           Aadc a, Rb
5989 88           Aadc a, Rb
598a cc0088       call Cz, W0x8800
598d 00           nop
598e c0           ret Cnz
598f 00           nop
5990 00           nop
5991 00           nop
5992 00           nop
5993 88           Aadc a, Rb
5994 00           nop
5995 cc44cc       call Cz, W0xcc44
5998 44           ld Rb, Rh
5999 cc00cc       call Cz, W0xcc00
599c 00           nop
599d 44           ld Rb, Rh
599e 00           nop
599f c0           ret Cnz
59a0 00           nop
59a1 00           nop
59a2 44           ld Rb, Rh
59a3 00           nop
59a4 cc00cc       call Cz, W0xcc00
59a7 88           Aadc a, Rb
59a8 cc88cc       call Cz, W0xcc88
59ab 00           nop
59ac 88           Aadc a, Rb
59ad 00           nop
59ae c0           ret Cnz
59af 00           nop
59b0 00           nop
59b1 00           nop
59b2 00           nop
59b3 44           ld Rb, Rh
59b4 00           nop
59b5 cc00cc       call Cz, W0xcc00
59b8 00           nop
59b9 cc00cc       call Cz, W0xcc00
59bc 00           nop
59bd 44           ld Rb, Rh
59be 00           nop
59bf 44           ld Rb, Rh
59c0 00           nop
59c1 00           nop
59c2 88           Aadc a, Rb
59c3 00           nop
59c4 cc0088       call Cz, W0x8800
59c7 88           Aadc a, Rb
59c8 88           Aadc a, Rb
59c9 88           Aadc a, Rb
59ca cc0088       call Cz, W0x8800
59cd 00           nop
59ce 88           Aadc a, Rb
59cf 00           nop
59d0 00           nop
59d1 40           ld Rb, Rb
59d2 00           nop
59d3 44           ld Rb, Rh
59d4 00           nop
59d5 40           ld Rb, Rb
59d6 00           nop
59d7 44           ld Rb, Rh
59d8 04           inc Rb
59d9 48           ld Rc, Rb
59da 80           Aadd a, Rb
59db 00           nop
59dc 80           Aadd a, Rb
59dd 00           nop
59de 00           nop
59df 00           nop
59e0 80           Aadd a, Rb
59e1 00           nop
59e2 c8           ret Cz
59e3 00           nop
59e4 80           Aadd a, Rb
59e5 00           nop
59e6 88           Aadc a, Rb
59e7 00           nop
59e8 84           Aadd a, Rh
59e9 00           nop
59ea 00           nop
59eb 08           ex af, af'
59ec 00           nop
59ed 08           ex af, af'
59ee 00           nop
59ef c0           ret Cnz
59f0 00           nop
59f1 00           nop
59f2 00           nop
59f3 44           ld Rb, Rh
59f4 00           nop
59f5 cc00cc       call Cz, W0xcc00
59f8 00           nop
59f9 cc00cc       call Cz, W0xcc00
59fc 00           nop
59fd 44           ld Rb, Rh
59fe 00           nop
59ff 44           ld Rb, Rh
5a00 00           nop
5a01 00           nop
5a02 88           Aadc a, Rb
5a03 00           nop
5a04 cc0088       call Cz, W0x8800
5a07 88           Aadc a, Rb
5a08 88           Aadc a, Rb
5a09 88           Aadc a, Rb
5a0a cc0088       call Cz, W0x8800
5a0d 00           nop
5a0e 88           Aadc a, Rb
5a0f 00           nop
5a10 00           nop
5a11 40           ld Rb, Rb
5a12 00           nop
5a13 44           ld Rb, Rh
5a14 00           nop
5a15 40           ld Rb, Rb
5a16 00           nop
5a17 44           ld Rb, Rh
5a18 04           inc Rb
5a19 48           ld Rc, Rb
5a1a 80           Aadd a, Rb
5a1b 00           nop
5a1c 80           Aadd a, Rb
5a1d 00           nop
5a1e 00           nop
5a1f 00           nop
5a20 80           Aadd a, Rb
5a21 00           nop
5a22 c8           ret Cz
5a23 00           nop
5a24 80           Aadd a, Rb
5a25 00           nop
5a26 88           Aadc a, Rb
5a27 00           nop
5a28 84           Aadd a, Rh
5a29 00           nop
5a2a 00           nop
5a2b 08           ex af, af'
5a2c 00           nop
5a2d 08           ex af, af'
5a2e 00           nop
5a2f c0           ret Cnz
5a30 00           nop
5a31 00           nop
5a32 00           nop
5a33 44           ld Rb, Rh
5a34 00           nop
5a35 cc00cc       call Cz, W0xcc00
5a38 00           nop
5a39 cc00cc       call Cz, W0xcc00
5a3c 00           nop
5a3d 44           ld Rb, Rh
5a3e 00           nop
5a3f 44           ld Rb, Rh
5a40 00           nop
5a41 00           nop
5a42 88           Aadc a, Rb
5a43 00           nop
5a44 cc0088       call Cz, W0x8800
5a47 88           Aadc a, Rb
5a48 88           Aadc a, Rb
5a49 88           Aadc a, Rb
5a4a cc0088       call Cz, W0x8800
5a4d 00           nop
5a4e 88           Aadc a, Rb
5a4f 00           nop
5a50 00           nop
5a51 40           ld Rb, Rb
5a52 00           nop
5a53 44           ld Rb, Rh
5a54 00           nop
5a55 40           ld Rb, Rb
5a56 00           nop
5a57 44           ld Rb, Rh
5a58 00           nop
5a59 48           ld Rc, Rb
5a5a 84           Aadd a, Rh
5a5b 0c           inc Rc
5a5c 80           Aadd a, Rb
5a5d 00           nop
5a5e 00           nop
5a5f 00           nop
5a60 80           Aadd a, Rb
5a61 00           nop
5a62 c8           ret Cz
5a63 00           nop
5a64 80           Aadd a, Rb
5a65 00           nop
5a66 88           Aadc a, Rb
5a67 00           nop
5a68 84           Aadd a, Rh
5a69 00           nop
5a6a 04           inc Rb
5a6b 00           nop
5a6c 04           inc Rb
5a6d 00           nop
5a6e 40           ld Rb, Rb
5a6f 80           Aadd a, Rb
5a70 00           nop
5a71 00           nop
5a72 00           nop
5a73 44           ld Rb, Rh
5a74 00           nop
5a75 cc00cc       call Cz, W0xcc00
5a78 00           nop
5a79 cc00cc       call Cz, W0xcc00
5a7c 00           nop
5a7d 44           ld Rb, Rh
5a7e 00           nop
5a7f 44           ld Rb, Rh
5a80 00           nop
5a81 00           nop
5a82 88           Aadc a, Rb
5a83 00           nop
5a84 cc0088       call Cz, W0x8800
5a87 88           Aadc a, Rb
5a88 88           Aadc a, Rb
5a89 88           Aadc a, Rb
5a8a cc0088       call Cz, W0x8800
5a8d 00           nop
5a8e 88           Aadc a, Rb
5a8f 00           nop
5a90 00           nop
5a91 40           ld Rb, Rb
5a92 00           nop
5a93 44           ld Rb, Rh
5a94 00           nop
5a95 40           ld Rb, Rb
5a96 00           nop
5a97 44           ld Rb, Rh
5a98 00           nop
5a99 40           ld Rb, Rb
5a9a 04           inc Rb
5a9b 0c           inc Rc
5a9c 40           ld Rb, Rb
5a9d 08           ex af, af'
5a9e 40           ld Rb, Rb
5a9f 00           nop
5aa0 80           Aadd a, Rb
5aa1 00           nop
5aa2 c8           ret Cz
5aa3 00           nop
5aa4 80           Aadd a, Rb
5aa5 00           nop
5aa6 88           Aadc a, Rb
5aa7 00           nop
5aa8 84           Aadd a, Rh
5aa9 00           nop
5aaa 04           inc Rb
5aab 00           nop
5aac 04           inc Rb
5aad 00           nop
5aae 40           ld Rb, Rb
5aaf 80           Aadd a, Rb
5ab0 00           nop
5ab1 00           nop
5ab2 00           nop
5ab3 00           nop
5ab4 00           nop
5ab5 44           ld Rb, Rh
5ab6 00           nop
5ab7 cc00cc       call Cz, W0xcc00
5aba 00           nop
5abb cc00cc       call Cz, W0xcc00
5abe 00           nop
5abf 44           ld Rb, Rh
5ac0 00           nop
5ac1 00           nop
5ac2 00           nop
5ac3 00           nop
5ac4 88           Aadc a, Rb
5ac5 00           nop
5ac6 cc0088       call Cz, W0x8800
5ac9 88           Aadc a, Rb
5aca 88           Aadc a, Rb
5acb 88           Aadc a, Rb
5acc cc0088       call Cz, W0x8800
5acf 00           nop
5ad0 00           nop
5ad1 40           ld Rb, Rb
5ad2 00           nop
5ad3 44           ld Rb, Rh
5ad4 00           nop
5ad5 40           ld Rb, Rb
5ad6 00           nop
5ad7 44           ld Rb, Rh
5ad8 00           nop
5ad9 40           ld Rb, Rb
5ada 00           nop
5adb 04           inc Rb
5adc 00           nop
5add 84           Aadd a, Rh
5ade 00           nop
5adf 80           Aadd a, Rb
5ae0 80           Aadd a, Rb
5ae1 00           nop
5ae2 c8           ret Cz
5ae3 00           nop
5ae4 80           Aadd a, Rb
5ae5 00           nop
5ae6 88           Aadc a, Rb
5ae7 00           nop
5ae8 80           Aadd a, Rb
5ae9 00           nop
5aea 08           ex af, af'
5aeb 00           nop
5aec 08           ex af, af'
5aed 00           nop
5aee c0           ret Cnz
5aef 00           nop
5af0 00           nop
5af1 00           nop
5af2 00           nop
5af3 00           nop
5af4 00           nop
5af5 44           ld Rb, Rh
5af6 00           nop
5af7 cc00cc       call Cz, W0xcc00
5afa 00           nop
5afb cc00cc       call Cz, W0xcc00
5afe 00           nop
5aff 44           ld Rb, Rh
5b00 00           nop
5b01 00           nop
5b02 00           nop
5b03 00           nop
5b04 88           Aadc a, Rb
5b05 00           nop
5b06 cc0088       call Cz, W0x8800
5b09 88           Aadc a, Rb
5b0a 88           Aadc a, Rb
5b0b 88           Aadc a, Rb
5b0c cc0088       call Cz, W0x8800
5b0f 00           nop
5b10 00           nop
5b11 40           ld Rb, Rb
5b12 00           nop
5b13 44           ld Rb, Rh
5b14 00           nop
5b15 40           ld Rb, Rb
5b16 00           nop
5b17 44           ld Rb, Rh
5b18 00           nop
5b19 40           ld Rb, Rb
5b1a 00           nop
5b1b 04           inc Rb
5b1c 00           nop
5b1d 04           inc Rb
5b1e 00           nop
5b1f 40           ld Rb, Rb
5b20 80           Aadd a, Rb
5b21 00           nop
5b22 c8           ret Cz
5b23 00           nop
5b24 80           Aadd a, Rb
5b25 00           nop
5b26 88           Aadc a, Rb
5b27 00           nop
5b28 80           Aadd a, Rb
5b29 00           nop
5b2a 0c           inc Rc
5b2b 00           nop
5b2c 0c           inc Rc
5b2d 00           nop
5b2e 80           Aadd a, Rb
5b2f 00           nop
5b30 00           nop
5b31 00           nop
5b32 00           nop
5b33 00           nop
5b34 00           nop
5b35 44           ld Rb, Rh
5b36 00           nop
5b37 cc00cc       call Cz, W0xcc00
5b3a 00           nop
5b3b cc00cc       call Cz, W0xcc00
5b3e 00           nop
5b3f 44           ld Rb, Rh
5b40 00           nop
5b41 00           nop
5b42 00           nop
5b43 00           nop
5b44 88           Aadc a, Rb
5b45 00           nop
5b46 cc0088       call Cz, W0x8800
5b49 88           Aadc a, Rb
5b4a 88           Aadc a, Rb
5b4b 88           Aadc a, Rb
5b4c cc0088       call Cz, W0x8800
5b4f 00           nop
5b50 00           nop
5b51 40           ld Rb, Rb
5b52 00           nop
5b53 44           ld Rb, Rh
5b54 00           nop
5b55 40           ld Rb, Rb
5b56 00           nop
5b57 44           ld Rb, Rh
5b58 00           nop
5b59 40           ld Rb, Rb
5b5a 00           nop
5b5b 04           inc Rb
5b5c 00           nop
5b5d 04           inc Rb
5b5e 00           nop
5b5f c0           ret Cnz
5b60 80           Aadd a, Rb
5b61 00           nop
5b62 c8           ret Cz
5b63 00           nop
5b64 80           Aadd a, Rb
5b65 00           nop
5b66 88           Aadc a, Rb
5b67 00           nop
5b68 80           Aadd a, Rb
5b69 00           nop
5b6a 0c           inc Rc
5b6b 00           nop
5b6c 0c           inc Rc
5b6d 00           nop
5b6e c0           ret Cnz
5b6f 00           nop
5b70 00           nop
5b71 00           nop
5b72 00           nop
5b73 00           nop
5b74 00           nop
5b75 44           ld Rb, Rh
5b76 00           nop
5b77 cc00cc       call Cz, W0xcc00
5b7a 00           nop
5b7b cc00cc       call Cz, W0xcc00
5b7e 00           nop
5b7f 44           ld Rb, Rh
5b80 00           nop
5b81 00           nop
5b82 00           nop
5b83 00           nop
5b84 88           Aadc a, Rb
5b85 00           nop
5b86 cc0088       call Cz, W0x8800
5b89 88           Aadc a, Rb
5b8a 88           Aadc a, Rb
5b8b 88           Aadc a, Rb
5b8c cc0088       call Cz, W0x8800
5b8f 00           nop
5b90 00           nop
5b91 40           ld Rb, Rb
5b92 00           nop
5b93 44           ld Rb, Rh
5b94 00           nop
5b95 40           ld Rb, Rb
5b96 00           nop
5b97 44           ld Rb, Rh
5b98 00           nop
5b99 40           ld Rb, Rb
5b9a 04           inc Rb
5b9b 0c           inc Rc
5b9c 40           ld Rb, Rb
5b9d 08           ex af, af'
5b9e 40           ld Rb, Rb
5b9f 00           nop
5ba0 80           Aadd a, Rb
5ba1 00           nop
5ba2 c8           ret Cz
5ba3 00           nop
5ba4 80           Aadd a, Rb
5ba5 00           nop
5ba6 88           Aadc a, Rb
5ba7 00           nop
5ba8 84           Aadd a, Rh
5ba9 00           nop
5baa 04           inc Rb
5bab 00           nop
5bac 04           inc Rb
5bad 00           nop
5bae 40           ld Rb, Rb
5baf 80           Aadd a, Rb
5bb0 00           nop
5bb1 00           nop
5bb2 00           nop
5bb3 44           ld Rb, Rh
5bb4 00           nop
5bb5 cc4444       call Cz, W0x4444
5bb8 44           ld Rb, Rh
5bb9 44           ld Rb, Rh
5bba 00           nop
5bbb cc0044       call Cz, W0x4400
5bbe 00           nop
5bbf 44           ld Rb, Rh
5bc0 00           nop
5bc1 00           nop
5bc2 88           Aadc a, Rb
5bc3 00           nop
5bc4 cc00cc       call Cz, W0xcc00
5bc7 00           nop
5bc8 cc00cc       call Cz, W0xcc00
5bcb 00           nop
5bcc 88           Aadc a, Rb
5bcd 00           nop
5bce 88           Aadc a, Rb
5bcf 00           nop
5bd0 00           nop
5bd1 40           ld Rb, Rb
5bd2 00           nop
5bd3 c40040       call Cnz, W0x4000
5bd6 00           nop
5bd7 44           ld Rb, Rh
5bd8 00           nop
5bd9 48           ld Rc, Rb
5bda 04           inc Rb
5bdb 00           nop
5bdc 04           inc Rb
5bdd 00           nop
5bde c0           ret Cnz
5bdf 00           nop
5be0 80           Aadd a, Rb
5be1 00           nop
5be2 88           Aadc a, Rb
5be3 00           nop
5be4 80           Aadd a, Rb
5be5 00           nop
5be6 88           Aadc a, Rb
5be7 00           nop
5be8 84           Aadd a, Rh
5be9 08           ex af, af'
5bea 00           nop
5beb 40           ld Rb, Rb
5bec 00           nop
5bed 40           ld Rb, Rb
5bee 00           nop
5bef 00           nop
5bf0 00           nop
5bf1 00           nop
5bf2 00           nop
5bf3 44           ld Rb, Rh
5bf4 00           nop
5bf5 cc4444       call Cz, W0x4444
5bf8 44           ld Rb, Rh
5bf9 44           ld Rb, Rh
5bfa 00           nop
5bfb cc0044       call Cz, W0x4400
5bfe 00           nop
5bff 44           ld Rb, Rh
5c00 00           nop
5c01 00           nop
5c02 88           Aadc a, Rb
5c03 00           nop
5c04 cc00cc       call Cz, W0xcc00
5c07 00           nop
5c08 cc00cc       call Cz, W0xcc00
5c0b 00           nop
5c0c 88           Aadc a, Rb
5c0d 00           nop
5c0e 88           Aadc a, Rb
5c0f 00           nop
5c10 00           nop
5c11 40           ld Rb, Rb
5c12 00           nop
5c13 c40040       call Cnz, W0x4000
5c16 00           nop
5c17 44           ld Rb, Rh
5c18 00           nop
5c19 48           ld Rc, Rb
5c1a 04           inc Rb
5c1b 00           nop
5c1c 04           inc Rb
5c1d 00           nop
5c1e c0           ret Cnz
5c1f 00           nop
5c20 80           Aadd a, Rb
5c21 00           nop
5c22 88           Aadc a, Rb
5c23 00           nop
5c24 80           Aadd a, Rb
5c25 00           nop
5c26 88           Aadc a, Rb
5c27 00           nop
5c28 84           Aadd a, Rh
5c29 08           ex af, af'
5c2a 00           nop
5c2b 40           ld Rb, Rb
5c2c 00           nop
5c2d 40           ld Rb, Rb
5c2e 00           nop
5c2f 00           nop
5c30 00           nop
5c31 00           nop
5c32 00           nop
5c33 44           ld Rb, Rh
5c34 00           nop
5c35 cc4444       call Cz, W0x4444
5c38 44           ld Rb, Rh
5c39 44           ld Rb, Rh
5c3a 00           nop
5c3b cc0044       call Cz, W0x4400
5c3e 00           nop
5c3f 44           ld Rb, Rh
5c40 00           nop
5c41 00           nop
5c42 88           Aadc a, Rb
5c43 00           nop
5c44 cc00cc       call Cz, W0xcc00
5c47 00           nop
5c48 cc00cc       call Cz, W0xcc00
5c4b 00           nop
5c4c 88           Aadc a, Rb
5c4d 00           nop
5c4e 88           Aadc a, Rb
5c4f 00           nop
5c50 00           nop
5c51 40           ld Rb, Rb
5c52 00           nop
5c53 c40040       call Cnz, W0x4000
5c56 00           nop
5c57 44           ld Rb, Rh
5c58 00           nop
5c59 48           ld Rc, Rb
5c5a 00           nop
5c5b 08           ex af, af'
5c5c 00           nop
5c5d 08           ex af, af'
5c5e 40           ld Rb, Rb
5c5f 80           Aadd a, Rb
5c60 80           Aadd a, Rb
5c61 00           nop
5c62 88           Aadc a, Rb
5c63 00           nop
5c64 80           Aadd a, Rb
5c65 00           nop
5c66 88           Aadc a, Rb
5c67 00           nop
5c68 84           Aadd a, Rh
5c69 00           nop
5c6a 0c           inc Rc
5c6b 48           ld Rc, Rb
5c6c 00           nop
5c6d 40           ld Rb, Rb
5c6e 00           nop
5c6f 00           nop
5c70 00           nop
5c71 00           nop
5c72 00           nop
5c73 44           ld Rb, Rh
5c74 00           nop
5c75 cc4444       call Cz, W0x4444
5c78 44           ld Rb, Rh
5c79 44           ld Rb, Rh
5c7a 00           nop
5c7b cc0044       call Cz, W0x4400
5c7e 00           nop
5c7f 44           ld Rb, Rh
5c80 00           nop
5c81 00           nop
5c82 88           Aadc a, Rb
5c83 00           nop
5c84 cc00cc       call Cz, W0xcc00
5c87 00           nop
5c88 cc00cc       call Cz, W0xcc00
5c8b 00           nop
5c8c 88           Aadc a, Rb
5c8d 00           nop
5c8e 88           Aadc a, Rb
5c8f 00           nop
5c90 00           nop
5c91 40           ld Rb, Rb
5c92 00           nop
5c93 c40040       call Cnz, W0x4000
5c96 00           nop
5c97 44           ld Rb, Rh
5c98 00           nop
5c99 48           ld Rc, Rb
5c9a 00           nop
5c9b 08           ex af, af'
5c9c 00           nop
5c9d 08           ex af, af'
5c9e 40           ld Rb, Rb
5c9f 80           Aadd a, Rb
5ca0 80           Aadd a, Rb
5ca1 00           nop
5ca2 88           Aadc a, Rb
5ca3 00           nop
5ca4 80           Aadd a, Rb
5ca5 00           nop
5ca6 88           Aadc a, Rb
5ca7 00           nop
5ca8 80           Aadd a, Rb
5ca9 00           nop
5caa 0c           inc Rc
5cab 08           ex af, af'
5cac 04           inc Rb
5cad 80           Aadd a, Rb
5cae 00           nop
5caf 80           Aadd a, Rb
5cb0 00           nop
5cb1 00           nop
5cb2 00           nop
5cb3 00           nop
5cb4 00           nop
5cb5 44           ld Rb, Rh
5cb6 00           nop
5cb7 cc4444       call Cz, W0x4444
5cba 44           ld Rb, Rh
5cbb 44           ld Rb, Rh
5cbc 00           nop
5cbd cc0044       call Cz, W0x4400
5cc0 00           nop
5cc1 00           nop
5cc2 00           nop
5cc3 00           nop
5cc4 88           Aadc a, Rb
5cc5 00           nop
5cc6 cc00cc       call Cz, W0xcc00
5cc9 00           nop
5cca cc00cc       call Cz, W0xcc00
5ccd 00           nop
5cce 88           Aadc a, Rb
5ccf 00           nop
5cd0 00           nop
5cd1 40           ld Rb, Rb
5cd2 00           nop
5cd3 c40040       call Cnz, W0x4000
5cd6 00           nop
5cd7 44           ld Rb, Rh
5cd8 00           nop
5cd9 40           ld Rb, Rb
5cda 00           nop
5cdb 04           inc Rb
5cdc 00           nop
5cdd 04           inc Rb
5cde 00           nop
5cdf c0           ret Cnz
5ce0 80           Aadd a, Rb
5ce1 00           nop
5ce2 88           Aadc a, Rb
5ce3 00           nop
5ce4 80           Aadd a, Rb
5ce5 00           nop
5ce6 88           Aadc a, Rb
5ce7 00           nop
5ce8 80           Aadd a, Rb
5ce9 00           nop
5cea 08           ex af, af'
5ceb 00           nop
5cec 48           ld Rc, Rb
5ced 00           nop
5cee 40           ld Rb, Rb
5cef 00           nop
5cf0 00           nop
5cf1 00           nop
5cf2 00           nop
5cf3 00           nop
5cf4 00           nop
5cf5 44           ld Rb, Rh
5cf6 00           nop
5cf7 cc4444       call Cz, W0x4444
5cfa 44           ld Rb, Rh
5cfb 44           ld Rb, Rh
5cfc 00           nop
5cfd cc0044       call Cz, W0x4400
5d00 00           nop
5d01 00           nop
5d02 00           nop
5d03 00           nop
5d04 88           Aadc a, Rb
5d05 00           nop
5d06 cc00cc       call Cz, W0xcc00
5d09 00           nop
5d0a cc00cc       call Cz, W0xcc00
5d0d 00           nop
5d0e 88           Aadc a, Rb
5d0f 00           nop
5d10 00           nop
5d11 40           ld Rb, Rb
5d12 00           nop
5d13 c40040       call Cnz, W0x4000
5d16 00           nop
5d17 44           ld Rb, Rh
5d18 00           nop
5d19 40           ld Rb, Rb
5d1a 00           nop
5d1b 0c           inc Rc
5d1c 00           nop
5d1d 0c           inc Rc
5d1e 00           nop
5d1f 40           ld Rb, Rb
5d20 80           Aadd a, Rb
5d21 00           nop
5d22 88           Aadc a, Rb
5d23 00           nop
5d24 80           Aadd a, Rb
5d25 00           nop
5d26 88           Aadc a, Rb
5d27 00           nop
5d28 80           Aadd a, Rb
5d29 00           nop
5d2a 08           ex af, af'
5d2b 00           nop
5d2c 08           ex af, af'
5d2d 00           nop
5d2e 80           Aadd a, Rb
5d2f 00           nop
5d30 00           nop
5d31 00           nop
5d32 00           nop
5d33 00           nop
5d34 00           nop
5d35 44           ld Rb, Rh
5d36 00           nop
5d37 cc4444       call Cz, W0x4444
5d3a 44           ld Rb, Rh
5d3b 44           ld Rb, Rh
5d3c 00           nop
5d3d cc0044       call Cz, W0x4400
5d40 00           nop
5d41 00           nop
5d42 00           nop
5d43 00           nop
5d44 88           Aadc a, Rb
5d45 00           nop
5d46 cc00cc       call Cz, W0xcc00
5d49 00           nop
5d4a cc00cc       call Cz, W0xcc00
5d4d 00           nop
5d4e 88           Aadc a, Rb
5d4f 00           nop
5d50 00           nop
5d51 40           ld Rb, Rb
5d52 00           nop
5d53 c40040       call Cnz, W0x4000
5d56 00           nop
5d57 44           ld Rb, Rh
5d58 00           nop
5d59 40           ld Rb, Rb
5d5a 00           nop
5d5b 0c           inc Rc
5d5c 00           nop
5d5d 0c           inc Rc
5d5e 00           nop
5d5f c0           ret Cnz
5d60 80           Aadd a, Rb
5d61 00           nop
5d62 88           Aadc a, Rb
5d63 00           nop
5d64 80           Aadd a, Rb
5d65 00           nop
5d66 88           Aadc a, Rb
5d67 00           nop
5d68 80           Aadd a, Rb
5d69 00           nop
5d6a 08           ex af, af'
5d6b 00           nop
5d6c 08           ex af, af'
5d6d 00           nop
5d6e c0           ret Cnz
5d6f 00           nop
5d70 00           nop
5d71 00           nop
5d72 00           nop
5d73 00           nop
5d74 00           nop
5d75 44           ld Rb, Rh
5d76 00           nop
5d77 cc4444       call Cz, W0x4444
5d7a 44           ld Rb, Rh
5d7b 44           ld Rb, Rh
5d7c 00           nop
5d7d cc0044       call Cz, W0x4400
5d80 00           nop
5d81 00           nop
5d82 00           nop
5d83 00           nop
5d84 88           Aadc a, Rb
5d85 00           nop
5d86 cc00cc       call Cz, W0xcc00
5d89 00           nop
5d8a cc00cc       call Cz, W0xcc00
5d8d 00           nop
5d8e 88           Aadc a, Rb
5d8f 00           nop
5d90 00           nop
5d91 40           ld Rb, Rb
5d92 00           nop
5d93 c40040       call Cnz, W0x4000
5d96 00           nop
5d97 44           ld Rb, Rh
5d98 00           nop
5d99 48           ld Rc, Rb
5d9a 00           nop
5d9b 08           ex af, af'
5d9c 00           nop
5d9d 08           ex af, af'
5d9e 40           ld Rb, Rb
5d9f 80           Aadd a, Rb
5da0 80           Aadd a, Rb
5da1 00           nop
5da2 88           Aadc a, Rb
5da3 00           nop
5da4 80           Aadd a, Rb
5da5 00           nop
5da6 88           Aadc a, Rb
5da7 00           nop
5da8 80           Aadd a, Rb
5da9 00           nop
5daa 0c           inc Rc
5dab 08           ex af, af'
5dac 04           inc Rb
5dad 80           Aadd a, Rb
5dae 00           nop
5daf 80           Aadd a, Rb
5db0 00           nop
5db1 00           nop
5db2 00           nop
5db3 00           nop
5db4 00           nop
5db5 00           nop
5db6 00           nop
5db7 00           nop
5db8 00           nop
5db9 00           nop
5dba 00           nop
5dbb 00           nop
5dbc 08           ex af, af'
5dbd 09           add Phl, Pbc
5dbe 0a           ld a, (Pbc)
5dbf 0b           dec Pbc
5dc0 00           nop
5dc1 1000         djnz D$ + 2
5dc3 12           ld (Pde), a
5dc4 00           nop
5dc5 14           inc Rd
5dc6 00           nop
5dc7 1600         ld Rd, N0x00
5dc9 00           nop
5dca 00           nop
5dcb 00           nop
5dcc 00           nop
5dcd 00           nop
5dce 00           nop
5dcf 00           nop
5dd0 00           nop
5dd1 00           nop
5dd2 00           nop
5dd3 00           nop
5dd4 00           nop
5dd5 00           nop
5dd6 00           nop
5dd7 00           nop
5dd8 00           nop
5dd9 00           nop
5dda 00           nop
5ddb 00           nop
5ddc 00           nop
5ddd 00           nop
5dde 00           nop
5ddf 00           nop
5de0 00           nop
5de1 00           nop
5de2 00           nop
5de3 00           nop
5de4 3031         jr Cnc, D$ + 51
5de6 323300       ld (W0x0033), a
5de9 3800         jr Cc, D$ + 2
5deb 3a0000       ld a, (W0x0000)
5dee 00           nop
5def 00           nop
5df0 24           inc Rh
5df1 2004         jr Cnz, D$ + 6
5df3 0c           inc Rc
5df4 00           nop
5df5 2c           inc Rl
5df6 00           nop
5df7 00           nop
5df8 1010         djnz D$ + 18
5dfa 1010         djnz D$ + 18
5dfc 1010         djnz D$ + 18
5dfe 1010         djnz D$ + 18
5e00 1c           inc Re
5e01 1c           inc Re
5e02 1c           inc Re
5e03 1c           inc Re
5e04 08           ex af, af'
5e05 08           ex af, af'
5e06 08           ex af, af'
5e07 08           ex af, af'
5e08 24           inc Rh
5e09 24           inc Rh
5e0a 24           inc Rh
5e0b 34           inc R(hl)
5e0c 383c         jr Cc, D$ + 62
5e0e 3834         jr Cc, D$ + 54
5e10 34           inc R(hl)
5e11 383c         jr Cc, D$ + 62
5e13 3834         jr Cc, D$ + 54
5e15 2c           inc Rl
5e16 34           inc R(hl)
5e17 383c         jr Cc, D$ + 62
5e19 24           inc Rh
5e1a 24           inc Rh
5e1b 24           inc Rh
5e1c 24           inc Rh
5e1d 24           inc Rh
5e1e 24           inc Rh
5e1f 24           inc Rh
5e20 14           inc Rd
5e21 14           inc Rd
5e22 14           inc Rd
5e23 14           inc Rd
5e24 14           inc Rd
5e25 14           inc Rd
5e26 14           inc Rd
5e27 14           inc Rd
5e28 2828         jr Cz, D$ + 42
5e2a 1818         jr D$ + 26
5e2c 24           inc Rh
5e2d 24           inc Rh
5e2e 24           inc Rh
5e2f 24           inc Rh
5e30 47           ld Rb, Ra
5e31 81           Aadd a, Rc
5e32 82           Aadd a, Rd
5e33 82           Aadd a, Rd
5e34 80           Aadd a, Rb
5e35 80           Aadd a, Rb
5e36 80           Aadd a, Rb
5e37 80           Aadd a, Rb
5e38 83           Aadd a, Re
5e39 83           Aadd a, Re
5e3a 83           Aadd a, Re
5e3b 83           Aadd a, Re
5e3c 83           Aadd a, Re
5e3d 83           Aadd a, Re
5e3e 83           Aadd a, Re
5e3f 83           Aadd a, Re
5e40 80           Aadd a, Rb
5e41 80           Aadd a, Rb
5e42 80           Aadd a, Rb
5e43 80           Aadd a, Rb
5e44 84           Aadd a, Rh
5e45 84           Aadd a, Rh
5e46 84           Aadd a, Rh
5e47 84           Aadd a, Rh
5e48 00           nop
5e49 00           nop
5e4a 00           nop
5e4b 47           ld Rb, Ra
5e4c 47           ld Rb, Ra
5e4d 47           ld Rb, Ra
5e4e 47           ld Rb, Ra
5e4f 47           ld Rb, Ra
5e50 47           ld Rb, Ra
5e51 47           ld Rb, Ra
5e52 47           ld Rb, Ra
5e53 47           ld Rb, Ra
5e54 47           ld Rb, Ra
5e55 80           Aadd a, Rb
5e56 47           ld Rb, Ra
5e57 47           ld Rb, Ra
5e58 47           ld Rb, Ra
5e59 00           nop
5e5a 00           nop
5e5b 00           nop
5e5c 00           nop
5e5d 00           nop
5e5e 00           nop
5e5f 00           nop
5e60 83           Aadd a, Re
5e61 83           Aadd a, Re
5e62 83           Aadd a, Re
5e63 83           Aadd a, Re
5e64 83           Aadd a, Re
5e65 83           Aadd a, Re
5e66 83           Aadd a, Re
5e67 83           Aadd a, Re
5e68 07           rlca
5e69 07           rlca
5e6a 04           inc Rb
5e6b 04           inc Rb
5e6c 00           nop
5e6d 00           nop
5e6e 00           nop
5e6f 00           nop
5e70 00           nop
5e71 00           nop
5e72 00           nop
5e73 00           nop
5e74 00           nop
5e75 00           nop
5e76 00           nop
5e77 00           nop
5e78 83           Aadd a, Re
5e79 04           inc Rb
5e7a 87           Aadd a, Ra
5e7b 0b           dec Pbc
5e7c 00           nop
5e7d 00           nop
5e7e 00           nop
5e7f 00           nop
5e80 72           ld R(hl), Rd
5e81 05           dec Rb
5e82 72           ld R(hl), Rd
5e83 05           dec Rb
5e84 72           ld R(hl), Rd
5e85 05           dec Rb
5e86 72           ld R(hl), Rd
5e87 05           dec Rb
5e88 00           nop
5e89 00           nop
5e8a 00           nop
5e8b 00           nop
5e8c 00           nop
5e8d 00           nop
5e8e 00           nop
5e8f 00           nop
5e90 07           rlca
5e91 0c           inc Rc
5e92 00           nop
5e93 00           nop
5e94 7f           ld Ra, Ra
5e95 0c           inc Rc
5e96 00           nop
5e97 00           nop
5e98 1f           rra
5e99 07           rlca
5e9a 00           nop
5e9b 00           nop
5e9c be           Acp R(hl)
5e9d 0600         ld Rb, N0x00
5e9f 00           nop
5ea0 00           nop
5ea1 00           nop
5ea2 00           nop
5ea3 00           nop
5ea4 00           nop
5ea5 00           nop
5ea6 17           rla
5ea7 0b           dec Pbc
5ea8 17           rla
5ea9 0b           dec Pbc
5eaa 17           rla
5eab 0b           dec Pbc
5eac 17           rla
5ead 0b           dec Pbc
5eae 17           rla
5eaf 0b           dec Pbc
5eb0 17           rla
5eb1 0b           dec Pbc
5eb2 17           rla
5eb3 0b           dec Pbc
5eb4 17           rla
5eb5 0b           dec Pbc
5eb6 17           rla
5eb7 0b           dec Pbc
5eb8 17           rla
5eb9 0b           dec Pbc
5eba 87           Aadd a, Ra
5ebb 0b           dec Pbc
5ebc 27           daa
5ebd 0b           dec Pbc
5ebe 27           daa
5ebf 0b           dec Pbc
5ec0 27           daa
5ec1 0b           dec Pbc
5ec2 00           nop
5ec3 00           nop
5ec4 00           nop
5ec5 00           nop
5ec6 00           nop
5ec7 00           nop
5ec8 00           nop
5ec9 00           nop
5eca 00           nop
5ecb 00           nop
5ecc 00           nop
5ecd 00           nop
5ece 00           nop
5ecf 00           nop
5ed0 2c           inc Rl
5ed1 062c         ld Rb, N0x2c
5ed3 062c         ld Rb, N0x2c
5ed5 062c         ld Rb, N0x2c
5ed7 0600         ld Rb, N0x00
5ed9 00           nop
5eda 00           nop
5edb 00           nop
5edc 00           nop
5edd 00           nop
5ede 00           nop
5edf 00           nop
5ee0 e8           ret Cpe
5ee1 0a           ld a, (Pbc)
5ee2 00           nop
5ee3 00           nop
5ee4 c20700       jp Cnz, W0x0007
5ee7 00           nop
5ee8 00           nop
5ee9 00           nop
5eea 00           nop
5eeb 00           nop
5eec 00           nop
5eed 00           nop
5eee 00           nop
5eef 00           nop
5ef0 62           ld Rh, Rd
5ef1 62           ld Rh, Rd
5ef2 62           ld Rh, Rd
5ef3 62           ld Rh, Rd
5ef4 62           ld Rh, Rd
5ef5 62           ld Rh, Rd
5ef6 62           ld Rh, Rd
5ef7 62           ld Rh, Rd
5ef8 62           ld Rh, Rd
5ef9 62           ld Rh, Rd
5efa 62           ld Rh, Rd
5efb 62           ld Rh, Rd
5efc 62           ld Rh, Rd
5efd 62           ld Rh, Rd
5efe 62           ld Rh, Rd
5eff 62           ld Rh, Rd
5f00 62           ld Rh, Rd
5f01 62           ld Rh, Rd
5f02 62           ld Rh, Rd
5f03 62           ld Rh, Rd
5f04 62           ld Rh, Rd
5f05 62           ld Rh, Rd
5f06 62           ld Rh, Rd
5f07 62           ld Rh, Rd
5f08 62           ld Rh, Rd
5f09 62           ld Rh, Rd
5f0a 62           ld Rh, Rd
5f0b 62           ld Rh, Rd
5f0c 62           ld Rh, Rd
5f0d 62           ld Rh, Rd
5f0e 62           ld Rh, Rd
5f0f 62           ld Rh, Rd
5f10 62           ld Rh, Rd
5f11 6b           ld Rl, Re
5f12 6b           ld Rl, Re
5f13 6b           ld Rl, Re
5f14 6b           ld Rl, Re
5f15 6b           ld Rl, Re
5f16 6b           ld Rl, Re
5f17 6b           ld Rl, Re
5f18 6b           ld Rl, Re
5f19 6b           ld Rl, Re
5f1a 6b           ld Rl, Re
5f1b 6b           ld Rl, Re
5f1c 6b           ld Rl, Re
5f1d 6b           ld Rl, Re
5f1e 6b           ld Rl, Re
5f1f 6b           ld Rl, Re
5f20 6b           ld Rl, Re
5f21 6b           ld Rl, Re
5f22 6b           ld Rl, Re
5f23 6b           ld Rl, Re
5f24 6b           ld Rl, Re
5f25 6b           ld Rl, Re
5f26 6b           ld Rl, Re
5f27 6b           ld Rl, Re
5f28 6b           ld Rl, Re
5f29 6b           ld Rl, Re
5f2a 6b           ld Rl, Re
5f2b 6b           ld Rl, Re
5f2c 6b           ld Rl, Re
5f2d 6b           ld Rl, Re
5f2e 6b           ld Rl, Re
5f2f 62           ld Rh, Rd
5f30 62           ld Rh, Rd
5f31 6b           ld Rl, Re
5f32 60           ld Rh, Rb
5f33 60           ld Rh, Rb
5f34 61           ld Rh, Rc
5f35 6b           ld Rl, Re
5f36 6b           ld Rl, Re
5f37 6b           ld Rl, Re
5f38 6b           ld Rl, Re
5f39 6b           ld Rl, Re
5f3a 6b           ld Rl, Re
5f3b 6b           ld Rl, Re
5f3c 6b           ld Rl, Re
5f3d 6b           ld Rl, Re
5f3e 6b           ld Rl, Re
5f3f 6b           ld Rl, Re
5f40 6b           ld Rl, Re
5f41 6b           ld Rl, Re
5f42 6b           ld Rl, Re
5f43 6b           ld Rl, Re
5f44 6b           ld Rl, Re
5f45 6b           ld Rl, Re
5f46 6b           ld Rl, Re
5f47 6b           ld Rl, Re
5f48 6b           ld Rl, Re
5f49 6b           ld Rl, Re
5f4a 6b           ld Rl, Re
5f4b 6b           ld Rl, Re
5f4c 6b           ld Rl, Re
5f4d 6b           ld Rl, Re
5f4e 6b           ld Rl, Re
5f4f 62           ld Rh, Rd
5f50 62           ld Rh, Rd
5f51 6b           ld Rl, Re
5f52 62           ld Rh, Rd
5f53 63           ld Rh, Re
5f54 64           ld Rh, Rh
5f55 6b           ld Rl, Re
5f56 62           ld Rh, Rd
5f57 69           ld Rl, Rc
5f58 6a           ld Rl, Rd
5f59 6b           ld Rl, Re
5f5a 62           ld Rh, Rd
5f5b 6b           ld Rl, Re
5f5c 6c           ld Rl, Rh
5f5d 6b           ld Rl, Re
5f5e 62           ld Rh, Rd
5f5f 6b           ld Rl, Re
5f60 6b           ld Rl, Re
5f61 6b           ld Rl, Re
5f62 62           ld Rh, Rd
5f63 69           ld Rl, Rc
5f64 71           ld R(hl), Rc
5f65 6b           ld Rl, Re
5f66 62           ld Rh, Rd
5f67 69           ld Rl, Rc
5f68 74           ld R(hl), Rh
5f69 6b           ld Rl, Re
5f6a 62           ld Rh, Rd
5f6b 69           ld Rl, Rc
5f6c 71           ld R(hl), Rc
5f6d 6b           ld Rl, Re
5f6e 6b           ld Rl, Re
5f6f 62           ld Rh, Rd
5f70 62           ld Rh, Rd
5f71 6b           ld Rl, Re
5f72 62           ld Rh, Rd
5f73 62           ld Rh, Rd
5f74 65           ld Rh, Rl
5f75 6b           ld Rl, Re
5f76 62           ld Rh, Rd
5f77 6b           ld Rl, Re
5f78 6c           ld Rl, Rh
5f79 6b           ld Rl, Re
5f7a 62           ld Rh, Rd
5f7b 6b           ld Rl, Re
5f7c 6c           ld Rl, Rh
5f7d 6b           ld Rl, Re
5f7e 62           ld Rh, Rd
5f7f 6b           ld Rl, Re
5f80 6b           ld Rl, Re
5f81 6b           ld Rl, Re
5f82 62           ld Rh, Rd
5f83 6b           ld Rl, Re
5f84 6c           ld Rl, Rh
5f85 6b           ld Rl, Re
5f86 62           ld Rh, Rd
5f87 73           ld R(hl), Re
5f88 6b           ld Rl, Re
5f89 6b           ld Rl, Re
5f8a 62           ld Rh, Rd
5f8b 73           ld R(hl), Re
5f8c 76           halt
5f8d 6b           ld Rl, Re
5f8e 6b           ld Rl, Re
5f8f 62           ld Rh, Rd
5f90 62           ld Rh, Rd
5f91 6b           ld Rl, Re
5f92 62           ld Rh, Rd
5f93 66           ld Rh, R(hl)
5f94 67           ld Rh, Ra
5f95 6b           ld Rl, Re
5f96 62           ld Rh, Rd
5f97 6d           ld Rl, Rl
5f98 6e           ld Rl, R(hl)
5f99 6b           ld Rl, Re
5f9a 62           ld Rh, Rd
5f9b 6d           ld Rl, Rl
5f9c 6e           ld Rl, R(hl)
5f9d 6b           ld Rl, Re
5f9e 62           ld Rh, Rd
5f9f 6d           ld Rl, Rl
5fa0 70           ld R(hl), Rb
5fa1 6b           ld Rl, Re
5fa2 62           ld Rh, Rd
5fa3 6d           ld Rl, Rl
5fa4 6e           ld Rl, R(hl)
5fa5 6b           ld Rl, Re
5fa6 62           ld Rh, Rd
5fa7 72           ld R(hl), Rd
5fa8 70           ld R(hl), Rb
5fa9 6b           ld Rl, Re
5faa 62           ld Rh, Rd
5fab 75           ld R(hl), Rl
5fac 77           ld R(hl), Ra
5fad 6b           ld Rl, Re
5fae 6b           ld Rl, Re
5faf 62           ld Rh, Rd
5fb0 62           ld Rh, Rd
5fb1 6b           ld Rl, Re
5fb2 62           ld Rh, Rd
5fb3 62           ld Rh, Rd
5fb4 68           ld Rl, Rb
5fb5 6b           ld Rl, Re
5fb6 62           ld Rh, Rd
5fb7 62           ld Rh, Rd
5fb8 6f           ld Rl, Ra
5fb9 6b           ld Rl, Re
5fba 62           ld Rh, Rd
5fbb 62           ld Rh, Rd
5fbc 6f           ld Rl, Ra
5fbd 6b           ld Rl, Re
5fbe 62           ld Rh, Rd
5fbf 62           ld Rh, Rd
5fc0 6f           ld Rl, Ra
5fc1 6b           ld Rl, Re
5fc2 62           ld Rh, Rd
5fc3 62           ld Rh, Rd
5fc4 68           ld Rl, Rb
5fc5 6b           ld Rl, Re
5fc6 62           ld Rh, Rd
5fc7 62           ld Rh, Rd
5fc8 6f           ld Rl, Ra
5fc9 6b           ld Rl, Re
5fca 62           ld Rh, Rd
5fcb 6b           ld Rl, Re
5fcc 6c           ld Rl, Rh
5fcd 6b           ld Rl, Re
5fce 6b           ld Rl, Re
5fcf 62           ld Rh, Rd
5fd0 62           ld Rh, Rd
5fd1 6b           ld Rl, Re
5fd2 6b           ld Rl, Re
5fd3 6b           ld Rl, Re
5fd4 6b           ld Rl, Re
5fd5 6b           ld Rl, Re
5fd6 6b           ld Rl, Re
5fd7 6b           ld Rl, Re
5fd8 6b           ld Rl, Re
5fd9 6b           ld Rl, Re
5fda 6b           ld Rl, Re
5fdb 6b           ld Rl, Re
5fdc 6b           ld Rl, Re
5fdd 6b           ld Rl, Re
5fde 6b           ld Rl, Re
5fdf 6b           ld Rl, Re
5fe0 6b           ld Rl, Re
5fe1 6b           ld Rl, Re
5fe2 6b           ld Rl, Re
5fe3 6b           ld Rl, Re
5fe4 6b           ld Rl, Re
5fe5 6b           ld Rl, Re
5fe6 6b           ld Rl, Re
5fe7 6b           ld Rl, Re
5fe8 6b           ld Rl, Re
5fe9 6b           ld Rl, Re
5fea 6b           ld Rl, Re
5feb 6b           ld Rl, Re
5fec 6b           ld Rl, Re
5fed 6b           ld Rl, Re
5fee 6b           ld Rl, Re
5fef 62           ld Rh, Rd
5ff0 62           ld Rh, Rd
5ff1 6b           ld Rl, Re
5ff2 6b           ld Rl, Re
5ff3 6b           ld Rl, Re
5ff4 6b           ld Rl, Re
5ff5 6b           ld Rl, Re
5ff6 6b           ld Rl, Re
5ff7 60           ld Rh, Rb
5ff8 60           ld Rh, Rb
5ff9 61           ld Rh, Rc
5ffa 6b           ld Rl, Re
5ffb 6b           ld Rl, Re
5ffc 6b           ld Rl, Re
5ffd 6b           ld Rl, Re
5ffe 6b           ld Rl, Re
5fff 6b           ld Rl, Re
6000 6b           ld Rl, Re
6001 6b           ld Rl, Re
6002 6b           ld Rl, Re
6003 6b           ld Rl, Re
6004 6b           ld Rl, Re
6005 6b           ld Rl, Re
6006 6b           ld Rl, Re
6007 6b           ld Rl, Re
6008 6b           ld Rl, Re
6009 6b           ld Rl, Re
600a 6b           ld Rl, Re
600b 6b           ld Rl, Re
600c 6b           ld Rl, Re
600d 6b           ld Rl, Re
600e 6b           ld Rl, Re
600f 62           ld Rh, Rd
6010 62           ld Rh, Rd
6011 6b           ld Rl, Re
6012 6b           ld Rl, Re
6013 6b           ld Rl, Re
6014 6b           ld Rl, Re
6015 6b           ld Rl, Re
6016 6b           ld Rl, Re
6017 62           ld Rh, Rd
6018 78           ld Ra, Rb
6019 79           ld Ra, Rc
601a 6b           ld Rl, Re
601b 7a           ld Ra, Rd
601c 69           ld Rl, Rc
601d 71           ld R(hl), Rc
601e 6b           ld Rl, Re
601f 62           ld Rh, Rd
6020 69           ld Rl, Rc
6021 74           ld R(hl), Rh
6022 6b           ld Rl, Re
6023 62           ld Rh, Rd
6024 6b           ld Rl, Re
6025 6c           ld Rl, Rh
6026 6b           ld Rl, Re
6027 7e           ld Ra, R(hl)
6028 7f           ld Ra, Ra
6029 6b           ld Rl, Re
602a 6b           ld Rl, Re
602b 6b           ld Rl, Re
602c 6b           ld Rl, Re
602d 6b           ld Rl, Re
602e 6b           ld Rl, Re
602f 62           ld Rh, Rd
6030 62           ld Rh, Rd
6031 6b           ld Rl, Re
6032 6b           ld Rl, Re
6033 6b           ld Rl, Re
6034 6b           ld Rl, Re
6035 6b           ld Rl, Re
6036 6b           ld Rl, Re
6037 62           ld Rh, Rd
6038 6b           ld Rl, Re
6039 6c           ld Rl, Rh
603a 6b           ld Rl, Re
603b 62           ld Rh, Rd
603c 73           ld R(hl), Re
603d 7b           ld Ra, Re
603e 6b           ld Rl, Re
603f 62           ld Rh, Rd
6040 73           ld R(hl), Re
6041 7d           ld Ra, Rl
6042 6b           ld Rl, Re
6043 62           ld Rh, Rd
6044 73           ld R(hl), Re
6045 7b           ld Ra, Re
6046 6b           ld Rl, Re
6047 6b           ld Rl, Re
6048 6b           ld Rl, Re
6049 6b           ld Rl, Re
604a 6b           ld Rl, Re
604b 6b           ld Rl, Re
604c 6b           ld Rl, Re
604d 6b           ld Rl, Re
604e 6b           ld Rl, Re
604f 62           ld Rh, Rd
6050 62           ld Rh, Rd
6051 6b           ld Rl, Re
6052 6b           ld Rl, Re
6053 6b           ld Rl, Re
6054 6b           ld Rl, Re
6055 6b           ld Rl, Re
6056 6b           ld Rl, Re
6057 62           ld Rh, Rd
6058 6d           ld Rl, Rl
6059 6e           ld Rl, R(hl)
605a 6b           ld Rl, Re
605b 62           ld Rh, Rd
605c 78           ld Ra, Rb
605d 79           ld Ra, Rc
605e 6b           ld Rl, Re
605f 72           ld R(hl), Rd
6060 7c           ld Ra, Rh
6061 6f           ld Rl, Ra
6062 6b           ld Rl, Re
6063 62           ld Rh, Rd
6064 78           ld Ra, Rb
6065 79           ld Ra, Rc
6066 6b           ld Rl, Re
6067 6b           ld Rl, Re
6068 6b           ld Rl, Re
6069 6b           ld Rl, Re
606a 6b           ld Rl, Re
606b 6b           ld Rl, Re
606c 6b           ld Rl, Re
606d 6b           ld Rl, Re
606e 6b           ld Rl, Re
606f 62           ld Rh, Rd
6070 62           ld Rh, Rd
6071 6b           ld Rl, Re
6072 6b           ld Rl, Re
6073 6b           ld Rl, Re
6074 6b           ld Rl, Re
6075 6b           ld Rl, Re
6076 6b           ld Rl, Re
6077 62           ld Rh, Rd
6078 62           ld Rh, Rd
6079 68           ld Rl, Rb
607a 6b           ld Rl, Re
607b 62           ld Rh, Rd
607c 6b           ld Rl, Re
607d 6c           ld Rl, Rh
607e 6b           ld Rl, Re
607f 62           ld Rh, Rd
6080 62           ld Rh, Rd
6081 6f           ld Rl, Ra
6082 6b           ld Rl, Re
6083 62           ld Rh, Rd
6084 6b           ld Rl, Re
6085 6c           ld Rl, Rh
6086 6b           ld Rl, Re
6087 6b           ld Rl, Re
6088 6b           ld Rl, Re
6089 6b           ld Rl, Re
608a 6b           ld Rl, Re
608b 6b           ld Rl, Re
608c 6b           ld Rl, Re
608d 6b           ld Rl, Re
608e 6b           ld Rl, Re
608f 62           ld Rh, Rd
6090 62           ld Rh, Rd
6091 6b           ld Rl, Re
6092 6b           ld Rl, Re
6093 6b           ld Rl, Re
6094 6b           ld Rl, Re
6095 6b           ld Rl, Re
6096 6b           ld Rl, Re
6097 6b           ld Rl, Re
6098 6b           ld Rl, Re
6099 6b           ld Rl, Re
609a 6b           ld Rl, Re
609b 6b           ld Rl, Re
609c 6b           ld Rl, Re
609d 6b           ld Rl, Re
609e 6b           ld Rl, Re
609f 6b           ld Rl, Re
60a0 6b           ld Rl, Re
60a1 6b           ld Rl, Re
60a2 6b           ld Rl, Re
60a3 6b           ld Rl, Re
60a4 6b           ld Rl, Re
60a5 6b           ld Rl, Re
60a6 6b           ld Rl, Re
60a7 6b           ld Rl, Re
60a8 6b           ld Rl, Re
60a9 6b           ld Rl, Re
60aa 6b           ld Rl, Re
60ab 6b           ld Rl, Re
60ac 6b           ld Rl, Re
60ad 6b           ld Rl, Re
60ae 6b           ld Rl, Re
60af 62           ld Rh, Rd
60b0 62           ld Rh, Rd
60b1 62           ld Rh, Rd
60b2 62           ld Rh, Rd
60b3 62           ld Rh, Rd
60b4 62           ld Rh, Rd
60b5 62           ld Rh, Rd
60b6 62           ld Rh, Rd
60b7 62           ld Rh, Rd
60b8 62           ld Rh, Rd
60b9 62           ld Rh, Rd
60ba 62           ld Rh, Rd
60bb 62           ld Rh, Rd
60bc 62           ld Rh, Rd
60bd 62           ld Rh, Rd
60be 62           ld Rh, Rd
60bf 62           ld Rh, Rd
60c0 62           ld Rh, Rd
60c1 62           ld Rh, Rd
60c2 62           ld Rh, Rd
60c3 62           ld Rh, Rd
60c4 62           ld Rh, Rd
60c5 62           ld Rh, Rd
60c6 62           ld Rh, Rd
60c7 62           ld Rh, Rd
60c8 62           ld Rh, Rd
60c9 62           ld Rh, Rd
60ca 62           ld Rh, Rd
60cb 62           ld Rh, Rd
60cc 62           ld Rh, Rd
60cd 62           ld Rh, Rd
60ce 62           ld Rh, Rd
60cf 62           ld Rh, Rd
60d0 00           nop
60d1 00           nop
60d2 2c           inc Rl
60d3 00           nop
60d4 80           Aadd a, Rb
60d5 00           nop
60d6 a2           Aand Rd
60d7 00           nop
60d8 e8           ret Cpe
60d9 00           nop
60da 6a           ld Rl, Rd
60db 01f601       ld Pbc, W0x01f6
60de 39           add Phl, Psp
60df 02           ld (Pbc), a
60e0 8b           Aadc a, Re
60e1 02           ld (Pbc), a
60e2 c9           ret
60e3 02           ld (Pbc), a
60e4 29           add Phl, Phl
60e5 03           inc Pbc
60e6 8a           Aadc a, Rd
60e7 03           inc Pbc
60e8 ef           rst W0x0028
60e9 03           inc Pbc
60ea 2804         jr Cz, D$ + 6
60ec 7d           ld Ra, Rl
60ed 04           inc Rb
60ee b3           Aor Re
60ef 04           inc Rb
60f0 0d           dec Rc
60f1 05           dec Rb
60f2 44           ld Rb, Rh
60f3 05           dec Rb
60f4 95           Asub Rl
60f5 05           dec Rb
60f6 ce05         Aadc a, N0x05
60f8 01140a       ld Pbc, W0x0a14
60fb 0f           rrca
60fc 0a           ld a, (Pbc)
60fd 0b           dec Pbc
60fe 0c           inc Rc
60ff 0d           dec Rc
6100 0e0c         ld Rc, N0x0c
6102 0c           inc Rc
6103 0c           inc Rc
6104 0c           inc Rc
6105 0c           inc Rc
6106 96           Asub R(hl)
6107 6e           ld Rl, R(hl)
6108 46           ld Rb, R(hl)
6109 281e         jr Cz, D$ + 32
610b 00           nop
610c 1014         djnz D$ + 22
610e 00           nop
610f 3c           inc Ra
6110 320900       ld (W0x0009), a
6113 42           ld Rb, Rd
6114 01091e       ld Pbc, W0x1e09
6117 02           ld (Pbc), a
6118 42           ld Rb, Rd
6119 09           add Phl, Pbc
611a 101e         djnz D$ + 32
611c 02           ld (Pbc), a
611d 25           dec Rh
611e 03           inc Pbc
611f 04           inc Rb
6120 04           inc Rb
6121 2612         ld Rh, N0x12
6123 ff           rst W0x0038
6124 02           ld (Pbc), a
6125 14           inc Rd
6126 14           inc Rd
6127 320300       ld (W0x0003), a
612a 015758       ld Pbc, W0x5857
612d 0a           ld a, (Pbc)
612e 0c           inc Rc
612f 09           add Phl, Pbc
6130 0d           dec Rc
6131 0a           ld a, (Pbc)
6132 96           Asub R(hl)
6133 6e           ld Rl, R(hl)
6134 46           ld Rb, R(hl)
6135 46           ld Rb, R(hl)
6136 46           ld Rb, R(hl)
6137 00           nop
6138 1014         djnz D$ + 22
613a 08           ex af, af'
613b 3c           inc Ra
613c 320902       ld (W0x0209), a
613f 42           ld Rb, Rd
6140 010826       ld Pbc, W0x2608
6143 02           ld (Pbc), a
6144 42           ld Rb, Rd
6145 010f26       ld Pbc, W0x260f
6148 02           ld (Pbc), a
6149 42           ld Rb, Rd
614a 08           ex af, af'
614b 03           inc Pbc
614c 14           inc Rd
614d 04           inc Rb
614e 42           ld Rb, Rd
614f 1003         djnz D$ + 5
6151 14           inc Rd
6152 04           inc Rb
6153 42           ld Rb, Rd
6154 1803         jr D$ + 5
6156 14           inc Rd
6157 04           inc Rb
6158 42           ld Rb, Rd
6159 2003         jr Cnz, D$ + 5
615b 14           inc Rd
615c 04           inc Rb
615d 40           ld Rb, Rb
615e 010526       ld Pbc, W0x2605
6161 02           ld (Pbc), a
6162 40           ld Rb, Rb
6163 010b26       ld Pbc, W0x260b
6166 02           ld (Pbc), a
6167 40           ld Rb, Rb
6168 011226       ld Pbc, W0x2612
616b 02           ld (Pbc), a
616c 40           ld Rb, Rb
616d 14           inc Rd
616e 03           inc Pbc
616f 14           inc Rd
6170 04           inc Rb
6171 25           dec Rh
6172 12           ld (Pde), a
6173 15           dec Rd
6174 04           inc Rb
6175 12           ld (Pde), a
6176 16ff         ld Rd, N0xff
6178 03           inc Pbc
6179 00           nop
617a 0f           rrca
617b 00           nop
617c 00           nop
617d 323634       ld (W0x3436), a
6180 37           scf
6181 1817         jr D$ + 25
6183 1817         jr D$ + 25
6185 15           dec Rd
6186 96           Asub R(hl)
6187 64           ld Rh, Rh
6188 5a           ld Re, Rd
6189 50           ld Rd, Rb
618a 46           ld Rb, R(hl)
618b 02           ld (Pbc), a
618c 1014         djnz D$ + 22
618e 00           nop
618f 64           ld Rh, Rh
6190 320900       ld (W0x0009), a
6193 25           dec Rh
6194 03           inc Pbc
6195 04           inc Rb
6196 04           inc Rb
6197 27           daa
6198 14           inc Rd
6199 ff           rst W0x0038
619a 04           inc Rb
619b 14           inc Rd
619c 05           dec Rb
619d 14           inc Rd
619e 00           nop
619f 6e           ld Rl, R(hl)
61a0 70           ld R(hl), Rb
61a1 73           ld R(hl), Re
61a2 77           ld R(hl), Ra
61a3 24           inc Rh
61a4 24           inc Rh
61a5 24           inc Rh
61a6 24           inc Rh
61a7 24           inc Rh
61a8 78           ld Ra, Rb
61a9 64           ld Rh, Rh
61aa 50           ld Rd, Rb
61ab 3c           inc Ra
61ac 321000       ld (W0x0010), a
61af 00           nop
61b0 00           nop
61b1 14           inc Rd
61b2 00           nop
61b3 00           nop
61b4 00           nop
61b5 25           dec Rh
61b6 010304       ld Pbc, W0x0403
61b9 2616         ld Rh, N0x16
61bb 81           Aadd a, Rc
61bc 08           ex af, af'
61bd 0a           ld a, (Pbc)
61be 04           inc Rb
61bf 04           inc Rb
61c0 00           nop
61c1 300a         jr Cnc, D$ + 12
61c3 0b           dec Pbc
61c4 81           Aadd a, Rc
61c5 100a         djnz D$ + 12
61c7 04           inc Rb
61c8 04           inc Rb
61c9 00           nop
61ca 3012         jr Cnc, D$ + 20
61cc 0b           dec Pbc
61cd 81           Aadd a, Rc
61ce 180a         jr D$ + 12
61d0 04           inc Rb
61d1 04           inc Rb
61d2 00           nop
61d3 301a         jr Cnc, D$ + 28
61d5 0b           dec Pbc
61d6 81           Aadd a, Rc
61d7 200a         jr Cnz, D$ + 12
61d9 04           inc Rb
61da 04           inc Rb
61db 00           nop
61dc 3022         jr Cnc, D$ + 36
61de 0b           dec Pbc
61df ff           rst W0x0038
61e0 05           dec Rb
61e1 14           inc Rd
61e2 325a00       ld (W0x005a), a
61e5 00           nop
61e6 00           nop
61e7 00           nop
61e8 00           nop
61e9 04           inc Rb
61ea 05           dec Rb
61eb 0607         ld Rb, N0x07
61ed 08           ex af, af'
61ee 96           Asub R(hl)
61ef 78           ld Ra, Rb
61f0 5a           ld Re, Rd
61f1 3c           inc Ra
61f2 1e00         ld Re, N0x00
61f4 00           nop
61f5 00           nop
61f6 00           nop
61f7 00           nop
61f8 00           nop
61f9 00           nop
61fa 00           nop
61fb 25           dec Rh
61fc 010304       ld Pbc, W0x0403
61ff 27           daa
6200 1680         ld Rd, N0x80
6202 08           ex af, af'
6203 0a           ld a, (Pbc)
6204 03           inc Pbc
6205 03           inc Pbc
6206 00           nop
6207 80           Aadd a, Rb
6208 100a         djnz D$ + 12
620a 03           inc Pbc
620b 03           inc Pbc
620c 00           nop
620d 80           Aadd a, Rb
620e 180a         jr D$ + 12
6210 03           inc Pbc
6211 03           inc Pbc
6212 00           nop
6213 80           Aadd a, Rb
6214 200a         jr Cnz, D$ + 12
6216 03           inc Pbc
6217 03           inc Pbc
6218 00           nop
6219 14           inc Rd
621a 09           add Phl, Pbc
621b 0c           inc Rc
621c 08           ex af, af'
621d 0a           ld a, (Pbc)
621e 0a           ld a, (Pbc)
621f 14           inc Rd
6220 110c08       ld Pde, W0x080c
6223 12           ld (Pde), a
6224 0a           ld a, (Pbc)
6225 14           inc Rd
6226 19           add Phl, Pde
6227 0c           inc Rc
6228 08           ex af, af'
6229 1a           ld a, (Pde)
622a 0a           ld a, (Pbc)
622b 14           inc Rd
622c 210c08       ld Phl, W0x080c
622f 220a80       ld (W0x800a), Phl
6232 08           ex af, af'
6233 1003         djnz D$ + 5
6235 03           inc Pbc
6236 00           nop
6237 80           Aadd a, Rb
6238 1010         djnz D$ + 18
623a 03           inc Pbc
623b 03           inc Pbc
623c 00           nop
623d 80           Aadd a, Rb
623e 1810         jr D$ + 18
6240 03           inc Pbc
6241 03           inc Pbc
6242 00           nop
6243 80           Aadd a, Rb
6244 2010         jr Cnz, D$ + 18
6246 03           inc Pbc
6247 03           inc Pbc
6248 00           nop
6249 14           inc Rd
624a 09           add Phl, Pbc
624b 12           ld (Pde), a
624c 08           ex af, af'
624d 0a           ld a, (Pbc)
624e 1014         djnz D$ + 22
6250 111208       ld Pde, W0x0812
6253 12           ld (Pde), a
6254 1014         djnz D$ + 22
6256 19           add Phl, Pde
6257 12           ld (Pde), a
6258 08           ex af, af'
6259 1a           ld a, (Pde)
625a 1014         djnz D$ + 22
625c 211208       ld Phl, W0x0812
625f 2210ff       ld (W0xff10), Phl
6262 0614         ld Rb, N0x14
6264 283c         jr Cz, D$ + 62
6266 00           nop
6267 14           inc Rd
6268 15           dec Rd
6269 1617         ld Rd, N0x17
626b 04           inc Rb
626c 0607         ld Rb, N0x07
626e 08           ex af, af'
626f 08           ex af, af'
6270 96           Asub R(hl)
6271 78           ld Ra, Rb
6272 64           ld Rh, Rh
6273 5a           ld Re, Rd
6274 50           ld Rd, Rb
6275 1000         djnz D$ + 2
6277 00           nop
6278 00           nop
6279 320000       ld (W0x0000), a
627c 00           nop
627d 82           Aadd a, Rd
627e 01030a       ld Pbc, W0x0a03
6281 04           inc Rb
6282 00           nop
6283 82           Aadd a, Rd
6284 01060a       ld Pbc, W0x0a06
6287 04           inc Rb
6288 00           nop
6289 82           Aadd a, Rd
628a 01090a       ld Pbc, W0x0a09
628d 04           inc Rb
628e 00           nop
628f 82           Aadd a, Rd
6290 010c0a       ld Pbc, W0x0a0c
6293 04           inc Rb
6294 00           nop
6295 41           ld Rb, Rc
6296 0a           ld a, (Pbc)
6297 03           inc Pbc
6298 0d           dec Rc
6299 04           inc Rb
629a 14           inc Rd
629b 03           inc Pbc
629c 05           dec Rb
629d 08           ex af, af'
629e 04           inc Rb
629f 05           dec Rb
62a0 14           inc Rd
62a1 03           inc Pbc
62a2 08           ex af, af'
62a3 08           ex af, af'
62a4 04           inc Rb
62a5 08           ex af, af'
62a6 14           inc Rd
62a7 03           inc Pbc
62a8 0b           dec Pbc
62a9 08           ex af, af'
62aa 04           inc Rb
62ab 0b           dec Pbc
62ac 14           inc Rd
62ad 03           inc Pbc
62ae 0e08         ld Rc, N0x08
62b0 04           inc Rb
62b1 0e82         ld Rc, N0x82
62b3 1d           dec Re
62b4 03           inc Pbc
62b5 0a           ld a, (Pbc)
62b6 04           inc Rb
62b7 00           nop
62b8 82           Aadd a, Rd
62b9 1d           dec Re
62ba 060a         ld Rb, N0x0a
62bc 04           inc Rb
62bd 00           nop
62be 82           Aadd a, Rd
62bf 1d           dec Re
62c0 09           add Phl, Pbc
62c1 0a           ld a, (Pbc)
62c2 04           inc Rb
62c3 00           nop
62c4 82           Aadd a, Rd
62c5 1d           dec Re
62c6 0c           inc Rc
62c7 0a           ld a, (Pbc)
62c8 04           inc Rb
62c9 00           nop
62ca 41           ld Rb, Rc
62cb 1d           dec Re
62cc 03           inc Pbc
62cd 0d           dec Rc
62ce 04           inc Rb
62cf 14           inc Rd
62d0 24           inc Rh
62d1 05           dec Rb
62d2 08           ex af, af'
62d3 23           inc Phl
62d4 05           dec Rb
62d5 14           inc Rd
62d6 24           inc Rh
62d7 08           ex af, af'
62d8 08           ex af, af'
62d9 23           inc Phl
62da 08           ex af, af'
62db 14           inc Rd
62dc 24           inc Rh
62dd 0b           dec Pbc
62de 08           ex af, af'
62df 23           inc Phl
62e0 0b           dec Pbc
62e1 14           inc Rd
62e2 24           inc Rh
62e3 0e08         ld Rc, N0x08
62e5 23           inc Phl
62e6 0e25         ld Rc, N0x25
62e8 03           inc Pbc
62e9 14           inc Rd
62ea 04           inc Rb
62eb 2614         ld Rh, N0x14
62ed ff           rst W0x0038
62ee 07           rlca
62ef 4b           ld Rc, Re
62f0 0a           ld a, (Pbc)
62f1 14           inc Rd
62f2 02           ld (Pbc), a
62f3 07           rlca
62f4 08           ex af, af'
62f5 0a           ld a, (Pbc)
62f6 09           add Phl, Pbc
62f7 0f           rrca
62f8 14           inc Rd
62f9 19           add Phl, Pde
62fa 19           add Phl, Pde
62fb 19           add Phl, Pde
62fc 78           ld Ra, Rb
62fd 78           ld Ra, Rb
62fe 78           ld Ra, Rb
62ff 78           ld Ra, Rb
6300 78           ld Ra, Rb
6301 00           nop
6302 1008         djnz D$ + 10
6304 00           nop
6305 64           ld Rh, Rh
6306 2802         jr Cz, D$ + 4
6308 00           nop
6309 42           ld Rb, Rd
630a 01070c       ld Pbc, W0x0c07
630d 02           ld (Pbc), a
630e 42           ld Rb, Rd
630f 1c           inc Re
6310 05           dec Rb
6311 0b           dec Pbc
6312 02           ld (Pbc), a
6313 7a           ld Ra, Rd
6314 13           inc Pde
6315 15           dec Rd
6316 02           ld (Pbc), a
6317 02           ld (Pbc), a
6318 14           inc Rd
6319 04           inc Rb
631a 0614         ld Rb, N0x14
631c 04           inc Rb
631d 0e14         ld Rc, N0x14
631f 04           inc Rb
6320 1614         ld Rd, N0x14
6322 220414       ld (W0x1404), Phl
6325 220c14       ld (W0x140c), Phl
6328 221625       ld (W0x2516), Phl
632b 14           inc Rd
632c 03           inc Pbc
632d 04           inc Rb
632e 27           daa
632f 07           rlca
6330 ff           rst W0x0038
6331 08           ex af, af'
6332 14           inc Rd
6333 0a           ld a, (Pbc)
6334 14           inc Rd
6335 010304       ld Pbc, W0x0403
6338 05           dec Rb
6339 060a         ld Rb, N0x0a
633b 0f           rrca
633c 14           inc Rd
633d 14           inc Rd
633e 14           inc Rd
633f 78           ld Ra, Rb
6340 6e           ld Rl, R(hl)
6341 64           ld Rh, Rh
6342 5a           ld Re, Rd
6343 50           ld Rd, Rb
6344 00           nop
6345 1008         djnz D$ + 10
6347 00           nop
6348 5a           ld Re, Rd
6349 320200       ld (W0x0002), a
634c 14           inc Rd
634d 04           inc Rb
634e 0614         ld Rb, N0x14
6350 220414       ld (W0x1404), Phl
6353 220c04       ld (W0x040c), Phl
6356 00           nop
6357 05           dec Rb
6358 25           dec Rh
6359 14           inc Rd
635a 03           inc Pbc
635b 42           ld Rb, Rd
635c 01070c       ld Pbc, W0x0c07
635f 02           ld (Pbc), a
6360 42           ld Rb, Rd
6361 010f0c       ld Pbc, W0x0c0f
6364 02           ld (Pbc), a
6365 42           ld Rb, Rd
6366 1c           inc Re
6367 05           dec Rb
6368 0b           dec Pbc
6369 02           ld (Pbc), a
636a 42           ld Rb, Rd
636b 1c           inc Re
636c 0d           dec Rc
636d 0b           dec Pbc
636e 02           ld (Pbc), a
636f 43           ld Rb, Re
6370 0e11         ld Rc, N0x11
6372 08           ex af, af'
6373 02           ld (Pbc), a
6374 14           inc Rd
6375 0c           inc Rc
6376 1000         djnz D$ + 2
6378 0e12         ld Rc, N0x12
637a 14           inc Rd
637b 13           inc Pde
637c 12           ld (Pde), a
637d 41           ld Rb, Rc
637e 0e0f         ld Rc, N0x0f
6380 08           ex af, af'
6381 02           ld (Pbc), a
6382 ff           rst W0x0038
6383 09           add Phl, Pbc
6384 14           inc Rd
6385 05           dec Rb
6386 0a           ld a, (Pbc)
6387 64           ld Rh, Rh
6388 89           Aadc a, Rc
6389 8c           Aadc a, Rh
638a fb           ei
638b 33           inc Psp
638c 4b           ld Rc, Re
638d 4b           ld Rc, Re
638e 50           ld Rd, Rb
638f 55           ld Rd, Rl
6390 5a           ld Re, Rd
6391 96           Asub R(hl)
6392 96           Asub R(hl)
6393 82           Aadd a, Rd
6394 82           Aadd a, Rd
6395 78           ld Ra, Rb
6396 1014         djnz D$ + 22
6398 00           nop
6399 00           nop
639a f0           ret Cp
639b 78           ld Ra, Rb
639c 00           nop
639d 00           nop
639e 82           Aadd a, Rd
639f 05           dec Rb
63a0 0a           ld a, (Pbc)
63a1 0d           dec Rc
63a2 0d           dec Rc
63a3 00           nop
63a4 010c0a       ld Pbc, W0x0a0c
63a7 82           Aadd a, Rd
63a8 19           add Phl, Pde
63a9 0a           ld a, (Pbc)
63aa 0d           dec Rc
63ab 0d           dec Rc
63ac 00           nop
63ad 011f0a       ld Pbc, W0x0a1f
63b0 42           ld Rb, Rd
63b1 111209       ld Pde, W0x0912
63b4 02           ld (Pbc), a
63b5 40           ld Rb, Rb
63b6 111309       ld Pde, W0x0913
63b9 02           ld (Pbc), a
63ba 25           dec Rh
63bb 07           rlca
63bc 0c           inc Rc
63bd 04           inc Rb
63be 08           ex af, af'
63bf 0c           inc Rc
63c0 ff           rst W0x0038
63c1 0a           ld a, (Pbc)
63c2 14           inc Rd
63c3 19           add Phl, Pde
63c4 3c           inc Ra
63c5 00           nop
63c6 00           nop
63c7 00           nop
63c8 00           nop
63c9 00           nop
63ca 0c           inc Rc
63cb 0c           inc Rc
63cc 0c           inc Rc
63cd 0c           inc Rc
63ce 0c           inc Rc
63cf 96           Asub R(hl)
63d0 82           Aadd a, Rd
63d1 78           ld Ra, Rb
63d2 6e           ld Rl, R(hl)
63d3 64           ld Rh, Rh
63d4 00           nop
63d5 00           nop
63d6 00           nop
63d7 00           nop
63d8 00           nop
63d9 00           nop
63da 00           nop
63db 00           nop
63dc 25           dec Rh
63dd 0d           dec Rc
63de 03           inc Pbc
63df 04           inc Rb
63e0 27           daa
63e1 1654         ld Rd, N0x54
63e3 05           dec Rb
63e4 04           inc Rb
63e5 110354       ld Pde, W0x5403
63e8 15           dec Rd
63e9 04           inc Rb
63ea 110580       ld Pde, W0x8005
63ed 05           dec Rb
63ee 0b           dec Pbc
63ef 110308       ld Pde, W0x0803
63f2 c20104       jp Cnz, W0x0401
63f5 15           dec Rd
63f6 11000d       ld Pde, W0x0d00
63f9 04           inc Rb
63fa c20706       jp Cnz, W0x0607
63fd 0d           dec Rc
63fe 0d           dec Rc
63ff 00           nop
6400 0d           dec Rc
6401 06c2         ld Rb, N0xc2
6403 09           add Phl, Pbc
6404 08           ex af, af'
6405 09           add Phl, Pbc
6406 09           add Phl, Pbc
6407 00           nop
6408 0d           dec Rc
6409 08           ex af, af'
640a c20b0a       jp Cnz, W0x0a0b
640d 05           dec Rb
640e 05           dec Rb
640f 00           nop
6410 0d           dec Rc
6411 0a           ld a, (Pbc)
6412 82           Aadd a, Rd
6413 03           inc Pbc
6414 0603         ld Rb, N0x03
6416 0f           rrca
6417 08           ex af, af'
6418 00           nop
6419 04           inc Rb
641a 0654         ld Rb, N0x54
641c 04           inc Rb
641d 1004         djnz D$ + 6
641f 04           inc Rb
6420 ff           rst W0x0038
6421 0b           dec Pbc
6422 14           inc Rd
6423 320000       ld (W0x0000), a
6426 04           inc Rb
6427 66           ld Rh, R(hl)
6428 97           Asub Ra
6429 64           ld Rh, Rh
642a 0606         ld Rb, N0x06
642c 0606         ld Rb, N0x06
642e 0678         ld Rb, N0x78
6430 78           ld Ra, Rb
6431 96           Asub R(hl)
6432 96           Asub R(hl)
6433 f0           ret Cp
6434 00           nop
6435 1008         djnz D$ + 10
6437 00           nop
6438 64           ld Rh, Rh
6439 50           ld Rd, Rb
643a 02           ld (Pbc), a
643b 00           nop
643c 42           ld Rb, Rd
643d 0a           ld a, (Pbc)
643e 03           inc Pbc
643f 09           add Phl, Pbc
6440 04           inc Rb
6441 42           ld Rb, Rd
6442 14           inc Rd
6443 03           inc Pbc
6444 09           add Phl, Pbc
6445 04           inc Rb
6446 42           ld Rb, Rd
6447 1e03         ld Re, N0x03
6449 09           add Phl, Pbc
644a 04           inc Rb
644b 42           ld Rb, Rd
644c 09           add Phl, Pbc
644d 1609         ld Rd, N0x09
644f 00           nop
6450 42           ld Rb, Rd
6451 0c           inc Rc
6452 0f           rrca
6453 110242       ld Pde, W0x4202
6456 05           dec Rb
6457 0b           dec Pbc
6458 09           add Phl, Pbc
6459 02           ld (Pbc), a
645a 42           ld Rb, Rd
645b 0f           rrca
645c 0b           dec Pbc
645d 09           add Phl, Pbc
645e 02           ld (Pbc), a
645f 42           ld Rb, Rd
6460 19           add Phl, Pde
6461 0b           dec Pbc
6462 09           add Phl, Pbc
6463 02           ld (Pbc), a
6464 42           ld Rb, Rd
6465 1c           inc Re
6466 13           inc Pde
6467 0b           dec Pbc
6468 011404       ld Pbc, W0x0414
646b 03           inc Pbc
646c 14           inc Rd
646d 0e03         ld Rc, N0x03
646f 14           inc Rd
6470 1803         jr D$ + 5
6472 14           inc Rd
6473 220314       ld (W0x1403), Phl
6476 04           inc Rb
6477 1614         ld Rd, N0x14
6479 23           inc Phl
647a 15           dec Rd
647b 25           dec Rh
647c 14           inc Rd
647d 14           inc Rd
647e 04           inc Rb
647f 2611         ld Rh, N0x11
6481 ff           rst W0x0038
6482 0c           inc Rc
6483 14           inc Rd
6484 14           inc Rd
6485 00           nop
6486 00           nop
6487 3c           inc Ra
6488 02           ld (Pbc), a
6489 3b           dec Psp
648a 66           ld Rh, R(hl)
648b 13           inc Pde
648c 13           inc Pde
648d 0e10         ld Rc, N0x10
648f 15           dec Rd
6490 b4           Aor Rh
6491 aa           Axor Rd
6492 a0           Aand Rb
6493 a0           Aand Rb
6494 a0           Aand Rb
6495 00           nop
6496 1014         djnz D$ + 22
6498 00           nop
6499 3c           inc Ra
649a 320900       ld (W0x0009), a
649d 42           ld Rb, Rd
649e 0a           ld a, (Pbc)
649f 05           dec Rb
64a0 12           ld (Pde), a
64a1 04           inc Rb
64a2 42           ld Rb, Rd
64a3 0e05         ld Rc, N0x05
64a5 12           ld (Pde), a
64a6 04           inc Rb
64a7 42           ld Rb, Rd
64a8 12           ld (Pde), a
64a9 05           dec Rb
64aa 12           ld (Pde), a
64ab 04           inc Rb
64ac 42           ld Rb, Rd
64ad 1605         ld Rd, N0x05
64af 12           ld (Pde), a
64b0 04           inc Rb
64b1 42           ld Rb, Rd
64b2 02           ld (Pbc), a
64b3 060b         ld Rb, N0x0b
64b5 02           ld (Pbc), a
64b6 42           ld Rb, Rd
64b7 02           ld (Pbc), a
64b8 0a           ld a, (Pbc)
64b9 0b           dec Pbc
64ba 02           ld (Pbc), a
64bb 42           ld Rb, Rd
64bc 02           ld (Pbc), a
64bd 0e0f         ld Rc, N0x0f
64bf 02           ld (Pbc), a
64c0 42           ld Rb, Rd
64c1 02           ld (Pbc), a
64c2 12           ld (Pde), a
64c3 0b           dec Pbc
64c4 02           ld (Pbc), a
64c5 81           Aadd a, Rc
64c6 1e04         ld Re, N0x04
64c8 04           inc Rb
64c9 04           inc Rb
64ca 00           nop
64cb 08           ex af, af'
64cc 2005         jr Cnz, D$ + 7
64ce 81           Aadd a, Rc
64cf 1e09         ld Re, N0x09
64d1 04           inc Rb
64d2 04           inc Rb
64d3 00           nop
64d4 08           ex af, af'
64d5 200a         jr Cnz, D$ + 12
64d7 81           Aadd a, Rc
64d8 1e0e         ld Re, N0x0e
64da 04           inc Rb
64db 04           inc Rb
64dc 00           nop
64dd 08           ex af, af'
64de 200f         jr Cnz, D$ + 17
64e0 25           dec Rh
64e1 03           inc Pbc
64e2 14           inc Rd
64e3 04           inc Rb
64e4 27           daa
64e5 16ff         ld Rd, N0xff
64e7 0d           dec Rc
64e8 8c           Aadc a, Rh
64e9 05           dec Rb
64ea 08           ex af, af'
64eb 00           nop
64ec 010203       ld Pbc, W0x0302
64ef 04           inc Rb
64f0 32373c       ld (W0x3c37), a
64f3 46           ld Rb, R(hl)
64f4 50           ld Rd, Rb
64f5 a0           Aand Rb
64f6 9b           Asbc a, Re
64f7 96           Asub R(hl)
64f8 91           Asub Rc
64f9 8c           Aadc a, Rh
64fa 1000         djnz D$ + 2
64fc 00           nop
64fd 00           nop
64fe 2800         jr Cz, D$ + 2
6500 00           nop
6501 00           nop
6502 25           dec Rh
6503 12           ld (Pde), a
6504 03           inc Pbc
6505 04           inc Rb
6506 0a           ld a, (Pbc)
6507 03           inc Pbc
6508 3a1403       ld a, (W0x0314)
650b 42           ld Rb, Rd
650c 05           dec Rb
650d 12           ld (Pde), a
650e 1e02         ld Re, N0x02
6510 70           ld R(hl), Rb
6511 05           dec Rb
6512 13           inc Pde
6513 1e02         ld Re, N0x02
6515 50           ld Rd, Rb
6516 05           dec Rb
6517 14           inc Rd
6518 1e02         ld Re, N0x02
651a c1           pop Gbc
651b 05           dec Rb
651c 15           dec Rd
651d 1e02         ld Re, N0x02
651f ff           rst W0x0038
6520 0e14         ld Rc, N0x14
6522 0a           ld a, (Pbc)
6523 14           inc Rd
6524 00           nop
6525 00           nop
6526 00           nop
6527 00           nop
6528 00           nop
6529 1e23         ld Re, N0x23
652b 282a         jr Cz, D$ + 44
652d 2d           dec Rl
652e 96           Asub R(hl)
652f 91           Asub Rc
6530 8c           Aadc a, Rh
6531 87           Aadd a, Ra
6532 82           Aadd a, Rd
6533 1000         djnz D$ + 2
6535 00           nop
6536 00           nop
6537 00           nop
6538 00           nop
6539 00           nop
653a 00           nop
653b 81           Aadd a, Rc
653c 0a           ld a, (Pbc)
653d 0a           ld a, (Pbc)
653e 0d           dec Rc
653f 0d           dec Rc
6540 00           nop
6541 70           ld R(hl), Rb
6542 0b           dec Pbc
6543 0b           dec Pbc
6544 0c           inc Rc
6545 03           inc Pbc
6546 c1           pop Gbc
6547 0c           inc Rc
6548 0a           ld a, (Pbc)
6549 03           inc Pbc
654a 0d           dec Rc
654b c1           pop Gbc
654c 100a         djnz D$ + 12
654e 03           inc Pbc
654f 0d           dec Rc
6550 c1           pop Gbc
6551 14           inc Rd
6552 0a           ld a, (Pbc)
6553 03           inc Pbc
6554 0d           dec Rc
6555 50           ld Rd, Rb
6556 1608         ld Rd, N0x08
6558 0c           inc Rc
6559 02           ld (Pbc), a
655a 48           ld Rc, Rb
655b 1607         ld Rd, N0x07
655d 0c           inc Rc
655e 02           ld (Pbc), a
655f c1           pop Gbc
6560 17           rla
6561 0603         ld Rb, N0x03
6563 04           inc Rb
6564 c1           pop Gbc
6565 1b           dec Pde
6566 0603         ld Rb, N0x03
6568 04           inc Rb
6569 c1           pop Gbc
656a 1f           rra
656b 0603         ld Rb, N0x03
656d 04           inc Rb
656e 25           dec Rh
656f 03           inc Pbc
6570 03           inc Pbc
6571 04           inc Rb
6572 27           daa
6573 14           inc Rd
6574 ff           rst W0x0038
6575 0f           rrca
6576 08           ex af, af'
6577 0a           ld a, (Pbc)
6578 14           inc Rd
6579 011d1e       ld Pbc, W0x1e1d
657c 1f           rra
657d 200f         jr Cnz, D$ + 17
657f 14           inc Rd
6580 14           inc Rd
6581 19           add Phl, Pde
6582 1e78         ld Re, N0x78
6584 78           ld Ra, Rb
6585 78           ld Ra, Rb
6586 78           ld Ra, Rb
6587 8c           Aadc a, Rh
6588 00           nop
6589 1008         djnz D$ + 10
658b 00           nop
658c 64           ld Rh, Rh
658d 50           ld Rd, Rb
658e 02           ld (Pbc), a
658f 00           nop
6590 42           ld Rb, Rd
6591 02           ld (Pbc), a
6592 04           inc Rb
6593 0a           ld a, (Pbc)
6594 03           inc Pbc
6595 42           ld Rb, Rd
6596 0f           rrca
6597 0d           dec Rc
6598 0a           ld a, (Pbc)
6599 01410c       ld Pbc, W0x0c41
659c 0e03         ld Rc, N0x03
659e 02           ld (Pbc), a
659f 43           ld Rb, Re
65a0 0c           inc Rc
65a1 0f           rrca
65a2 03           inc Pbc
65a3 02           ld (Pbc), a
65a4 04           inc Rb
65a5 14           inc Rd
65a6 1625         ld Rd, N0x25
65a8 14           inc Rd
65a9 03           inc Pbc
65aa ff           rst W0x0038
65ab 1014         djnz D$ + 22
65ad 0a           ld a, (Pbc)
65ae 14           inc Rd
65af 017881       ld Pbc, W0x8178
65b2 7e           ld Ra, R(hl)
65b3 7b           ld Ra, Re
65b4 0c           inc Rc
65b5 0f           rrca
65b6 0f           rrca
65b7 0f           rrca
65b8 0c           inc Rc
65b9 96           Asub R(hl)
65ba 96           Asub R(hl)
65bb 96           Asub R(hl)
65bc 96           Asub R(hl)
65bd 96           Asub R(hl)
65be 1000         djnz D$ + 2
65c0 00           nop
65c1 00           nop
65c2 320000       ld (W0x0000), a
65c5 00           nop
65c6 25           dec Rh
65c7 010304       ld Pbc, W0x0403
65ca 27           daa
65cb 04           inc Rb
65cc 81           Aadd a, Rc
65cd 08           ex af, af'
65ce 13           inc Pde
65cf 04           inc Rb
65d0 04           inc Rb
65d1 00           nop
65d2 08           ex af, af'
65d3 0a           ld a, (Pbc)
65d4 14           inc Rd
65d5 c2070a       jp Cnz, W0x0a07
65d8 0608         ld Rb, N0x08
65da 43           ld Rb, Re
65db 07           rlca
65dc 0a           ld a, (Pbc)
65dd 0602         ld Rb, N0x02
65df 81           Aadd a, Rc
65e0 1013         djnz D$ + 21
65e2 04           inc Rb
65e3 04           inc Rb
65e4 00           nop
65e5 08           ex af, af'
65e6 12           ld (Pde), a
65e7 14           inc Rd
65e8 c20f0a       jp Cnz, W0x0a0f
65eb 0608         ld Rb, N0x08
65ed 43           ld Rb, Re
65ee 0f           rrca
65ef 0a           ld a, (Pbc)
65f0 0602         ld Rb, N0x02
65f2 81           Aadd a, Rc
65f3 1813         jr D$ + 21
65f5 04           inc Rb
65f6 04           inc Rb
65f7 00           nop
65f8 08           ex af, af'
65f9 1a           ld a, (Pde)
65fa 14           inc Rd
65fb 81           Aadd a, Rc
65fc 2013         jr Cnz, D$ + 21
65fe 04           inc Rb
65ff 04           inc Rb
6600 00           nop
6601 08           ex af, af'
6602 2214ff       ld (W0xff14), Phl
6605 11141e       ld Pde, W0x1e14
6608 00           nop
6609 0a           ld a, (Pbc)
660a 0b           dec Pbc
660b 0c           inc Rc
660c 0d           dec Rc
660d 0e06         ld Rc, N0x06
660f 0606         ld Rb, N0x06
6611 0606         ld Rb, N0x06
6613 0c           inc Rc
6614 0c           inc Rc
6615 0c           inc Rc
6616 0c           inc Rc
6617 0c           inc Rc
6618 00           nop
6619 14           inc Rd
661a 00           nop
661b 00           nop
661c ff           rst W0x0038
661d 09           add Phl, Pbc
661e 00           nop
661f 00           nop
6620 87           Aadd a, Ra
6621 00           nop
6622 02           ld (Pbc), a
6623 2816         jr Cz, D$ + 24
6625 07           rlca
6626 87           Aadd a, Ra
6627 00           nop
6628 02           ld (Pbc), a
6629 14           inc Rd
662a 0c           inc Rc
662b 00           nop
662c 320a0c       ld (W0x0c0a), a
662f 100a         djnz D$ + 12
6631 04           inc Rb
6632 010a05       ld Pbc, W0x050a
6635 25           dec Rh
6636 03           inc Pbc
6637 05           dec Rb
6638 04           inc Rb
6639 12           ld (Pde), a
663a 0c           inc Rc
663b ff           rst W0x0038
663c 12           ld (Pde), a
663d 14           inc Rd
663e 0a           ld a, (Pbc)
663f 00           nop
6640 0a           ld a, (Pbc)
6641 0b           dec Pbc
6642 0c           inc Rc
6643 0d           dec Rc
6644 0e10         ld Rc, N0x10
6646 1010         djnz D$ + 18
6648 1010         djnz D$ + 18
664a 0f           rrca
664b 0f           rrca
664c 0f           rrca
664d 0f           rrca
664e 0f           rrca
664f 00           nop
6650 00           nop
6651 00           nop
6652 00           nop
6653 00           nop
6654 00           nop
6655 00           nop
6656 00           nop
6657 87           Aadd a, Ra
6658 00           nop
6659 02           ld (Pbc), a
665a 2816         jr Cz, D$ + 24
665c 07           rlca
665d 87           Aadd a, Ra
665e 00           nop
665f 02           ld (Pbc), a
6660 14           inc Rd
6661 0c           inc Rc
6662 015001       ld Pbc, W0x0150
6665 03           inc Pbc
6666 09           add Phl, Pbc
6667 03           inc Pbc
6668 48           ld Rc, Rb
6669 02           ld (Pbc), a
666a 03           inc Pbc
666b 08           ex af, af'
666c 03           inc Pbc
666d 54           ld Rd, Rh
666e 010508       ld Pbc, W0x0805
6671 03           inc Pbc
6672 50           ld Rd, Rb
6673 010607       ld Pbc, W0x0706
6676 03           inc Pbc
6677 50           ld Rd, Rb
6678 12           ld (Pde), a
6679 03           inc Pbc
667a 09           add Phl, Pbc
667b 05           dec Rb
667c 54           ld Rd, Rh
667d 12           ld (Pde), a
667e 05           dec Rb
667f 08           ex af, af'
6680 05           dec Rb
6681 50           ld Rd, Rb
6682 12           ld (Pde), a
6683 0607         ld Rb, N0x07
6685 05           dec Rb
6686 25           dec Rh
6687 010404       ld Pbc, W0x0404
668a 12           ld (Pde), a
668b 04           inc Rb
668c ff           rst W0x0038
668d 13           inc Pde
668e 04           inc Rb
668f 0a           ld a, (Pbc)
6690 00           nop
6691 0a           ld a, (Pbc)
6692 0b           dec Pbc
6693 0c           inc Rc
6694 0d           dec Rc
6695 0e0e         ld Rc, N0x0e
6697 0e0e         ld Rc, N0x0e
6699 0e0e         ld Rc, N0x0e
669b 14           inc Rd
669c 14           inc Rd
669d 14           inc Rd
669e 14           inc Rd
669f 14           inc Rd
66a0 00           nop
66a1 00           nop
66a2 00           nop
66a3 00           nop
66a4 00           nop
66a5 00           nop
66a6 00           nop
66a7 00           nop
66a8 87           Aadd a, Ra
66a9 00           nop
66aa 02           ld (Pbc), a
66ab 2816         jr Cz, D$ + 24
66ad 07           rlca
66ae 87           Aadd a, Ra
66af 00           nop
66b0 02           ld (Pbc), a
66b1 14           inc Rd
66b2 0c           inc Rc
66b3 00           nop
66b4 54           ld Rd, Rh
66b5 010c12       ld Pbc, W0x120c
66b8 02           ld (Pbc), a
66b9 88           Aadc a, Rb
66ba 0f           rrca
66bb 09           add Phl, Pbc
66bc 04           inc Rb
66bd 04           inc Rb
66be 08           ex af, af'
66bf 25           dec Rh
66c0 08           ex af, af'
66c1 03           inc Pbc
66c2 04           inc Rb
66c3 12           ld (Pde), a
66c4 07           rlca
66c5 ff           rst W0x0038
66c6 14           inc Rd
66c7 03           inc Pbc
66c8 1e00         ld Re, N0x00
66ca 00           nop
66cb 00           nop
66cc 00           nop
66cd 00           nop
66ce 00           nop
66cf 0606         ld Rb, N0x06
66d1 0606         ld Rb, N0x06
66d3 0614         ld Rb, N0x14
66d5 14           inc Rd
66d6 14           inc Rd
66d7 14           inc Rd
66d8 14           inc Rd
66d9 00           nop
66da 00           nop
66db 00           nop
66dc 00           nop
66dd 00           nop
66de 00           nop
66df 00           nop
66e0 00           nop
66e1 87           Aadd a, Ra
66e2 00           nop
66e3 02           ld (Pbc), a
66e4 2816         jr Cz, D$ + 24
66e6 07           rlca
66e7 87           Aadd a, Ra
66e8 00           nop
66e9 02           ld (Pbc), a
66ea 14           inc Rd
66eb 0c           inc Rc
66ec 01d00b       ld Pbc, W0x0bd0
66ef 03           inc Pbc
66f0 03           inc Pbc
66f1 02           ld (Pbc), a
66f2 80           Aadd a, Rb
66f3 0b           dec Pbc
66f4 07           rlca
66f5 03           inc Pbc
66f6 0600         ld Rb, N0x00
66f8 43           ld Rb, Re
66f9 0b           dec Pbc
66fa 0603         ld Rb, N0x03
66fc 02           ld (Pbc), a
66fd 43           ld Rb, Re
66fe 0b           dec Pbc
66ff 0a           ld a, (Pbc)
6700 03           inc Pbc
6701 02           ld (Pbc), a
6702 50           ld Rd, Rb
6703 08           ex af, af'
6704 07           rlca
6705 03           inc Pbc
6706 03           inc Pbc
6707 25           dec Rh
6708 03           inc Pbc
6709 03           inc Pbc
670a 04           inc Rb
670b 09           add Phl, Pbc
670c 0a           ld a, (Pbc)
670d ff           rst W0x0038
670e ff           rst W0x0038
670f ff           rst W0x0038
6710 ff           rst W0x0038
6711 1e77         ld Re, N0x77
6713 2d           dec Rl
6714 97           Asub Ra
6715 4f           ld Rc, Ra
6716 2d           dec Rl
6717 47           ld Rb, Ra
6718 3e1b         ld Ra, N0x1b
671a 4f           ld Rc, Ra
671b 1eb7         ld Re, N0xb7
671d 1d           dec Re
671e 27           daa
671f 4f           ld Rc, Ra
6720 6d           ld Rl, Rl
6721 17           rla
6722 4d           ld Rc, Rl
6723 3b           dec Psp
6724 4f           ld Rc, Ra
6725 1d           dec Re
6726 1b           dec Pde
6727 47           ld Rb, Ra
6728 3b           dec Psp
6729 4f           ld Rc, Ra
672a 4e           ld Rc, R(hl)
672b 5b           ld Re, Re
672c 3e5b         ld Ra, N0x5b
672e 4d           ld Rc, Rl
672f 3b           dec Psp
6730 5f           ld Re, Ra
6731 3eab         ld Ra, N0xab
6733 1e3b         ld Re, N0x3b
6735 1d           dec Re
6736 6b           ld Rl, Re
6737 4d           ld Rc, Rl
6738 17           rla
6739 4f           ld Rc, Ra
673a 3d           dec Ra
673b 47           ld Rb, Ra
673c 4d           ld Rc, Rl
673d 4b           ld Rc, Re
673e 2e27         ld Rl, N0x27
6740 3ea7         ld Ra, N0xa7
6742 a7           Aand Ra
6743 1d           dec Re
6744 47           ld Rb, Ra
6745 1d           dec Re
6746 47           ld Rb, Ra
6747 2d           dec Rl
6748 5f           ld Re, Ra
6749 57           ld Rd, Ra
674a 4e           ld Rc, R(hl)
674b 57           ld Rd, Ra
674c 6f           ld Rl, Ra
674d 1d           dec Re
674e 00           nop
674f 90           Asub Rb
6750 b0           Aor Rb
6751 b8           Acp Rb
6752 b0           Aor Rb
6753 e0           ret Cpo
6754 b0           Aor Rb
6755 08           ex af, af'
6756 b1           Aor Rc
6757 30b1         jr Cnc, D$ - 77
6759 58           ld Re, Rb
675a b1           Aor Rc
675b 80           Aadd a, Rb
675c b1           Aor Rc
675d a8           Axor Rb
675e b1           Aor Rc
675f d0           ret Cnc
6760 b1           Aor Rc
6761 f8           ret Cm
6762 b1           Aor Rc
6763 20b2         jr Cnz, D$ - 76
6765 48           ld Rc, Rb
6766 b2           Aor Rd
6767 70           ld R(hl), Rb
6768 b2           Aor Rd
6769 98           Asbc a, Rb
676a b2           Aor Rd
676b c0           ret Cnz
676c b2           Aor Rd
676d e8           ret Cpe
676e b2           Aor Rd
676f 10b3         djnz D$ - 75
6771 38b3         jr Cc, D$ - 75
6773 60           ld Rh, Rb
6774 b3           Aor Re
6775 88           Aadc a, Rb
6776 b3           Aor Re
6777 b0           Aor Rb
6778 b3           Aor Re
6779 d8           ret Cc
677a b3           Aor Re
677b 00           nop
677c b4           Aor Rh
677d 28b4         jr Cz, D$ - 74
677f 30a1         jr Cnc, D$ - 93
6781 d0           ret Cnc
6782 a1           Aand Rc
6783 70           ld R(hl), Rb
6784 a2           Aand Rd
6785 10a3         djnz D$ - 91
6787 b0           Aor Rb
6788 a3           Aand Re
6789 50           ld Rd, Rb
678a a4           Aand Rh
678b f0           ret Cp
678c a4           Aand Rh
678d 90           Asub Rb
678e a5           Aand Rl
678f 30a6         jr Cnc, D$ - 88
6791 d0           ret Cnc
6792 a6           Aand R(hl)
6793 70           ld R(hl), Rb
6794 a7           Aand Ra
6795 10a8         djnz D$ - 86
6797 b0           Aor Rb
6798 a8           Axor Rb
6799 50           ld Rd, Rb
679a a9           Axor Rc
679b f0           ret Cp
679c a9           Axor Rc
679d 90           Asub Rb
679e aa           Axor Rd
679f 30ab         jr Cnc, D$ - 83
67a1 d0           ret Cnc
67a2 ab           Axor Re
67a3 70           ld R(hl), Rb
67a4 ac           Axor Rh
67a5 10ad         djnz D$ - 81
67a7 b0           Aor Rb
67a8 ad           Axor Rl
67a9 50           ld Rd, Rb
67aa ae           Axor R(hl)
67ab 40           ld Rb, Rb
67ac 40           ld Rb, Rb
67ad 40           ld Rb, Rb
67ae 40           ld Rb, Rb
67af 40           ld Rb, Rb
67b0 40           ld Rb, Rb
67b1 40           ld Rb, Rb
67b2 40           ld Rb, Rb
67b3 40           ld Rb, Rb
67b4 40           ld Rb, Rb
67b5 40           ld Rb, Rb
67b6 40           ld Rb, Rb
67b7 40           ld Rb, Rb
67b8 40           ld Rb, Rb
67b9 40           ld Rb, Rb
67ba 40           ld Rb, Rb
67bb 40           ld Rb, Rb
67bc 40           ld Rb, Rb
67bd 40           ld Rb, Rb
67be 40           ld Rb, Rb
67bf 314050       ld Psp, W0x5040
67c2 4c           ld Rc, Rh
67c3 41           ld Rb, Rc
67c4 59           ld Re, Rc
67c5 45           ld Rb, Rl
67c6 52           ld Rd, Rd
67c7 40           ld Rb, Rb
67c8 40           ld Rb, Rb
67c9 4b           ld Rc, Re
67ca 45           ld Rb, Rl
67cb 59           ld Re, Rc
67cc 42           ld Rb, Rd
67cd 4f           ld Rc, Ra
67ce 41           ld Rb, Rc
67cf 52           ld Rd, Rd
67d0 44           ld Rb, Rh
67d1 40           ld Rb, Rb
67d2 40           ld Rb, Rb
67d3 314050       ld Psp, W0x5040
67d6 4c           ld Rc, Rh
67d7 41           ld Rb, Rc
67d8 59           ld Re, Rc
67d9 45           ld Rb, Rl
67da 52           ld Rd, Rd
67db 40           ld Rb, Rb
67dc 40           ld Rb, Rb
67dd 31404a       ld Psp, W0x4a40
67e0 4f           ld Rc, Ra
67e1 59           ld Re, Rc
67e2 53           ld Rd, Re
67e3 54           ld Rd, Rh
67e4 49           ld Rc, Rc
67e5 43           ld Rb, Re
67e6 4b           ld Rc, Re
67e7 324050       ld (W0x5040), a
67ea 4c           ld Rc, Rh
67eb 41           ld Rb, Rc
67ec 59           ld Re, Rc
67ed 45           ld Rb, Rl
67ee 52           ld Rd, Rd
67ef 40           ld Rb, Rb
67f0 40           ld Rb, Rb
67f1 4b           ld Rc, Re
67f2 45           ld Rb, Rl
67f3 59           ld Re, Rc
67f4 42           ld Rb, Rd
67f5 4f           ld Rc, Ra
67f6 41           ld Rb, Rc
67f7 52           ld Rd, Rd
67f8 44           ld Rb, Rh
67f9 40           ld Rb, Rb
67fa 40           ld Rb, Rb
67fb 324050       ld (W0x5040), a
67fe 4c           ld Rc, Rh
67ff 41           ld Rb, Rc
6800 59           ld Re, Rc
6801 45           ld Rb, Rl
6802 52           ld Rd, Rd
6803 40           ld Rb, Rb
6804 40           ld Rb, Rb
6805 31404a       ld Psp, W0x4a40
6808 4f           ld Rc, Ra
6809 59           ld Re, Rc
680a 53           ld Rd, Re
680b 54           ld Rd, Rh
680c 49           ld Rc, Rc
680d 43           ld Rb, Re
680e 4b           ld Rc, Re
680f 324050       ld (W0x5040), a
6812 4c           ld Rc, Rh
6813 41           ld Rb, Rc
6814 59           ld Re, Rc
6815 45           ld Rb, Rl
6816 52           ld Rd, Rd
6817 40           ld Rb, Rb
6818 40           ld Rb, Rb
6819 32404a       ld (W0x4a40), a
681c 4f           ld Rc, Ra
681d 59           ld Re, Rc
681e 53           ld Rd, Re
681f 54           ld Rd, Rh
6820 49           ld Rc, Rc
6821 43           ld Rb, Re
6822 4b           ld Rc, Re
6823 40           ld Rb, Rb
6824 40           ld Rb, Rb
6825 42           ld Rb, Rd
6826 59           ld Re, Rc
6827 40           ld Rb, Rb
6828 40           ld Rb, Rb
6829 46           ld Rb, R(hl)
682a 4d           ld Rc, Rl
682b 52           ld Rd, Rd
682c 40           ld Rb, Rb
682d 4d           ld Rc, Rl
682e 45           ld Rb, Rl
682f 4d           ld Rc, Rl
6830 42           ld Rb, Rd
6831 45           ld Rb, Rl
6832 52           ld Rd, Rd
6833 40           ld Rb, Rb
6834 4f           ld Rc, Ra
6835 4e           ld Rc, R(hl)
6836 45           ld Rb, Rl
6837 40           ld Rb, Rb
6838 40           ld Rb, Rb
6839 43           ld Rb, Re
683a 4f           ld Rc, Ra
683b 50           ld Rd, Rb
683c 59           ld Re, Rc
683d 52           ld Rd, Rd
683e 49           ld Rc, Rc
683f 47           ld Rb, Ra
6840 48           ld Rc, Rb
6841 54           ld Rd, Rh
6842 40           ld Rb, Rb
6843 313938       ld Psp, W0x3839
6846 3640         ld R(hl), N0x40
6848 40           ld Rb, Rb
6849 40           ld Rb, Rb
684a 40           ld Rb, Rb
684b 40           ld Rb, Rb
684c 3030         jr Cnc, D$ + 50
684e 3030         jr Cnc, D$ + 50
6850 3030         jr Cnc, D$ + 50
6852 40           ld Rb, Rb
6853 4c           ld Rc, Rh
6854 41           ld Rb, Rc
6855 53           ld Rd, Re
6856 54           ld Rd, Rh
6857 40           ld Rb, Rb
6858 3030         jr Cnc, D$ + 50
685a 3030         jr Cnc, D$ + 50
685c 3030         jr Cnc, D$ + 50
685e 40           ld Rb, Rb
685f 40           ld Rb, Rb
6860 3030         jr Cnc, D$ + 50
6862 3030         jr Cnc, D$ + 50
6864 3030         jr Cnc, D$ + 50
6866 40           ld Rb, Rb
6867 48           ld Rc, Rb
6868 49           ld Rc, Rc
6869 47           ld Rb, Ra
686a 48           ld Rc, Rb
686b 40           ld Rb, Rb
686c 3030         jr Cnc, D$ + 50
686e 3030         jr Cnc, D$ + 50
6870 3030         jr Cnc, D$ + 50
6872 40           ld Rb, Rb
6873 40           ld Rb, Rb
6874 47           ld Rb, Ra
6875 40           ld Rb, Rb
6876 41           ld Rb, Rc
6877 40           ld Rb, Rb
6878 4d           ld Rc, Rl
6879 40           ld Rb, Rb
687a 45           ld Rb, Rl
687b 40           ld Rb, Rb
687c 40           ld Rb, Rb
687d 40           ld Rb, Rb
687e 4f           ld Rc, Ra
687f 40           ld Rb, Rb
6880 56           ld Rd, R(hl)
6881 40           ld Rb, Rb
6882 45           ld Rb, Rl
6883 40           ld Rb, Rb
6884 52           ld Rd, Rd
6885 40           ld Rb, Rb
6886 40           ld Rb, Rb
6887 50           ld Rd, Rb
6888 4c           ld Rc, Rh
6889 41           ld Rb, Rc
688a 59           ld Re, Rc
688b 45           ld Rb, Rl
688c 52           ld Rd, Rd
688d 40           ld Rb, Rb
688e 312c40       ld Psp, W0x402c
6891 33           inc Psp
6892 40           ld Rb, Rb
6893 4d           ld Rc, Rl
6894 45           ld Rb, Rl
6895 4e           ld Rc, R(hl)
6896 40           ld Rb, Rb
6897 41           ld Rb, Rc
6898 2f           cpl
6899 3040         jr Cnc, D$ + 66
689b 40           ld Rb, Rb
689c 50           ld Rd, Rb
689d 4c           ld Rc, Rh
689e 59           ld Re, Rc
689f 52           ld Rd, Rd
68a0 40           ld Rb, Rb
68a1 314040       ld Psp, W0x4040
68a4 40           ld Rb, Rb
68a5 40           ld Rb, Rb
68a6 40           ld Rb, Rb
68a7 40           ld Rb, Rb
68a8 50           ld Rd, Rb
68a9 4c           ld Rc, Rh
68aa 59           ld Re, Rc
68ab 52           ld Rd, Rd
68ac 40           ld Rb, Rb
68ad 324040       ld (W0x4040), a
68b0 40           ld Rb, Rb
68b1 40           ld Rb, Rb
68b2 40           ld Rb, Rb
68b3 4f           ld Rc, Ra
68b4 55           ld Rd, Rl
68b5 54           ld Rd, Rh
68b6 40           ld Rb, Rb
68b7 4f           ld Rc, Ra
68b8 46           ld Rb, R(hl)
68b9 40           ld Rb, Rb
68ba 54           ld Rd, Rh
68bb 49           ld Rc, Rc
68bc 4d           ld Rc, Rl
68bd 45           ld Rb, Rl
68be 40           ld Rb, Rb
68bf 40           ld Rb, Rb
68c0 40           ld Rb, Rb
68c1 40           ld Rb, Rb
68c2 40           ld Rb, Rb
68c3 40           ld Rb, Rb
68c4 42           ld Rb, Rd
68c5 40           ld Rb, Rb
68c6 4f           ld Rc, Ra
68c7 40           ld Rb, Rb
68c8 4e           ld Rc, R(hl)
68c9 40           ld Rb, Rb
68ca 55           ld Rd, Rl
68cb 40           ld Rb, Rb
68cc 53           ld Rd, Re
68cd 40           ld Rb, Rb
68ce 40           ld Rb, Rb
68cf 4c           ld Rc, Rh
68d0 40           ld Rb, Rb
68d1 49           ld Rc, Rc
68d2 40           ld Rb, Rb
68d3 46           ld Rb, R(hl)
68d4 40           ld Rb, Rb
68d5 45           ld Rb, Rl
68d6 40           ld Rb, Rb
68d7 40           ld Rb, Rb
68d8 43           ld Rb, Re
68d9 41           ld Rb, Rc
68da 56           ld Rd, R(hl)
68db 45           ld Rb, Rl
68dc 3a4041       ld a, (W0x4140)
68df 40           ld Rb, Rb
68e0 40           ld Rb, Rb
68e1 4c           ld Rc, Rh
68e2 45           ld Rb, Rl
68e3 56           ld Rd, R(hl)
68e4 45           ld Rb, Rl
68e5 4c           ld Rc, Rh
68e6 3a4031       ld a, (W0x3140)
68e9 40           ld Rb, Rb
68ea 40           ld Rb, Rb
68eb 40           ld Rb, Rb
68ec 53           ld Rd, Re
68ed 50           ld Rd, Rb
68ee 41           ld Rb, Rc
68ef 43           ld Rb, Re
68f0 45           ld Rb, Rl
68f1 42           ld Rb, Rd
68f2 41           ld Rb, Rc
68f3 52           ld Rd, Rd
68f4 40           ld Rb, Rb
68f5 54           ld Rd, Rh
68f6 4f           ld Rc, Ra
68f7 40           ld Rb, Rb
68f8 52           ld Rd, Rd
68f9 45           ld Rb, Rl
68fa 53           ld Rd, Re
68fb 55           ld Rd, Rl
68fc 4d           ld Rc, Rl
68fd 45           ld Rb, Rl
68fe 40           ld Rb, Rb
68ff 50           ld Rd, Rb
6900 52           ld Rd, Rd
6901 45           ld Rb, Rl
6902 53           ld Rd, Re
6903 53           ld Rd, Re
6904 40           ld Rb, Rb
6905 42           ld Rb, Rd
6906 55           ld Rd, Rl
6907 54           ld Rd, Rh
6908 54           ld Rd, Rh
6909 4f           ld Rc, Ra
690a 4e           ld Rc, R(hl)
690b 40           ld Rb, Rb
690c 54           ld Rd, Rh
690d 4f           ld Rc, Ra
690e 40           ld Rb, Rb
690f 50           ld Rd, Rb
6910 4c           ld Rc, Rh
6911 41           ld Rb, Rc
6912 59           ld Re, Rc
6913 00           nop
6914 5e           ld Re, R(hl)
6915 ff           rst W0x0038
6916 0160ff       ld Pbc, W0xff60
6919 02           ld (Pbc), a
691a 62           ld Rh, Rd
691b ff           rst W0x0038
691c 28fe         jr Cz, D$ + 0
691e ff           rst W0x0038
691f 27           daa
6920 fcff29       call Cm, W0x29ff
6923 00           nop
6924 00           nop
6925 2a0200       ld Phl, (W0x0002)
6928 2b           dec Phl
6929 04           inc Rb
692a 00           nop
692b 50           ld Rd, Rb
692c 9e           Asbc a, R(hl)
692d 00           nop
692e 51           ld Rd, Rc
692f a0           Aand Rb
6930 00           nop
6931 52           ld Rd, Rd
6932 a2           Aand Rd
6933 00           nop
6934 78           ld Ra, Rb
6935 3e01         ld Ra, N0x01
6937 79           ld Ra, Rc
6938 40           ld Rb, Rb
6939 017a42       ld Pbc, W0x427a
693c 014e40       ld Pbc, W0x404e
693f 47           ld Rb, Ra
6940 4d           ld Rc, Rl
6941 57           ld Rd, Ra
6942 5e           ld Re, R(hl)
6943 56           ld Rd, R(hl)
6944 4d           ld Rc, Rl
6945 55           ld Rd, Rl
6946 55           ld Rd, Rl
6947 45           ld Rb, Rl
6948 58           ld Re, Rb
6949 4f           ld Rc, Ra
694a 57           ld Rd, Ra
694b 47           ld Rb, Ra
694c 55           ld Rd, Rl
694d 4d           ld Rc, Rl
694e 58           ld Re, Rb
694f 4f           ld Rc, Ra
6950 57           ld Rd, Ra
6951 56           ld Rd, R(hl)
6952 4f           ld Rc, Ra
6953 57           ld Rd, Ra
6954 58           ld Re, Rb
6955 45           ld Rb, Rl
6956 57           ld Rd, Ra
6957 4e           ld Rc, R(hl)
6958 57           ld Rd, Ra
6959 4e           ld Rc, R(hl)
695a 47           ld Rb, Ra
695b 58           ld Re, Rb
695c 4e           ld Rc, R(hl)
695d 5e           ld Re, R(hl)
695e 45           ld Rb, Rl
695f 4d           ld Rc, Rl
6960 47           ld Rb, Ra
6961 4d           ld Rc, Rl
6962 4e           ld Rc, R(hl)
6963 56           ld Rd, R(hl)
6964 40           ld Rb, Rb
6965 4e           ld Rc, R(hl)
6966 58           ld Re, Rb
6967 45           ld Rb, Rl
6968 55           ld Rd, Rl
6969 58           ld Re, Rb
696a 4f           ld Rc, Ra
696b 57           ld Rd, Ra
696c 4d           ld Rc, Rl
696d 57           ld Rd, Ra
696e 4d           ld Rc, Rl
696f 54           ld Rd, Rh
6970 55           ld Rd, Rl
6971 40           ld Rb, Rb
6972 57           ld Rd, Ra
6973 4d           ld Rc, Rl
6974 45           ld Rb, Rl
6975 54           ld Rd, Rh
6976 59           ld Re, Rc
6977 56           ld Rd, R(hl)
6978 4e           ld Rc, R(hl)
6979 1622         ld Rd, N0x22
697b 1d           dec Re
697c 2622         ld Rh, N0x22
697e 29           add Phl, Phl
697f 25           dec Rh
6980 2e14         ld Rl, N0x14
6982 24           inc Rh
6983 1f           rra
6984 27           daa
6985 2029         jr Cnz, D$ + 43
6987 27           daa
6988 3012         jr Cnc, D$ + 20
698a 2a122c       ld Phl, (W0x2c12)
698d 1e2e         ld Re, N0x2e
698f 12           ld (Pde), a
6990 31202c       ld Psp, W0x2c20
6993 33           inc Psp
6994 37           scf
6995 212d31       ld Phl, W0x312d
6998 35           dec R(hl)
6999 1622         ld Rd, N0x22
699b 162e         ld Rd, N0x2e
699d 161d         ld Rd, N0x1d
699f 1624         ld Rd, N0x24
69a1 14           inc Rd
69a2 2014         jr Cnz, D$ + 22
69a4 3014         jr Cnc, D$ + 22
69a6 24           inc Rh
69a7 14           inc Rd
69a8 2016         jr Cnz, D$ + 24
69aa 22162e       ld (W0x2e16), Phl
69ad 161d         ld Rd, N0x1d
69af 1624         ld Rd, N0x24
69b1 1e2a         ld Re, N0x2a
69b3 1e3a         ld Re, N0x3a
69b5 1e2e         ld Re, N0x2e
69b7 1e2a         ld Re, N0x2a
69b9 14           inc Rd
69ba 2014         jr Cnz, D$ + 22
69bc 2c           inc Rl
69bd 14           inc Rd
69be 1b           dec Pde
69bf 14           inc Rd
69c0 221c28       ld (W0x281c), Phl
69c3 1c           inc Re
69c4 381c         jr Cc, D$ + 30
69c6 2c           inc Rl
69c7 1c           inc Re
69c8 2811         jr Cz, D$ + 19
69ca 1d           dec Re
69cb 29           add Phl, Phl
69cc 2d           dec Rl
69cd 111f29       ld Pde, W0x291f
69d0 2e0f         ld Rl, N0x0f
69d2 27           daa
69d3 0f           rrca
69d4 27           daa
69d5 1633         ld Rd, N0x33
69d7 1627         ld Rd, N0x27
69d9 162e         ld Rd, N0x2e
69db 162e         ld Rd, N0x2e
69dd 162e         ld Rd, N0x2e
69df 162e         ld Rd, N0x2e
69e1 222e22       ld (W0x222e), Phl
69e4 2e16         ld Rl, N0x16
69e6 2e16         ld Rl, N0x16
69e8 2e14         ld Rl, N0x14
69ea 2e14         ld Rl, N0x14
69ec 2e14         ld Rl, N0x14
69ee 2e14         ld Rl, N0x14
69f0 2e20         ld Rl, N0x20
69f2 2e20         ld Rl, N0x20
69f4 2e14         ld Rl, N0x14
69f6 2e14         ld Rl, N0x14
69f8 2e16         ld Rl, N0x16
69fa 2e32         ld Rl, N0x32
69fc 2e16         ld Rl, N0x16
69fe 2e33         ld Rl, N0x33
6a00 2e22         ld Rl, N0x22
6a02 2e32         ld Rl, N0x32
6a04 2e16         ld Rl, N0x16
6a06 2e33         ld Rl, N0x33
6a08 2e14         ld Rl, N0x14
6a0a 2e32         ld Rl, N0x32
6a0c 2e14         ld Rl, N0x14
6a0e 2e33         ld Rl, N0x33
6a10 2e20         ld Rl, N0x20
6a12 2c           inc Rl
6a13 302c         jr Cnc, D$ + 46
6a15 14           inc Rd
6a16 2c           inc Rl
6a17 312c16       ld Psp, W0x162c
6a1a 2e16         ld Rl, N0x16
6a1c 3a162e       ld a, (W0x2e16)
6a1f 35           dec R(hl)
6a20 3822         jr Cc, D$ + 36
6a22 2e22         ld Rl, N0x22
6a24 37           scf
6a25 162e         ld Rd, N0x2e
6a27 313514       ld Psp, W0x1435
6a2a 2c           inc Rl
6a2b 14           inc Rd
6a2c 3814         jr Cc, D$ + 22
6a2e 2c           inc Rl
6a2f 14           inc Rd
6a30 3820         jr Cc, D$ + 34
6a32 2c           inc Rl
6a33 2033         jr Cnz, D$ + 53
6a35 14           inc Rd
6a36 2c           inc Rl
6a37 14           inc Rd
6a38 3816         jr Cc, D$ + 24
6a3a 2e32         ld Rl, N0x32
6a3c 2e16         ld Rl, N0x16
6a3e 2e33         ld Rl, N0x33
6a40 2e22         ld Rl, N0x22
6a42 2e32         ld Rl, N0x32
6a44 2e16         ld Rl, N0x16
6a46 2e33         ld Rl, N0x33
6a48 2e14         ld Rl, N0x14
6a4a 2e32         ld Rl, N0x32
6a4c 2e14         ld Rl, N0x14
6a4e 2e33         ld Rl, N0x33
6a50 2e20         ld Rl, N0x20
6a52 2c           inc Rl
6a53 302c         jr Cnc, D$ + 46
6a55 14           inc Rd
6a56 2c           inc Rl
6a57 312c2e       ld Psp, W0x2e2c
6a5a 32292e       ld (W0x2e29), a
6a5d 2629         ld Rh, N0x29
6a5f 22262c       ld (W0x2c26), Phl
6a62 3027         jr Cnc, D$ + 41
6a64 2c           inc Rl
6a65 24           inc Rh
6a66 27           daa
6a67 14           inc Rd
6a68 2035         jr Cnz, D$ + 55
6a6a 32322e       ld (W0x2e32), a
6a6d 2e29         ld Rl, N0x29
6a6f 29           add Phl, Phl
6a70 2627         ld Rh, N0x27
6a72 3024         jr Cnc, D$ + 38
6a74 2c           inc Rl
6a75 2027         jr Cnz, D$ + 41
6a77 14           inc Rd
6a78 2000         jr Cnz, D$ + 2
6a7a 00           nop
6a7b 00           nop
6a7c 00           nop
6a7d 00           nop
6a7e 00           nop
6a7f 00           nop
6a80 00           nop
6a81 00           nop
6a82 00           nop
6a83 00           nop
6a84 00           nop
6a85 00           nop
6a86 00           nop
6a87 00           nop
6a88 00           nop
6a89 00           nop
6a8a 00           nop
6a8b 00           nop
6a8c 00           nop
6a8d 75           ld R(hl), Rl
6a8e 05           dec Rb
6a8f 27           daa
6a90 05           dec Rb
6a91 dd04         inc Rb
6a93 97           Asub Ra
6a94 04           inc Rb
6a95 55           ld Rd, Rl
6a96 04           inc Rb
6a97 17           rla
6a98 04           inc Rb
6a99 dc03a4       call Cc, W0xa403
6a9c 03           inc Pbc
6a9d 70           ld R(hl), Rb
6a9e 03           inc Pbc
6a9f 3f           ccf
6aa0 03           inc Pbc
6aa1 1003         djnz D$ + 5
6aa3 e402ba       call Cpo, W0xba02
6aa6 02           ld (Pbc), a
6aa7 93           Asub Re
6aa8 02           ld (Pbc), a
6aa9 6e           ld Rl, R(hl)
6aaa 02           ld (Pbc), a
6aab 4b           ld Rc, Re
6aac 02           ld (Pbc), a
6aad 2a020b       ld Phl, (W0x0b02)
6ab0 02           ld (Pbc), a
6ab1 ee01         Axor N0x01
6ab3 d201b8       jp Cnc, W0xb801
6ab6 019f01       ld Pbc, W0x019f
6ab9 88           Aadc a, Rb
6aba 017201       ld Pbc, W0x0172
6abd 5d           ld Re, Rl
6abe 014901       ld Pbc, W0x0149
6ac1 37           scf
6ac2 012501       ld Pbc, W0x0125
6ac5 15           dec Rd
6ac6 010501       ld Pbc, W0x0105
6ac9 f7           rst W0x0030
6aca 00           nop
6acb e9           jp (Phl)
6acc 00           nop
6acd dc00cf       call Cc, W0xcf00
6ad0 00           nop
6ad1 c400b9       call Cnz, W0xb900
6ad4 00           nop
6ad5 ae           Axor R(hl)
6ad6 00           nop
6ad7 a4           Aand Rh
6ad8 00           nop
6ad9 9b           Asbc a, Re
6ada 00           nop
6adb 92           Asub Rd
6adc 00           nop
6add 8a           Aadc a, Rd
6ade 00           nop
6adf 82           Aadd a, Rd
6ae0 00           nop
6ae1 7b           ld Ra, Re
6ae2 00           nop
6ae3 74           ld R(hl), Rh
6ae4 00           nop
6ae5 6e           ld Rl, R(hl)
6ae6 00           nop
6ae7 67           ld Rh, Ra
6ae8 00           nop
6ae9 62           ld Rh, Rd
6aea 00           nop
6aeb 5c           ld Re, Rh
6aec 00           nop
6aed 57           ld Rd, Ra
6aee 00           nop
6aef 6c           ld Rl, Rh
6af0 6c           ld Rl, Rh
6af1 6c           ld Rl, Rh
6af2 6c           ld Rl, Rh
6af3 6c           ld Rl, Rh
6af4 6c           ld Rl, Rh
6af5 6c           ld Rl, Rh
6af6 6c           ld Rl, Rh
6af7 6c           ld Rl, Rh
6af8 6c           ld Rl, Rh
6af9 6c           ld Rl, Rh
6afa 6c           ld Rl, Rh
6afb 6c           ld Rl, Rh
6afc 6c           ld Rl, Rh
6afd 6c           ld Rl, Rh
6afe 6c           ld Rl, Rh
6aff 6c           ld Rl, Rh
6b00 6c           ld Rl, Rh
6b01 6c           ld Rl, Rh
6b02 6c           ld Rl, Rh
6b03 6d           ld Rl, Rl
6b04 6b           ld Rl, Re
6b05 6b           ld Rl, Re
6b06 6b           ld Rl, Re
6b07 6b           ld Rl, Re
6b08 6b           ld Rl, Re
6b09 6b           ld Rl, Re
6b0a 6b           ld Rl, Re
6b0b 6b           ld Rl, Re
6b0c 6b           ld Rl, Re
6b0d 6b           ld Rl, Re
6b0e 6b           ld Rl, Re
6b0f 6b           ld Rl, Re
6b10 6b           ld Rl, Re
6b11 6b           ld Rl, Re
6b12 6b           ld Rl, Re
6b13 6b           ld Rl, Re
6b14 6b           ld Rl, Re
6b15 6b           ld Rl, Re
6b16 6e           ld Rl, R(hl)
6b17 6d           ld Rl, Rl
6b18 60           ld Rh, Rb
6b19 61           ld Rh, Rc
6b1a 62           ld Rh, Rd
6b1b 6b           ld Rl, Re
6b1c 6b           ld Rl, Re
6b1d 6b           ld Rl, Re
6b1e 6b           ld Rl, Re
6b1f 6b           ld Rl, Re
6b20 6b           ld Rl, Re
6b21 6b           ld Rl, Re
6b22 6b           ld Rl, Re
6b23 6b           ld Rl, Re
6b24 6b           ld Rl, Re
6b25 6b           ld Rl, Re
6b26 6b           ld Rl, Re
6b27 6b           ld Rl, Re
6b28 6b           ld Rl, Re
6b29 6b           ld Rl, Re
6b2a 6e           ld Rl, R(hl)
6b2b 6d           ld Rl, Rl
6b2c 60           ld Rh, Rb
6b2d 6b           ld Rl, Re
6b2e 63           ld Rh, Re
6b2f 60           ld Rh, Rb
6b30 61           ld Rh, Rc
6b31 65           ld Rh, Rl
6b32 66           ld Rh, R(hl)
6b33 63           ld Rh, Re
6b34 60           ld Rh, Rb
6b35 6b           ld Rl, Re
6b36 65           ld Rh, Rl
6b37 61           ld Rh, Rc
6b38 62           ld Rh, Rd
6b39 60           ld Rh, Rb
6b3a 61           ld Rh, Rc
6b3b 65           ld Rh, Rl
6b3c 61           ld Rh, Rc
6b3d 62           ld Rh, Rd
6b3e 6e           ld Rl, R(hl)
6b3f 6d           ld Rl, Rl
6b40 60           ld Rh, Rb
6b41 61           ld Rh, Rc
6b42 64           ld Rh, Rh
6b43 60           ld Rh, Rb
6b44 65           ld Rh, Rl
6b45 65           ld Rh, Rl
6b46 66           ld Rh, R(hl)
6b47 63           ld Rh, Re
6b48 60           ld Rh, Rb
6b49 6b           ld Rl, Re
6b4a 65           ld Rh, Rl
6b4b 66           ld Rh, R(hl)
6b4c 63           ld Rh, Re
6b4d 60           ld Rh, Rb
6b4e 6b           ld Rl, Re
6b4f 65           ld Rh, Rl
6b50 66           ld Rh, R(hl)
6b51 63           ld Rh, Re
6b52 6e           ld Rl, R(hl)
6b53 6d           ld Rl, Rl
6b54 60           ld Rh, Rb
6b55 61           ld Rh, Rc
6b56 62           ld Rh, Rd
6b57 60           ld Rh, Rb
6b58 65           ld Rh, Rl
6b59 65           ld Rh, Rl
6b5a 66           ld Rh, R(hl)
6b5b 63           ld Rh, Re
6b5c 60           ld Rh, Rb
6b5d 6b           ld Rl, Re
6b5e 65           ld Rh, Rl
6b5f 66           ld Rh, R(hl)
6b60 63           ld Rh, Re
6b61 60           ld Rh, Rb
6b62 66           ld Rh, R(hl)
6b63 65           ld Rh, Rl
6b64 61           ld Rh, Rc
6b65 64           ld Rh, Rh
6b66 6e           ld Rl, R(hl)
6b67 6d           ld Rl, Rl
6b68 60           ld Rh, Rb
6b69 6b           ld Rl, Re
6b6a 63           ld Rh, Re
6b6b 60           ld Rh, Rb
6b6c 65           ld Rh, Rl
6b6d 65           ld Rh, Rl
6b6e 66           ld Rh, R(hl)
6b6f 63           ld Rh, Re
6b70 60           ld Rh, Rb
6b71 6b           ld Rl, Re
6b72 65           ld Rh, Rl
6b73 66           ld Rh, R(hl)
6b74 63           ld Rh, Re
6b75 60           ld Rh, Rb
6b76 6b           ld Rl, Re
6b77 65           ld Rh, Rl
6b78 61           ld Rh, Rc
6b79 62           ld Rh, Rd
6b7a 6e           ld Rl, R(hl)
6b7b 6d           ld Rl, Rl
6b7c 60           ld Rh, Rb
6b7d 61           ld Rh, Rc
6b7e 66           ld Rh, R(hl)
6b7f 60           ld Rh, Rb
6b80 61           ld Rh, Rc
6b81 65           ld Rh, Rl
6b82 61           ld Rh, Rc
6b83 66           ld Rh, R(hl)
6b84 60           ld Rh, Rb
6b85 61           ld Rh, Rc
6b86 65           ld Rh, Rl
6b87 61           ld Rh, Rc
6b88 66           ld Rh, R(hl)
6b89 60           ld Rh, Rb
6b8a 61           ld Rh, Rc
6b8b 65           ld Rh, Rl
6b8c 66           ld Rh, R(hl)
6b8d 63           ld Rh, Re
6b8e 6e           ld Rl, R(hl)
6b8f 6d           ld Rl, Rl
6b90 60           ld Rh, Rb
6b91 61           ld Rh, Rc
6b92 64           ld Rh, Rh
6b93 60           ld Rh, Rb
6b94 61           ld Rh, Rc
6b95 65           ld Rh, Rl
6b96 61           ld Rh, Rc
6b97 66           ld Rh, R(hl)
6b98 60           ld Rh, Rb
6b99 61           ld Rh, Rc
6b9a 65           ld Rh, Rl
6b9b 61           ld Rh, Rc
6b9c 64           ld Rh, Rh
6b9d 60           ld Rh, Rb
6b9e 61           ld Rh, Rc
6b9f 65           ld Rh, Rl
6ba0 66           ld Rh, R(hl)
6ba1 63           ld Rh, Re
6ba2 6e           ld Rl, R(hl)
6ba3 6d           ld Rl, Rl
6ba4 6b           ld Rl, Re
6ba5 6b           ld Rl, Re
6ba6 6b           ld Rl, Re
6ba7 6b           ld Rl, Re
6ba8 6b           ld Rl, Re
6ba9 6b           ld Rl, Re
6baa 6b           ld Rl, Re
6bab 6b           ld Rl, Re
6bac 6b           ld Rl, Re
6bad 6b           ld Rl, Re
6bae 6b           ld Rl, Re
6baf 6b           ld Rl, Re
6bb0 6b           ld Rl, Re
6bb1 6b           ld Rl, Re
6bb2 6b           ld Rl, Re
6bb3 6b           ld Rl, Re
6bb4 6b           ld Rl, Re
6bb5 6b           ld Rl, Re
6bb6 6e           ld Rl, R(hl)
6bb7 6d           ld Rl, Rl
6bb8 6b           ld Rl, Re
6bb9 6b           ld Rl, Re
6bba 65           ld Rh, Rl
6bbb 61           ld Rh, Rc
6bbc 69           ld Rl, Rc
6bbd 6b           ld Rl, Re
6bbe 6b           ld Rl, Re
6bbf 6b           ld Rl, Re
6bc0 6b           ld Rl, Re
6bc1 6b           ld Rl, Re
6bc2 6b           ld Rl, Re
6bc3 6b           ld Rl, Re
6bc4 6b           ld Rl, Re
6bc5 6b           ld Rl, Re
6bc6 6b           ld Rl, Re
6bc7 6b           ld Rl, Re
6bc8 6b           ld Rl, Re
6bc9 6b           ld Rl, Re
6bca 6e           ld Rl, R(hl)
6bcb 6d           ld Rl, Rl
6bcc 6b           ld Rl, Re
6bcd 6b           ld Rl, Re
6bce 65           ld Rh, Rl
6bcf 66           ld Rh, R(hl)
6bd0 65           ld Rh, Rl
6bd1 6b           ld Rl, Re
6bd2 60           ld Rh, Rb
6bd3 62           ld Rh, Rd
6bd4 60           ld Rh, Rb
6bd5 61           ld Rh, Rc
6bd6 65           ld Rh, Rl
6bd7 66           ld Rh, R(hl)
6bd8 65           ld Rh, Rl
6bd9 6b           ld Rl, Re
6bda 6b           ld Rl, Re
6bdb 6b           ld Rl, Re
6bdc 6b           ld Rl, Re
6bdd 6b           ld Rl, Re
6bde 6e           ld Rl, R(hl)
6bdf 6d           ld Rl, Rl
6be0 6b           ld Rl, Re
6be1 6b           ld Rl, Re
6be2 65           ld Rh, Rl
6be3 66           ld Rh, R(hl)
6be4 65           ld Rh, Rl
6be5 65           ld Rh, Rl
6be6 66           ld Rh, R(hl)
6be7 63           ld Rh, Re
6be8 60           ld Rh, Rb
6be9 6b           ld Rl, Re
6bea 65           ld Rh, Rl
6beb 66           ld Rh, R(hl)
6bec 65           ld Rh, Rl
6bed 6b           ld Rl, Re
6bee 6b           ld Rl, Re
6bef 6b           ld Rl, Re
6bf0 6b           ld Rl, Re
6bf1 6b           ld Rl, Re
6bf2 6e           ld Rl, R(hl)
6bf3 6d           ld Rl, Rl
6bf4 6b           ld Rl, Re
6bf5 6b           ld Rl, Re
6bf6 65           ld Rh, Rl
6bf7 66           ld Rh, R(hl)
6bf8 65           ld Rh, Rl
6bf9 65           ld Rh, Rl
6bfa 61           ld Rh, Rc
6bfb 66           ld Rh, R(hl)
6bfc 60           ld Rh, Rb
6bfd 61           ld Rh, Rc
6bfe 65           ld Rh, Rl
6bff 61           ld Rh, Rc
6c00 61           ld Rh, Rc
6c01 6b           ld Rl, Re
6c02 6b           ld Rl, Re
6c03 6b           ld Rl, Re
6c04 6b           ld Rl, Re
6c05 6b           ld Rl, Re
6c06 6e           ld Rl, R(hl)
6c07 6d           ld Rl, Rl
6c08 6b           ld Rl, Re
6c09 6b           ld Rl, Re
6c0a 65           ld Rh, Rl
6c0b 66           ld Rh, R(hl)
6c0c 65           ld Rh, Rl
6c0d 65           ld Rh, Rl
6c0e 66           ld Rh, R(hl)
6c0f 63           ld Rh, Re
6c10 6b           ld Rl, Re
6c11 60           ld Rh, Rb
6c12 65           ld Rh, Rl
6c13 66           ld Rh, R(hl)
6c14 65           ld Rh, Rl
6c15 6b           ld Rl, Re
6c16 6b           ld Rl, Re
6c17 6b           ld Rl, Re
6c18 6b           ld Rl, Re
6c19 6b           ld Rl, Re
6c1a 6e           ld Rl, R(hl)
6c1b 6d           ld Rl, Rl
6c1c 6b           ld Rl, Re
6c1d 6b           ld Rl, Re
6c1e 65           ld Rh, Rl
6c1f 61           ld Rh, Rc
6c20 61           ld Rh, Rc
6c21 65           ld Rh, Rl
6c22 66           ld Rh, R(hl)
6c23 63           ld Rh, Re
6c24 60           ld Rh, Rb
6c25 61           ld Rh, Rc
6c26 65           ld Rh, Rl
6c27 66           ld Rh, R(hl)
6c28 65           ld Rh, Rl
6c29 6b           ld Rl, Re
6c2a 6b           ld Rl, Re
6c2b 6b           ld Rl, Re
6c2c 6b           ld Rl, Re
6c2d 6b           ld Rl, Re
6c2e 6e           ld Rl, R(hl)
6c2f 6d           ld Rl, Rl
6c30 6b           ld Rl, Re
6c31 6b           ld Rl, Re
6c32 65           ld Rh, Rl
6c33 61           ld Rh, Rc
6c34 6a           ld Rl, Rd
6c35 65           ld Rh, Rl
6c36 66           ld Rh, R(hl)
6c37 63           ld Rh, Re
6c38 60           ld Rh, Rb
6c39 61           ld Rh, Rc
6c3a 65           ld Rh, Rl
6c3b 66           ld Rh, R(hl)
6c3c 65           ld Rh, Rl
6c3d 6b           ld Rl, Re
6c3e 6b           ld Rl, Re
6c3f 6b           ld Rl, Re
6c40 6b           ld Rl, Re
6c41 6b           ld Rl, Re
6c42 6e           ld Rl, R(hl)
6c43 6d           ld Rl, Rl
6c44 6b           ld Rl, Re
6c45 6b           ld Rl, Re
6c46 6b           ld Rl, Re
6c47 6b           ld Rl, Re
6c48 6b           ld Rl, Re
6c49 6b           ld Rl, Re
6c4a 6b           ld Rl, Re
6c4b 6b           ld Rl, Re
6c4c 6b           ld Rl, Re
6c4d 6b           ld Rl, Re
6c4e 6b           ld Rl, Re
6c4f 6b           ld Rl, Re
6c50 6b           ld Rl, Re
6c51 6b           ld Rl, Re
6c52 6b           ld Rl, Re
6c53 6b           ld Rl, Re
6c54 6b           ld Rl, Re
6c55 6b           ld Rl, Re
6c56 6e           ld Rl, R(hl)
6c57 6c           ld Rl, Rh
6c58 6c           ld Rl, Rh
6c59 6c           ld Rl, Rh
6c5a 6c           ld Rl, Rh
6c5b 6c           ld Rl, Rh
6c5c 6c           ld Rl, Rh
6c5d 6c           ld Rl, Rh
6c5e 6c           ld Rl, Rh
6c5f 6c           ld Rl, Rh
6c60 6c           ld Rl, Rh
6c61 6c           ld Rl, Rh
6c62 6c           ld Rl, Rh
6c63 6c           ld Rl, Rh
6c64 6c           ld Rl, Rh
6c65 6c           ld Rl, Rh
6c66 6c           ld Rl, Rh
6c67 6c           ld Rl, Rh
6c68 6c           ld Rl, Rh
6c69 6c           ld Rl, Rh
6c6a 6c           ld Rl, Rh
6c6b 00           nop
6c6c 00           nop
6c6d 00           nop
6c6e 00           nop
6c6f 00           nop
6c70 00           nop
6c71 00           nop
6c72 00           nop
6c73 00           nop
6c74 00           nop
6c75 00           nop
6c76 00           nop
6c77 00           nop
6c78 00           nop
6c79 00           nop
6c7a 00           nop
6c7b 00           nop
6c7c 00           nop
6c7d 00           nop
6c7e 00           nop
6c7f 00           nop
6c80 00           nop
6c81 00           nop
6c82 00           nop
6c83 00           nop
6c84 00           nop
6c85 00           nop
6c86 00           nop
6c87 00           nop
6c88 00           nop
6c89 00           nop
6c8a 00           nop
6c8b 00           nop
6c8c 00           nop
6c8d 00           nop
6c8e 00           nop
6c8f 00           nop
6c90 00           nop
6c91 00           nop
6c92 00           nop
6c93 00           nop
6c94 00           nop
6c95 00           nop
6c96 00           nop
6c97 00           nop
6c98 00           nop
6c99 00           nop
6c9a 00           nop
6c9b 00           nop
6c9c 00           nop
6c9d 00           nop
6c9e 00           nop
6c9f 00           nop
6ca0 00           nop
6ca1 00           nop
6ca2 00           nop
6ca3 00           nop
6ca4 00           nop
6ca5 00           nop
6ca6 00           nop
6ca7 00           nop
6ca8 00           nop
6ca9 00           nop
6caa 00           nop
6cab 00           nop
6cac 00           nop
6cad 00           nop
6cae 00           nop
6caf 00           nop
6cb0 00           nop
6cb1 00           nop
6cb2 00           nop
6cb3 00           nop
6cb4 00           nop
6cb5 00           nop
6cb6 00           nop
6cb7 00           nop
6cb8 00           nop
6cb9 00           nop
6cba 00           nop
6cbb 00           nop
6cbc 00           nop
6cbd 00           nop
6cbe 00           nop
6cbf 00           nop
6cc0 00           nop
6cc1 00           nop
6cc2 00           nop
6cc3 00           nop
6cc4 00           nop
6cc5 00           nop
6cc6 00           nop
6cc7 00           nop
6cc8 00           nop
6cc9 00           nop
6cca 00           nop
6ccb 00           nop
6ccc 00           nop
6ccd 00           nop
6cce 00           nop
6ccf 00           nop
6cd0 00           nop
6cd1 00           nop
6cd2 00           nop
6cd3 00           nop
6cd4 00           nop
6cd5 00           nop
6cd6 00           nop
6cd7 00           nop
6cd8 00           nop
6cd9 00           nop
6cda 00           nop
6cdb 00           nop
6cdc 00           nop
6cdd 00           nop
6cde 00           nop
6cdf 00           nop
6ce0 00           nop
6ce1 00           nop
6ce2 00           nop
6ce3 00           nop
6ce4 00           nop
6ce5 00           nop
6ce6 00           nop
6ce7 00           nop
6ce8 00           nop
6ce9 00           nop
6cea 00           nop
6ceb 00           nop
6cec 00           nop
6ced 00           nop
6cee 00           nop
6cef 00           nop
6cf0 00           nop
6cf1 00           nop
6cf2 00           nop
6cf3 00           nop
6cf4 00           nop
6cf5 00           nop
6cf6 00           nop
6cf7 00           nop
6cf8 00           nop
6cf9 00           nop
6cfa 00           nop
6cfb 00           nop
6cfc 00           nop
6cfd 00           nop
6cfe 00           nop
6cff 00           nop
6d00 00           nop
6d01 00           nop
6d02 00           nop
6d03 00           nop
6d04 00           nop
6d05 00           nop
6d06 00           nop
6d07 00           nop
6d08 00           nop
6d09 00           nop
6d0a 00           nop
6d0b 00           nop
6d0c 00           nop
6d0d 00           nop
6d0e 00           nop
6d0f 00           nop
6d10 00           nop
6d11 00           nop
6d12 00           nop
6d13 00           nop
6d14 00           nop
6d15 00           nop
6d16 00           nop
6d17 00           nop
6d18 00           nop
6d19 00           nop
6d1a 00           nop
6d1b 00           nop
6d1c 00           nop
6d1d 00           nop
6d1e 00           nop
6d1f 00           nop
6d20 00           nop
6d21 00           nop
6d22 00           nop
6d23 00           nop
6d24 00           nop
6d25 00           nop
6d26 00           nop
6d27 00           nop
6d28 00           nop
6d29 00           nop
6d2a 00           nop
6d2b 00           nop
6d2c 00           nop
6d2d 00           nop
6d2e 00           nop
6d2f 00           nop
6d30 00           nop
6d31 00           nop
6d32 00           nop
6d33 00           nop
6d34 00           nop
6d35 00           nop
6d36 00           nop
6d37 00           nop
6d38 00           nop
6d39 00           nop
6d3a 00           nop
6d3b 00           nop
6d3c 00           nop
6d3d 00           nop
6d3e 00           nop
6d3f 00           nop
6d40 00           nop
6d41 00           nop
6d42 00           nop
6d43 00           nop
6d44 00           nop
6d45 00           nop
6d46 00           nop
6d47 00           nop
6d48 00           nop
6d49 00           nop
6d4a 00           nop
6d4b 00           nop
6d4c 00           nop
6d4d 00           nop
6d4e 00           nop
6d4f 00           nop
6d50 00           nop
6d51 00           nop
6d52 00           nop
6d53 00           nop
6d54 00           nop
6d55 00           nop
6d56 00           nop
6d57 00           nop
6d58 00           nop
6d59 00           nop
6d5a 00           nop
6d5b 00           nop
6d5c 00           nop
6d5d 00           nop
6d5e 00           nop
6d5f 00           nop
6d60 00           nop
6d61 00           nop
6d62 00           nop
6d63 00           nop
6d64 00           nop
6d65 00           nop
6d66 00           nop
6d67 00           nop
6d68 00           nop
6d69 00           nop
6d6a 00           nop
6d6b 00           nop
6d6c 00           nop
6d6d 00           nop
6d6e 00           nop
6d6f 00           nop
6d70 00           nop
6d71 00           nop
6d72 00           nop
6d73 00           nop
6d74 00           nop
6d75 00           nop
6d76 00           nop
6d77 00           nop
6d78 00           nop
6d79 00           nop
6d7a 00           nop
6d7b 00           nop
6d7c 00           nop
6d7d 00           nop
6d7e 00           nop
6d7f 00           nop
6d80 00           nop
6d81 00           nop
6d82 00           nop
6d83 00           nop
6d84 00           nop
6d85 00           nop
6d86 00           nop
6d87 00           nop
6d88 00           nop
6d89 00           nop
6d8a 00           nop
6d8b 00           nop
6d8c 00           nop
6d8d 00           nop
6d8e 00           nop
6d8f 00           nop
6d90 00           nop
6d91 00           nop
6d92 00           nop
6d93 00           nop
6d94 00           nop
6d95 00           nop
6d96 00           nop
6d97 00           nop
6d98 00           nop
6d99 00           nop
6d9a 00           nop
6d9b 00           nop
6d9c 00           nop
6d9d 00           nop
6d9e 00           nop
6d9f 00           nop
6da0 00           nop
6da1 00           nop
6da2 00           nop
6da3 00           nop
6da4 00           nop
6da5 00           nop
6da6 00           nop
6da7 00           nop
6da8 00           nop
6da9 00           nop
6daa 00           nop
6dab 00           nop
6dac 00           nop
6dad 00           nop
6dae 00           nop
6daf 00           nop
6db0 00           nop
6db1 00           nop
6db2 00           nop
6db3 00           nop
6db4 00           nop
6db5 00           nop
6db6 00           nop
6db7 00           nop
6db8 00           nop
6db9 00           nop
6dba 00           nop
6dbb 00           nop
6dbc 00           nop
6dbd 00           nop
6dbe 00           nop
6dbf 00           nop
6dc0 00           nop
6dc1 00           nop
6dc2 00           nop
6dc3 00           nop
6dc4 00           nop
6dc5 00           nop
6dc6 00           nop
6dc7 00           nop
6dc8 00           nop
6dc9 00           nop
6dca 00           nop
6dcb 00           nop
6dcc 00           nop
6dcd 00           nop
6dce 00           nop
6dcf 00           nop
6dd0 00           nop
6dd1 00           nop
6dd2 00           nop
6dd3 00           nop
6dd4 00           nop
6dd5 00           nop
6dd6 00           nop
6dd7 00           nop
6dd8 00           nop
6dd9 00           nop
6dda 00           nop
6ddb 00           nop
6ddc 00           nop
6ddd 00           nop
6dde 00           nop
6ddf 00           nop
6de0 00           nop
6de1 00           nop
6de2 00           nop
6de3 00           nop
6de4 00           nop
6de5 00           nop
6de6 00           nop
6de7 00           nop
6de8 00           nop
6de9 00           nop
6dea 00           nop
6deb 00           nop
6dec 00           nop
6ded 00           nop
6dee 00           nop
6def 00           nop
6df0 00           nop
6df1 00           nop
6df2 00           nop
6df3 00           nop
6df4 00           nop
6df5 00           nop
6df6 00           nop
6df7 00           nop
6df8 00           nop
6df9 00           nop
6dfa 00           nop
6dfb 00           nop
6dfc 00           nop
6dfd 00           nop
6dfe 00           nop
6dff 00           nop
6e00 00           nop
6e01 00           nop
6e02 00           nop
6e03 00           nop
6e04 00           nop
6e05 00           nop
6e06 00           nop
6e07 00           nop
6e08 00           nop
6e09 00           nop
6e0a 00           nop
6e0b 00           nop
6e0c 00           nop
6e0d 00           nop
6e0e 00           nop
6e0f 00           nop
6e10 00           nop
6e11 00           nop
6e12 00           nop
6e13 00           nop
6e14 00           nop
6e15 00           nop
6e16 00           nop
6e17 00           nop
6e18 00           nop
6e19 00           nop
6e1a 00           nop
6e1b 00           nop
6e1c 00           nop
6e1d 00           nop
6e1e 00           nop
6e1f 00           nop
6e20 00           nop
6e21 00           nop
6e22 00           nop
6e23 00           nop
6e24 00           nop
6e25 00           nop
6e26 00           nop
6e27 00           nop
6e28 00           nop
6e29 00           nop
6e2a 00           nop
6e2b 00           nop
6e2c 00           nop
6e2d 00           nop
6e2e 00           nop
6e2f 00           nop
6e30 00           nop
6e31 00           nop
6e32 00           nop
6e33 00           nop
6e34 00           nop
6e35 00           nop
6e36 00           nop
6e37 00           nop
6e38 00           nop
6e39 00           nop
6e3a 00           nop
6e3b 00           nop
6e3c 00           nop
6e3d 00           nop
6e3e 00           nop
6e3f 00           nop
6e40 00           nop
6e41 00           nop
6e42 00           nop
6e43 00           nop
6e44 00           nop
6e45 00           nop
6e46 00           nop
6e47 00           nop
6e48 00           nop
6e49 00           nop
6e4a 00           nop
6e4b 00           nop
6e4c 00           nop
6e4d 00           nop
6e4e 00           nop
6e4f 00           nop
6e50 00           nop
6e51 00           nop
6e52 00           nop
6e53 00           nop
6e54 00           nop
6e55 00           nop
6e56 00           nop
6e57 00           nop
6e58 00           nop
6e59 00           nop
6e5a 00           nop
6e5b 00           nop
6e5c 00           nop
6e5d 00           nop
6e5e 00           nop
6e5f 00           nop
6e60 00           nop
6e61 00           nop
6e62 00           nop
6e63 00           nop
6e64 00           nop
6e65 00           nop
6e66 00           nop
6e67 00           nop
6e68 00           nop
6e69 00           nop
6e6a 00           nop
6e6b 00           nop
6e6c 00           nop
6e6d 00           nop
6e6e 00           nop
6e6f 00           nop
6e70 00           nop
6e71 00           nop
6e72 00           nop
6e73 00           nop
6e74 00           nop
6e75 00           nop
6e76 00           nop
6e77 00           nop
6e78 00           nop
6e79 00           nop
6e7a 00           nop
6e7b 00           nop
6e7c 00           nop
6e7d 00           nop
6e7e 00           nop
6e7f 00           nop
6e80 00           nop
6e81 00           nop
6e82 00           nop
6e83 00           nop
6e84 00           nop
6e85 00           nop
6e86 00           nop
6e87 00           nop
6e88 00           nop
6e89 00           nop
6e8a 00           nop
6e8b 00           nop
6e8c 00           nop
6e8d 00           nop
6e8e 00           nop
6e8f 00           nop
6e90 00           nop
6e91 00           nop
6e92 00           nop
6e93 00           nop
6e94 00           nop
6e95 00           nop
6e96 00           nop
6e97 00           nop
6e98 00           nop
6e99 00           nop
6e9a 00           nop
6e9b 00           nop
6e9c 00           nop
6e9d 00           nop
6e9e 00           nop
6e9f 00           nop
6ea0 00           nop
6ea1 00           nop
6ea2 00           nop
6ea3 00           nop
6ea4 00           nop
6ea5 00           nop
6ea6 00           nop
6ea7 00           nop
6ea8 00           nop
6ea9 00           nop
6eaa 00           nop
6eab 00           nop
6eac 00           nop
6ead 00           nop
6eae 00           nop
6eaf 00           nop
6eb0 00           nop
6eb1 00           nop
6eb2 00           nop
6eb3 00           nop
6eb4 00           nop
6eb5 00           nop
6eb6 00           nop
6eb7 00           nop
6eb8 00           nop
6eb9 00           nop
6eba 00           nop
6ebb 00           nop
6ebc 00           nop
6ebd 00           nop
6ebe 00           nop
6ebf 00           nop
6ec0 00           nop
6ec1 00           nop
6ec2 00           nop
6ec3 00           nop
6ec4 00           nop
6ec5 00           nop
6ec6 00           nop
6ec7 00           nop
6ec8 00           nop
6ec9 00           nop
6eca 00           nop
6ecb 00           nop
6ecc 00           nop
6ecd 00           nop
6ece 00           nop
6ecf 00           nop
6ed0 00           nop
6ed1 00           nop
6ed2 00           nop
6ed3 00           nop
6ed4 00           nop
6ed5 00           nop
6ed6 00           nop
6ed7 00           nop
6ed8 00           nop
6ed9 00           nop
6eda 00           nop
6edb 00           nop
6edc 00           nop
6edd 00           nop
6ede 00           nop
6edf 00           nop
6ee0 00           nop
6ee1 00           nop
6ee2 00           nop
6ee3 00           nop
6ee4 00           nop
6ee5 00           nop
6ee6 00           nop
6ee7 00           nop
6ee8 00           nop
6ee9 00           nop
6eea 00           nop
6eeb 00           nop
6eec 00           nop
6eed 00           nop
6eee 00           nop
6eef 00           nop
6ef0 00           nop
6ef1 00           nop
6ef2 00           nop
6ef3 00           nop
6ef4 00           nop
6ef5 00           nop
6ef6 00           nop
6ef7 00           nop
6ef8 00           nop
6ef9 00           nop
6efa 00           nop
6efb 00           nop
6efc 00           nop
6efd 00           nop
6efe 00           nop
6eff 00           nop
6f00 00           nop
6f01 00           nop
6f02 00           nop
6f03 00           nop
6f04 00           nop
6f05 00           nop
6f06 00           nop
6f07 00           nop
6f08 00           nop
6f09 00           nop
6f0a 00           nop
6f0b 00           nop
6f0c 00           nop
6f0d 00           nop
6f0e 00           nop
6f0f 00           nop
6f10 00           nop
6f11 00           nop
6f12 00           nop
6f13 00           nop
6f14 00           nop
6f15 00           nop
6f16 00           nop
6f17 00           nop
6f18 00           nop
6f19 00           nop
6f1a 00           nop
6f1b 00           nop
6f1c 00           nop
6f1d 00           nop
6f1e 00           nop
6f1f 00           nop
6f20 00           nop
6f21 00           nop
6f22 00           nop
6f23 00           nop
6f24 00           nop
6f25 00           nop
6f26 00           nop
6f27 00           nop
6f28 00           nop
6f29 00           nop
6f2a 00           nop
6f2b 00           nop
6f2c 00           nop
6f2d 00           nop
6f2e 00           nop
6f2f 00           nop
6f30 00           nop
6f31 00           nop
6f32 00           nop
6f33 00           nop
6f34 00           nop
6f35 00           nop
6f36 00           nop
6f37 00           nop
6f38 00           nop
6f39 00           nop
6f3a 00           nop
6f3b 00           nop
6f3c 00           nop
6f3d 00           nop
6f3e 00           nop
6f3f 00           nop
6f40 00           nop
6f41 00           nop
6f42 00           nop
6f43 00           nop
6f44 00           nop
6f45 00           nop
6f46 00           nop
6f47 00           nop
6f48 00           nop
6f49 00           nop
6f4a 00           nop
6f4b 00           nop
6f4c 00           nop
6f4d 00           nop
6f4e 00           nop
6f4f 00           nop
6f50 00           nop
6f51 00           nop
6f52 00           nop
6f53 00           nop
6f54 00           nop
6f55 00           nop
6f56 00           nop
6f57 00           nop
6f58 00           nop
6f59 00           nop
6f5a 00           nop
6f5b 00           nop
6f5c 00           nop
6f5d 00           nop
6f5e 00           nop
6f5f 00           nop
6f60 00           nop
6f61 00           nop
6f62 00           nop
6f63 00           nop
6f64 00           nop
6f65 00           nop
6f66 00           nop
6f67 00           nop
6f68 00           nop
6f69 00           nop
6f6a 00           nop
6f6b 00           nop
6f6c 00           nop
6f6d 00           nop
6f6e 00           nop
6f6f 00           nop
6f70 00           nop
6f71 00           nop
6f72 00           nop
6f73 00           nop
6f74 00           nop
6f75 00           nop
6f76 00           nop
6f77 00           nop
6f78 00           nop
6f79 00           nop
6f7a 00           nop
6f7b 00           nop
6f7c 00           nop
6f7d 00           nop
6f7e 00           nop
6f7f 00           nop
6f80 00           nop
6f81 00           nop
6f82 00           nop
6f83 00           nop
6f84 00           nop
6f85 00           nop
6f86 00           nop
6f87 00           nop
6f88 00           nop
6f89 00           nop
6f8a 00           nop
6f8b 00           nop
6f8c 00           nop
6f8d 00           nop
6f8e 00           nop
6f8f 00           nop
6f90 00           nop
6f91 00           nop
6f92 00           nop
6f93 00           nop
6f94 00           nop
6f95 00           nop
6f96 00           nop
6f97 00           nop
6f98 00           nop
6f99 00           nop
6f9a 00           nop
6f9b 00           nop
6f9c 00           nop
6f9d 00           nop
6f9e 00           nop
6f9f 00           nop
6fa0 00           nop
6fa1 00           nop
6fa2 00           nop
6fa3 00           nop
6fa4 00           nop
6fa5 00           nop
6fa6 00           nop
6fa7 00           nop
6fa8 00           nop
6fa9 00           nop
6faa 00           nop
6fab 00           nop
6fac 00           nop
6fad 00           nop
6fae 00           nop
6faf 00           nop
6fb0 00           nop
6fb1 00           nop
6fb2 00           nop
6fb3 00           nop
6fb4 00           nop
6fb5 00           nop
6fb6 00           nop
6fb7 00           nop
6fb8 00           nop
6fb9 00           nop
6fba 00           nop
6fbb 00           nop
6fbc 00           nop
6fbd 00           nop
6fbe 00           nop
6fbf 00           nop
6fc0 00           nop
6fc1 00           nop
6fc2 00           nop
6fc3 00           nop
6fc4 00           nop
6fc5 00           nop
6fc6 00           nop
6fc7 00           nop
6fc8 00           nop
6fc9 00           nop
6fca 00           nop
6fcb 00           nop
6fcc 00           nop
6fcd 00           nop
6fce 00           nop
6fcf 00           nop
6fd0 00           nop
6fd1 00           nop
6fd2 00           nop
6fd3 00           nop
6fd4 00           nop
6fd5 00           nop
6fd6 00           nop
6fd7 00           nop
6fd8 00           nop
6fd9 00           nop
6fda 00           nop
6fdb 00           nop
6fdc 00           nop
6fdd 00           nop
6fde 00           nop
6fdf 00           nop
6fe0 00           nop
6fe1 00           nop
6fe2 00           nop
6fe3 00           nop
6fe4 00           nop
6fe5 00           nop
6fe6 00           nop
6fe7 00           nop
6fe8 00           nop
6fe9 00           nop
6fea 00           nop
6feb 00           nop
6fec 00           nop
6fed 00           nop
6fee 00           nop
6fef 00           nop
6ff0 00           nop
6ff1 00           nop
6ff2 00           nop
6ff3 00           nop
6ff4 00           nop
6ff5 00           nop
6ff6 00           nop
6ff7 00           nop
6ff8 00           nop
6ff9 00           nop
6ffa 00           nop
6ffb 00           nop
6ffc 00           nop
6ffd 00           nop
6ffe 00           nop
6fff 00           nop
7000 00           nop
7001 00           nop
7002 00           nop
7003 00           nop
7004 00           nop
7005 00           nop
7006 00           nop
7007 00           nop
7008 00           nop
7009 00           nop
700a 00           nop
700b 00           nop
700c 00           nop
700d 00           nop
700e 00           nop
700f 00           nop
7010 00           nop
7011 00           nop
7012 00           nop
7013 00           nop
7014 00           nop
7015 00           nop
7016 00           nop
7017 00           nop
7018 00           nop
7019 00           nop
701a 00           nop
701b 00           nop
701c 00           nop
701d 00           nop
701e 00           nop
701f 00           nop
7020 00           nop
7021 00           nop
7022 00           nop
7023 00           nop
7024 00           nop
7025 00           nop
7026 00           nop
7027 00           nop
7028 00           nop
7029 00           nop
702a 00           nop
702b 00           nop
702c 00           nop
702d 00           nop
702e 00           nop
702f 00           nop
7030 00           nop
7031 00           nop
7032 00           nop
7033 00           nop
7034 00           nop
7035 00           nop
7036 00           nop
7037 00           nop
7038 00           nop
7039 00           nop
703a 00           nop
703b 00           nop
703c 00           nop
703d 00           nop
703e 00           nop
703f 00           nop
7040 00           nop
7041 00           nop
7042 00           nop
7043 00           nop
7044 00           nop
7045 00           nop
7046 00           nop
7047 00           nop
7048 00           nop
7049 00           nop
704a 00           nop
704b 00           nop
704c 00           nop
704d 00           nop
704e 00           nop
704f 00           nop
7050 00           nop
7051 00           nop
7052 00           nop
7053 00           nop
7054 00           nop
7055 00           nop
7056 00           nop
7057 00           nop
7058 00           nop
7059 00           nop
705a 00           nop
705b 00           nop
705c 00           nop
705d 00           nop
705e 00           nop
705f 00           nop
7060 00           nop
7061 00           nop
7062 00           nop
7063 00           nop
7064 00           nop
7065 00           nop
7066 00           nop
7067 00           nop
7068 00           nop
7069 00           nop
706a 00           nop
706b 00           nop
706c 00           nop
706d 00           nop
706e 00           nop
706f 00           nop
7070 00           nop
7071 00           nop
7072 00           nop
7073 00           nop
7074 00           nop
7075 00           nop
7076 00           nop
7077 00           nop
7078 00           nop
7079 00           nop
707a 00           nop
707b 00           nop
707c 00           nop
707d 00           nop
707e 00           nop
707f 00           nop
7080 00           nop
7081 00           nop
7082 00           nop
7083 00           nop
7084 00           nop
7085 00           nop
7086 00           nop
7087 00           nop
7088 00           nop
7089 00           nop
708a 00           nop
708b 00           nop
708c 00           nop
708d 00           nop
708e 00           nop
708f 00           nop
7090 00           nop
7091 00           nop
7092 00           nop
7093 00           nop
7094 00           nop
7095 00           nop
7096 00           nop
7097 00           nop
7098 00           nop
7099 00           nop
709a 00           nop
709b 00           nop
709c 00           nop
709d 00           nop
709e 00           nop
709f 00           nop
70a0 00           nop
70a1 00           nop
70a2 00           nop
70a3 00           nop
70a4 00           nop
70a5 00           nop
70a6 00           nop
70a7 00           nop
70a8 00           nop
70a9 00           nop
70aa 00           nop
70ab 00           nop
70ac 00           nop
70ad 00           nop
70ae 00           nop
70af 00           nop
70b0 00           nop
70b1 00           nop
70b2 00           nop
70b3 00           nop
70b4 00           nop
70b5 00           nop
70b6 00           nop
70b7 00           nop
70b8 00           nop
70b9 00           nop
70ba 00           nop
70bb 00           nop
70bc 00           nop
70bd 00           nop
70be 00           nop
70bf 00           nop
70c0 00           nop
70c1 00           nop
70c2 00           nop
70c3 00           nop
70c4 00           nop
70c5 00           nop
70c6 00           nop
70c7 00           nop
70c8 00           nop
70c9 00           nop
70ca 00           nop
70cb 00           nop
70cc 00           nop
70cd 00           nop
70ce 00           nop
70cf 00           nop
70d0 00           nop
70d1 00           nop
70d2 00           nop
70d3 00           nop
70d4 00           nop
70d5 00           nop
70d6 00           nop
70d7 00           nop
70d8 00           nop
70d9 00           nop
70da 00           nop
70db 00           nop
70dc 00           nop
70dd 00           nop
70de 00           nop
70df 00           nop
70e0 00           nop
70e1 00           nop
70e2 00           nop
70e3 00           nop
70e4 00           nop
70e5 00           nop
70e6 00           nop
70e7 00           nop
70e8 00           nop
70e9 00           nop
70ea 00           nop
70eb 00           nop
70ec 00           nop
70ed 00           nop
70ee 00           nop
70ef 00           nop
70f0 00           nop
70f1 00           nop
70f2 00           nop
70f3 00           nop
70f4 00           nop
70f5 00           nop
70f6 00           nop
70f7 00           nop
70f8 00           nop
70f9 00           nop
70fa 00           nop
70fb 00           nop
70fc 00           nop
70fd 00           nop
70fe 00           nop
70ff 00           nop
7100 00           nop
7101 00           nop
7102 00           nop
7103 00           nop
7104 00           nop
7105 00           nop
7106 00           nop
7107 00           nop
7108 00           nop
7109 00           nop
710a 00           nop
710b 00           nop
710c 00           nop
710d 00           nop
710e 00           nop
710f 00           nop
7110 00           nop
7111 00           nop
7112 00           nop
7113 00           nop
7114 00           nop
7115 00           nop
7116 00           nop
7117 00           nop
7118 00           nop
7119 00           nop
711a 00           nop
711b 00           nop
711c 00           nop
711d 00           nop
711e 00           nop
711f 00           nop
7120 00           nop
7121 00           nop
7122 00           nop
7123 00           nop
7124 00           nop
7125 00           nop
7126 00           nop
7127 00           nop
7128 00           nop
7129 00           nop
712a 00           nop
712b 00           nop
712c 00           nop
712d 00           nop
712e 00           nop
712f 00           nop
7130 00           nop
7131 00           nop
7132 00           nop
7133 00           nop
7134 00           nop
7135 00           nop
7136 00           nop
7137 00           nop
7138 00           nop
7139 00           nop
713a 00           nop
713b 00           nop
713c 00           nop
713d 00           nop
713e 00           nop
713f 00           nop
7140 00           nop
7141 00           nop
7142 00           nop
7143 00           nop
7144 00           nop
7145 00           nop
7146 00           nop
7147 00           nop
7148 00           nop
7149 00           nop
714a 00           nop
714b 00           nop
714c 00           nop
714d 00           nop
714e 00           nop
714f 00           nop
7150 00           nop
7151 00           nop
7152 00           nop
7153 00           nop
7154 00           nop
7155 00           nop
7156 00           nop
7157 00           nop
7158 00           nop
7159 00           nop
715a 00           nop
715b 00           nop
715c 00           nop
715d 00           nop
715e 00           nop
715f 00           nop
7160 00           nop
7161 00           nop
7162 00           nop
7163 00           nop
7164 00           nop
7165 00           nop
7166 00           nop
7167 00           nop
7168 00           nop
7169 00           nop
716a 00           nop
716b 00           nop
716c 00           nop
716d 00           nop
716e 00           nop
716f 00           nop
7170 00           nop
7171 00           nop
7172 00           nop
7173 00           nop
7174 00           nop
7175 00           nop
7176 00           nop
7177 00           nop
7178 00           nop
7179 00           nop
717a 00           nop
717b 00           nop
717c 00           nop
717d 00           nop
717e 00           nop
717f 00           nop
7180 00           nop
7181 00           nop
7182 00           nop
7183 00           nop
7184 00           nop
7185 00           nop
7186 00           nop
7187 00           nop
7188 00           nop
7189 00           nop
718a 00           nop
718b 00           nop
718c 00           nop
718d 00           nop
718e 00           nop
718f 00           nop
7190 00           nop
7191 00           nop
7192 00           nop
7193 00           nop
7194 00           nop
7195 00           nop
7196 00           nop
7197 00           nop
7198 00           nop
7199 00           nop
719a 00           nop
719b 00           nop
719c 00           nop
719d 00           nop
719e 00           nop
719f 00           nop
71a0 00           nop
71a1 00           nop
71a2 00           nop
71a3 00           nop
71a4 00           nop
71a5 00           nop
71a6 00           nop
71a7 00           nop
71a8 00           nop
71a9 00           nop
71aa 00           nop
71ab 00           nop
71ac 00           nop
71ad 00           nop
71ae 00           nop
71af 00           nop
71b0 00           nop
71b1 00           nop
71b2 00           nop
71b3 00           nop
71b4 00           nop
71b5 00           nop
71b6 00           nop
71b7 00           nop
71b8 00           nop
71b9 00           nop
71ba 00           nop
71bb 00           nop
71bc 00           nop
71bd 00           nop
71be 00           nop
71bf 00           nop
71c0 00           nop
71c1 00           nop
71c2 00           nop
71c3 00           nop
71c4 00           nop
71c5 00           nop
71c6 00           nop
71c7 00           nop
71c8 00           nop
71c9 00           nop
71ca 00           nop
71cb 00           nop
71cc 00           nop
71cd 00           nop
71ce 00           nop
71cf 00           nop
71d0 00           nop
71d1 00           nop
71d2 00           nop
71d3 00           nop
71d4 00           nop
71d5 00           nop
71d6 00           nop
71d7 00           nop
71d8 00           nop
71d9 00           nop
71da 00           nop
71db 00           nop
71dc 00           nop
71dd 00           nop
71de 00           nop
71df 00           nop
71e0 00           nop
71e1 00           nop
71e2 00           nop
71e3 00           nop
71e4 00           nop
71e5 00           nop
71e6 00           nop
71e7 00           nop
71e8 00           nop
71e9 00           nop
71ea 00           nop
71eb 2863         jr Cz, D$ + 101
71ed 29           add Phl, Phl
71ee 2074         jr Cnz, D$ + 118
71f0 68           ld Rl, Rb
71f1 65           ld Rh, Rl
71f2 2046         jr Cnz, D$ + 72
71f4 4d           ld Rc, Rl
71f5 52           ld Rd, Rd
71f6 2067         jr Cnz, D$ + 105
71f8 61           ld Rh, Rc
71f9 6e           ld Rl, R(hl)
71fa 67           ld Rh, Ra
71fb 206f         jr Cnz, D$ + 113
71fd 66           ld Rh, R(hl)
71fe 2054         jr Cnz, D$ + 86
7200 6f           ld Rl, Ra
7201 75           ld R(hl), Rl
7202 6c           ld Rl, Rh
7203 6f           ld Rl, Ra
7204 75           ld R(hl), Rl
7205 73           ld R(hl), Re
7206 65           ld Rh, Rl
7207 202e         jr Cnz, D$ + 48
7209 2046         jr Cnz, D$ + 72
720b 52           ld Rd, Rd
720c 41           ld Rb, Rc
720d 4e           ld Rc, R(hl)
720e 43           ld Rb, Re
720f 45           ld Rb, Rl
7210 202e         jr Cnz, D$ + 48
7212 2079         jr Cnz, D$ + 123
7214 65           ld Rh, Rl
7215 61           ld Rh, Rc
7216 72           ld R(hl), Rd
7217 2031         jr Cnz, D$ + 51
7219 39           add Phl, Psp
721a 3836         jr Cc, D$ + 56
721c 2028         jr Cnz, D$ + 42
721e 63           ld Rh, Re
721f 29           add Phl, Phl
7220 4d           ld Rc, Rl
7221 53           ld Rd, Re
7222 4c           ld Rc, Rh
7223 00           nop
7224 00           nop