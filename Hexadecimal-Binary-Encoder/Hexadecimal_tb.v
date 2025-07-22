`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 20:20:49
// Design Name: 
// Module Name: Hexadecimal_tb
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


module Hexadecimal_tb;
reg [15:0]in;
wire [3:0]out;

Hexadecimal uut(.in(in),.out(out));
initial
begin
    in=16'b0000000000000001; //0
#10 in=16'b0000000000000010; //1
#10 in=16'b0000000000000100; //2
#10 in=16'b0000000000001000; //3
#10 in=16'b0000000000010000; //4
#10 in=16'b0000000000100000; //5
#10 in=16'b0000000001000000; //6
#10 in=16'b0000000010000000; //7
#10 in=16'b0000000100000000; //8
#10 in=16'b0000001000000000; //9
#10 in=16'b0000010000000000; //10-A
#10 in=16'b0000100000000000; //11-B
#10 in=16'b0001000000000000; //12-C
#10 in=16'b0010000000000000; //13-D
#10 in=16'b0100000000000000; //14-E
#10 in=16'b1000000000000000; //15-F
#10 $finish;
end
endmodule
