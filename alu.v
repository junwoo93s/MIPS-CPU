`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2017 01:10:22 PM
// Design Name: junwoo seo
// Module Name: alu
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


module alu(
input clk,
input [31:0] eqa,
input [31:0] mux_exe_out,
input [3:0] ealuc,
output reg [31:0] alu_out
);

always@(*)
begin
case (ealuc)
'b0000: alu_out <= eqa&mux_exe_out; //and
'b0001: alu_out <= eqa|mux_exe_out; //or
'b0010: alu_out <= eqa+mux_exe_out; // add
'b0011: alu_out <= eqa^mux_exe_out; // xor
'b0100: alu_out <= ~(eqa|mux_exe_out); //
'b0101: alu_out <= eqa - mux_exe_out; // sub



endcase
end



endmodule

