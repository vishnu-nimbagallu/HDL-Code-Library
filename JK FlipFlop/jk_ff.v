`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 17:12:15
// Design Name: 
// Module Name: jk_ff
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

module jk_ff(
    input j, k, clk,
    output reg q,   
    output q_b
);
    // Initialize output
    initial q = 1'b0;
    assign q_b = ~q;
    
    always @(posedge clk) //Edge-Triggered Behavior,The flip-flop updates only on the rising of clk.
    begin    
        case ({j,k})
            2'b00: q <= q;     // Hold
            2'b01: q <= 1'b0;  // Reset
            2'b10: q <= 1'b1;  // Set
            2'b11: q <= ~q;   // Toggle
        endcase
    end
endmodule