`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2025 21:33:19
// Design Name: 
// Module Name: piso_tb
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




   module tb_piso;
reg clk;
reg load;
reg [3:0] parallel_in;
wire serial_out;

piso uut (
    .clk(clk),
    .load(load),
    .parallel_in(parallel_in),
    .serial_out(serial_out)
);
always #5 clk = ~clk;

initial begin
  
    clk = 0;
    load = 0;
    parallel_in = 4'b0000;
   
    #10;
    parallel_in = 4'b1010;
    load = 1;
    #10;
    load = 0;
    #40;
    
    parallel_in = 4'b1100;
    load = 1;
    #10;
    load = 0;
    #40;
    $finish;
end


initial begin
    $monitor("Time=%0t, Load=%b, Parallel_in=%4b, Serial_out=%b", 
             $time, load, parallel_in, serial_out);
end

endmodule