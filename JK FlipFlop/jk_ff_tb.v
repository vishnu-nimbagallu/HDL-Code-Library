`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 17:17:34
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb;
    reg j, k, clk;
    wire q, q_b;

    jk_ff dut(j, k, clk, q, q_b);
    initial
     begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial 
    begin
            j = 0; k = 0;
        #10 j = 0; k = 1;   
        #10 j = 1; k = 0;  
        #10 j = 1; k = 1;  
        #10 $finish;
    end
endmodule
