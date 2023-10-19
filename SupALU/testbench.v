`timescale 1ns / 1ps


module TestBench_1;

    reg [31:0] A, B;
    reg [2:0] opcode;
    reg clk;
    wire [31:0] ALU_Result;
 
    // DUT (Device Under Test) olan ALU1 modülünü çağırın
    ALU1 ALU1_inst (
        .A(A),
        .B(B),
        .opcode(opcode),
        .ALU_Result(ALU_Result)
    );

   always begin
   #5 clk= ~clk;
   end
    // Test sinyallerini oluşturun
    initial begin
    clk =0;
        A = 32'h12345678; // Örnek giriş değerleri
        B = 32'hAABBCCDD;
        opcode = 3'b000; // Toplama işlemi

        // Test işlemi
        #10; // 10 zaman birimi bekleyin

        opcode = 3'b001;
        #10;
        
         opcode = 3'b010;
        #10;
       
         opcode = 3'b011;
        #10;
         opcode = 3'b100;
        #10;
         opcode = 3'b101;
        #10;
        opcode = 3'b110;
        #10;
         opcode = 3'b111;
        #10;
        
    end

endmodule
