generate:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $s0, 0($sp)
add $v1, $zero, $zero
addi $s0, $zero, 32
loopz:
jal RANDOM
sll $v1, $v1, 1
or $v1, $v1, $v0
addi $s0, $s0, -1
bne $s0, $zero, loopz
lw $ra, 4($sp)
lw $s0, 0($sp)
addi $sp, $sp, 8
jr $ra
