`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/08 14:53:06
// Design Name: 
// Module Name: Single_cycle_CPU
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

module Single_cycle_CPU(Clk,Clrn,Inst,Date_out,PC,We,R,Date_in,X,Y);
    input [31:0]Inst,Date_out;
    input Clk,Clrn;
    output We;
    output [31:0]R/*R，数据储存器的Addr*/,Date_in/*写入数据储存器的值*/,PC,X,Y;
    
    wire  [31:0] PC_plus4 , Next_PC/*下一PC地址PC*/, address/*更新PC储存器值的第二项*/,Qa,Qb,Alu_a/*ALU操作数a*/, Alu_b/*ALU操作数b*/,D;
    wire  [1:0] Aluc;
    wire  [4:0] Wr;
    wire  [1:0] Pcsrc;
    wire  Z, Wmem, Wreg, Regrt, Reg2reg, Aluqb, Se;//设置Control_unit参数
    wire [15:0]immediate = {Inst[15:0]};//立即数
    wire [31:0]ExtL_immediate;//拓展移位立即数
    wire [31:0] Ext_immediate;//拓展立即数
    Extend EX1(Inst[15:0],Se,Ext_immediate);//对立即数进行拓展
    SHIFTER_32 Shifter_imm0(Ext_immediate,5'b00010,1'b1,1'b0,ExtL_immediate);//对立即数进行移位
    controlUnit ctrl1(Inst[31:26] , Inst[5:0] ,Z, Regrt, Se , Wreg ,Aluqb, Aluc, Wmem ,Pcsrc, Reg2reg);//判断控制值
    assign We = Wmem;//给We数据储存器信号赋值
    MUX2X5 Reg_Wr(Inst[15:11],Inst[20:16],Regrt,Wr);//Inst到Wr对rt，rd的选择
    MUX2X32 ALU2(Qb,Ext_immediate,Aluqb,Alu_b);//选择并给Y赋值
    assign Alu_a = Qa;//给X赋值
    ALU Alu0(Alu_a,Alu_b,Aluc,R,Z);//ALU运算
    MUX2X32 Result0(Date_out,R,Reg2reg,D);//达到数据储存器与R选择后的输出D
    Regfilee Regfile0(Inst[25:21],Inst[20:16],D,Wr,Wreg,Clk,Clrn,Qa,Qb);
    Dff_32 PC0(Next_PC,Clk,Clrn,PC);//PC寄存器更新
    CLA32 PC_plus(PC,32'h4,1'b0,PC_plus4);//PC+4处理
    CLA32 Addr1(PC_plus4,ExtL_immediate,1'b0,address);//立即数移位+PC_plus4的值，作为下一PC地址选择器的A2接口
    wire [31:0]J_PC = {PC_plus4[31:28],Inst[25:0],2'b00};//J型指令跳转
    MUX4X32_D NextPC(PC_plus4,32'h00000000,address,J_PC,Pcsrc,Next_PC);//下一PC地址的选择
    assign Date_in = Qb;//给Date_in赋值
    assign X=Alu_a;
    assign Y=Alu_b;
endmodule
