.global Letter_A
.global Letter_B
.global Letter_C
.global Letter_D
.global Letter_E
.global Letter_F
.global Letter_G
.global Letter_H
.global Letter_I
.global Letter_J
.global Letter_K
.global Letter_L
.global Letter_M
.global Letter_N
.global Letter_O
.global Letter_P
.global Letter_Q
.global Letter_R
.global Letter_S
.global Letter_T
.global Letter_U
.global Letter_V
.global Letter_W
.global Letter_X
.global Letter_Y
.global Letter_Z
.global Number_0
.global Number_1
.global Number_2
.global Number_3
.global Number_4
.global Number_5
.global Number_6
.global Number_7
.global Number_8
.global Number_9


.data
.align 4
/*
Letter_A:
.byte 0x18
.byte 0x24
.byte 0x42
.byte 0x7E
.byte 0x42
.byte 0x42
.byte 0x42
.byte 0x42
*/

Letter_A:
.byte 0b00011000
.byte 0b00100100
.byte 0b01000010
.byte 0b01111110
.byte 0b01000010
.byte 0b01000010
.byte 0b01000010
.byte 0b01000010


Letter_B:
.byte 0b01111000
.byte 0b01000100
.byte 0b01000100
.byte 0b01111000
.byte 0b01111000
.byte 0b01000100
.byte 0b01000100
.byte 0b01111000

Letter_C:
.byte 0b01111100
.byte 0b10000010
.byte 0b10000010
.byte 0b10000000
.byte 0b10000000
.byte 0b10000010
.byte 0b10000010
.byte 0b01111100

Letter_D:
.byte 0b11111000
.byte 0b10000100
.byte 0b10000010
.byte 0b10000010
.byte 0b10000010
.byte 0b10000010
.byte 0b10000100
.byte 0b11111000

Letter_E:
.byte 0b11111100
.byte 0b10000000
.byte 0b10000000
.byte 0b11110000
.byte 0b11110000
.byte 0b10000000
.byte 0b10000000
.byte 0b11111100

Letter_F:
.byte 0b11111100
.byte 0b10000000
.byte 0b10000000
.byte 0b11110000
.byte 0b11110000
.byte 0b10000000
.byte 0b10000000
.byte 0b10000000

Letter_G:
.byte 0b00111100
.byte 0b01000010
.byte 0b10000010
.byte 0b10000000
.byte 0b10000000
.byte 0b10001110
.byte 0b01000010
.byte 0b00111110

Letter_H:
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b11111111
.byte 0b11111111
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001

Letter_I:
.byte 0b01111110
.byte 0b00011000
.byte 0b00011000
.byte 0b00011000
.byte 0b00011000
.byte 0b00011000
.byte 0b00011000
.byte 0b01111110

Letter_J:
.byte 0b01111111
.byte 0b00001000
.byte 0b00001000
.byte 0b00001000
.byte 0b00001000
.byte 0b10001000
.byte 0b10001000
.byte 0b11111000

Letter_K:
.byte 0b10000110
.byte 0b10001000
.byte 0b10010000
.byte 0b11100000
.byte 0b11100000
.byte 0b10010000
.byte 0b10001000
.byte 0b10000110

Letter_L:
.byte 0b10000000
.byte 0b10000000
.byte 0b10000000
.byte 0b10000000
.byte 0b10000000
.byte 0b10000011
.byte 0b10000011
.byte 0b11111111

Letter_M:
.byte 0b10000001
.byte 0b11000011
.byte 0b10100101
.byte 0b10011001
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001

Letter_N:
.byte 0b10000001
.byte 0b11000001
.byte 0b10100001
.byte 0b10010001
.byte 0b10001001
.byte 0b10000101
.byte 0b10000011
.byte 0b10000001

Letter_O:
.byte 0b00111100
.byte 0b01000010
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b01000010
.byte 0b00111100

Letter_P:
.byte 0b11111100
.byte 0b10000100
.byte 0b10000100
.byte 0b10000100
.byte 0b11111100
.byte 0b10000000
.byte 0b10000000
.byte 0b10000000

