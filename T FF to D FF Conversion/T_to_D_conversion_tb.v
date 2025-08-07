`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 17:34:48
// Design Name: 
// Module Name: T_to_D_conversion_tb
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

module T_to_D_conversion_tb;
    reg d;
    reg clk;
    wire q;

    T_to_D_conversion dut (.d(d),.clk(clk),.q(q));
    initial
     begin
        clk = 0;
        forever #5 clk = ~clk;  
    end
    initial 
    begin
        d = 0;
        #10 d = 1; 
        #10 d = 0; 
        #10 d = 1; 
        #10 d = 1;  
        #10 d = 0;  
        #10 d = 0; 
        #10 $finish;
    end
endmodule