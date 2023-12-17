.text
main:	addi $s0,$zero,0
	addi $2,$zero,5
	syscall
	add $8,$2,$0      # A
	
	addi $2,$zero,5
	syscall
	add $9,$2,$0      # B
	addi $10,$9,1     # B + 1 
	blt $8,2,proximo
	
begin:	add $25,$zero,$zero
	addi $11,$0,2     #num
again:	beq $11,$8,imp
	beq $8,$10,fim
	div $8,$11
	mfhi $24
	beq $24,$zero,cont
num:	addi $11,$11,1
	j again
	
cont:	addi $25,$25,1
	beq $25,1,proximo
	j num

proximo:addi $8,$8,1
	j begin
	
imp:	beq $25,$zero,primo
	addi $8,$8,1
	j begin
	
primo:	add $4,$8,$0
	addi $2,$0,1
	syscall
	addi $4,$zero, ' '
	addi $2,$zero,11
	syscall
	addi $s0,$s0,1
	addi $8,$8,1
	j begin

fim:	addi $4,$0,'\n'
	syscall
	add $4,$0,$s0
	addi $2,$0,1
	syscall
	addi $2,$0,10
	syscall