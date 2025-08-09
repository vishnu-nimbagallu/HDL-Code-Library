`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2025 12:18:15
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(
input clk,
output reg [3:0]q
    );
    initial 
    begin
       q= 4'b0001;
       end
    always@(posedge clk)
    begin
    q<={q[0] , q[3:1]};
    end
endmodule

//The Operation:
//The statement q <= {q[0], q[3:1]}; does the following:

//Take the current value of q: Let's say at some clock cycle, q = ABCD (where each letter represents 1 bit: A=MSB, D=LSB)

//Create a new value:

//Take the LSB (D) and move it to the front: D

//Take the remaining bits (ABC): ABC

//Concatenate them: D + ABC = DABC

//Assign this new value to q on the next clock edge:

//Old value: ABCD

//New value: DABC
