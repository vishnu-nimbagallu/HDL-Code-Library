`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 22:51:43
// Design Name: 
// Module Name: buffer_tb
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


module buffer_tb;
reg in ,en;
wire y;

buffer vi(in,en,y);
initial
begin

       in=0;en=0;
 #10   in=0;en=1;
 #10   in=1;en=0;
 #10   in=1;en=1;
 #10 $finish;
 end
   
endmodule