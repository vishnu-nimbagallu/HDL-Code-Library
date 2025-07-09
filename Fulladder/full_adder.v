`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 18:00:44
// Design Name: 
// Module Name: full_adder
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


module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w0,w1,w2;

xor x1(w0,a,b);
xor x2(sum,w0,c);

and a1(w1,a,b);
and a2(w2,w0,c);

or o1(carry,w1,w2);
endmodule
