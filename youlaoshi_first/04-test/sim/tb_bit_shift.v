`timescale 1ns/1ns

module tb_bit_shift();

reg clk,rst;
wire    [7:0]   po_a;

initial begin
    clk = 0;
    rst = 1;
    #100
    rst = 0; 
end

always # 10 clk = ~clk;

bit_shift bit_shfit_init(
    .clk(clk),
    .rst_n(rst),
    .po_a(po_a)
);






endmodule