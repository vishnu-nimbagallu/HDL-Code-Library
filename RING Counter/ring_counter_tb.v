`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2025 15:50:13
// Design Name: 
// Module Name: ring_counter_tb
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

module ring_counter_tb;
    reg clk;
    wire [3:0] q;
    
    ring_counter uut (
        .clk(clk),
        .q(q)
    );
    initial 
    begin
        clk = 0;
        forever #10 clk = ~clk; // 20ns period (50MHz)
    end
    initial 
    begin
        $monitor("Time = %t ns | Clock = %b | Output = %4b", $time, clk, q);
        #200;
        
        $display("Test complete");
        $finish;
    end
endmodule
