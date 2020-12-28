`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/06 14:54:41
// Design Name: 
// Module Name: choose
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


module choose(input a,input b,
input c,output f);
//wire i0,i1,i2,i3,i4,i5,i6,i7;
//initial
//begin
//i0=1;i1=1;i2=1;i4=1;
//i3=0;i5=0;i6=0;i7=0;
//end
mux8_0 my(a,b,c,1,1,1,0,1,0,0,0,f);

endmodule
