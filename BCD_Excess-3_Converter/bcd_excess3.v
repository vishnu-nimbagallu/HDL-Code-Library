`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 23:31:29
// Design Name: 
// Module Name: bcd_excess3
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


module bcd_excess3(
    input [3:0] b,
    output [3:0] e
);
    assign e = b + 4'b0011;  // Excess-3 = BCD + 3
endmodule