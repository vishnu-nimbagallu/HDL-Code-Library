`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 23:28:59
// Design Name: 
// Module Name: gray_binary_tb
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


module gray_binary_tb;
reg [2:0]g;
wire [2:0]b;
gray_binary dut(b,g);
initial
begin
    g=3'b000;
#10 g=3'b001;
#10 g=3'b010;
#10 g=3'b011;
#10 g=3'b100;
#10 g=3'b101;
#10 g=3'b110;
#10 g=3'b111;
#10 $finish;
end
endmodule
