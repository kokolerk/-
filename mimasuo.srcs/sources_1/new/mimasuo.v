`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/13 09:13:19
// Design Name: 
// Module Name: mimasuo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module mimasuo(A0,A1,A2,A3,judge,reset,set,sure,clk,red,green,light);
input clk;
input [3:0] A0;
input [3:0] A1;
input [3:0] A2;
input [3:0] A3;//输入十进制密码
input judge,reset,set,sure;//判断键
output red,green;
output [7:0] light;//七段数码管

reg [7:0] light;//七段数码管的管角
reg [2:0] times;//七段数码管的二进制表示
reg red,green;
reg clk1;
reg [3:0]B0,B1,B2,B3;//储存密码
reg flag;//为1开始倒计时，为0停止
reg flag1;//为1输入密码错误，为0正确
reg setflag,judgeflag;//setflag为1进行重置密码，judegflag为1进行密码判断

integer counter;

initial
begin
times <= 3'b101;
flag1 =0;
flag = 0;
setflag=0;
judgeflag=0;
counter = 0;
clk1 = 0;
red = 0;
green = 0;
B0=3'b000;
B1=3'b000;
B2=3'b000;
B3=3'b000;//密码初始化为0
end

always @(posedge clk)
begin
if(counter == 40000000)
begin
clk1 = ~clk1;
counter = 0;
end
else if(flag==1)
counter <= counter +1;//开始计时
end

always @(posedge set or posedge reset or posedge judge or posedge sure or posedge clk1)
begin
if(reset)
    begin
    flag1 = 0;
    flag=0;
    setflag=0;
    judgeflag=0;
    green = 0;
    red =0;
    times=3'b101;
    light<=8'b11111110;
    B0=3'b000;
    B1=3'b000;
    B2=3'b000;
    B3=3'b000;//恢复出厂设置.密码初始化为0
    end
else if(set)//设置密码
    begin
    flag = 1;
    setflag=1;
    end//开始计时
else if(judge)
    begin
    flag=1;
    judgeflag=1;
   // flag1=0;//开始计时
    end
else if(sure)
    begin
    if(setflag==1)//已经有set上升沿信号
        begin
        setflag=0;
        red=1;green=1;
        if(flag==1)//时间未到
            begin
            B0<=A0;
            B1<=A1;
            B2<=A2;
            B3<=A3;
            //red=1;green=1;//两灯都亮，表示设置密码成功
            end    
        end
     else if(judgeflag==1)
         begin
         judgeflag=0;
         if(flag==1)//时间未到
             begin
             if(A0!=B0||A1!=B1||A2!=B2||A3!=B3)
                 begin
                 red=1;green=0;
                 end
             else
                 begin
                 red=0;green=1;flag=0;
                 end
             end
         end   
   end
else if(clk1) 
    begin
        times <= times - 3'b001;
        case(times)
        3'b000: light <= 8'b11111110;
        3'b001: light <= 8'b10000110;
        3'b010: light <= 8'b11101101;   
        3'b011: light <= 8'b11111001;
        3'b100: light <= 8'b10110011;
        3'b101: light <= 8'b11011011;
        endcase
        if(times == 3'b000)//超时
            begin
            red = 1;
            green=0;
            flag = 0;   
            end
    end  
end

endmodule




