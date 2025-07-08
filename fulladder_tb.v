`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2025 23:14:46
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb;
    reg a, b, c;
    wire sum, carry;
    
    // Instantiate the full adder
    fulladder dut(
        .a(a),
        .b(b),
        .c(c),
        .sum(sum),
        .carry(carry)
    );
    
    initial begin
        // Initialize inputs
        a = 0; b = 0; c = 0;
        
        // Apply all possible input combinations
        #5 a=0; b=0; c=1;
        #5 a=0; b=1; c=0;
        #5 a=0; b=1; c=1;
        #5 a=1; b=0; c=0;
        #5 a=1; b=0; c=1;
        #5 a=1; b=1; c=0;
        #5 a=1; b=1; c=1;
        
        #5 $finish;
    end
    
    initial begin
        $monitor("Time=%0t: a=%b b=%b c=%b | sum=%b carry=%b",
                $time, a, b, c, sum, carry);
        $dumpfile("adder.vcd");
        $dumpvars(0, fulladder_tb);
    end
endmodule
