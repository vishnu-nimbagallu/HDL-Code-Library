`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2025 23:29:18
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb;
reg [3:0]a,b;
wire greater;
wire lesser;
wire equal;

comparator uut(
    .a(a),
    .b(b),
    .greater(greater),
    .lesser(lesser),
    .equal(equal)
);

initial 
begin
    $monitor("Time=%0t a=%d b=%d greater=%d lesser=%d equal=%d",
             $time, a, b, greater, lesser, equal);
    a = 4'b0000; b = 4'b0000; #10; // Equal
    a = 4'b0001; b = 4'b0000; #10; // A > B
    a = 4'b0000; b = 4'b0001; #10; // A < B
    a = 4'b1010; b = 4'b1010; #10; // Equal
    a = 4'b1111; b = 4'b0000; #10; // A > B
    a = 4'b0111; b = 4'b1000; #10; // A < B
    #10 $finish;
end
endmodule
