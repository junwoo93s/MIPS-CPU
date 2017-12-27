`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2017 03:51:23 PM
// Design Name: 
// Module Name: IDEXE_
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


module IDEXE_(
    input clk,
    input  wreg, m2reg, wmem, aluimm,
    input  [3:0] aluc,
    input  [4:0] mux_id_out,
    input  [31:0] sign_ex_out,
    input  [31:0] qa, qb,
    output reg ewreg, em2reg, ewmem, ealuimm,
    output reg [3:0] ealuc,
    output reg [4:0] emux_id_out,
    output reg [31:0] esign_ex_out,
    output reg [31:0] eqa, eqb
    );

    always@(posedge clk)
    begin
    ewreg = wreg;
    em2reg = m2reg;
    ewmem =wmem;
    ealuimm = aluimm;
    ealuc =aluc;
    emux_id_out =mux_id_out;
    esign_ex_out =sign_ex_out;
    eqa=qa;
    eqb=qb;
    end
    
endmodule
