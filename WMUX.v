`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2017 04:46:59 PM
// Design Name: junwoo seo
// Module Name: WMUX
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


module WMUX(    
    input wire wm2reg,
    input wire [31:0] walu_out,
    input wire [31:0] wdmem_out,
    output reg [31:0] wmux_out);
 
always@(walu_out or wdmem_out or wm2reg)
begin

if (wm2reg)
begin
wmux_out <= wdmem_out;
end
else
begin
wmux_out <= walu_out;
end
end
 
endmodule
