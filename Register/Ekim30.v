`timescale 1ns / 1ps

module sync32_reg(
  input clk,
  input reset,
  input [31:0] InData,
  output reg [31:0] OutData 
);

always @(posedge clk)
begin
  if (reset) // reset sinyali negatif kenara geçince OutData'ya 0 ata.
    OutData <= 32'b0;
  else // Aksi takdirde InData'yı OutData'ya ata.
    OutData <= InData;
end

endmodule

module regfile(
input clk,
input reset,
input [31:0] datain,
input [4:0]sel,
input wr,
output reg [31:0] dataout
    );
    
    //RegIn RegOut olmadan yapmayı çalış (basitleştir modeli)
    //
wire [31:0] RegOut[31:0];
reg [31:0] RegIn[31:0];

sync32_reg reg0(.clk(clk),.reset(reset),.InData(RegIn[0]),.OutData(RegOut[0]));
sync32_reg reg1(.clk(clk),.reset(reset),.InData(RegIn[1]),.OutData(RegOut[1]));
sync32_reg reg2(.clk(clk),.reset(reset),.InData(RegIn[2]),.OutData(RegOut[2]));
sync32_reg reg3(.clk(clk),.reset(reset),.InData(RegIn[3]),.OutData(RegOut[3]));
sync32_reg reg4(.clk(clk),.reset(reset),.InData(RegIn[4]),.OutData(RegOut[4]));
sync32_reg reg5(.clk(clk),.reset(reset),.InData(RegIn[5]),.OutData(RegOut[5]));

sync32_reg reg6(.clk(clk),.reset(reset),.InData(RegIn[6]),.OutData(RegOut[6]));
sync32_reg reg7(.clk(clk),.reset(reset),.InData(RegIn[7]),.OutData(RegOut[7]));
sync32_reg reg8(.clk(clk),.reset(reset),.InData(RegIn[8]),.OutData(RegOut[8]));
sync32_reg reg9(.clk(clk),.reset(reset),.InData(RegIn[9]),.OutData(RegOut[9]));
sync32_reg reg10(.clk(clk),.reset(reset),.InData(RegIn[10]),.OutData(RegOut[10]));

sync32_reg reg11(.clk(clk),.reset(reset),.InData(RegIn[11]),.OutData(RegOut[11]));
sync32_reg reg12(.clk(clk),.reset(reset),.InData(RegIn[12]),.OutData(RegOut[12]));
sync32_reg reg13(.clk(clk),.reset(reset),.InData(RegIn[13]),.OutData(RegOut[13]));
sync32_reg reg14(.clk(clk),.reset(reset),.InData(RegIn[14]),.OutData(RegOut[14]));
sync32_reg reg15(.clk(clk),.reset(reset),.InData(RegIn[15]),.OutData(RegOut[15]));

sync32_reg reg16(.clk(clk),.reset(reset),.InData(RegIn[16]),.OutData(RegOut[16]));
sync32_reg reg17(.clk(clk),.reset(reset),.InData(RegIn[17]),.OutData(RegOut[17]));
sync32_reg reg18(.clk(clk),.reset(reset),.InData(RegIn[18]),.OutData(RegOut[18]));
sync32_reg reg19(.clk(clk),.reset(reset),.InData(RegIn[19]),.OutData(RegOut[19]));
sync32_reg reg20(.clk(clk),.reset(reset),.InData(RegIn[20]),.OutData(RegOut[20]));

sync32_reg reg21(.clk(clk),.reset(reset),.InData(RegIn[21]),.OutData(RegOut[21]));
sync32_reg reg22(.clk(clk),.reset(reset),.InData(RegIn[22]),.OutData(RegOut[22]));
sync32_reg reg23(.clk(clk),.reset(reset),.InData(RegIn[23]),.OutData(RegOut[23]));
sync32_reg reg24(.clk(clk),.reset(reset),.InData(RegIn[24]),.OutData(RegOut[24]));
sync32_reg reg25(.clk(clk),.reset(reset),.InData(RegIn[25]),.OutData(RegOut[25]));

sync32_reg reg26(.clk(clk),.reset(reset),.InData(RegIn[26]),.OutData(RegOut[26]));
sync32_reg reg27(.clk(clk),.reset(reset),.InData(RegIn[27]),.OutData(RegOut[27]));
sync32_reg reg28(.clk(clk),.reset(reset),.InData(RegIn[28]),.OutData(RegOut[28]));
sync32_reg reg29(.clk(clk),.reset(reset),.InData(RegIn[29]),.OutData(RegOut[29]));
sync32_reg reg30(.clk(clk),.reset(reset),.InData(RegIn[30]),.OutData(RegOut[30]));
sync32_reg reg31(.clk(clk),.reset(reset),.InData(RegIn[31]),.OutData(RegOut[31]));
 
always @(negedge clk) begin
  if (!wr) begin
    case(sel) 
        0: dataout = RegOut[0];
        1: dataout = RegOut[1];
        2: dataout = RegOut[2];
        3: dataout = RegOut[3];
        4: dataout = RegOut[4];
        5: dataout = RegOut[5];
        6: dataout = RegOut[6];
        7: dataout = RegOut[7];
        8: dataout = RegOut[8];
        9: dataout = RegOut[9];
        10: dataout = RegOut[10];
        11: dataout = RegOut[11];
        12: dataout = RegOut[12];
        13: dataout = RegOut[13];
        14: dataout = RegOut[14];
        15: dataout = RegOut[15];
        16: dataout = RegOut[16];
        17: dataout = RegOut[17];
        18: dataout = RegOut[18];
        19: dataout = RegOut[19];
        20: dataout = RegOut[20];
        21: dataout = RegOut[21];
        22: dataout = RegOut[22];
        23: dataout = RegOut[23];
        24: dataout = RegOut[24];
        25: dataout = RegOut[25];
        26: dataout = RegOut[26];
        27: dataout = RegOut[27];
        28: dataout = RegOut[28];
        29: dataout = RegOut[29];
        30: dataout = RegOut[30];
        31: dataout = RegOut[31];
        default: dataout = 32'b0;
    endcase
  end
  else begin
     case(sel)
      0: RegIn[0] = datain;
      1: RegIn[1] = datain;
      2: RegIn[2] = datain;
      3: RegIn[3] = datain;
      4: RegIn[4] = datain;
      5: RegIn[5] = datain;
      6: RegIn[6] = datain;
      7: RegIn[7] = datain;
      8: RegIn[8] = datain;
      9: RegIn[9] = datain;
      10: RegIn[10] = datain;
      11: RegIn[11] = datain;
      12: RegIn[12] = datain;
      13: RegIn[13] = datain;
      14: RegIn[14] = datain;
      15: RegIn[15] = datain;
      
      16: RegIn[16] = datain;
      17: RegIn[17] = datain;
      18: RegIn[18] = datain;
      19: RegIn[19] = datain;
      20: RegIn[20] = datain;
      21: RegIn[21] = datain;
      22: RegIn[22] = datain;
      23: RegIn[23] = datain;
      24: RegIn[24] = datain;
      25: RegIn[25] = datain;
      26: RegIn[26] = datain;
      27: RegIn[27] = datain;
      28: RegIn[28] = datain;
      29: RegIn[29] = datain;
      30: RegIn[30] = datain;
      31: RegIn[31] = datain;
      default: RegIn[0] = 32'b0;
    endcase
  end
end

endmodule