Letter_Q:
.byte 0b00111100
.byte 0b01000010
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b10000101
.byte 0b01000010
.byte 0b00111101

Letter_R:
.byte 0b11111100
.byte 0b10000010
.byte 0b10000010
.byte 0b11111100
.byte 0b10100000
.byte 0b10010000
.byte 0b10001000
.byte 0b10000100

Letter_S:
.byte 0b01111100
.byte 0b01000100
.byte 0b01000000
.byte 0b01111100
.byte 0b00000100
.byte 0b00000100
.byte 0b01000100
.byte 0b01111100

Letter_T:
.byte 0b11111111
.byte 0b00011000
.byte 0b00011000
.byte 0b00011000
.byte 0b00011000
.byte 0b00011000
.byte 0b00011000
.byte 0b00011000

Letter_U:
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b11111111

Letter_V:
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b11000011
.byte 0b01100110
.byte 0b00111100
.byte 0b00011000

Letter_W:
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b10000001
.byte 0b10011001
.byte 0b01011010
.byte 0b01111110
.byte 0b00100100

Letter_X:
.byte 0b11000011
.byte 0b01000010
.byte 0b00100100
.byte 0b00011000
.byte 0b00011000
.byte 0b00100100
.byte 0b01000010
.byte 0b11000011

Letter_Y:
.byte 0b01000010
.byte 0b01000010
.byte 0b01000010
.byte 0b01000010
.byte 0b01111110
.byte 0b00011000
.byte 0b00011000
.byte 0b00011000

Letter_Z:
.byte 0b11111111
.byte 0b00000010
.byte 0b00000100
.byte 0b00001000
.byte 0b00010000
.byte 0b00100000
.byte 0b01000000
.byte 0b11111111

Number_1:
.byte 0b00111000
.byte 0b01111000
.byte 0b11011000
.byte 0b00011000
.byte 0b00011000
.byte 0b00011000
.byte 0b00011000
.byte 0b01111110

Number_2:
.byte 0b00111000
.byte 0b01101100
.byte 0b11000110
.byte 0b10000110
.byte 0b00001100
.byte 0b00011000
.byte 0b00110000
.byte 0b01111110

Number_3:
.byte 0b01111100
.byte 0b00000110
.byte 0b00000011
.byte 0b00111110
.byte 0b00111110
.byte 0b00000011
.byte 0b00000110
.byte 0b01111100

Number_4:
.byte 0b00000111
.byte 0b00001111
.byte 0b00011011
.byte 0b00110011
.byte 0b01111111
.byte 0b11111111
.byte 0b00000011
.byte 0b00000011

Number_5:
.byte 0b11111111
.byte 0b11111111
.byte 0b11000000
.byte 0b11111100
.byte 0b00000110
.byte 0b00000011
.byte 0b00000110
.byte 0b11111100

Number_6:
.byte 0b00001110
.byte 0b00011000
.byte 0b00110000
.byte 0b01100000
.byte 0b11111110
.byte 0b11100011
.byte 0b01100011
.byte 0b00111110

Number_7:
.byte 0b11111111
.byte 0b11111111
.byte 0b00000110
.byte 0b00001100
.byte 0b00011000
.byte 0b00110000
.byte 0b01100000
.byte 0b11000000

Number_8:
.byte 0b00111100
.byte 0b01100110
.byte 0b01100110
.byte 0b00111100
.byte 0b00111100
.byte 0b01100110
.byte 0b01100110
.byte 0b00111100

Number_9:
.byte 0b01111100
.byte 0b11000110
.byte 0b11000111
.byte 0b01111111
.byte 0b00000110
.byte 0b00001100
.byte 0b00011000
.byte 0b01110000

Number_0:
.byte 0b00111100
.byte 0b01100110
.byte 0b11000111
.byte 0b11001011
.byte 0b11010011
.byte 0b11100011
.byte 0b01100110
.byte 0b00111100
