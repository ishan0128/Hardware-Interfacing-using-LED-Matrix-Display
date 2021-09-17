/*Template Author - Wing Hoy. Last edited on Mar 18, 2021 */
/*-----------------DO NOT MODIFY--------*/
.global Display
.global printf
.global cr
.extern value
.extern getstring
.extern offled()
.extern onled()
.extern column()
.extern Column()
.extern row()
.extern Row()

.text
Display:
/*--------------------------------------*/

/*-------My code starts here ------------*/
//From main:
//R4 on stack as pattern address

mov r3, lr
push {r3}
ldr r4, [SP, #4]		//Load R4 from SP into R4 (Loads R4 with mem address)
push {r4}				//Original value preserved in R4

//Need 3 counters
mov r5, #0			//Row counter
mov r6, #7			//Column counter
mov r7, #0			//Loop counter
//r0-r3 used by row/col. subr.

//Initialize pointer to 0,0 and turn off LEDs
mov r0, #0 			//As row and column functions read from r0
bl Row				//Initializes row to position 0
mov r0, #0
bl Column			//Initializes column to position 0 ***Column Error Happens here***
bl offled			//Ensures all LEDs are off on startup

Repeat1:
mov r5, #0			//Reset row counter to 0
mov r6, #7			//Reset column counter to 0 (These are so that every succesive loop resets row/col. counters

Repeat2:
ldr r4, [r4]		//R4 SHOULD be the binary string of 0s and 1s
					//R4 GETS LOADED WITH THE FIRST 4 BYTES OF R4

Repeat3:
lsr r4, #1			//lsr r2: shifts right most bit into C bit in APSR Flags
					//need to lsr so that we can move bits from 1st byte into C first,
					//then next bytes will follow later
					//we can use the C bit to determine if we need to light the LED or not in row x column y
					//where x and y are the numbers stored in the counters
					//C=1: Light LED
					//C=0: Don't light LED

bcc C0				//C=0 Branch
bcs C1				//C=1 Branch
//C0/C1: Essentially a compare statement checking if C bit is 1 or 0


C0:
//sub r6, r6, #1		//Inc to next column
//b Repeat3
b CheckCol				//R4 being first 4 bytes means that we have to check column number in this step
//C0: Increments column to next bit and branches back to Repeat3

C1:
mov r0, r5			//Load row num into r0
bl Row				//Loads row number
mov r0, r6			//Load column num into r0
bl Column			//Loads column number
bl onled
mov r0, #100
bl HAL_Delay		//Delay onled by 1ms
bl offled
//C1: Turns correct led on and off
b CheckCol

CheckCol:
cmp r6, #0			//Are we at column 0?
bne IncCol
beq CheckRow

IncCol:
sub r6, r6, #1		//Inc to next column
b Repeat3

CheckRow:
cmp r5, #7			//Are we at row 7?
bne IncRow
beq LoopNum

IncRow:
add r5, r5, #1		//Move to next row
mov r6, #7			//Reset Col.
ldr r4, [SP]		//get value of r4 off of stack
add r4, r4, #0x1	//increment to next byte
str r4, [SP]		//return to stack in same position
					//This should effectively shift r4 to the next byte in memory correctly
b Repeat2			//Branch back to Repeat2

LoopNum:
cmp r7, #100		//Has the above looped 100 times? (To produce an image)
bne ReRun
beq End

ReRun:
ldr r4, [SP, #8]	//restore R4 to its intial value
str r4, [SP]
add r7, r7, #1		//inc loop counter
b Repeat1			//branch back to Repeat1


End:
pop {r4}
mov lr, r3			//SP is at R3 which holds preserved lr value
pop {r3}			//restore stack
bx lr				//branch back to main routine











/*-------Code ends here ---------------------*/

/*-----------------DO NOT MODIFY--------*/


.data
/*--------------------------------------*/
