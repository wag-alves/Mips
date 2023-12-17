.text
main:	addi $s7,$zero,0
	addi $2,$zero,5
	syscall
	add $t0,$zero,$2  # A
	add $t1,$zero,$t0  #copia A
	addi $2,$0,5
	syscall
	add $t9,$zero,$2  # B
	add $t8,$zero,$t9 
	addi $t8,$t8,1    #copia B + 1


primo:	addi $s0,$zero,1   #começo = 1

again:	beq $s0,$t0,jadeu  #se o incremento for igual ao valor de A, sai
	div $t0,$s0
	mfhi $s1
	beq $s1,$zero,cont  #se for igual a 0 é primo
here:	addi $s0,$s0,1     #incremento em começo
	j again
	
cont:	addi $s7,$s7,1      #contador
	beq $s7,2,volta
	j here

jadeu:	beq $s7,1,mostra
	j volta

mostra:	add $4,$8,$zero
	addi $2,$zero,1
	syscall
	addi $4,$zero, ' '
	addi $2,$zero,11
	syscall
	j volta
	
volta:	addi $t1,$t1,1
	add $t0,$t1,$zero
	beq $t8,$t0,fim
	j primo
	
fim:	addi $2,$zero,10
	syscall
	
