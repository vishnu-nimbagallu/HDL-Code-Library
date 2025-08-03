`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 19:39:41
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb;
reg s,r;
wire q,q_b;

sr_latch dut(s,r,q,q_b);
initial
 begin
 
      s=0;r=0;
 #10  s=0;r=1;
 #10  s=1;r=0;
 #10  s=1;r=1;
 #10 $finish;
 end
endmodule
