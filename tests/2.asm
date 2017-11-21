.text
	move $fp, $sp
	addi $fp, $fp, -4
	lw $a0, 0($a1)
	jal atoi
	sw $v0, 0($fp)
	addi $sp, $sp, -24
#_main_0
	li $v0, 9
	li $t1, 4
	li $a0, 10
	mul $a0, $a0, $t1
	addi $a0, $a0, 4
	addi $t0, $a0, 0
	syscall
	sw $t0, 0($v0)
	sw $v0, -12($fp)
#_main_1
	lw $t0, -12($fp)
	sw $t0, -16($fp)
#_main_2
	li $t0, 0
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	li $t1, 48
	sw $t1, 0($t0)
#_main_3
	li $t0, 1
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	li $t1, 49
	sw $t1, 0($t0)
#_main_4
	li $t0, 2
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	li $t1, 50
	sw $t1, 0($t0)
#_main_5
	li $t0, 3
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	li $t1, 51
	sw $t1, 0($t0)
#_main_6
	li $t0, 4
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	li $t1, 52
	sw $t1, 0($t0)
#_main_7
	li $t0, 5
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	li $t1, 53
	sw $t1, 0($t0)
#_main_8
	li $t0, 6
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	li $t1, 54
	sw $t1, 0($t0)
#_main_9
	li $t0, 7
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	li $t1, 55
	sw $t1, 0($t0)
#_main_10
	li $t0, 8
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	li $t1, 56
	sw $t1, 0($t0)
#_main_11
	li $t0, 9
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	li $t1, 57
	sw $t1, 0($t0)
#_main_12
	li $t0, 0
	sw $t0, -20($fp)
#_main_13
#While
#_main_14
	b _label_main_2
#_label_main_1
_label_main_1:
#_main_16
#Corps de boucle
#_main_17
	li $t0, 4
	lw $t1, -20($fp)
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -16($fp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -24($fp)
#_main_18
	lw $t0, -20($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -8($fp)
#_main_19
	lw $t0, -8($fp)
	sw $t0, -20($fp)
#_main_20
	lw $a0, -24($fp)
	li $v0, 11
	syscall
#_label_main_2
_label_main_2:
#_main_22
#Test de boucle
#_main_23
	lw $t0, -20($fp)
	li $t1, 10
	sle $t0, $t0, $t1
	sw $t0, -4($fp)
#_main_24
	lw $t0, -4($fp)
	bnez $t0, _label_main_1
#_main_25
#Fin boucle
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
