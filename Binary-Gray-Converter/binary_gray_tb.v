`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 23:19:24
// Design Name: 
// Module Name: binary_gray_tb
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


module binary_gray_tb;
reg [2:0]b;
wire [2:0]g;

binary_gray dut(b,g);
initial
begin
     b=3'b000;
 #10 b=3'b001;
 #10 b=3'b010;
 #10 b=3'b011;
 #10 b=3'b100;
 #10 b=3'b101;
 #10 b=3'b110; 
 #10 b=3'b111;
 #10 $finish;
 end  
endmodule
