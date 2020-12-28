`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/25 21:53:42
// Design Name: 
// Module Name: sim_flow
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


module sim_flow();
reg clk;
wire[7:0]ledtemp;
flowled u(clk,ledtemp);
initial
    begin
    clk=0;
    forever#5 clk=~clk;
  end
  
endmodule
