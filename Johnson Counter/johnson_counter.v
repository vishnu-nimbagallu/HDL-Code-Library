`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2025 21:38:22
// Design Name: 
// Module Name: johnson_counter
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


module johnson_counter(
input clk,
output reg  [3:0]d
    );
    initial
    begin
     d=4'b0000;
    end
    
    always @(posedge clk) 
    begin
     d <= {~d[0], d[3:1]}; // Shift right and feed inverted LSB to MSB
end
endmodule
