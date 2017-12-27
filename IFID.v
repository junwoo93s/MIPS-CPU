`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2017 01:23:01 PM
// Design Name: junwoo seo
// Module Name: IFID
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


module IFID(
    input clk,
    input [31:0] imem_out,
    output reg [31:0] ifid_out
    
    
    );
    
    always@(posedge clk)
    begin
    ifid_out <= imem_out;
    end
    
endmodule
