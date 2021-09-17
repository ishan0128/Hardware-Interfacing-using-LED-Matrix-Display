.global convert1
.text

convert1:
PUSH {lr}
/*-------------Numbers---------------------*/
ldr r0,[sp,#4]
cmp r0,#0x30
beq Num0

cmp r0,#0x31
beq Num1

cmp r0,#0x32
beq Num2

cmp r0,#0x33
beq Num3

cmp r0,#0x34
beq Num4

cmp r0,#0x35
beq Num5

cmp r0,#0x36
beq Num6

cmp r0,#0x37
beq Num7

cmp r0,#0x38
beq Num8

cmp r0,#0x39
beq Num9

/*-------------------------------*/

/*---------LETTERS----------------*/
cmp r0,#0x41
beq LetA

cmp r0,#0x42
beq LetB

cmp r0,#0x43
beq LetC

cmp r0,#0x44
beq LetD

cmp r0,#0x45
beq LetE

cmp r0,#0x46
beq LetF

cmp r0,#0x47
beq LetG

cmp r0,#0x48
beq LetH

cmp r0,#0x49
beq LetI

cmp r0,#0x4A
beq LetJ

cmp r0,#0x4B
beq LetK

cmp r0,#0x4C
beq LetL

cmp r0,#0x4D
beq LetM

cmp r0,#0x4E
beq LetN

bal Next
/*-------------------------------*/
Num0:
ldr r0,=Number_0
str r0,[sp,#4]
bl Done

Num1:
ldr r0,=Number_1
str r0,[sp,#4]
bl Done

Num2:
ldr r0,=Number_2
str r0,[sp,#4]
bl Done

Num3:
ldr r0,=Number_3
str r0,[sp,#4]
bl Done

Num4:
ldr r0,=Number_4
str r0,[sp,#4]
bl Done

Num5:
ldr r0,=Number_5
str r0,[sp,#4]
bl Done

Num6:
ldr r0,=Number_6
str r0,[sp,#4]
bl Done

Num7:
ldr r0,=Number_7
str r0,[sp,#4]
bl Done

Num8:
ldr r0,=Number_8
str r0,[sp,#4]
bl Done

Num9:
ldr r0,=Number_9
str r0,[sp,#4]
bl Done

LetA:
ldr r0,=Letter_A
str r0,[sp,#4]
bl Done

LetB:
ldr r0,=Letter_B
str r0,[sp,#4]
bl Done

LetC:
ldr r0,=Letter_C
str r0,[sp,#4]
bl Done

LetD:
ldr r0,=Letter_D
str r0,[sp,#4]
bl Done

LetE:
ldr r0,=Letter_E
str r0,[sp,#4]
bl Done

LetF:
ldr r0,=Letter_F
str r0,[sp,#4]
bl Done

LetG:
ldr r0,=Letter_G
str r0,[sp,#4]
bl Done

LetH:
ldr r0,=Letter_H
str r0,[sp,#4]
bl Done

LetI:
ldr r0,=Letter_I
str r0,[sp,#4]
bl Done

LetJ:
ldr r0,=Letter_J
str r0,[sp,#4]
bl Done

LetK:
ldr r0,=Letter_K
str r0,[sp,#4]
bl Done

LetL:
ldr r0,=Letter_L
str r0,[sp,#4]
bl Done

LetM:
ldr r0,=Letter_M
str r0,[sp,#4]
bl Done

LetN:
ldr r0,=Letter_N
str r0,[sp,#4]
bl Done


Next:
cmp r0,#0x4F
beq LetO

cmp r0,#0x50
beq LetP

cmp r0,#0x51
beq LetQ

cmp r0,#0x52
beq LetR

cmp r0,#0x53
beq LetS

cmp r0,#0x54
beq LetT

cmp r0,#0x55
beq LetU

cmp r0,#0x56
beq LetV

cmp r0,#0x57
beq LetW

cmp r0,#0x58
beq LetX

cmp r0,#0x59
beq LetY

cmp r0,#0x5A
beq LetZ


LetO:
ldr r0,=Letter_O
str r0,[sp,#4]
bl Done

LetP:
ldr r0,=Letter_P
str r0,[sp,#4]
bl Done

LetQ:
ldr r0,=Letter_Q
str r0,[sp,#4]
bl Done

LetR:
ldr r0,=Letter_R
str r0,[sp,#4]
bl Done

LetS:
ldr r0,=Letter_S
str r0,[sp,#4]
bl Done

LetT:
ldr r0,=Letter_T
str r0,[sp,#4]
bl Done

LetU:
ldr r0,=Letter_U
str r0,[sp,#4]
bl Done

LetV:
ldr r0,=Letter_V
str r0,[sp,#4]
bl Done

LetW:
ldr r0,=Letter_W
str r0,[sp,#4]
bl Done

LetX:
ldr r0,=Letter_X
str r0,[sp,#4]
bl Done

LetY:
ldr r0,=Letter_Y
str r0,[sp,#4]
bl Done

LetZ:
ldr r0,=Letter_Z
str r0,[sp,#4]
bl Done

Done:
POP {PC}

.data
/*--------------------------------------*/
//.align 2
//Letter_A:
//.byte 0b00011000
//.byte 0b00100100
//.byte 0b01000010
//.byte 0b01111110
//.byte 0b01000010
//.byte 0b01000010
//.byte 0b01000010
//.byte 0b01000010
