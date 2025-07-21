`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2025 19:04:47
// Design Name: 
// Module Name: bcd_encoder_tb
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


module bcd_encoder_tb;
reg [9:0]in;
wire [3:0]out;

bcd_encoder uut(in,out);
initial
begin
$monitor("in=%d out=%d ",in,out);
            in = 10'b0000000001;  // 0
        #10 in = 10'b0000000010;  // 1
        #10 in = 10'b0000000100;  // 2
        #10 in = 10'b0000001000;  // 3
        #10 in = 10'b0000010000;  // 4
        #10 in = 10'b0000100000;  // 5
        #10 in = 10'b0001000000;  // 6
        #10 in = 10'b0010000000;  // 7
        #10 in = 10'b0100000000;  // 8
        #10 in = 10'b1000000000;  // 9
        #10 $finish;
        end
endmodule
