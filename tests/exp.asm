.text
	move $fp, $sp
	addi $fp, $fp, -4
	lw $a0, 0($a1)
	jal atoi
	sw $v0, 0($fp)
	addi $sp, $sp, -12
#_main_0
	li $v0, 9
	li $t1, 4
	li $a0, 10
	mul $a0, $a0, $t1
	addi $a0, $a0, 4
	addi $t0, $a0, 0
	syscall
	sw $t0, 0($v0)
	sw $v0, -4($fp)
#_main_1
	lw $t0, -4($fp)
	sw $t0, -12($fp)
#_main_2
	li $t0, 0
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	blez $t0, atoi_error
	lw $t1, -12($fp)
	lw $t1, 0($t1)
	blt $t1, $t0, atoi_error
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	li $t1, 0
	sw $t1, 0($t0)
#_main_3
	li $t0, 1
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	blez $t0, atoi_error
	lw $t1, -12($fp)
	lw $t1, 0($t1)
	blt $t1, $t0, atoi_error
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	li $t1, 2
	sw $t1, 0($t0)
#_main_4
	li $t0, 2
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	blez $t0, atoi_error
	lw $t1, -12($fp)
	lw $t1, 0($t1)
	blt $t1, $t0, atoi_error
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	li $t1, 8
	sw $t1, 0($t0)
#_main_5
	li $t0, 3
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	blez $t0, atoi_error
	lw $t1, -12($fp)
	lw $t1, 0($t1)
	blt $t1, $t0, atoi_error
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	li $t1, 89
	sw $t1, 0($t0)
#_main_6
	li $t0, 11
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	blez $t0, atoi_error
	lw $t1, -12($fp)
	lw $t1, 0($t1)
	blt $t1, $t0, atoi_error
	lw $t1, -12($fp)
	add $t0, $t0, $t1
	li $t1, 42
	sw $t1, 0($t0)
#_main_7
	li $a0, 37
	li $v0, 11
	syscall
	li $v0, 10
	syscall
atoi:
	move $t0, $a0
	li $t1, 0
	li $t2, 10
atoi_loop:
	lbu $t3, 0($t0)
	beq $t3, $zero, atoi_end
	li $t4, 48
	blt $t3, $t4, atoi_error
	li $t4, 57
	bgt $t3, $t4, atoi_error
	addi $t3, $t3, -48
	mul $t1, $t1, $t2
	add $t1, $t1, $t3
	addi $t0, $t0, 1
	b atoi_loop
atoi_error:
	li $v0, 10
	syscall
atoi_end:
	move $v0, $t1
	jr $ra
.data
