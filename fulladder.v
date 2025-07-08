`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2025 23:06:14
// Design Name: 
// Module Name: fulladder
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
module halfadder(a, b, sum, carry);
    input a, b;
    output sum, carry;
    
    assign sum = a ^ b;
    assign carry = a & b;
endmodule

// Full Adder Module using two Half Adders
module fulladder(a, b, c, sum, carry);
    input a, b, c;
    output sum, carry;
    
    wire w1, w2, w3;
    
    // First half adder (a + b)
    halfadder ha1(
        .a(a),
        .b(b),
        .sum(w1),
        .carry(w2)
    );
    
    // Second half adder (w1 + c)
    halfadder ha2(
        .a(w1),
        .b(c),
        .sum(sum),
        .carry(w3)
    );
    
    // Final carry is OR of carries from both half adders
    assign carry = w2 | w3;
endmodule

