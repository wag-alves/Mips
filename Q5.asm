.text
main: addi $15, $0, 0 
      addi $2, $0, 5
      syscall
      addi $8, $2, -2 
      addi $2, $0, 5
      syscall
      addi $9, $2, 0
      addi $24, $2, 0
      addi $2, $0, 5
      syscall
      addi $10, $2, 0
      addi $25, $2, 0      
     
for:  beq $8, $0, fimlaco
      addi $2, $0, 5
      syscall
      add $11, $0, $2
      slt  $12, $9, $10 
      slt $13, $11, $10 
      and $14, $12, $13
      beq $14, $0, naopico
      addi $15, $15, 1  
      
naopico:      
      add $9, $10, $0
      add $10, $11, $0
      addi $8, $8, -1
      j for
      
fimlaco:  
      add $11, $24, $0
      slt $12, $9, $10 
      slt $13, $11, $10 
      and $14, $12, $13
      beq $14, $0, naopico2
      addi $15, $15, 1  
      
naopico2:      
      add $9, $10, $0
      add $10, $11, $0
      add $11, $25, $0
      slt $12, $9, $10 
      slt $13, $11, $10 
      and $14, $12, $13
      beq $14, $0, naopico3
      addi $15, $15, 1  
      
naopico3:      
      add $4, $15, $0
      addi $2, $0, 1
      syscall
      addi $2, $0, 10
      syscall