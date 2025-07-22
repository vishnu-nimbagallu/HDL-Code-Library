`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 20:08:43
// Design Name: 
// Module Name: Hexadecimal
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


module Hexadecimal(in ,out);
input [15:0]in;
output reg[3:0]out;

always @(*)
begin
case(in)
16'b0000000000000001: out=4'b0000;//0
16'b0000000000000010: out=4'b0001;//1
16'b0000000000000100: out=4'b0010;//2
16'b0000000000001000: out=4'b0011;//3
16'b0000000000010000: out=4'b0100;//4
16'b0000000000100000: out=4'b0101;//5
16'b0000000001000000: out=4'b0110;//6
16'b0000000010000000: out=4'b0111;//7
16'b0000000100000000: out=4'b0100;//8
16'b0000001000000000: out=4'b1001;//9
16'b0000010000000000: out=4'b1010;//10-A
16'b0000100000000000: out=4'b1011;//11-B
16'b0001000000000000: out=4'b1100;//12-C
16'b0010000000000000: out=4'b1101;//13-D
16'b0100000000000000: out=4'b1110;//14-E
16'b1000000000000000: out=4'b1111;//15-F
default: out=4'bxxxx;
endcase
end
endmodule
