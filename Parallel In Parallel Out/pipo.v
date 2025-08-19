`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2025 21:13:46
// Design Name: 
// Module Name: pipo
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

module pipo (
    input clk,                
    input [3:0] parallel_in,  
    output reg [3:0] parallel_out = 4'b0000 
);

always @(posedge clk) 
begin
    parallel_out <= parallel_in; 
end

endmodule
