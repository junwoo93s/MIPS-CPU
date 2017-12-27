`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2017 01:24:58 PM
// Design Name: junwoo seo
// Module Name: Dmem
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


module Dmem(
    input [31:0] malu_out,
    input [31:0] mqb,
    input mwmem, 
    output wire [31:0] dmem_out
    );
    reg [7:0] DMEMO [250:0];
    initial 
    begin
    DMEMO[0] = 'hA00000AA;
    DMEMO[1] = 'h10000011;
    DMEMO[2] = 'h20000022;
    DMEMO[3] = 'h30000033;
    DMEMO[4] = 'h40000044;
    DMEMO[5] = 'h50000055;
    DMEMO[6] = 'h60000066;
    DMEMO[7] = 'h70000077;
    DMEMO[8] = 'h80000088;
    DMEMO[9] = 'h90000099;
    
    
    end
    

    assign dmem_out = DMEMO[malu_out/4];

    
    
    
    
    
endmodule
