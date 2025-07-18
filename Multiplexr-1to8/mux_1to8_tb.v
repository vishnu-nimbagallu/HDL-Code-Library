`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2025 19:39:53
// Design Name: 
// Module Name: mux_1to8_tb
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


module mux_1to8_tb;
    reg i;
    reg [2:0] s;
    wire [7:0] y; 

    mux_1to8 dut(i, s, y);
    initial 
    begin
        i = 1'b1;  
        s = 3'b000;
        #2 s = 3'b001;
        #2 s = 3'b010;
        #2 s = 3'b011;
        #2 s = 3'b100;
        #2 s = 3'b101;
        #2 s = 3'b110;
        #2 s = 3'b111;
        #2;
        // Toggle i to 0 and repeat
        i = 1'b0;
        s = 3'b000;
        #2 s = 3'b001;
        #2 s = 3'b010;
        #2 s = 3'b011;
        #2 s = 3'b100;
        #2 s = 3'b101;
        #2 s = 3'b110;
        #2 s = 3'b111;
        #5 $finish;
    end
    initial begin
        $monitor("Time=%0t: i=%b, s=%b, y=%b", $time, i, s, y);
    end
endmodule
