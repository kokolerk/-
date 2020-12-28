`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 09:21:53
// Design Name: 
// Module Name: halfadd
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


module sim_halfadd( );
reg a,b;
wire s,c;
halfadd myadd(a,b,s,c);
initial
begin
a=0;b=0;
end

always# 10{a,b}={a,b}+1;
endmodule
