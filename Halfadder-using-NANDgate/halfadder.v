`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.07.2025 19:14:48
// Design Name: 
// Module Name: halfadder
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

module nand_gate(a, b, y);
    input a, b;
    output y;
    assign y = ~(a & b);
endmodule

module halfadder(a, b, sum, carry);
    input a, b;
    output sum, carry;
    wire y, w0, w1; 
    
    nand_gate n1(a, b, y);           
    nand_gate n2(a, y, w0);          
    nand_gate n3(y, b, w1);          
    nand_gate n4(w0, w1, sum);  
    nand_gate n5(y, y, carry);        
endmodule
