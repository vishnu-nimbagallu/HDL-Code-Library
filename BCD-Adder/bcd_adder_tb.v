`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 16:56:42
// Design Name: 
// Module Name: bcd_adder_tb
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



module bcd_adder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;

bcd_adder dut(a,b,cin,sum,carry);

initial 
begin
$display(" a=%d b=%d cin=%d sum=%d carry=%d",a,b,cin,sum,carry);
     a=6;  b=5;  cin=6;
  #9 a=3;  b=3;  cin=0;
  #9 a=7;  b=2;  cin=3;
  #9 a=4;  b=3;  cin=0;
  #9 a=5;  b=5;  cin=2;  
  #9 a=9;  b=9;  cin=0;  
  #9 a=9;  b=9;  cin=1;
  #9 $finish;
end
endmodule

