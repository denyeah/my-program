;����Ƭ��ԭ��Ӧ��-����Keil_c��Proteus��
;Page105,5.6 ������60s����ʱ��·

org 0000h
sjmp main
org 001bh
ljmp ts

org 0030h
main:
	mov r1,#60
	mov r2,#20
	mov IE,#88h
	mov TMOD,#10h		;��ʱ��T1���з�ʽ1
	mov TH1,#3ch
	mov TL1,#0b0h
	setb TR1
	acall dis
	sjmp $
	
org 0100h
ts:
	mov TH,#3ch
	mov TL,#0b0h
	djnz r2,ts1
	mov r2,#20
	djnz r1,ts0
	clr TR1
	sjmp ts1
ts0:
	acall dis
ts1:
	reti
	
	
	
	
	
	
	