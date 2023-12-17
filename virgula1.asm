.text
main:	addi $2,$0,5
	syscall
	add $t0,$2,$0
	syscall
	add $t1,$2,$0
	addi $t3,$0,10
	div $t0,$t1
	mflo $4
	addi $2,$0,1
	syscall
	addi $4, $0,','
	addi $2,$0,11
	syscall
	mfhi $4
	mul $4, $4,$t3
	div $4,$t1
	mflo $4
	addi $2,$0,1
	syscall
	addi $2,$0,10
	syscall