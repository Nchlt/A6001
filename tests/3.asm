.text
	move $fp, $sp
	addi $fp, $fp, -4
	lw $a0, 0($a1)
	jal atoi
	sw $v0, 0($fp)
	addi $sp, $sp, -52
#_main_0
	li $v0, 9
	li $t1, 4
	li $a0, 11
	mul $a0, $a0, $t1
	addi $a0, $a0, 4
	addi $t0, $a0, 0
	syscall
	sw $t0, 0($v0)
	sw $v0, -8($fp)
#_main_1
	lw $t0, -8($fp)
	sw $t0, -52($fp)
#_main_2
	li $t0, 0
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -52($fp)
	add $t0, $t0, $t1
	li $t1, 0
	sw $t1, 0($t0)
#_main_3
	li $t0, 1
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -52($fp)
	add $t0, $t0, $t1
	li $t1, 1
	sw $t1, 0($t0)
#_main_4
	li $t0, 2
	sw $t0, -44($fp)
#_main_5
#While
#_main_6
	b _label_main_2
#_label_main_1
_label_main_1:
#_main_8
#Corps de boucle
#_main_9
	lw $t0, -44($fp)
	li $t1, 1
	sub $t0, $t0, $t1
	sw $t0, -16($fp)
#_main_10
	lw $t0, -44($fp)
	li $t1, 2
	sub $t0, $t0, $t1
	sw $t0, -28($fp)
#_main_11
	lw $t0, -20($fp)
	lw $t1, -32($fp)
	add $t0, $t0, $t1
	sw $t0, -40($fp)
#_main_12
	lw $t0, -44($fp)
	li $t1, 4
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -52($fp)
	add $t0, $t0, $t1
	lw $t1, -40($fp)
	sw $t1, 0($t0)
#_main_13
	lw $t0, -44($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -12($fp)
#_main_14
	lw $t0, -12($fp)
	sw $t0, -44($fp)
#_label_main_2
_label_main_2:
#_main_16
#Test de boucle
#_main_17
	lw $t0, -44($fp)
	li $t1, 11
	sle $t0, $t0, $t1
	sw $t0, -4($fp)
#_main_18
	lw $t0, -4($fp)
	bnez $t0, _label_main_1
#_main_19
#Fin boucle
#_main_20
	li $t0, 4
	li $t1, 10
	mul $t0, $t0, $t1
	addi $t0, $t0, 4
	lw $t1, -52($fp)
	add $t0, $t0, $t1
	lw $t0, 0($t0)
	sw $t0, -48($fp)
#_main_21
	lw $a0, -48($fp)
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
