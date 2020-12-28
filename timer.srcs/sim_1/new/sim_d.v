`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/26 21:19:20
// Design Name: 
// Module Name: sim_d
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


module sim_d( );
reg clk=0,d=0;
wire q,qn;
timer u(clk,d,q,qn);
always# 10 clk=~clk;
always# 20  d=~d;
endmodule
