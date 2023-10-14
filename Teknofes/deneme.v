`timescale 1ns / 1ps

module Adder32Bit(
input [31:0]num1,
input [31:0]num2,
output reg [31:0]result
);
always @(*) begin
    result = num1 + num2;
    end
endmodule

module Subtractor32Bit(
input [31:0]num1,
input [31:0]num2,
output reg [31:0] result
);
always @(*) begin
    result = num1 - num2;
    end
endmodule

module Equal32Bit(
input [31:0]num,
output reg [31:0] result
);
always @(*) begin
    result = num;
    end
endmodule

module Down32Bit(
input [31:0]num,
output reg [31:0] result
);
always @ (*) begin
result = num - 1; 
end
endmodule

module Up32Bit(
input [31:0]num,
output reg [31:0] result
);
always @ (*) begin
result = num + 1; 
end
endmodule

module ALU1(input [31:0] A,B,input [2:0] opcode,input clk,output reg [31:0] ALU_Result);
   
   wire [31:0] AddResult;
   Adder32Bit Adder(.num1(A),.num2(B),.result(AddResult));
  
   wire [31:0] SubResult;
   Subtractor32Bit Suber(.num1(A),.num2(B),.result(SubResult)); 
  
   wire [31:0] EqFirst;
   Equal32Bit Equal1(.num(A),.result(EqFirst));
  
   wire [31:0] EqLast;
   Equal32Bit Equal2(.num(B),.result(EqLast));
  
   wire [31:0] DownFirst;
   Down32Bit Down1(.num(A),.result(DownFirst));
   
   wire [31:0] DownLast;
   Down32Bit Down2( .num(B),.result(DownLast));
   
   wire [31:0] UpFirst;
   Up32Bit Up1(.num(A),.result(UpFirst));
   
   wire [31:0] UpLast;
   Up32Bit Up2(.num(B),.result(UpLast));
   
    always @(*) begin
        case(opcode)
        3'b000: // Addition
           ALU_Result = AddResult ;
        3'b001:
            ALU_Result = SubResult ; 
        3'b010:
            ALU_Result = EqFirst ;
        3'b011:
            ALU_Result = EqLast ;
        3'b100:
            ALU_Result = DownFirst ;      
        3'b101:
            ALU_Result = DownLast ;   
         3'b110:
            ALU_Result = UpFirst ;
         3'b111:
            ALU_Result = UpLast ;  
        default: ALU_Result = 0 ; 
        endcase
    end

endmodule
