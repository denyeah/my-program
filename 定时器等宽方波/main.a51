;µ¥Ƭ»úÕñµ´ƵÂÊf£¨osc£©=6MHz£¬
;;ʹÓö¨ʱÆ÷1
;ÒԹ¤×÷·½ʽ0£¬²ÉÓòéѯ·½ʽ£¬²úÉúÖÜÆÚΪ1msµĵȿ�²¨
;ÓÉP1.0Êä³ö
;µ±Õñµ´ƵÂÊΪ6MHzʱ
;ʱÖÓÖÜÆÚ=1/6us 
;״̬ÖÜÆÚ=2*1/6us=1/3us
;»úÆ÷ÖÜÆÚ=6*2*1/6us=2us
;ָÁîÖÜÆÚ=2~8us
; ¶¨ʱʱ¼ä=£¨2^n-³õֵ£©*»úÆ÷ÖÜÆÚ元件 


org 0000h
mov TMOD,#00h	
mov TH1,#0f0h
mov TL1,#0CH
MOV IE,#00h
setb TR1
loop: 
	jnb tf1,loop
	cpl p1.0
	mov TH1,#0f0h
	mov TL1,#0ch
	clr TF1
	ajmp loop
end
	