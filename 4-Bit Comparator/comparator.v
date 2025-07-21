`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2025 23:25:39
// Design Name: 
// Module Name: comparator
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


module comparator(a,b,greater,lesser,equal);
input [3:0]a,b;
output greater;
output lesser;
output equal;

assign greater = (a > b);
assign lesser =  (a < b);
assign equal  = (a == b);

endmodule
