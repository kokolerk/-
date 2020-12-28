`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/13 09:25:11
// Design Name: 
// Module Name: sim_mimasuo
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


module sim_mimasuo();
reg clk,judge,reset,set,sure;
reg[3:0]A0,A1,A2,A3;
wire[7:0]light;
wire red,green;
mimasuo u(A0,A1,A2,A3,judge,reset,set,sure,clk,red,green,light);
initial
  begin
  A0=3'b000;A1=3'b000;A2=3'b000;A3=3'b000;
  judge=0;set=0;reset=0;sure=0;clk=0;
  end
always #0.001 clk=~clk;
always #10 judge=~judge;
always #15 sure=~sure;
always #1  {A3,A2,A1,A0}={A3,A2,A1,A0}+1; 
endmodule
