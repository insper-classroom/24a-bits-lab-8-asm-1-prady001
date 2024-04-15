; Elementos de Sistemas : 2018a
; Rafael Corsi
; Hardware : Z0.1
;
; Data :
;    - Dez 2018
; Descrição :
;    - Movimentação de dados da memoria RAM
;
; RAM[0] = RAM[1]
; RAM[1] = RAM[0]
; RAM[3] = 1


leaw $0, %A
movw (%A), %D
leaw $3, %A
movw %D, (%A)
; r0 = r3
leaw $1, %A
movw (%A), %D
;d = r1
leaw $0, %A
movw %D, (%A)
;R0 = r1
leaw $3, %A
movw (%A), %D
; D = r0
leaw $1, %A
movw %D, (%A)
leaw $3, %A
movw $1, (%A)
