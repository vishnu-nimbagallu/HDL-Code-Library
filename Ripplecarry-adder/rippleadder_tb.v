`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2025 22:14:28
// Design Name: 
// Module Name: rippleadder_tb
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


module rippleadder_tb;
reg[3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;

rippleadder dut(a,b,cin,sum,carry);

initial begin
    $monitor("Time=%0t a=%b, b=%b, cin=%b, sum=%b, carry=%b", 
             $time, a, b, cin, sum, carry);
end

initial begin
    a=0; b=0; cin=0;
    #5 a=0; b=0; cin=1;
    #5 a=0; b=1; cin=0;
    #5 a=0; b=1; cin=1;
    #5 a=1; b=0; cin=0;
    #5 a=1; b=0; cin=1;
    #5 a=1; b=1; cin=0;
    #5 a=1; b=1; cin=1;
    #5 $finish;
end
endmodule