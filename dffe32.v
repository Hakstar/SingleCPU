`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/11 01:41:44
// Design Name: 
// Module Name: dffe32
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


module dffe32(D,Clk,Clrn,e,q);
    input [31:0]D;
    input Clk,Clrn,e;
    output [31:0]q;
    reg[31:0]q;
    always @(negedge Clrn or posedge Clk)
        if (Clrn ==0)
        begin 
            q<= 0;
        end
        else begin 
        if(e) q <= D;
        end
endmodule
