         ORG 1000h
op1  DW ?
op2  DW ?
         ORG 2000h
         MOV AX, op1
         ADD AX, op2
COMPARA: CMP AX, 100
         JZ FIN
MAYOR100:DEC AX
         JMP COMPARA
FIN:     HLT
         END
