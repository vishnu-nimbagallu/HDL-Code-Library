`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 18:31:43
// Design Name: 
// Module Name: half_sub
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


module half_sub (a,b,differ,borrow);
input a,b;
output differ,borrow;
wire w1;

not n1(w1,a);

xor x1(differ,a,b);
and a1(borrow,w1,b);
endmodule
