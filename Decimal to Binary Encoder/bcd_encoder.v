`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2025 18:40:58
// Design Name: 
// Module Name: bcd_encoder
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


module bcd_encoder(
    input [9:0] in,
    output reg [3:0] out
);
always @(*) 
begin
    case(in)
        10'b0000000001: out = 4'b0000;  // 0
        10'b0000000010: out = 4'b0001;  // 1
        10'b0000000100: out = 4'b0010;  // 2
        10'b0000001000: out = 4'b0011;  // 3
        10'b0000010000: out = 4'b0100;  // 4
        10'b0000100000: out = 4'b0101;  // 5
        10'b0001000000: out = 4'b0110;  // 6
        10'b0010000000: out = 4'b0111;  // 7
        10'b0100000000: out = 4'b1000;  // 8
        10'b1000000000: out = 4'b1001;  // 9
        default: out = 4'bxxxx;        
    endcase
end
endmodule
