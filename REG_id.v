`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2017 01:53:13 PM
// Design Name: 
// Module Name: REG_id
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


module REG_id(
input clk,
input [31:0] ifid_out,
input wwreg,
input [4:0] wmux_id_out,
input [31:0] wmux_out,


output wire [31:0] qa, qb

);
reg [31:0] REGM[31:0];
wire [4:0] rs = {ifid_out[25:21]};
wire [4:0] rt = {ifid_out[20:16]};


initial
begin
REGM[0] <= 'h00000000;
REGM[1] <= 'hA00000AA;
REGM[2] <= 'h10000011;
REGM[3] <= 'h20000022;
REGM[4] <= 'h30000033;
REGM[5] <= 'h40000044;
REGM[6] <= 'h50000055;
REGM[7] <= 'h60000066;
REGM[8] <= 'h70000077;
REGM[9] <= 'h80000088;
REGM[10] <= 'h90000099;

end



assign qa = REGM[rs];
assign qb = REGM[rt];

always@(negedge clk)
    begin
    if (wwreg)
    begin
    
    REGM[wmux_id_out] =wmux_out;
    end
    end
    
    
    
    

endmodule
