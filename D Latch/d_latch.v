`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 22:44:31
// Design Name: 
// Module Name: d_latch
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


module d_latch(
input d,en,
output q,q_b
    );
    wire a1_out,a2_out,n1_out;
    not n1(n1_out,d);
    
    and a1(a1_out,n1_out,en);
    and a2(a2_out,d,en);
    nor nr1(q,n1_out,q_b);
    nor nr2(q_b,a2_out,q);
endmodule
