`timescale 1ns/1ns

module tb_div_clk_4_2();
reg clk,rst;
wire [1:0] po_cnt;

initial begin
    clk = 0;
    rst = 1;
    #100 ;
    rst = 0;
end

always #10 clk = ~clk;

div_clk_4_2 div_clk_4_inst(
    .clk(clk),
    .rst(rst),
    .po_cnt(po_cnt)
);








endmodule