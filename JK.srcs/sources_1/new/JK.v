`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/25 14:46:01
// Design Name: 
// Module Name: JK
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


module JK(clk,set,reset,j,k,q,q_n );
input clk,set,reset,j,k;
output q,q_n;
reg q=0;
reg q_n=1;
always@(posedge clk or negedge set or negedge reset)
begin
  if(!reset) 
  begin
   q=0;q_n=1;
  end
  else if(!set)  
  begin
   q=1;q_n=0;
   end
  else 
  begin 
  q=j&&~q||~k&&q;
  q_n=~q; 
  end
end
endmodule
