`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 13:44:41
// Design Name: 
// Module Name: sim_fulladd
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


module sim_fulladd();
reg a ,b ,c0;
wire s,c1;
fulladd my(a,b,c0,s,c1);
initial
begin
a=0;b=0;c0=0;
end
always#10 {a,b,c0}={a,b,c0}+1;
endmodule
