`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2025 23:00:26
// Design Name: 
// Module Name: mux_8x1
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


module mux_2(i,s,y);
input [1:0]i;
input s;
output y;

assign y = s ? i[1] : i[0];
endmodule

module mux_8x1(i,s,y);
input [7:0]i;
input [2:0]s;
output y;
wire [5:0]w;
  
  mux_2 m1(.i({i[1],i[0]}), .s(s[0]), .y(w[0]));
  mux_2 m2(.i({i[3],i[2]}), .s(s[0]), .y(w[1]));
  mux_2 m3(.i({i[5],i[4]}), .s(s[0]), .y(w[2]));
  mux_2 m4(.i({i[7],i[6]}), .s(s[0]), .y(w[3]));
  mux_2 m5(.i({w[1],w[0]}), .s(s[1]), .y(w[4]));
  mux_2 m6(.i({w[3],w[2]}), .s(s[1]), .y(w[5]));
  mux_2 m7(.i({w[5],w[4]}), .s(s[2]), .y(y));
endmodule

