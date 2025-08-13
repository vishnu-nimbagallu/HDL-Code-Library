`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2025 13:05:09
// Design Name: 
// Module Name: mux_4to1
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



module mux_4to1(
    input i0, i1, i2, i3,
    input sel1, sel2,  
    output y
);
    wire w0, w1, w2, w3;
    wire not_sel1, not_sel2;
    
    // Invert select signals
    not n1(not_sel1, sel1);
    not n2(not_sel2, sel2);
    
    // AND gates for each input
    and a0(w0, not_sel1, not_sel2, i0);
    and a1(w1, not_sel1,     sel2, i1);
    and a2(w2,     sel1, not_sel2, i2);
    and a3(w3,     sel1,     sel2, i3);
    
    // OR gate combining all AND outputs
    or o1(y, w0, w1, w2, w3);
endmodule

