       ORG 1000h
num1_L DW 4822h
num1_H DW 0010h
num2_L DW 1256h
num2_H DW 0220h

       ORG 2000h
       MOV AX, num1_H
       ADD AX, num2_H
       MOV BX, num1_L
       ADD BX, num2_L
       JNC FIN
       INC AX
FIN:   HLT
       END
