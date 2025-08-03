`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 19:38:47
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
    input s, r,       
    output q, q_b    
);
    wire nand1_out, nand2_out;
    
    nand n1(nand1_out, s, nand2_out);  
    nand n2(nand2_out, r, nand1_out); 
    
    assign q = nand1_out;
    assign q_b = nand2_out;
endmodule
