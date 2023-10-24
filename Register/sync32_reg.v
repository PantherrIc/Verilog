`timescale 1ns / 1ps

module sync32_reg(
  input clk,
  input reset,
  input [31:0] InData,
  //input enable, //bu kullanılacak
  output reg [31:0] OutData // "output reg" ekledim.
);

always @(posedge clk or negedge reset)
begin
  if (!reset) // reset sinyali negatif kenara geçince OutData'ya 0 ata.
    OutData <= 32'b0;
  else // Aksi takdirde InData'yı OutData'ya ata.
    OutData <= InData;
end

endmodule
