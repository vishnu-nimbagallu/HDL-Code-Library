`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 12:21:56
// Design Name: 
// Module Name: siso_Rshift
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



module siso_Rshift(
    input clk,
    input serial_in,
    output reg [3:0] q
);
    initial q = 4'b0000;

    always @(posedge clk) begin
        q <= {serial_in, q[3:1]}; // right shift
    end
endmodule

