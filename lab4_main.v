`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2017 01:06:06 PM
// Design Name: 
// Module Name: lab4_main
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


module lab4_main(
    input wire clk, switch,
    output reg out
    );
    
    wire [31:0] malu_out;
    wire [31:0] pc_inout;
    wire [31:0] ifid_out;
    wire ewreg, em2reg, ewmem, ealuimm;
    wire [3:0] ealuc;
    wire [4:0] emux_id_out;
    wire [31:0] esign_ex_out;
    wire [31:0] eqa,eqb;
    wire mwreg,mm2reg,mwmem;
    wire [4:0] mmux_id_out;
    wire [31:0] mqb;
    wire wwreg,wm2reg;
    wire [4:0] wmux_id_out;
    wire [31:0] walu_out;
    wire [31:0] wdmem_out;
    wire [31:0] wmux_out;
    wire wreg, m2reg,wmem,aluimm;
    wire [3:0] aluc;
    wire [4:0] mux_id_out;
    wire [31:0] sign_ex_out;
    wire [31:0] qa, qb;
    wire [31:0] imem_out; 
    wire [31:0] pc_add4;
    wire regrt;
    wire [31:0] mux_exe_out;
    wire [31:0] alu_out;
    wire [31:0] dmem_out;    
    
    
    PC PC_call (clk,switch,pc_inout,pc_add4);
    IMEM IMEM_call (pc_inout,imem_out);
    IFID IFID_call (clk, imem_out, ifid_out);
    // at this point ifid_out has 32 bits and we need to divide it into piecese and call them. this part is really annoying..........

    
    Control Control_call (ifid_out, regrt, wreg,m2reg,wmem,aluimm,aluc);
    MUX_ID MUX_ID_call (clk,ifid_out,regrt,mux_id_out);
    Sign_EX Sign_EX_call (ifid_out, sign_ex_out);
    REG_id REG_id_call (clk,ifid_out,wwreg,wmux_id_out,wmux_out, qa, qb);
    IDEXE_ IDEXE_call (clk,wreg,m2reg,wmem,aluimm,aluc,mux_id_out,sign_ex_out,qa,qb,ewreg,em2reg,ewmem,ealuimm,ealuc,emux_id_out,esign_ex_out,eqa,eqb);
    
    
    mux_exe mux_exe_call (eqb,ealuimm,esign_ex_out,mux_exe_out);
    alu alu_call (clk,eqa,mux_exe_out,ealuc,alu_out);
    EXEMEM EXEMEM_call (clk, ewreg,em2reg,ewmem,emux_id_out,alu_out,eqb,mwreg,mm2reg,mwmem,mmux_id_out,malu_out,mqb);
    
    Dmem Dmem_call (malu_out,mqb,mwmem, dmem_out);
    MEMWB MEMWB_call (clk,mwreg,mm2reg,mmux_id_out,malu_out,dmem_out,wwreg,wm2reg,wmux_id_out,walu_out,wdmem_out);
    
    
    WMUX WMUX_call (wm2reg,walu_out,wdmem_out,wmux_out);
  
    initial
    begin
        out = 1'b0;
    end
    
    always @ (posedge clk)
    begin
    if (pc_inout == 32'd132)
        begin
            out = 1'b1;
        end
    else if (switch == 0)
        begin
            out = 1'b0;
        end
    end
    

    
    
endmodule
