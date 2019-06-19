`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/07 14:53:28
// Design Name: 
// Module Name: MUX2X32
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


module MUX2X32(a0,a1,s,y);
    input [31:0]a0,a1;
    input s;
    output [31:0]y;
    assign y = s ? a1:a0;
endmodule
