`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 23:26:07
// Design Name: 
// Module Name: gray_binary
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


module gray_binary(b, g);
  input [2:0] g;
  output [2:0] b;

  assign b[2] = g[2];  // MSB stays the same
  assign b[1] = b[2] ^ g[1];  // XOR with previous binary bit
  assign b[0] = b[1] ^ g[0];  // XOR with previous binary bit
endmodule
