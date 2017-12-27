`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2017 01:29:08 PM
// Design Name: 
// Module Name: Control
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


module Control(ifid_out, regrt, wreg,m2reg,wmem,aluimm,aluc);

input [31:0] ifid_out;
wire [5:0] op = {ifid_out[31:26]};
wire [5:0] func = {ifid_out[5:0]};
output reg regrt, wreg,m2reg,wmem,aluimm;
output reg [3:0] aluc;


always@(*)
                if (op ==6'b000000)
                begin
                if (func == 6'b100000) //add
                begin
                regrt <= 0;
                wreg <= 1;
                m2reg <= 0;
                wmem <= 0;
                aluimm <=0;
                aluc <= 4'b0010;
                end
                else if (func == 6'b100010) //sub
                begin
                regrt <= 0;
                wreg <= 1;
                m2reg <= 0;
                wmem <= 0;
                aluimm <=0;
                aluc <=4'b0101;
                end
                else if (func == 6'b100100) //and
                begin
                regrt <= 0;
                wreg <= 1;
                m2reg <= 0;
                wmem <= 0;
                aluimm <=0;
                aluc <=4'b0000;
                end
                else if (func == 6'b100101) //or
                begin
                regrt <= 0;
                wreg <= 1;
                m2reg <= 0;
                wmem <= 0;
                aluimm <=0;
                aluc <=4'b0001;
                end
                else if (func == 6'b100110) //xor
                begin
                regrt <= 0;
                wreg <= 1;
                m2reg <= 0;
                wmem <= 0;
                aluimm <=0;
                aluc <=4'b0011;
                end
                end



endmodule
