`timescale 1ns / 1ps
module Register(
   input  wire clk,
   input  wire rst,
   // okuma arayuzu
   input  wire [ 4:0] oku1_adr_i, // rs1
   input  wire [ 4:0] oku2_adr_i, // rs2
   output wire [31:0] oku1_deger_o,
   output wire [31:0] oku2_deger_o,
   // yazma arayuzu
   input  wire [ 4:0] yaz_adr_i, // hy
   input  wire [31:0] yaz_deger_i,
   input  wire        yaz
    );
    reg [31:0] sync32[31:0];

    assign oku1_deger_o = sync32[oku1_adr_i];
    assign oku2_deger_o = sync32[oku2_adr_i];
    
    always@(posedge clk) begin
      if(yaz) begin
         sync32[yaz_adr_i] <=  yaz_deger_i;
      end
      if(rst) begin
       //burayı 0'latma kodlarını yaz
      end
   end
endmodule

//https://github.com/KASIRGA-KIZIL/tekno-kizil/blob/main/
//verilog-tasarimi/cekirdek/boru_hatti/coz_yazmacoku/yazmac_obegi.v
