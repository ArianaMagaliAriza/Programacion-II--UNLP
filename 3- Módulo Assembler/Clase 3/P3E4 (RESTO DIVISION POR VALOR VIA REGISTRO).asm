          ORG 1000H ; Datos
DIVIDENDO DW 11
DIVISOR	  DW 2
	
          ORG 3000H  ; Subrutina
RESTO:    CMP AX, BX
 	  JS FIN
          SUB AX, BX
          JMP RESTO
FIN:      MOV CX,AX
          RET
          
          ORG 2000H   ; Programa Principal
          MOV AX, DIVIDENDO 
          MOV BX, DIVISOR
	  CALL RESTO
  	  HLT
    	  END
