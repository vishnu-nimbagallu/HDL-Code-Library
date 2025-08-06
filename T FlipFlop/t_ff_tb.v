`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 21:51:46
// Design Name: 
// Module Name: t_ff_tb
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

module t_ff_tb;
    reg t, clk;
    wire q, q_b;

    t_ff dut (
        .t(t),
        .clk(clk),
        .q(q),
        .q_b(q_b)
    );

    initial 
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

 
    initial 
    begin
        t = 0;

        #7  t = 1;
        #10 t = 0;
        #10 t = 1;
        #10 t = 0;
        #10 t = 1;
        #20 $finish;
    end

    initial 
    begin
        $monitor("Time = %0t | clk = %b | T = %b | Q = %b | Q_bar = %b",
                 $time, clk, t, q, q_b);
    end
endmodule

