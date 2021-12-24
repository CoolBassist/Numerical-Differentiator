.macro getgr(%value)
li t0 %value
mul t1 t0 a1
mul t2 t1 a2
add t4 t4 t2
addi a1 a1 1
mul a2 a2 a0
.end_macro

li a0 4 #x value
li a1 1
li a2 1

#polynomial is 2x^3 + 4x^2 + 10x + 25

#load in coefficients smallest to highest, ignoring the constant

getgr(10)
getgr(4)
getgr(2)

li a7 1
add a0 zero t4
ecall