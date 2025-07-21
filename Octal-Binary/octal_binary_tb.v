`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2025 19:33:35
// Design Name: 
// Module Name: octal_binary_tb
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


module octal_binary_tb;
    reg [7:0] in;
    wire [2:0] out;

    octal_binary dut (.in(in), .out(out));

    initial
     begin
            in = 8'b00000001;  // 0
        #10 in = 8'b00000010;  // 1
        #10 in = 8'b00000100;  // 2
        #10 in = 8'b00001000;  // 3
        #10 in = 8'b00010000;  // 4
        #10 in = 8'b00100000;  // 5
        #10 in = 8'b01000000;  // 6
        #10 in = 8'b10000000;  // 7
        #10 $finish;
    end
endmodule
