`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2025 21:32:36
// Design Name: 
// Module Name: piso
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



   module piso (
    input clk,
    input load,
    input [3:0] parallel_in,
    output serial_out
);

reg [3:0] shift_reg = 4'b0000;

always @(posedge clk) 
begin
    if (load)
        shift_reg <= parallel_in;
    else
        shift_reg <= {shift_reg[2:0], 1'b0};
end

assign serial_out = shift_reg[3];

endmodule
