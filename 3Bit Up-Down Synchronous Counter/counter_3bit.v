`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2025 18:23:18
// Design Name: 
// Module Name: counter_3bit
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


module counter_3bit (
    input clk,
    input up_down, // 1 for up, 0 for down
    output reg [2:0] count=0
);

always @(posedge clk)
 begin
    if (up_down) 
    begin
        count <= count + 1; // Count up
 //Explanation  if count is 000 (0) + 1 = 001 (1) 
    end
    else
    begin
        count <= count - 1; // Count down
    end
end
endmodule