`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2025 20:03:07
// Design Name: 
// Module Name: sipo
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



module sipo(
    input clk,
    input serial_in,
    output reg [3:0] parallel_out = 4'b0000
);

always @(posedge clk)
 begin
    parallel_out <= {parallel_out[2:0], serial_in};
end
endmodule

