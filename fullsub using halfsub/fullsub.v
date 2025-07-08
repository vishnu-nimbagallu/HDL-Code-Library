`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2025 22:41:55
// Design Name: 
// Module Name: fullsub
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


// Half Subtractor Module
module halfsub(a, b, differ, barrow);
    input a, b;
    output differ, barrow;
    
    assign differ = a ^ b;
    assign barrow = ~a & b;
endmodule

module fullsub(a, b, c, differ, barrow);
    input a, b, c;
    output differ, barrow;
    wire w1, w2, w3;
    
    halfsub hsub1(.a(a),.b(b),.differ(w1),.barrow(w2));
    halfsub hsub2(.a(w1),.b(c),.differ(differ),.barrow(w3));
 
    assign barrow = w2 | w3;
endmodule
