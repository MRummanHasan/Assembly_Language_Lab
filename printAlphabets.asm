;
;Objective: Print A to Z; all odd alphabets are Capital and all even alphabets are small.
;

.model small
.stack 100h
.data

MOV DH,41	;Store ASCII code of 'A' in DH
MOV BH,62	;Store AASCII code of 'b' in BH
MOV CX,0D	;Loop counter CX
MOV AH,2	;Display cahracter
MOV DL,DH	;Move contents of DH into DL
INT 21
ADD DH,02	;Add 2 existing contents of DH
MOV DL,BH	;Move contents of BH into DL
INT 21
ADD BH,02	;Add 2 existing contents of BH
LOOP 0109	;Loop to 0109
INT 20		;Exit Program


;OUTPUT: AbCdEfGhIjKlMnOpQrStUvWxYz