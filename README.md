# Hardware-Interfacing-using-LED-Matrix-Display

Used the ARM Cortex M4/STM32 Nucleo in collaboration with another second-year student to run software that may be used to show certain characters or text on the LED Matrix Display.

This project is split into three parts the Welcomeprompt, Convert subroutine, and the LED subroutine.

Welcomeprompt- In the 4.a file you prompt a user to enter a keystroke on the keyboard, and the keystroke entered by the user must be a uppercase letter or number. If the condition isn't met then the will reprompt the user to enter a proper keystroke. Then the valid keystroke (4 bytes) is stored as a ACSII code and is passed down through the stack

Convert- In the file 4.b the subroutine takes the keystroke from the stack and passes out the pattern address through the stack. The pattern is stored as 8 bytes.

LED Subroutine- In the file 4.c the subroutine takes the pattern address from the stack and displays the pattern on the LED array which then lights up the proper LEDS. Normally only one LED can turn on at a time but we can get around this by changine the timing in delay, it can simulate having all of the LEDS on by cycling through the LED's at a high speed.
