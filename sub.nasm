; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Faz uma subtração binária do valor de RAM[1] - RAM[0] gravando o resultado em RAM[2].

; Coloca o endereço de memória imediato correspondente à posição de memória RAM 1 no registrador de endereço %A
leaw $1, %A

; Move o valor contido na posição de memória apontada pelo registrador de endereço %A para o registrador de dados %D
movw (%A), %D

; Coloca o endereço de memória imediato correspondente à posição de memória RAM 0 no registrador de endereço %A
leaw $0, %A

; Subtrai o valor contido na posição de memória apontada pelo registrador de endereço %A do valor contido no registrador de dados %D e armazena o resultado em %D
subw %D, (%A), %D

; Coloca o endereço de memória imediato correspondente à posição de memória RAM 2 no registrador de endereço %A
leaw $2, %A

; Move o valor contido no registrador de dados %D para a posição de memória apontada pelo registrador de endereço %A, ou seja, para a posição de memória RAM 2
movw %D, (%A)
