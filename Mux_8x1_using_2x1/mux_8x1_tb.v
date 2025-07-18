`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2025 23:25:57
// Design Name: 
// Module Name: mux_8x1_tb
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

module mux_8x1_tb;
    reg [7:0] i = 8'b10100101;  
    reg [2:0] s;
    wire y;
    
    mux_8x1 uut (i,s,y);
    initial begin
   i=8'b10101010;
       s=3'b000; 
   #5  s=3'b001;
   #5  s=3'b010; 
   #5  s=3'b011; 
   #5  s=3'b100; 
   #5  s=3'b101; 
   #5  s=3'b110; 
   #5  s=3'b111;
   #5 $finish;     
         
    end
endmodule
