# -
数字逻辑的vivado实现代码
数字逻辑上完课了，把作业代码整理一下
代码大致可分为三类：组合逻辑电路，时序逻辑电路，还有大作业（密码锁）
组合逻辑：半加器，全加器，mux，利用mux的选择
时序逻辑：JK，流水灯，mod12计数器，节拍发生器等等
以上都是比较简单的小代码。
大作业：密码锁，包括实验报告
密码锁功能： 
 1）16个按键，每四个按键代表一个十进制数，输入为四位十进制密码
 2）用一个七段数码管来倒计时，显示时间，判断是否超时。
 3）有两个LED灯，分别代表红灯和绿灯
 4）按下reset键，可以让红灯绿灯都灭，恢复出厂设置
 5）当输入密码时，先按下judge键，开始计时，密码输入完后，按下sure键判断密码是否正确，如果密码正确并且在五秒内，绿灯亮，否则，红灯亮。
 密码锁引脚：
 Input	      功能/管脚
A0,A1,A2,A3	十进制密码输入 
P5/P4/P3/P2(A0)   R2/M4/N4/R1(A1)
U3/U2/V2/V5(A2)  V4/R3/T3/T5(A3)
reset	复位 V1
Judge	开始输入密码 R15
Sure	确认密码 R17
Clk	时钟信号 P17
     	
               Output	               功能/管脚
Red	LED灯，若为1，则表示输入错误（G4）
Green	LED灯，若为1，则表示输入正确（F6）
Light	七段数码管，表示倒计时的时间
（G2,C2,C1,H1,G1,F1,E1,G6）
