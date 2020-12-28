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
input [3:0] A3;//����ʮ��������
input judge,reset,set,sure;//�жϼ�
output red,green;
output [7:0] light;//�߶������

reg [7:0] light;//�߶�����ܵĹܽ�
reg [2:0] times;//�߶�����ܵĶ����Ʊ�ʾ
reg red,green;
reg clk1;
reg [3:0]B0,B1,B2,B3;//��������
reg flag;//Ϊ1��ʼ����ʱ��Ϊ0ֹͣ
reg flag1;//Ϊ1�����������Ϊ0��ȷ
reg setflag,judgeflag;//setflagΪ1�����������룬judegflagΪ1���������ж�

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
B3=3'b000;//�����ʼ��Ϊ0
end

always @(posedge clk)
begin
if(counter == 40000000)
begin
clk1 = ~clk1;
counter = 0;
end
else if(flag==1)
counter <= counter +1;//��ʼ��ʱ
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
    B3=3'b000;//�ָ���������.�����ʼ��Ϊ0
    end
else if(set)//��������
    begin
    flag = 1;
    setflag=1;
    end//��ʼ��ʱ
else if(judge)
    begin
    flag=1;
    judgeflag=1;
   // flag1=0;//��ʼ��ʱ
    end
else if(sure)
    begin
    if(setflag==1)//�Ѿ���set�������ź�
        begin
        setflag=0;
        red=1;green=1;
        if(flag==1)//ʱ��δ��
            begin
            B0<=A0;
            B1<=A1;
            B2<=A2;
            B3<=A3;
            //red=1;green=1;//���ƶ�������ʾ��������ɹ�
            end    
        end
     else if(judgeflag==1)
         begin
         judgeflag=0;
         if(flag==1)//ʱ��δ��
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
        if(times == 3'b000)//��ʱ
            begin
            red = 1;
            green=0;
            flag = 0;   
            end
    end  
end

endmodule




