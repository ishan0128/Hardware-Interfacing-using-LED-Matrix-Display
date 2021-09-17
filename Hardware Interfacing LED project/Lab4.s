/*Author - Wing Hoy. Last edited on Mar 18, 2021 */
/*-----------------DO NOT MODIFY--------*/
.global TestAsmCall
.global printf
.global cr
.extern value
.extern getstring

.text
TestAsmCall:
PUSH {lr}
/*--------------------------------------*/
ldr r4,=0xFFFFFFFF
PUSH {r4}
bl Welcomeprompt
POP {r4}

PUSH {r4}
bl Convert
POP {r4}

PUSH {r4}
bl Display
POP {r4}



/*-----------------DO NOT MODIFY--------*/
POP {PC}

.data
/*--------------------------------------*/
