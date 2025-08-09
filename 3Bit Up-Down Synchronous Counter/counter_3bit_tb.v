`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2025 18:25:38
// Design Name: 
// Module Name: counter_3bit_tb
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


module tb_counter_3bit;
    reg clk;
    reg up_down;
    wire [2:0] count;
  
    counter_3bit uut (
        .clk(clk),
        .up_down(up_down),
        .count(count)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end    
    initial
     begin
     // Start with up count
        up_down = 1; 
        #100; 
        // Switch to down count
        up_down = 0;
        #100; 
        $finish;
    end
endmodule
