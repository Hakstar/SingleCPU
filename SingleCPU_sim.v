`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/11 03:00:02
// Design Name: 
// Module Name: SingleCPU_sim
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


module CPU_sim();
    reg Clk,Clrn;
    wire [31:0]Inst,Date_out;
    wire [31:0]PC,R;
    wire [31:0]X,Y;
    initial
        begin
        Clk = 0;
        Clrn = 0;
        #20;
        Clrn <= 1;
        end
    always 
        begin 
        #20 Clk=~Clk;
        end
    All_contorl All_contorl_sim(.Clk(Clk),.Clrn(Clrn),.Inst(Inst),.Date_out(Date_out),.PC(PC),.R(R),.X(X),.Y(Y));
endmodule
