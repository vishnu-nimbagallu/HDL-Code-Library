`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 21:37:34
// Design Name: 
// Module Name: t_ff
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

module t_ff (
    input t,
    input clk,
    output reg q,
    output q_b
);
    initial q = 0;  // Optional: for simulation purposes

    always @(posedge clk)
     begin
        if (t)
            q <= ~q;
        else
            q <= q;  // Hold state
    end
    assign q_b = ~q;
endmodule

