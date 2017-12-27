`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2017 01:15:34 PM
// Design Name: 
// Module Name: IMEM
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


module IMEM(
    input [31:0] pc_inout,
    output reg [31:0] imem_out
    );
    reg [31:0] MEMO [0:250];
    
    always @(pc_inout)
    begin
    case (pc_inout)
        100: imem_out = 32'h00221820;
        104: imem_out = 32'h00221820; //stall
        108: imem_out = 32'h00221820; //stall
        112: imem_out = 32'h00221820; //stall
        116: imem_out = 32'h01232022;
        120: imem_out = 32'h00692825;
        124: imem_out = 32'h00693026;
        128: imem_out = 32'h00693824;
    endcase
    end
endmodule
