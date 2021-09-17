/*Author - Wing Hoy. Last edited on Mar 18, 2021 */
/*-----------------DO NOT MODIFY--------*/
.global Welcomeprompt
.global printf
.global cr
.extern value
.extern getstring
.extern getchar
.extern putchar

.text
Welcomeprompt:
/*--------------------------------------*/

/*-------Students write their code here ------------*/

//I think this works fine
//If it doesn't check how user input is stored into memory and if that's stored to the right plcae in the stack

mov r6, lr
push {r6}			//Preserve value in lr for later to branch back

Repeat:
bl cr
ldr r0, =Input		//Please input ASCII A-Z 0-9
bl printf
bl cr
bl getchar     	// User enters char and stores in r0
mov r4, r0			//Puts user entry into r4
bl putchar			//Prints entered char to MTTY
bl cr
//Above takes input from user and puts into register R4
//Now, we need to compare it with out range of values

Chars:
cmp r4, #0x41		//#0x41: Hex value of ASCII A
blo Nums
cmp r4, #0x5A		//#0x5A: Hex value of ASCII Z
bhi Nums
//Above will branch to Nums if Char is not between A-Z because
//it could be a number still and not an error yet
b Store
//If it is within this range we branch to store

Nums:
cmp r4, #0x30		//0x30: Hex value of ASCII 0
blo Error
cmp r4, #0x39		//0x39: Hex value of ASCII 9
bhi Error
//Above checks if char is 0-9
//If not it branches to error
b Store
//If it is then we branch to store

Error:
ldr r0, =Error1		//Error string
bl printf
bl cr
b Repeat			//Loop back so new string can be entered

Store:
str r4, [SP, #4] 	//Stores val entered by user into R4 position on the stack
b End

End:
mov lr, r6			//move preserved value of lr back into lr
pop {r6}
bx lr
/*-------Code ends here ---------------------*/

/*-----------------DO NOT MODIFY--------*/

.data
Input:
.string "Please input a character between A-Z or 0-9"
Error1:
.string "Invalid entry, please reenter a new value"
/*--------------------------------------*/

