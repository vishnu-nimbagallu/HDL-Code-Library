`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 11:47:40
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
reg a,b,c;
wire out ;

odd_parity dut(a,b,c,out);

initial
begin

    a=0;b=0;c=0;
#10 a=0;b=0;c=1;
#10 a=0;b=1;c=0;
#10 a=0;b=1;c=1;
#10 a=1;b=0;c=0;
#10 a=1;b=0;c=1;
#10 a=1;b=1;c=0;
#10 a=1;b=1;c=1;
#10 $finish;
end
endmodule
