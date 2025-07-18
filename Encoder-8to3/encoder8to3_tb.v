`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.07.2025 22:21:46
// Design Name: 
// Module Name: encoder8to3_tb
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


module encoder8to3_tb;

reg [7:0] in;
wire [2:0] out;

encoder8to3 dut(.in(in), .out(out));

initial begin
    in = 8'b00000001; #10;
    in = 8'b00000010; #10;
    in = 8'b00000100; #10;
    in = 8'b00001000; #10;
    in = 8'b00010000; #10;
    in = 8'b00100000; #10;
    in = 8'b01000000; #10;
    in = 8'b10000000; #10;
    $finish;
end

initial begin
    $monitor("Time = %0t | Input = %b | Output = %b", $time, in, out);
end

endmodule

