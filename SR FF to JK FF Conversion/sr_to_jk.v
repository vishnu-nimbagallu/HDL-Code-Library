`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2025 19:19:49
// Design Name: 
// Module Name: sr_to_jk
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


module sr_to_jk(
    input j, k, clk,
    output reg q,
    output q_b
);

    assign q_b = ~q;

    always @(posedge clk) begin
        case ({j, k})
            2'b00: q <= q;     // No change
            2'b01: q <= 0;     // Reset
            2'b10: q <= 1;     // Set
            2'b11: q <= ~q;    // Toggle
        endcase
    end

endmodule
