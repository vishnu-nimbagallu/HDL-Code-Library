`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 12:22:29
// Design Name: 
// Module Name: siso_Rshift_tb
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


module siso_Rshift_tb;
    reg clk, serial_in;
    wire [3:0] q;
    
    siso_Rshift dut(clk, serial_in, q);
    initial
     begin
        clk = 0;
        forever #10 clk = ~clk;  
    end
    initial
     begin
        serial_in = 0;
        $dumpfile("siso_Rshift.vcd");
        $dumpvars(0, siso_Rshift_tb);

        $display("Time\tSerial-In\tRegister State");
        $monitor("%4d\t%b\t\t%b", $time, serial_in, q);
        
        // Test sequence: 1 ? 0 ? 1 ? 1
        #20 serial_in = 1;  // Shift in '1'
        #20 serial_in = 0;  // Shift in '0'
        #20 serial_in = 1;  // Shift in '1'
        #20 serial_in = 1;  // Shift in '1'
        #40 $finish;
    end
endmodule
