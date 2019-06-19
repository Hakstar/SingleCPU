`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/06 21:49:57
// Design Name: 
// Module Name: INSTMEM
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


module INSTMEM(Addr,Inst);
    input [31:0]Addr;
    output [31:0]Inst;
    wire [31:0] Ram [0:31];
    assign Ram[5'h00] = 32'h2021000a;//addi $1,$1,10
    assign Ram[5'h01] = 32'h20420006;//addi $2,$2,6
    assign Ram[5'h02] = 32'h00435020;//add $10,$2,$3
    assign Ram[5'h03] = 32'h00222022;//sub $4,$1,$2
    assign Ram[5'h04] = 32'h00224824;//and $9,$1,$2
    assign Ram[5'h05] = 32'h00272825;//or  $5,$1,$7
    assign Ram[5'h06] = 32'h20680006;//addi $8,$3,6
    assign Ram[5'h07] = 32'h3024000a;//andi $4,$1,10
    assign Ram[5'h08] = 32'h34a60014;//ori  $6,$5,20
    assign Ram[5'h09] = 32'hac810002;//sw   $1,2($4)
    assign Ram[5'h0A] = 32'h8c820002;//lw   $2,2($4)
    assign Ram[5'h0B] = 32'h10220001;//beq  $1,$2,1
    assign Ram[5'h0C] = 32'h2021000a;//addi $1,$1,10
    assign Ram[5'h0D] = 32'h14220002;//bne  $1,$2,1
    assign Ram[5'h0E] = 32'h2021000a;//addi $1,$1,10
    assign Ram[5'h0F] = 32'h20420006;//addi $2,$2,6
    assign Ram[5'h10] = 32'h08000001;//j    1
    /*
    assign Ram[5'h0D] = 32'h00000000;
    assign Ram[5'h10] = 32'h00000000;
    assign Ram[5'h11] = 32'h00000000;
    assign Ram[5'h12] = 32'h00000000;
    assign Ram[5'h13] = 32'h00000000;
    assign Ram[5'h14] = 32'h00000000;
    assign Ram[5'h15] = 32'h00000000;
    assign Ram[5'h16] = 32'h00000000;
    assign Ram[5'h14] = 32'h00000000;
    assign Ram[5'h15] = 32'h00000000;
    assign Ram[5'h16] = 32'h00000000;
    assign Ram[5'h17] = 32'h00000000;
    assign Ram[5'h18] = 32'h00000000;
    assign Ram[5'h19] = 32'h00000000;
    assign Ram[5'h1A] = 32'h00000000;
    assign Ram[5'h1B] = 32'h00000000;
    assign Ram[5'h1C] = 32'h00000000;
    assign Ram[5'h1D] = 32'h00000000;
    assign Ram[5'h1E] = 32'h00000000;
    assign Ram[5'h1F] = 32'h00000000;
    */
    assign Inst = Ram [Addr[6:2]];
endmodule
