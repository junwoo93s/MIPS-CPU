`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2017 01:07:01 PM
// Design Name: 
// Module Name: PC
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


module PC(
    input clk, switch,
    output reg [31:0] pc_inout,
    output reg [31:0] pc_add4
    );
    
    initial
    begin
        pc_inout = 32'd100;
    end
    
    always @(posedge clk)
    begin
        if (switch == 1)
            pc_inout <= pc_add4;
        else
            pc_inout = 32'd100;
    end
    
    always @(pc_inout)
    begin
        pc_add4 = pc_inout + 32'd4;
    end
endmodule
