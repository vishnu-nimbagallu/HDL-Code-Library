`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 22:51:08
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb;
reg d,en;
wire q,q_b;
d_latch dut(d,en,q,q_b);
initial
begin 
 en=0;
 forever #5 en=~en;
 end
 initial 
 begin
   d=0;
 #5 d=1;
 #5 d=0;
 #5 d=1;
 #5 d=0;
 #5 $finish;
 
end
endmodule
