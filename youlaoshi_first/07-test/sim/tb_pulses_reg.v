`timescale 1ns/1ps

module tb_pulses_reg();

reg             clk,rst_n;
wire    [3:0]   cnt;



initial begin
    rst_n = 1'b0;
    clk   = 1'b0;
    #25
    rst_n = 1'b1;
end

always #5 clk = ~clk;

pulses_reg tb_pulses_reg(
    .clk(clk),
    .rst_n(rst_n),
    .cnt(cnt)
);
















endmodule