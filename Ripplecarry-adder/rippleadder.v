`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2025 22:12:59
// Design Name: 
// Module Name: rippleadder
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


module fa(a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;
    
    assign sum = a ^ b ^ cin;                
    assign cout = (a & b) | (b & cin) | (a & cin);
   endmodule

module rippleadder(a, b, cin, sum, carry);
    input [3:0] a, b;
    input cin;
    output [3:0] sum;
    output carry;
    wire [2:0] c;  
    
    fa f0(a[0], b[0], cin, sum[0], c[0]);   
    fa f1(a[1], b[1], c[0], sum[1], c[1]);  
    fa f2(a[2], b[2], c[1], sum[2], c[2]);  
    fa f3(a[3], b[3], c[2], sum[3], carry); 
endmodule
