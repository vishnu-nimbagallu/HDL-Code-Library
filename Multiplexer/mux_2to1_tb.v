`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 12:32:10
// Design Name: 
// Module Name: mux_2to1_tb
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


module mux_2to1_tb;
    reg i0, i1;
    reg sel;
    wire y;
    
    mux_2to1 dut(.i0(i0), .i1(i1), .sel(sel), .y(y));
    
    initial begin
        i0 = 1; i1 = 0; sel = 0;  // Should output i0 (1)
        #10;
        i0 = 0; i1 = 1; sel = 1;  // Should output i1 (1)
        #10 $stop;
    end
endmodule