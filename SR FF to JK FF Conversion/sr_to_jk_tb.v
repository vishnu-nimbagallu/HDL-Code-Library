`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 19:23:42
// Design Name: 
// Module Name: sr_to_jk_tb
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


module sr_to_jk_tb;
    reg j, k, clk;
    wire q, q_b;
    
    sr_to_jk dut(j, k, clk, q, q_b);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns clock
    end
    
    initial begin
        $monitor("Time=%0t: J=%b K=%b Q=%b Qb=%b", $time, j, k, q, q_b);
        
        // Initialize
        j = 0; k = 0;
        
        #10 j = 0; k = 1;  // Reset
        #10 j = 1; k = 0;  // Set
        #10 j = 1; k = 1;  // Toggle
        #10 j = 0; k = 0;  // Hold
        #10 j = 1; k = 1;  // Toggle again
        
        #20 $finish;
    end
endmodule

