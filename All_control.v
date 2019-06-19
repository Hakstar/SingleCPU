`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/11 02:51:18
// Design Name: 
// Module Name: All_control
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


module All_contorl(Clk,Clrn,Inst,Date_out,PC,R,X,Y);
    input Clk,Clrn;
    output [31:0]Inst,Date_out;//从数据储存器读取的数据
    output [31:0]PC/*PC地址*/,R/*Alu计算结果*/;
    output [31:0]X,Y;
    wire We;
    wire [31:0]Date_in;//需要写入数据存储器的数据
    
    Single_cycle_CPU C1(Clk,Clrn,Inst,Date_out,PC,We,R,Date_in,X,Y);
    DATAMEM dmem(R,Date_in,Clk,We,Date_out);
    INSTMEM imem(PC,Inst);
endmodule

