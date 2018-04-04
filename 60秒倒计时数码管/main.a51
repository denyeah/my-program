;《单片机原理及应用-基于Keil_c与Proteus》
;Page105,5.6 案例：60s倒计时电路

org 0000h
sjmp main
org 001bh
ljmp ts

org 0030h
main:
	mov r1,#60
	mov r2,#20
	mov IE,#88h
	mov TMOD,#10h		;定时器T1运行方式1
	mov TH1,#3ch
	mov TL1,#0b0h
	setb TR1
	acall dis
	sjmp $
	
org 0100h
ts:
	mov TH1,#3ch
	mov TL1,#0b0h
	djnz r2,ts1
	mov r2,#20
	djnz r1,ts0
	clr TR1
	sjmp ts1
ts0:
	acall dis
ts1:
	reti
	
dis:
	mov a,r1
	mov b,#10
	div ab
	acall seg7
	mov p1,a
	mov a,b
	acall seg7
	mov p2,a
	ret

seg7:
	inc a
	movc a,@a+pc
	ret
	db 0c0h,0f9h,0a4h,0b0h
	db 99h,92h,82h,0f8h
	db 80h,90h,88h,83h
	db 0c6h,0a1h,86h,8eh
end
	
	
	
	
	
	