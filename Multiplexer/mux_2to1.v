`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2025 12:22:49
// Design Name: 
// Module Name: mux_2to1
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


module mux_2to1(
    input i0, i1,  // Input signals
    input sel,     // Select signal
    output y      // Output
);
    wire sel_not;
    wire w0, w1;  // Changed w1,w2 to w0,w1 for consistency
    
    // Invert select signal
    not inv1(sel_not, sel);
    
    // AND gates
    and a0(w0, sel_not, i0);  // i0 path when sel=0
    and a1(w1, sel,     i1);  // i1 path when sel=1
    
    // OR gate
    or o1(y, w0, w1);
endmodule
