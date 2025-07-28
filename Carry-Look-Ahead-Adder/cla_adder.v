`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 22:57:54
// Design Name: 
// Module Name: cla_adder
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


module cla_adder(
    input [3:0] a, b,  // 4-bit inputs
    input cin,         // carry-in
    output [3:0] sum,  // 4-bit sum output
    output cout        // carry-out
);
    
    // generate (g) and propagate (p) signals
    wire [3:0] g, p;
    
    assign g = a & b;  // generate
    assign p = a ^ b;  // propagate
    
    // carry computation
    wire [4:0] c;
    assign c[0] = cin;
    
    assign c[1] = g[0] | (p[0] & c[0]);
    assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c[0]);
    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | 
                  (p[2] & p[1] & p[0] & c[0]);
    assign c[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | 
                  (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c[0]);
    
    // sum computation
    assign sum = p ^ c[3:0];
    assign cout = c[4];
    
endmodule
