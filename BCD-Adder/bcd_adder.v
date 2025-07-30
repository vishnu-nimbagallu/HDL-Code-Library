`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 23:43:30
// Design Name: 
// Module Name: bcd_adder
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

module bcd_adder(
    input [3:0] a, b,
    input cin,
    output reg [3:0] sum,
    output reg carry
);

reg [4:0] sum_temp;  // 5-bit to hold (a + b + cin)

always @(*)
 begin
    sum_temp = a + b + cin;  // First addition
    
            if (sum_temp > 9)  // If result > 9, adjust for BCD
                  begin 
              sum_temp = sum_temp + 6;  // Add 6 to correct
              carry = 1;                // Set carry
              sum = sum_temp[3:0];     // Take lower 4 bits
                  end
                  
           else 
           begin
            carry = 0;               // No carry
            sum = sum_temp[3:0];     // Direct assignment
            end
end

endmodule