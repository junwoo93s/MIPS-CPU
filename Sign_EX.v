`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2017 01:45:08 PM
// Design Name: junwoo seo
// Module Name: Sign_EX
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


module Sign_EX(ifid_out, sign_ex_out);
    input [31:0] ifid_out;
    output [31:0] sign_ex_out;
    
    wire [15:0] imm = {ifid_out [15:0]};
    
    assign sign_ex_out = {{16{imm[15]}},imm[15:0]};
endmodule
