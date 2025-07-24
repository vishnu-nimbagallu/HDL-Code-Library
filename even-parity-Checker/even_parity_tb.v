`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 12:44:37
// Design Name: 
// Module Name: even_parity_tb
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


module even_parity_tb;
reg a,b,c,d;
wire out;

even_parity dut(a,b,c,d,out);
initial
begin
  
  $monitor("%t ns: a=%b b=%b c=%b d=%b -> out=%b", $time, a, b, c, d, out);

     a=0;b=0;c=0;d=0;
#10  a=0;b=0;c=0;d=1;
#10  a=0;b=0;c=1;d=0;  
#10  a=0;b=0;c=1;d=1;  
#10  a=0;b=1;c=0;d=0;  
#10  a=0;b=1;c=0;d=1; 
#10  a=0;b=1;c=1;d=0;  
#10  a=0;b=1;c=1;d=1;
#10  a=1;b=0;c=0;d=0;  
#10  a=1;b=0;c=0;d=1;  
#10  a=1;b=0;c=1;d=0;  
#10  a=1;b=0;c=1;d=1;  
#10  a=1;b=1;c=0;d=0;  
#10  a=1;b=1;c=0;d=1;  
#10  a=1;b=1;c=1;d=0;  
#10  a=1;b=1;c=1;d=1;    
#10 $finish;
end  
endmodule
