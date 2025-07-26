`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 20:49:06
// Design Name: 
// Module Name: odd_parity_tb
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


module odd_parity_tb;
reg a,b,c,d;
wire out ;

odd_parity dut(a,b,c,d,out);
initial
begin

    a=0;b=0;c=0;d=0;
#10 a=0;b=0;c=0;d=1;
#10 a=0;b=0;c=1;d=0;
#10 a=0;b=0;c=1;d=1;
#10 a=0;b=1;c=0;d=0;
#10 a=0;b=1;c=0;d=1;
#10 a=0;b=1;c=1;d=0;
#10 a=0;b=1;c=1;d=1;
#10 a=1;b=0;c=0;d=0;
#10 a=1;b=0;c=0;d=1;
#10 a=1;b=0;c=1;d=0;
#10 a=1;b=0;c=1;d=1;
#10 a=1;b=1;c=0;d=0;
#10 a=1;b=1;c=0;d=1;
#10 a=1;b=1;c=1;d=0;
#10 a=1;b=1;c=1;d=1;
#10 $finish;
end
endmodule
