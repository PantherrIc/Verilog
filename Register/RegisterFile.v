`timescale 1ns / 1ps

module RegisterFile(
    input [4:0] RegAddress1,
    input [4:0] RegAddress2,
    input clk,
    input reset,
    input RegData,
    input [31:0] WriteData,//32 tane lazım olabilir 
    output reg [31:0] ReadReg1,
    output reg [31:0] ReadReg2
    
    
    );
    reg [31:0] csr;
    reg [4:0] chose;

  always @(posedge clk) begin
    case (RegData)
    1'b0: begin
    ReadReg1 <= csr;
    chose <= RegAddress1; // RegAddress1'i chose'a atama
    end
    1'b1: begin
    ReadReg2 <= csr;
    chose <= RegAddress2; // RegAddress1'i chose'a atama
    end
    default:begin
    csr <= 32'b0;
    chose<= 4'b0;
    end
    endcase
    end
  
  
  
  always @(posedge clk) begin
    case (chose)
        5'd0: csr <= X0_Zero.OutData;
        5'd1: csr <= X1_Ra.OutData;
        5'd2: csr <= X2_Sp.OutData;
        5'd3: csr <= X3_Gp.OutData;
        5'd4: csr <= X4_Tp.OutData;
        5'd5: csr <= X5_T0.OutData;
        5'd6: csr <= X6_T1.OutData;
        5'd7: csr <= X7_T2.OutData;
        5'd8: csr <= X8_S0.OutData;
        5'd9: csr <= X9_S1.OutData;
        5'd10: csr <= X10_A0.OutData;
        5'd11: csr <= X11_A1.OutData;
        5'd12: csr <= X12_A2.OutData;
        5'd13: csr <= X13_A3.OutData;
        5'd14: csr <= X14_A4.OutData;
        5'd15: csr <= X15_A5.OutData;
        5'd16: csr <= X16_A6.OutData;
        5'd17: csr <= X17_A7.OutData;
        5'd18: csr <= X18_S2.OutData;
        5'd19: csr <= X19_S3.OutData;
        5'd20: csr <= X20_S4.OutData;
        5'd21: csr <= X21_S5.OutData;
        5'd22: csr <= X22_S6.OutData;
        5'd23: csr <= X23_S7.OutData;
        5'd24: csr <= X24_S8.OutData;
        5'd25: csr <= X25_S9.OutData;
        5'd26: csr <= X26_S10.OutData;
        5'd27: csr <= X27_S11.OutData;
        5'd28: csr <= X28_T3.OutData;
        5'd29: csr <= X29_T4.OutData;
        5'd30: csr <= X30_T5.OutData;
        5'd31: csr <= X31_T6.OutData;
        default: csr <= 32'b0;
    endcase
end

  
sync32_reg X0_Zr(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X1_Ra(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X2_Sp(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X3_Gp(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X4_Tp(.clk(clk),.reset(reset),.InData(WriteData),.OutData());

sync32_reg X5_T0(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X6_T1(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X7_T2(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X8_S0(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X9_S1(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
    
sync32_reg X10_A0(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X11_A1(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X12_A2(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X13_A3(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X14_A4(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X15_A5(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X16_A6(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X17_A7(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
 
sync32_reg X18_S2(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X19_S3(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X20_S4(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X21_S5(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X22_S6(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X23_S7(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X24_S8(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X25_S9(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X26_S10(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X27_S11(.clk(clk),.reset(reset),.InData(WriteData),.OutData());

sync32_reg X28_T3(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X29_T4(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X30_T5(.clk(clk),.reset(reset),.InData(WriteData),.OutData());
sync32_reg X31_T6(.clk(clk),.reset(reset),.InData(WriteData),.OutData());

   
endmodule
