`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 15:57:25
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb;
reg d,clk;
wire q,q_b;

d_ff dut(d,clk,q,q_b);

 initial
  begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial 
    begin
            d = 0;
        #10 d = 1;
        #10 $finish;
    end
endmodule