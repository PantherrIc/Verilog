`timescale 1ns / 1ps

module RegisterFile(
    input [4:0] RegAddress1,
    input [4:0] RegAddress2,
    input clk,
    input reset,
    input RegData,
    input [31:0] WriteData1,
    input [31:0] WriteData2,//32 tane lazım olabilir 
    output reg [31:0] ReadReg1,
    output reg [31:0] ReadReg2
    
    
    );


  // Mux'lar, belirli kayıtlardan okuma yapmak için kullanılır
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            ReadReg1 <= 0;
            ReadReg2 <= 0;
        end else begin
            // RegAddress1 ve RegAddress2'ye göre hangi kayıttan okuma yapılacağını seçin
            case (RegAddress1)
                5'd0: ReadReg1 <= X0_Zr.OutData;
                5'd1: ReadReg1 <= X1_Ra.OutData;
                5'd2: ReadReg1 <= X2_Sp.OutData;
                5'd3: ReadReg1 <= X3_Gp.OutData;
                5'd4: ReadReg1 <= X4_Tp.OutData;
                5'd5: ReadReg1 <= X5_T0.OutData;
                5'd6: ReadReg1 <= X6_T1.OutData;
                5'd7: ReadReg1 <= X7_T2.OutData;
                5'd8: ReadReg1 <= X8_S0.OutData;
                5'd9: ReadReg1 <= X9_S1.OutData;
                5'd10: ReadReg1 <= X10_A0.OutData;
                5'd11: ReadReg1 <= X11_A1.OutData;
                5'd12: ReadReg1 <= X12_A2.OutData;
                5'd13: ReadReg1 <= X13_A3.OutData;
                5'd14: ReadReg1 <= X14_A4.OutData;
                5'd15: ReadReg1 <= X15_A5.OutData;
                5'd16: ReadReg1 <= X16_A6.OutData;
                5'd17: ReadReg1 <= X17_A7.OutData;
                5'd18: ReadReg1 <= X18_S2.OutData;
                5'd19: ReadReg1 <= X19_S3.OutData;
                5'd20: ReadReg1 <= X20_S4.OutData;
                5'd21: ReadReg1 <= X21_S5.OutData;
                5'd22: ReadReg1 <= X22_S6.OutData;
                5'd23: ReadReg1 <= X23_S7.OutData;
                5'd24: ReadReg1 <= X24_S8.OutData;
                5'd25: ReadReg1 <= X25_S9.OutData;
                5'd26: ReadReg1 <= X26_S10.OutData;
                5'd27: ReadReg1 <= X27_S11.OutData;
                5'd28: ReadReg1 <= X28_T3.OutData;
                5'd29: ReadReg1 <= X29_T4.OutData;
                5'd30: ReadReg1 <= X30_T5.OutData;
                5'd31: ReadReg1 <= X31_T6.OutData;           
                default: ReadReg1 <= 0; // Tanımsız adres, 0 döndürün veya başka bir işlem yapın
            endcase
  
        case (RegAddress2)
                5'd0: ReadReg2 <= X0_Zr.OutData;
                5'd1: ReadReg2 <= X1_Ra.OutData;
                5'd2: ReadReg2 <= X2_Sp.OutData;
                5'd3: ReadReg2 <= X3_Gp.OutData;
                5'd4: ReadReg2 <= X4_Tp.OutData;
                5'd5: ReadReg2 <= X5_T0.OutData;
                5'd6: ReadReg2 <= X6_T1.OutData;
                5'd7: ReadReg2 <= X7_T2.OutData;
                5'd8: ReadReg2 <= X8_S0.OutData;
                5'd9: ReadReg2 <= X9_S1.OutData;
                5'd10: ReadReg2 <= X10_A0.OutData;
                5'd11: ReadReg2 <= X11_A1.OutData;
                5'd12: ReadReg2 <= X12_A2.OutData;
                5'd13: ReadReg2 <= X13_A3.OutData;
                5'd14: ReadReg2 <= X14_A4.OutData;
                5'd15: ReadReg2 <= X15_A5.OutData;
                5'd16: ReadReg2 <= X16_A6.OutData;
                5'd17: ReadReg2 <= X17_A7.OutData;
                5'd18: ReadReg2 <= X18_S2.OutData;
                5'd19: ReadReg2 <= X19_S3.OutData;
                5'd20: ReadReg2 <= X20_S4.OutData;
                5'd21: ReadReg2 <= X21_S5.OutData;
                5'd22: ReadReg2 <= X22_S6.OutData;
                5'd23: ReadReg2 <= X23_S7.OutData;
                5'd24: ReadReg2 <= X24_S8.OutData;
                5'd25: ReadReg2 <= X25_S9.OutData;
                5'd26: ReadReg2 <= X26_S10.OutData;
                5'd27: ReadReg2 <= X27_S11.OutData;
                5'd28: ReadReg2 <= X28_T3.OutData;
                5'd29: ReadReg2 <= X29_T4.OutData;
                5'd30: ReadReg2 <= X30_T5.OutData;
                5'd31: ReadReg2 <= X31_T6.OutData;   
                default: ReadReg2 <= 0;
            endcase
        end
    end
  
 always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Reset durumunda, herhangi bir yazma işlemi yapmayın
        end else if (RegData) begin
            // RegAddress1'e göre hangi kayıta yazılacağını seçin
           case (RegAddress1)
                 5'd0: X0_Zr.InData <= WriteData1;
                5'd1: X1_Ra.InData <= WriteData1;
                5'd2: X2_Sp.InData <= WriteData1;
                5'd3: X3_Gp.InData <= WriteData1;
                5'd4: X4_Tp.InData <= WriteData1;
                5'd5: X5_T0.InData <= WriteData1;
                5'd6: X6_T1.InData <= WriteData1;
                5'd7: X7_T2.InData <= WriteData1;
                5'd8: X8_S0.InData <= WriteData1;
                5'd9: X9_S1.InData <= WriteData1;
                5'd10: X10_A0.InData <= WriteData1;
                5'd11: X11_A1.InData <= WriteData1;
                5'd12: X12_A2.InData <= WriteData1;
                5'd13: X13_A3.InData <= WriteData1;
                5'd14: X14_A4.InData <= WriteData1;
                5'd15: X15_A5.InData <= WriteData1;
                5'd16: X16_A6.InData <= WriteData1;
                5'd17: X17_A7.InData <= WriteData1;
                5'd18: X18_S2.InData <= WriteData1;
                5'd19: X19_S3.InData <= WriteData1;
                5'd20: X20_S4.InData <= WriteData1;
                5'd21: X21_S5.InData <= WriteData1;
                5'd22: X22_S6.InData <= WriteData1;
                5'd23: X23_S7.InData <= WriteData1;
                5'd24: X24_S8.InData <= WriteData1;
                5'd25: X25_S9.InData <= WriteData1;
                5'd26: X26_S10.InData <= WriteData1;
                5'd27: X27_S11.InData <= WriteData1;
                5'd28: X28_T3.InData <= WriteData1;
                5'd29: X29_T4.InData <= WriteData1;
                5'd30: X30_T5.InData <= WriteData1;
                5'd31: X31_T6.InData <= WriteData1;  
                default: X0_Zr.InData <= 0;
            endcase
            // RegAddress2'ye göre hangi kayıta yazılacağını seçin
             case (RegAddress2)
                 5'd0: X0_Zr.InData <= WriteData2;
                5'd1: X1_Ra.InData <= WriteData2;
                5'd2: X2_Sp.InData <= WriteData2;
                5'd3: X3_Gp.InData <= WriteData2;
                5'd4: X4_Tp.InData <= WriteData2;
                5'd5: X5_T0.InData <= WriteData2;
                5'd6: X6_T1.InData <= WriteData2;
                5'd7: X7_T2.InData <= WriteData2;
                5'd8: X8_S0.InData <= WriteData2;
                5'd9: X9_S1.InData <= WriteData2;
                5'd10: X10_A0.InData <= WriteData2;
                5'd11: X11_A1.InData <= WriteData2;
                5'd12: X12_A2.InData <= WriteData2;
                5'd13: X13_A3.InData <= WriteData2;
                5'd14: X14_A4.InData <= WriteData2;
                5'd15: X15_A5.InData <= WriteData2;
                5'd16: X16_A6.InData <= WriteData2;
                5'd17: X17_A7.InData <= WriteData2;
                5'd18: X18_S2.InData <= WriteData2;
                5'd19: X19_S3.InData <= WriteData2;
                5'd20: X20_S4.InData <= WriteData2;
                5'd21: X21_S5.InData <= WriteData2;
                5'd22: X22_S6.InData <= WriteData2;
                5'd23: X23_S7.InData <= WriteData2;
                5'd24: X24_S8.InData <= WriteData2;
                5'd25: X25_S9.InData <= WriteData2;
                5'd26: X26_S10.InData <= WriteData2;
                5'd27: X27_S11.InData <= WriteData2;
                5'd28: X28_T3.InData <= WriteData2;
                5'd29: X29_T4.InData <= WriteData2;
                5'd30: X30_T5.InData <= WriteData2;
                5'd31: X31_T6.InData <= WriteData2;  
                default: X0_Zr.InData <= 0;
            endcase
        end
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
