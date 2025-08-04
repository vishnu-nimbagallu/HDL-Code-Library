`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 16:13:20
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(
input s,r,clk,
output q,q_b
    );
    
    wire nand1_out,nand2_out,nand3_out,nand4_out;
    
    nand n1(nand1_out, s,  clk);
    nand n2(nand2_out, clk,  r);
    
    nand n3(nand3_out, nand1_out, nand4_out);
    nand n4(nand4_out, nand3_out, nand2_out);
    
    assign q  = nand3_out;
    assign q_b= nand4_out;
    
endmodule
