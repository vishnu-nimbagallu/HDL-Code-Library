`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2025 22:47:45
// Design Name: 
// Module Name: fullsub_tb
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

module fullsub_tb;
    reg a, b, c;
    wire differ, barrow;
    
    fullsub dut(.a(a),.b(b),.c(c),.differ(differ),.barrow(barrow));
    initial 
    begin
        a = 0; b = 0; c = 0;
        #10 a=0; b=0; c=1;
        #10 a=0; b=1; c=0;
        #10 a=0; b=1; c=1;
        #10 a=1; b=0; c=0;
        #10 a=1; b=0; c=1;
        #10 a=1; b=1; c=0;
        #10 a=1; b=1; c=1;
        #10 $finish;
    end
    
    initial begin
        $monitor("Time=%0t: a=%b b=%b c=%b | diff=%b borrow=%b",
                $time, a, b, c, differ, barrow);
        $dumpfile("subtractor.vcd");
        $dumpvars(0, fullsub_tb);
    end
endmodule
