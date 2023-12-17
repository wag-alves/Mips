.text
main: 	addi $8, $zero, 0 
while: 	addi $2, $zero, 5
	syscall
	add $9, $zero, $2
	beq $9, $zero, fim
	addi $2, $zero, 5 
	syscall
	add $10, $zero, $2
	addi $2, $zero, 5 
	syscall
	add $11, $zero, $2
	addi $8, $zero, 0 

for: 	beq $8, $9, while
	addi $8, $8, 1 
	addi $2, $zero, 5 
	syscall
	add $12, $zero, $2
	addi $2, $zero, 5 
	syscall
	add $13, $zero, $2
	beq $10, $12, dv
	beq $11, $13, dv
	slt $14, $12, $10
	slt $15, $13, $11
	and $25, $14, $15
	beq $25, 1, so
	sgt $14, $12, $10
	sgt $15, $13, $11
	and $25, $14, $15
	beq $25, 1, ne
	sgt $14, $12, $10
	slt $15, $13, $11
	and $25, $14, $15
	beq $25, 1, se
	slt $14, $12, $10
	sgt $15, $13, $11
	and $25, $14, $15
	beq $25, 1, no

dv: 	addi $4, $zero, 'D'
	addi $2, $zero, 11
	syscall
	addi $4, $zero, 'V'
	addi $2, $zero, 11
	syscall
	addi $4, $zero, '\n'
	addi $2, $zero, 11
	syscall
	j for
	
no: 	addi $4, $zero, 'N'
	addi $2, $zero, 11
	syscall
	addi $4, $zero, 'O'
	addi $2, $zero, 11
	syscall
	addi $4, $zero, '\n'
	addi $2, $zero, 11
	syscall
	j for
	
ne: 	addi $4, $zero, 'N'
	addi $2, $zero, 11
	syscall
	addi $4, $zero, 'E'
	addi $2, $zero, 11
	syscall
	addi $4, $zero, '\n'
	addi $2, $zero, 11
	syscall
	j for
	
se: 	addi $4, $zero, 'S'
	addi $2, $zero, 11
	syscall
	addi $4, $zero, 'E'
	addi $2, $zero, 11
	syscall
	addi $4, $zero, '\n'
	addi $2, $zero, 11
	syscall
	j for
	
so: 	addi $4, $zero, 'S'
	addi $2, $zero, 11
	syscall
	addi $4, $zero, 'O'
	addi $2, $zero, 11
	syscall
	addi $4, $zero, '\n'
	addi $2, $zero, 11
	syscall
	j for
	
fim: 	addi $2, $zero, 10
	syscall
