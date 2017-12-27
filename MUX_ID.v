`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2017 01:38:29 PM
// Design Name: 
// Module Name: MUX_ID
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


module MUX_ID(clk,ifid_out,regrt,mux_id_out);
    input clk;

    input [31:0] ifid_out;
    input regrt;
    wire [4:0] rd = {ifid_out [15:11]};
    wire [4:0] rt = {ifid_out [20:16]};
    output reg [4:0] mux_id_out;
    
    
    always@(negedge clk)
    begin
    if (regrt == 'b1)
    begin 
    mux_id_out <= rt;
    end
    else if (regrt == 0)
    begin 
    mux_id_out <= rd;
    end 
    end
endmodule
