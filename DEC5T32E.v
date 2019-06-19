`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/07 15:29:44
// Design Name: 
// Module Name: DEC5T32E
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


module DEC5T32E(I,En,Y);
input [4:0] I;
input En;
output [31:0] Y;
function [31:0] select;
    input [4:0] I;
    input En;
    if(En==1'b0)
    select=32'h00000000;
    else 
    begin
    case (I)
       5'b00000:select = 32'h00000001;
       5'b00001:select = 32'h00000002;
       5'b00010:select = 32'h00000004;
       5'b00011:select = 32'h00000008;
       5'b00100:select = 32'h00000010;
       5'b00101:select = 32'h00000020;
       5'b00110:select = 32'h00000040;
       5'b00111:select = 32'h00000080;
       5'b01000:select = 32'h00000100;
       5'b01001:select = 32'h00000200;
       5'b01010:select = 32'h00000400;
       5'b01011:select = 32'h00000800;
       5'b01100:select = 32'h00001000;
       5'b01101:select = 32'h00002000;
       5'b01110:select = 32'h00004000;
       5'b01111:select = 32'h00008000;
       5'b10000:select = 32'h00010000;
       5'b10001:select = 32'h00020000;
       5'b10010:select = 32'h00040000;
       5'b10011:select = 32'h00080000;
       5'b10100:select = 32'h00100000;
       5'b10101:select = 32'h00200000;
       5'b10110:select = 32'h00400000;
       5'b10111:select = 32'h00800000;
       5'b11000:select = 32'h01000000;
       5'b11001:select = 32'h02000000;
       5'b11010:select = 32'h04000000;
       5'b11011:select = 32'h08000000;
       5'b11100:select = 32'h10000000;
       5'b11101:select = 32'h20000000;
       5'b11110:select = 32'h40000000;
       5'b11111:select = 32'h80000000;
    endcase
    end
  endfunction
  assign Y=select(I,En);
endmodule
