`timescale 1ns / 1ps

module clock_divider(
    input clk,
    output reg clk_25MH
    );

reg [11:0] counter;

always @(posedge clk) begin
    if (counter == 1479) begin
        counter <= 0;
        clk_25MH <= ~clk_25MH;
    end else begin
        counter <= counter + 1;
    end
end

endmodule
