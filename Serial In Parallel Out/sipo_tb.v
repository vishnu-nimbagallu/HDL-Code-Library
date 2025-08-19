`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2025 20:07:18
// Design Name: 
// Module Name: sipo_tb
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




 
module sipo_tb;
  reg clk;
  reg serial_in;
  wire [3:0] parallel_out;


  sipo uut (
    .clk(clk),
    .serial_in(serial_in),
    .parallel_out(parallel_out)
  );
  always #5 clk = ~clk;

  initial
   begin
    
    clk = 0;
    serial_in = 0;

    #10 serial_in = 1;  
    #10 serial_in = 0;   
    #10 serial_in = 1;   
    #10 serial_in = 1;   
    #10 serial_in = 0;   
    #10 serial_in = 1;   
    #20 $finish;
  end
  initial 
  begin
    $monitor("Time=%0t | serial_in=%b | parallel_out=%b", 
              $time, serial_in, parallel_out);
  end
endmodule

