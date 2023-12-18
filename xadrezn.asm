
##	$08--> Timer sleep
##	$09-->
##	$10-->
##	$11-->
##	$12-->
##	$13--> 
##	$14-->
##	$15-->
##	$16--> Quem inimigo
##	$17--> Quem!
##	$18--> Cores lado direito
##	$19--> Cores lado esquerdo
##	$20--> Onde!
##	$21--> Onde cópia!
##	$22-->
##	$23--> 
##	$24--> Ponteiro Jogo     0x1009
##	$25--> Ponteiro BitMap   0x1001






.text 
main:	lui $24 0x1009
	li $13 3                             ## TORRE AMARELA        3
	sw $13 0($24)               
	li $13 1                             ## PIÃO AMARELO         1
	sw $13 4($24)
	li $13 0                             ## CASA VAZIA           0
	sw $13 8($24)
	sw $13 12($24)
	sw $13 16($24)
	sw $13 20($24)
	li $13 7                             ## PIÃO ROXO            7
	sw $13 24($24)
	li $13 8                             ## TORRE ROXA           8
	sw $13 28($24)
	li $13 4                             ## CAVALO AMARELO       4
	sw $13 32($24)
	li $13 1                             ## PIÃO AMARELO         1
	sw $13 36($24)
	li $13 0                             ## CASA VAZIA           0
	sw $13 40($24)
	sw $13 44($24)
	sw $13 48($24)
	sw $13 52($24) 
	li $13 7                             ## PIÃO ROXO            7
	sw $13 56($24)
	li $13 9                             ## CAVALO ROXO          9
	sw $13 60($24)
	li $13 5                             ## BISPO AMARELO        5
	sw $13 64($24)
	li $13 1                             ## PIÃO AMARELO         1
	sw $13 68($24)
	li $13 0
	sw $13 72($24)
	sw $13 76($24)
	sw $13 80($24)
	sw $13 84($24)	
	li $13 7                             ## PIÃO ROXO             7
	sw $13 88($24)
	li $13 10                            ## BISPO ROXO            10
	sw $13 92($24)
	li $13 6                             ## RAINHA AMARELA        6
	sw $13 96($24)
	li $13 1                             ## PIÃO AMARELO          1
	sw $13 100($24)
	li $13 0
	sw $13 104($24)
	sw $13 108($24)
	sw $13 112($24)
	sw $13 116($24)
	li $13 7                             ## PIÃO ROXO             2
	sw $13 120($24)
	li $13 11                            ## RAINHA ROXA           11
	sw $13 124($24)
	li $13 2                             ## REI AMARELO           2
	sw $13 128($24)
	li $13 1                             ## PIÃO AMARELO          1
	sw $13 132($24)
	li $13 0                             ## CASA VAZIA
	sw $13 136($24)
	sw $13 140($24)
	sw $13 144($24)
	sw $13 148($24)
	li $13 7                             ## PIÃO ROXO              7
	sw $13 152($24)
	li $13 12                            ## REI ROXO               12
	sw $13 156($24) 
	li $13 5                             ## BISPO AMARELO          5
	sw $13 160($24)                       
	li $13 1                             ## PIÃO AMARELO           1
	sw $13 164($24)
	li $13 0                             ## CASA VAZIA             0
	sw $13 168($24)
	sw $13 172($24)
	sw $13 176($24)
	sw $13 180($24)
	li $13 7                             ## PIÃO ROXO              7
	sw $13 184($24)
	li $13 10                            ## BISPO ROXO             10
	sw $13 188($24)
	li $13 4
	sw $13 192($24)
	li $13 1
	sw $13 196($24)
	li $13 0
	sw $13 200($24)
	sw $13 204($24)
	sw $13 208($24)
	sw $13 212($24)
	li $13 7
	sw $13 216($24)
	li $13 9
	sw $13 220($24)
	li $13 3
	sw $13 224($24)
	li $13 1
	sw $13 228($24)
	li $13 0
	sw $13 232($24)
	sw $13 236($24)
	sw $13 240($24)
	sw $13 244($24)
	li $13 7
	sw $13 248($24)
	li $13 8
	sw $13 252($24)



	lui $25 0x1001
	addi $18,$0,0x00E3E3E3       ### verde escuro
	addi $19,$0,0x00f0f0f0       ### cinza claro
	addi $20,$0,0x00DCDCDC       ### cor da barra

	addi $8,$0,16                ### cont 16  tabu
	addi $9,$0,60                ### cont 60  tabu
	addi $10,$0,1024             ### cont da barra

	addi $5,$18,0
	addi $6,$19,0
	jal come
	addi $5,$19,0
	addi $6,$18,0
	jal come
	addi $5,$18,0
	addi $6,$19,0
	jal come
	addi $5,$19,0
	addi $6,$18,0
	jal come
	addi $5,$18,0
	addi $6,$19,0
	jal come
	addi $5,$19,0
	addi $6,$18,0
	jal come
	addi $5,$18,0
	addi $6,$19,0
	jal come
	addi $5,$19,0
	addi $6,$18,0
	jal come
	jal barra
	
	
	
	
	
	
	### PEÇAS LADO ESQUERDO
	addi $19 $0 0x00ffaa00
	addi $4 $0 24604
	jal rainha
	addi $4 $0 16412
	jal bispo
	addi $4 $0 39452
	jal bispo
	addi $4 $0 31768
	jal rei
	addi $4,$0,8216
	jal cavalo
	addi $4,$0,46616
	jal cavalo
	addi $4,$0,1036
	jal torre
	addi $4,$0,54796
	jal torre
	addi $4,$0,1112
	jal piao
	addi $4,$0,8792
	jal piao
	addi $4,$0,16472
	jal piao
	addi $4,$0 24152
	jal piao
	addi $4,$4,7680
	jal piao
	addi $4,$4,7680
	jal piao
	addi $4,$4,7680
	jal piao
	addi $4,$4,7680
	jal piao
	
	
	
	addi $18,$0, 0x00392975
	addi $4,$0,1432
	jal piao2
	addi $4,$0,9112
	jal piao2
	addi $4,$0,16792
	jal piao2
	addi $4,$0, 24472
	jal piao2
	addi $4,$0 32152
	jal piao2
	addi $4,$0 39832
	jal piao2
	addi $4,$0 47512
	jal piao2
	addi $4,$0 55192
	jal piao2
	addi $4,$0,1484
	jal torre2
	addi $4,$0,55244
	jal torre2	
	addi $4 $0 39900
	jal bispo2
	addi $4 $0 16860
	jal bispo2
	addi $4 $0 25052
	jal rainha2
	addi $4 $0 47060
	jal cavalo2
	addi $4 $0 8660
	jal cavalo2
	addi $4 $0 32216
	jal rei2

	














