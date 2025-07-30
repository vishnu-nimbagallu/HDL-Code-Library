`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 23:31:45
// Design Name: 
// Module Name: bcd_excess3_tb
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


module bcd_excess3_tb;
reg [3:0]b;
wire [3:0]e;

bcd_excess3 dut(b,e);
initial
begin

    b=4'b0000;
#10 b=4'b0001;
#10 b=4'b0010;
#10 b=4'b0011;
#10 b=4'b0100;
#10 b=4'b0101;
#10 b=4'b0110;
#10 b=4'b0111;
#10 b=4'b1000;
#10 b=4'b1001;
#10 $finish;
end
endmodule

