`timescale 1ns / 1ps

module regis(
    output reg [31:0] q,
    input wire [31:0] d,
    input wire clk, n_reset
);

    always @(posedge clk or negedge n_reset) begin
        if (!n_reset)
            q <= 32'b0;
        else
            q <= d;
    end

endmodule
