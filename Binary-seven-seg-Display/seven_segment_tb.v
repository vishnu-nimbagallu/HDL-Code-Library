`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 23:21:22
// Design Name: 
// Module Name: seven_segment_tb
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


module seven_segment_tb;
reg [3:0]bcd;
wire [6:0]display;

seven_segment dut(bcd,display);
initial
begin
    bcd=4'b0000;
#10 bcd=4'b0001;
#10 bcd=4'b0010;
#10 bcd=4'b0011;
#10 bcd=4'b0100;
#10 bcd=4'b0101;
#10 bcd=4'b0110;
#10 bcd=4'b0111;
#10 bcd=4'b1000;
#10 bcd=4'b1001;
#10 bcd=4'b1010;
#10 $finish;
end
endmodule
