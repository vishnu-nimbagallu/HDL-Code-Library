`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 18:51:11
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(
input s,r,
output q,q_b
    );
    wire nor1_out,nor2_out;
    
    nor n1(nor1_out,s,nor2_out);
    nor n2(nor2_out,r,nor1_out);
    
    assign q   = nor2_out;
    assign q_b = nor1_out;
endmodule


