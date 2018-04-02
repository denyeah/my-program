;单片机振荡频率f（osc）=6MHz，
;;使用定时器1
;以工作方式0，采用查询方式，产生周期为1ms的等宽方波
;由P1.0输出
;当振荡频率为6MHz时
;时钟周期=1/6us 
;状态周期=2*1/6us=1/3us
;机器周期=6*2*1/6us=2us
;指令周期=2~8us
;定时时间=（2^n-初值）*机器周期


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
	