`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2025 20:26:24
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb;
    reg [7:0] d;
    reg en;
    wire [2:0] y;
    encoder dut (
        .d(d),
        .en(en),
        .y(y)
    );
    
    initial
     begin    
        d = 8'b00000000;
        en = 0;
        $monitor("Time=%0t en=%b d=%b y=%b", $time, en, d, y);
        #10 en = 1;  
        #10 d = 8'b00000001;  
        #10 d = 8'b00000010;  
        #10 d = 8'b00000100;  
        #10 d = 8'b00001000;  
        #10 d = 8'b00010000;  
        #10 d = 8'b00100000;  
        #10 d = 8'b01000000;  
        #10 d = 8'b10000000;  
        #10 $finish;
    end
endmodule