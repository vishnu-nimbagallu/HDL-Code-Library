`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2025 13:25:59
// Design Name: 
// Module Name: mux_4to1_tb
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



module mux_4to1_tb;
    reg i0, i1, i2, i3;
    reg sel1, sel2;
    wire y;
    
    mux_4to1 dut(
        .i0(i0), .i1(i1), .i2(i2), .i3(i3),
        .sel1(sel1), .sel2(sel2),
        .y(y)
    );
    
    initial begin
        // Initialize all inputs
        i0 = 1; i1 = 0; i2 = 0; i3 = 0;
        sel1 = 0; sel2 = 0;
        #10;
        
        i0 = 0; i1 = 1; i2 = 0; i3 = 0;
        sel1 = 0; sel2 = 1;
        #10;
        
        i0 = 0; i1 = 0; i2 = 1; i3 = 0;
        sel1 = 1; sel2 = 0;
        #10;
        
        i0 = 0; i1 = 0; i2 = 0; i3 = 1;
        sel1 = 1; sel2 = 1;
        #10;
        
        $display("Test completed");
        $stop;
    end
endmodule

