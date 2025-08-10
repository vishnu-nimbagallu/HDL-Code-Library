`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2025 22:05:48
// Design Name: 
// Module Name: johnson_counter_tb
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


module johnson_counter_tb;
reg clk;
wire [3:0]d;

johnson_counter dut(clk,d);
initial 
begin
clk=0;
forever #5 clk = ~clk;
end
initial
begin
#200 $finish;
end
endmodule
