`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.07.2025 20:03:49
// Design Name: 
// Module Name: halfadder
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


module nor_gate(a, b, y);
    input a, b;
    output y;
    assign y = ~(a | b);  // NOR operation
endmodule

module halfadder(a, b, sum, carry);
    input a, b;
    output sum, carry;
    wire y, w0, w1;  // Internal wires

    // NOR implementation of half adder
    nor_gate n1(a, b, y);      // y = a NOR b
    nor_gate n2(a, y, w0);     // w0 = a NOR (a NOR b)
    nor_gate n3(y, b, w1);     // w1 = (a NOR b) NOR b
    nor_gate n4(w0, w1, sum);  // sum = w0 NOR w1
    nor_gate n5(y, y, carry);  // carry = y NOR y = NOT y (since NOR acts as NOT when inputs are tied)
endmodule
