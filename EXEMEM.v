`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2017 01:10:57 PM
// Design Name: 
// Module Name: EXEMEM
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


module EXEMEM(
    input clk,
    input ewreg,em2reg,ewmem,
    input [4:0] emux_id_out,
    input [31:0] alu_out,
    input [31:0] eqb,
    output reg mwreg,mm2reg,mwmem,
    output reg [4:0] mmux_id_out,
    output reg [31:0] malu_out,
    output reg [31:0] mqb
    );
    
    always@(posedge clk)
    begin
    mwreg <= ewreg;
    mm2reg <= em2reg;
    mwmem <= ewmem;
    mmux_id_out <= emux_id_out;
    malu_out <= alu_out;
    mqb <= eqb;
    end
endmodule
