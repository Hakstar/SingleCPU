`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/09 21:37:51
// Design Name: 
// Module Name: Dff_32
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


module Dff_32(Inst_addr,Clk,Clrn,laddr);
    input [31:0]Inst_addr;
    input   Clk,Clrn;
    output  reg[31:0]laddr;
    always @ (negedge Clrn or posedge Clk)
    begin
        if (Clrn == 0) 
        begin 
            laddr <= 0;
        end 
        else 
        begin
            laddr <= Inst_addr;
        end
    end
endmodule
