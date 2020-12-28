`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 13:21:19
// Design Name: 
// Module Name: fulladd
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


module fulladd( 
input a,input b,input c0,
output s,output c1
);

wire sum_a;
wire cin_a;
wire cin_b;
halfadd_0 n1(.a(a), .b(b), .sum(sum_a),.cont(cin_a));
halfadd_0 n2(.a(sum_a), .b(c0), .sum(s), .cont(cin_b));
assign c1=cin_a|cin_b;

endmodule
