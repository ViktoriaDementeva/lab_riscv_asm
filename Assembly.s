.data
N:
.word 4
M:
.word 4
matrix:
.word 1, 1, 1, 1
.word 2, 2, 2, 2
.word 3, 3, 3, 3
.word 4, 4, 4, 4
result:
.word 0
.text
main:
la a2,N
la a3,M
la a4,matrix
la a5,result
call process
call print
call exit

print:
lw a1 0(a5)
addi a0, x0, 1
ecall


exit:
addi a0,x0,10
ecall

process:
lw t1 0(a2) # N
lw t2 0(a3) # M
addi t3,x0,0 # row pointer

init:

addi t5, x0, 0 # row element number
addi t3,t3,1

cycle:
lw t6,0(a4)
addi a4, a4, 4
add t4, t4, t6
addi t5, t5, 1
bgt t5, t2, init

blt t3, t1, cycle
sw t4,0(a5)
ret
