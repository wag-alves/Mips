.text
main:	addi $2 $0 5 
	syscall
	add $8, $2, $0 
	addi $9, $0, 0 
	addi $25, $0, 1 

for:	beq $9, $8, fim 
	addi $9, $9, 1
	addi $2, $0, 11
	addi $4, $0, '\n' 
	syscall
	addi $24, $0, 1 

for2:	bgt $24, $9, for
	addi $2, $0, 1
	add $4, $0, $25 
	syscall
	addi $2, $0, 11
	addi $4, $0, ' '
	syscall
	addi $25, $25, 1 
	addi $24, $24, 1 
	j for2

fim:	addi $2, $0, 10
	syscall