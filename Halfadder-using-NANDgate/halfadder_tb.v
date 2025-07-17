`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.07.2025 19:40:38
// Design Name: 
// Module Name: halfadder_tb
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


module halfadder_tb;
reg a,b;
wire sum,carry;

halfadder dut(a,b,sum,carry);
initial 
begin
 a=0;b=0;
 #5 a=0;b=1;
 #5 a=1;b=0;
 #5 a=1;b=1;
 #5 $finish;
 end
 initial 
 begin
 $display("a=%d b=%d sum=%d carry=%d",a,b,sum,carry);
 end
endmodule
