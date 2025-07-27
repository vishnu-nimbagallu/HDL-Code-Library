`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 23:03:12
// Design Name: 
// Module Name: seven_segment
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

//common Anode(+)
//All positive terminals are connected to VCC
//Common Anode: To display "1," set segments b & c to LOW, others to HIGH.
//ON = 0 ,OFF =1

module seven_segment(
    input [3:0] bcd,     
    output reg [6:0] display  
);
always @(*) 
begin
    case (bcd)
                            //abcdefg
        4'b0000: display = 7'b0000001; // 0 (a-f ON, g OFF)
        4'b0001: display = 7'b1001111; // 1 (b,c ON)
        4'b0010: display = 7'b0010010; // 2 (a,b,g,e,d ON)
        4'b0011: display = 7'b0000110; // 3 (a,b,g,c,d ON)
        4'b0100: display = 7'b1001100; // 4 (f,g,b,c ON)
        4'b0101: display = 7'b0100100; // 5 (a,f,g,c,d ON)
        4'b0110: display = 7'b0100000; // 6 (a,f,g,c,d,e ON)
        4'b0111: display = 7'b0001111; // 7 (a,b,c ON)
        4'b1000: display = 7'b0000000; // 8 (ALL ON)
        4'b1001: display = 7'b0000100; // 9 (a,b,c,f,g ON)
        default: display = 7'b1111111;  // Default: All OFF
    endcase
end
endmodule
