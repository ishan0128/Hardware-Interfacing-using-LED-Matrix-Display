/*Template Author - Wing Hoy. Last edited on Mar 18, 2021 */
/*-----------------DO NOT MODIFY--------*/
.global Convert
.global printf
.global cr
.extern value
.extern getstring
.extern convert1

.text
Convert:
/*--------------------------------------*/

/*-------My code starts here ------------*/

//I THINK this works, but I'm not sure if the output back to R0 from convert1 is correct
//Update: All of this SHOULD be right. The value in R4 looks weird because it's the decimal equivalent
//		  of the memory address that shows up in the register view.

mov r6, lr
push {r6}			//Preserve value in lr for later to branch back

Load:
ldr r0, [SP, #4]	//Load R0 with value in R4 (SP, #4) (User input)
push {r0}

Converting:
bl convert1
//In convert1:
//Determines what letter/number is stored in R0 (Value of R4 on stack)
//Stores corresponding mem address in R0

End:
str r0, [SP, #8]	//Stores R0 (pattern address) onto R4 on stack
pop {r0}
mov lr, r6			//move preserved value of lr back into lr
pop {r6}
bx lr
//R4 on stack is now replaced by mem address corresponding to user entry
/*-------Code ends here ---------------------*/

/*-----------------DO NOT MODIFY--------*/

.data
/*--------------------------------------*/
