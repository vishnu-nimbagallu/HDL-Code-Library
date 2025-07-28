`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 23:02:06
// Design Name: 
// Module Name: cla_adder_tb
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


module cla_adder_tb;
    // inputs
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    
    // outputs
    wire [3:0] sum;
    wire cout;
    
    // instantiate the unit under test (uut)
   cla_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    
    initial 
    begin
        a = 4'b0000;
        b = 4'b0000;
        cin = 0;
        
        $monitor("time=%t, a=%b, b=%b, cin=%b, sum=%b, cout=%b", 
                 $time, a, b, cin, sum, cout);
        
        // no carry cases
        #10 a = 4'b0001; b = 4'b0001; cin = 0;  // 1 + 1 = 2
        #10 a = 4'b0010; b = 4'b0011; cin = 0;  // 2 + 3 = 5
        #10 a = 4'b0101; b = 4'b0010; cin = 0;  // 5 + 2 = 7
        
        // with carry-in
        #10 a = 4'b0001; b = 4'b0001; cin = 1;  // 1 + 1 + 1 = 3
        #10 a = 4'b0011; b = 4'b0011; cin = 1;  // 3 + 3 + 1 = 7
        
        // carry propagation cases
        #10 a = 4'b1111; b = 4'b0001; cin = 0;  // 15 + 1 = 16 (overflow)
        #10 a = 4'b1111; b = 4'b1111; cin = 0;  // 15 + 15 = 30
        #10 a = 4'b1111; b = 4'b1111; cin = 1;  // 15 + 15 + 1 = 31
        
        // random cases
        #10 a = 4'b1010; b = 4'b0101; cin = 0;  // 10 + 5 = 15
        #10 a = 4'b1100; b = 4'b0011; cin = 1;  // 12 + 3 + 1 = 16 (overflow)
        #10 $finish;
    end
endmodule
