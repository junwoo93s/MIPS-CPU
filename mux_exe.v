    `timescale 1ns / 1ps
    //////////////////////////////////////////////////////////////////////////////////
    // Company: 
    // Engineer: 
    // 
    // Create Date: 11/14/2017 01:10:06 PM
    // Design Name: junwoo seo
    // Module Name: mux_exe
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
    
    
    module mux_exe(
        input wire [31:0] eqb,
        input wire ealuimm,
        input wire [31:0] esign_ex_out,
        output reg [31:0] mux_exe_out
        
        );
         always@(eqb,ealuimm,esign_ex_out)
           begin
           if (ealuimm == 1)
           begin 
           mux_exe_out <= esign_ex_out;
           end
           else
           begin 
           mux_exe_out <= eqb;
           end 
           end
    endmodule
