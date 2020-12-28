`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/25 15:15:29
// Design Name: 
// Module Name: sim_JK
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


module sim_JK();
reg clk,reset,set,j,k;
wire q,q_n;
JK u(.clk(clk),.reset(reset),.set(set),.j(j),.k(k),.q(q),.q_n(q_n));
initial
begin
   clk=0;reset=1;set=1;
   j=0;k=0;
end
always# 10 clk=~clk;
always# 20{j,k}={j,k}+1;



endmodule