while:	bne $0 $0 fimJ
	li $2 5
	syscall
	add $20 $2 $0
	add $21 $20 $0
	addi $2 $2 -1
	lui $24 0x1009
deNovo:	beq $2 $0 quemTaAi
	addi $24 $24 4
	addi $2 $2 -1
	j deNovo
	
	




	
quemTaAi:	lw $17 0($24)                   ## $17 contém o número representando a peça
		sw $0 0($24)
		beq $17 1 piaoAqui
		j fimJ




piaoAqui:	addi $4 $0 0
		addi $10 $0 8
		addi $21 $21 -1
		beq $21 $0 primeiraCasa
aquiAgain:	beq $21 0 vaiQuadrado
		addi $4 $4 64
aquiOmi:	addi $21 $21 -1
		addi $10 $10 -1
		beq $21 -1 proximoPassoPiao
		beq $10 $0 pula
		j aquiAgain	
		j fimJ
	
vaiQuadrado:	jal quadrado	
		addi $4 $4 2652
		jal ponto
		addi $4 $4 64
		jal ponto
		addi $4 $4 -2716
		j aquiOmi
	
	
primeiraCasa:	addi $4 $0 0
		jal quadrado
		j fimJ
	
pula:	addi $4 $4 7168
	addi $10 $0 8
	j aquiAgain
	
	
	
	
	






















































































	
apagaPonto:	lui $25 0x1001
		add $25 $25 $4
		lw $19 65536($25)
ponto:	lui $25 0x1001
	add $25 $25 $4
	sw $19 0($25)
	addi $25 $25 508
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 500
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 500
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 508
	sw $19 0($25)
	addi $19 $0 0x00ffaa00
	jr $31


	
