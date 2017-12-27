`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2017 01:26:43 PM
// Design Name: junwoo seo
// Module Name: MEMWB
// Project Name: mips
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


module MEMWB(
    input clk,
    input mwreg,mm2reg,
    input [4:0] mmux_id_out,
    input [31:0] malu_out,
    input [31:0] dmem_out,
    output reg wwreg,wm2reg,
    output reg [4:0] wmux_id_out,
    output reg [31:0] walu_out,
    output reg [31:0] wdmem_out

    );
    always@(posedge clk)
    begin
    wwreg <= mwreg;
    wm2reg <= mm2reg;
    wmux_id_out <= mmux_id_out;
    walu_out <= malu_out;
    wdmem_out <= dmem_out;
    
    end
    
endmodule
