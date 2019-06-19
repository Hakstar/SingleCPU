`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/08 15:36:17
// Design Name: 
// Module Name: Extend
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


module Extend(immediate,Se,out);
    input [15:0]immediate;
    input Se;
    output [31:0]out;
    assign out[15:0] = immediate;
    assign out[31:16] = Se ?(immediate[15] ? 16'hffff : 16'h0000) : 16'h0000;
endmodule
