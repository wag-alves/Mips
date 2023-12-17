.text
main:
    addi $s7, $zero, 0      # Inicializa contador de primos
    addi $v0, $zero, 5      # Syscall para ler inteiro (A)
    syscall
    move $t0, $v0           # A

    move $t1, $t0           # Copia A para T1

    addi $v0, $zero, 5      # Syscall para ler inteiro (B)
    syscall
    move $t9, $v0           # B

    move $t8, $t9           # Copia B para T8
    addi $t8, $t8, 1        # B + 1

primo:
    addi $s0, $zero, 2      # Começa com 2 (primeiro número primo)

again:
    beq $s0, $t0, next      # Se o incremento for igual ao valor de A, saia do loop
    div $t0, $s0
    mfhi $s1

    beq $s1, $zero, not_prime  # Se o resto da divisão for zero, não é primo

here:
    addi $s0, $s0, 1       # Incrementa o começo
    j again

not_prime:
    addi $s7, $s7, 1       # Incrementa o contador

next:
    beq $t0, $t9, mostra  # Se t0 for igual a B, vá para mostra
    j primo

mostra:
    add $a0, $t0, $zero
    li $v0, 1
    syscall

    li $a0, ' '
    li $v0, 11
    syscall

    j volta

volta:
    addi $t0, $t0, 1
    j primo

fim:
    li $v0, 10
    syscall