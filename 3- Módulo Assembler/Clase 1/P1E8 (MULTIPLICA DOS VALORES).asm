      org 1000h
op1   db 12
op2   db 5
res   db ?
      org 2000h
      MOV AL, op1
THEN: ADD AH, op2
      DEC AL
      CMP AL, 0
      JNZ THEN
      MOV res, AH
      HLT
      END
