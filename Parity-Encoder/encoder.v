`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2025 19:39:34
// Design Name: 
// Module Name: encoder
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


module encoder(
    input [7:0] d,
    input en,
    output reg [2:0] y
);
    always @(en or d) begin
        if (en == 1) begin
            if (d[7]) y = 3'b111;      
            else if (d[6]) y = 3'b110;
            else if (d[5]) y = 3'b101;
            else if (d[4]) y = 3'b100;  
            else if (d[3]) y = 3'b011;
            else if (d[2]) y = 3'b010;
            else if (d[1]) y = 3'b001;
            else y = 3'b000;            
        end
        else begin
            y = 3'bzzz;               
        end
    end
endmodule