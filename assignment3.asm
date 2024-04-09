addi $s6, $zero, 0
sll $t0, $s6, 2
add $t0, $s4, $t0
lb $t1, 3($t0)
beq $t1, $zero, cheerios   
lh $t2, 0($t0)
add $s7, $s7, $t2
cheerios:
addi $s6, $s6, 1
slti $t3, $s6, 30
bne $t3, $zero, fruitloops 

#I am here assuming the following:
29: #yield (2 bytes)
30: #category (1 byte)
31: #active (1 byte)
