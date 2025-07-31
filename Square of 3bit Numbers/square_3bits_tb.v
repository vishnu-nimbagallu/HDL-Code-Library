`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 20:15:21
// Design Name: 
// Module Name: square_3bits_tb
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


module square_3bits_tb;
    reg [2:0] in;
    wire [5:0] y;

   square_3bits  dut(in, y);
    initial 
    begin
       
        
            in = 3'b000;  // 0
        #10 in = 3'b001;  // 1
        #10 in = 3'b010;  // 2
        #10 in = 3'b011;  // 3
        #10 in = 3'b100;  // 4
        #10 in = 3'b101;  // 5
        #10 in = 3'b110;  // 6
        #10 in = 3'b111;  // 7
        #10 $finish;
    end
endmodule
