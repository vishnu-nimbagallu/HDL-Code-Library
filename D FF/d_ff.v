`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 15:47:11
// Design Name: 
// Module Name: d_ff
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


module d_ff(
input d,clk,
output q,q_b
    );
    wire nand1_out,nand2_out,nand3_out,nand4_out,not_out;
    not not1(not_out,d);
    nand n1(nand1_out, d, clk);
    nand n2(nand2_out, not_out,clk);
    
    nand n3(nand3_out,nand1_out,nand4_out);
    nand n4(nand4_out,nand2_out,nand3_out);
    
    assign q  = nand3_out;
    assign q_b= nand4_out;
    
endmodule