proximoPassoPiao:li $2 5
		syscall
		mul $7 $2 4
		add $24 $24 $7
		lw $16 0($24)
		#bgt $16 0 apagaQuemVaiMatar
		sw $17 0($24)
		jal apagaQuadrado
		addi $4 $4 2652
		jal apagaPonto
		addi $4 $4 64
		jal apagaPonto
		addi $4 $4 -2716
		addi $4 $4 1048
		jal apagaPiao
		addi $21 $20 1
		beq $2 1 umaCasa
		addi $21 $20 2
		addi $4 $4 128
		jal piao
		j fimJ
		
		
		
		

umaCasa:addi $4 $4 64
	jal piao 
	j fimJ
	


	
	
	
	
	




 ### USO $10 $13

apagaQuadrado:	lui $25 0x1001
		add $25 $25 $4
		lw $19 65536($25)
quadrado:	addi $13 $31 0
		lui $25 0x1001
		add $25 $25 $4
		addi $10 $0 16
again:		beq $10 1 fimLinha
		sw $19 0($25)
		addi $25 $25 4
		addi $10 $10 -1
		j again
fimLinha:	sw $19 0($25)
		addi $10 $0 16
again2:		beq $10 2 fimColuna
		addi $25 $25 512
		sw $19 0($25)
		addi $10 $10 -1
		j again2
fimColuna:	addi $10 $0 16
again3:		beq $10 1 fimLinha2
		addi $25 $25 -4
		sw $19 0($25)
		addi $10 $10 -1
		j again3
fimLinha2:	addi $10 $0 16
again4:		beq $10 2 fimQuadrado
		addi $25 $25 -512
		sw $19 0($25)
		addi $10 $10 -1
		j again4
fimQuadrado:	addi $10 $0 16
		addi $19 $0 0x00ffaa00
		addi $31 $13 0
		jr $ra
	








































#################
### Fim Jogo! ###
#################
fimJ:	addi $2,$0,10
	syscall
	















###########################
###      tabuleiro      ###
###   pode sujar tudo   ###
###########################
come:	add $23,$31,$0
laco:	beq $9,$0, cabo
	add $4,$5,$0	
	jal loop
	add $4,$6,$0
	jal loop
	addi $9,$9,-1
	j laco
cabo:	addi $9,$0,60
	add $31,$23,$0
	jr $31
loop:	add $24,$31,$0
loop1:	beq $8,$0, fim
	sw $4,0($25)
	sw $4,65536($25)
	addi $25,$25,4
	addi $8,$8,-1
	j loop1
fim:	addi $8,$0,16
	add $31,$24,$0
	jr $ra

	
					
							
### pode sujar tudo									
barra:	lui $25,0x1001
	addi $25,$25,61440
for:	beq $10 $0 fimb
	sw $20,0($25)
	sw $20,65536($25)
	addi $25,$25,4
	addi $10,$10,-1
	j for
fimb:	jr $31





##################
####   TIMER  ####
#### $8 é meu ####
##################
sleep:	addi $8, $0, 13200
sleepT:	beq $8 $0 fimS
	nop
	nop
	nop
	nop
	nop
	addi $8 $8 -1
	j sleepT
fimS:	jr $ra
























#############################
#### PEÇAS LADO ESQUERDO ####
####      $19 é meu      ####
#############################



##################	
###    BISPO   ###	
##################
apagaBispo:	lui $25 0x1001
		add $25 $25 $4
		lw $19 65536($25)	
bispo:	lui $25 0x1001
	add $25 $25 $4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 504
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 496
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 492
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 496
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 8
	sw $19 0($25)
	addi $25 $25 492
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 8
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 496
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 504
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 504
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 496
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 488
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $19 $0 0x00ffaa00
	jr $31
	
##################	
###   RAINHA   ###	
##################
apagaRainha:	lui $25 0x1001
		add $25 $25 $4
		lw $19 65536($25)
rainha:	lui $25 0x1001
	add $25 $25 $4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 508
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 484
	sw $19 0($25)
	addi $25 $25 52
	sw $19 0($25)
	addi $25 $25 464
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 16
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 16
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 468
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 8
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 8
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 468
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 472
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 476
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 480
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $25 $25 4
	sw $19 0($25)
	addi $19 $0 0x00ffaa00
	jr $31	
	
###################
####    REI    ####	
###################

