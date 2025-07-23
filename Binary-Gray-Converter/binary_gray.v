`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 23:06:56
// Design Name: 
// Module Name: binary_gray
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


module binary_gray(b, g);
  input [2:0] b;
  output [2:0] g;

  assign g[2] = b[2];
  assign g[1] = b[2] ^ b[1];
  assign g[0] = b[1] ^ b[0];
endmodule
