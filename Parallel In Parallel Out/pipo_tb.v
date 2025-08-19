`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2025 21:15:03
// Design Name: 
// Module Name: pipo_tb
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



module pipo_tb;

  reg clk;
  reg [3:0] parallel_in;
  wire [3:0] parallel_out;

  pipo uut (
    .clk(clk),
    .parallel_in(parallel_in),
    .parallel_out(parallel_out)
  );
  always #5 clk = ~clk;

  initial 
  begin
    clk = 0;
    parallel_in = 4'b0000;

    #10 parallel_in = 4'b1010;  // Load A
    #10 parallel_in = 4'b1100;  // Load C
    #10 parallel_in = 4'b0110;  // Load 6
    #10 parallel_in = 4'b1111;  // Load F
    #10 parallel_in = 4'b0001;  // Load 1
    #20 $finish;
  end

  initial 
  begin
    $monitor("Time=%0t | parallel_in=%b | parallel_out=%b",$time, parallel_in, parallel_out);
  end
endmodule

