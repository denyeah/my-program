;��Ƭ����Ƶ��f��osc��=6MHz��
;;ʹ�ö�ʱ��1
;�Թ�����ʽ0�����ò�ѯ��ʽ����������Ϊ1ms�ĵȿ���
;��P1.0���
;����Ƶ��Ϊ6MHzʱ
;ʱ������=1/6us 
;״̬����=2*1/6us=1/3us
;��������=6*2*1/6us=2us
;ָ������=2~8us
;��ʱʱ��=��2^n-��ֵ��*��������


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
	