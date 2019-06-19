`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/11 01:24:37
// Design Name: 
// Module Name: Regfilee
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


module Regfilee(Ra,Rb,D,Wr,We,Clk,Clrn,Qa,Qb);
    input [4:0]Ra,Rb,Wr;
    input [31:0]D;
    input We,Clk,Clrn;
    output [31:0]Qa,Qb;
    wire [31:0]e;
    wire [31:0]r00,r01,r02,r03,r04,r05,r06,r07;
    wire [31:0]r08,r09,r10,r11,r12,r13,r14,r15;
    wire [31:0]r16,r17,r18,r19,r20,r21,r22,r23;
    wire [31:0]r24,r25,r26,r27,r28,r29,r30,r31;
    DEC5T32E decoder(Wr,We,e);
    assign r00 = 0;
    dffe32 reg01(D,Clk,Clrn,e[01],r01);
    dffe32 reg02(D,Clk,Clrn,e[02],r02);
    dffe32 reg03(D,Clk,Clrn,e[03],r03);
    dffe32 reg04(D,Clk,Clrn,e[04],r04);
    dffe32 reg05(D,Clk,Clrn,e[05],r05);
    dffe32 reg06(D,Clk,Clrn,e[06],r06);
    dffe32 reg07(D,Clk,Clrn,e[07],r07);
    dffe32 reg08(D,Clk,Clrn,e[08],r08);
    dffe32 reg09(D,Clk,Clrn,e[09],r09);
    dffe32 reg10(D,Clk,Clrn,e[10],r10);
    dffe32 reg11(D,Clk,Clrn,e[11],r11);
    dffe32 reg12(D,Clk,Clrn,e[12],r12);
    dffe32 reg13(D,Clk,Clrn,e[13],r13);
    dffe32 reg14(D,Clk,Clrn,e[14],r14);
    dffe32 reg15(D,Clk,Clrn,e[15],r15);
    dffe32 reg16(D,Clk,Clrn,e[16],r16);
    dffe32 reg17(D,Clk,Clrn,e[17],r17);
    dffe32 reg18(D,Clk,Clrn,e[18],r18);
    dffe32 reg19(D,Clk,Clrn,e[19],r19);
    dffe32 reg20(D,Clk,Clrn,e[20],r20);
    dffe32 reg21(D,Clk,Clrn,e[21],r21);
    dffe32 reg22(D,Clk,Clrn,e[22],r22);
    dffe32 reg23(D,Clk,Clrn,e[23],r23);
    dffe32 reg24(D,Clk,Clrn,e[24],r24);
    dffe32 reg25(D,Clk,Clrn,e[25],r25);
    dffe32 reg26(D,Clk,Clrn,e[26],r26);
    dffe32 reg27(D,Clk,Clrn,e[27],r27);
    dffe32 reg28(D,Clk,Clrn,e[28],r28);
    dffe32 reg29(D,Clk,Clrn,e[29],r29);
    dffe32 reg30(D,Clk,Clrn,e[30],r30);
    dffe32 reg31(D,Clk,Clrn,e[31],r31);
    assign Qa = select(r00,r01,r02,r03,r04,r05,r06,r07,r08,r09,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,Ra);
    assign Qb = select(r00,r01,r02,r03,r04,r05,r06,r07,r08,r09,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,Rb);
    function [31:0]select;
        input [31:0]r00,r01,r02,r03,r04,r05,r06,r07,
                    r08,r09,r10,r11,r12,r13,r14,r15,
                    r16,r17,r18,r19,r20,r21,r22,r23,
                    r24,r25,r26,r27,r28,r29,r30,r31;
        input [4:0] s;
        case (s)
            5'd00:select = r00;
            5'd01:select = r01;
            5'd02:select = r02;
            5'd03:select = r03;
            5'd04:select = r04;
            5'd05:select = r05;
            5'd06:select = r06;
            5'd07:select = r07;
            5'd08:select = r08;
            5'd09:select = r09;
            5'd10:select = r10;
            5'd11:select = r11;
            5'd12:select = r12;
            5'd13:select = r13;
            5'd14:select = r14;
            5'd15:select = r15;
            5'd16:select = r16;
            5'd17:select = r17;
            5'd18:select = r18;
            5'd19:select = r19;
            5'd20:select = r20;
            5'd21:select = r21;
            5'd22:select = r22;
            5'd23:select = r23;
            5'd24:select = r24;
            5'd25:select = r25;
            5'd26:select = r26;
            5'd27:select = r27;
            5'd28:select = r28;
            5'd29:select = r29;
            5'd30:select = r30;
            5'd31:select = r31;
        endcase
    endfunction
endmodule
