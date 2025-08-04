`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 16:21:21
// Design Name: 
// Module Name: sr_ff_tb
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


module sr_ff_tb;
reg s,r,clk;
wire q,q_b;

sr_ff dut(s,r,clk,q,q_b);
initial 
begin
   clk=0;s=0;r=0;
#9 clk=1;s=0;r=0;
#9 clk=1;s=0;r=1;
#9 clk=1;s=1;r=0;
#9 clk=1;s=1;r=1;
#9 $finish;
end
endmodule