apagaRei:	lui $25 0x1001
		add $25 $25 $4
		lw $19 65536($25)
rei:	lui $25,0x1001
	add $25,$25,$4
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 508
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 496
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 8
	sw $19,0($25)
	addi $25, $25 8
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 484
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 476
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 472
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 476
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 484
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 488
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 492
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $25, $25 4
	sw $19,0($25)
	addi $19 $0 0x00ffaa00
	jr $31
	
########################	
#####    CAVALO    #####
########################

apagaCavalo:	lui $25 0x1001
		add $25 $25 $4
		lw $19 65536($25)
cavalo:	lui $25,0x1001
	add $25,$25,$4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,492
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,492
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,8
	sw $19,0($25)
	addi $25,$25,484
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,480
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,476
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,476
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,476
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,8
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,480
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,496
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,492
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,488
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,480
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,476
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $19 $0 0x00ffaa00
	jr $31
	
#####################
####    TORRE    ####
#####################


apagaTorre:	lui $25 0x1001
		add $25 $25 $4
		lw $19 65536($25)
torre:	lui $25,0x1001
	add $25,$25,$4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,12
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,12
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,476
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,480
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,488
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,492
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,492
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,492
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,492
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,488
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,480
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)	
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,476
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $19 $0 0x00ffaa00
	jr $ra




apagaPiao:	lui $25 0x1001
		add $25 $25 $4
		lw $19 65536($25)
piao:	lui $25,0x1001
	add $25,$25,$4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,500
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,496
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,500
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,508
	sw $19,0($25)
	addi $25,$25,508
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,500
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,496
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,492
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,488
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)     
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $25,$25,4
	sw $19,0($25)
	addi $19 $0 0x00ffaa00
	jr $31
	
	
	
	
	
apagaPiao2:	lui $25 0x1001
		add $25 $25 $4
		lw $18 65536($25)
piao2:	lui $25,0x1001
	add $25,$25,$4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,500
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,496
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,500
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,508
	sw $18,0($25)
	addi $25,$25,508
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,500
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,496
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,492
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,488
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)     
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $18 $0 0x00392975
	jr $31





apagaTorre2:	lui $25 0x1001
		add $25 $25 $4
		lw $18 65536($25)
torre2:	lui $25,0x1001
	add $25,$25,$4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,12
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,12
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,476
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,480
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,488
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,492
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,492
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,492
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,492
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,488
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,480
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)	
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,476
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $25,$25,4
	sw $18,0($25)
	addi $18 $0 0x00392975
	jr $ra





apagaBispo2:	lui $25 0x1001
		add $25 $25 $4
		lw $18 65536($25)	
bispo2:	lui $25 0x1001
	add $25 $25 $4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 504
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 496
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 492
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 496
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 8
	sw $18 0($25)
	addi $25 $25 492
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 8
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 496
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 504
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 504
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 496
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 488
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $18 $0 0x00392975
	jr $31
	
	
	
	
	
	
	apagaRainha2:	lui $25 0x1001
		add $25 $25 $4
		lw $18 65536($25)
rainha2:lui $25 0x1001
	add $25 $25 $4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 508
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 484
	sw $18 0($25)
	addi $25 $25 52
	sw $18 0($25)
	addi $25 $25 464
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 16
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 16
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 468
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 8
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 8
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 468
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 472
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 476
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 480
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $18 $0 0x00392975
	jr $31	
	

apagaCavalo2:	lui $25 0x1001
		add $25 $25 $4
		lw $18 65536($25)
cavalo2:lui $25 0x1001
	add $25 $25 $4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 500
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 492
	sw $18 0($25)
	addi $25 $25 8
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 484
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 476
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 476
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 476
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 480
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 8
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 496
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 492
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 484
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 480
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 480
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 476
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $25 $25 4
	sw $18 0($25)
	addi $18 $0 0x00392975
	jr $31


apagaRei2:	lui $25 0x1001
		add $25 $25 $4
		lw $18 65536($25)
rei2:	lui $25,0x1001
	add $25,$25,$4
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 508
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 496
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 8
	sw $18,0($25)
	addi $25, $25 8
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 484
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 476
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 472
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 476
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 484
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 488
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 492
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $25, $25 4
	sw $18,0($25)
	addi $18 $0 0x00392975
	jr $31
