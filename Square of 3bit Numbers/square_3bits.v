`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 20:14:35
// Design Name: 
// Module Name: square_3bits
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


module square_3bits(
    input [2:0] in,
    output [5:0] y
);
    // Correct implementation of 3-bit squaring
    assign y = in * in;
    
    /* Alternatively, if you need to implement it with gates:
    assign y[5] = in[2] & in[1];
    assign y[4] = (in[2] & in[0]) | (in[2] & ~in[1]);
    assign y[3] = (in[2] & ~in[1] & ~in[0]) | (~in[2] & in[1] & in[0]) | (in[1] & ~in[0]);
    assign y[2] = (~in[2] & in[1] & ~in[0]) | (in[2] & ~in[1] & in[0]);
    assign y[1] = in[1] & in[0];
    assign y[0] = in[0];
    */
endmodule
