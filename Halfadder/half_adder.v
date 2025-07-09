`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 17:22:33
// Design Name: 
// Module Name: half_adder
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

// Half adder boolean function , sum=a.b'+a'.b , carry=a.b
module half_adder(a,b,sum,carry);
input a,b;
output sum,carry;

xor xo1(sum,a,b);
and a1(carry,a,b);
endmodule
