`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/25 21:46:15
// Design Name: 
// Module Name: flowled
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


module flowled(
input clk,
output reg [7:0]led
);
reg [7:0]led=8'b00000001;
reg[25:0]clk_cnt=0;
reg ctrl=0;
always @(posedge clk)begin
if(clk_cnt<5000000)
   clk_cnt=clk_cnt+1;
else
  begin
    clk_cnt=0;
    if(ctrl)
        led=8'b00000001;
    else
        led=led<<1;
    if(led==8'b10000000)
       ctrl=1;
    if(led==8'b00000001)
       ctrl=0;
  end
end  
endmodule
