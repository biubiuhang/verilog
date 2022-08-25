`timescale 1ns/1ns

module tb_top();
reg     rst_n,clk,a,b;
wire    c;

initial begin
    rst_n = 0;
    clk = 0;
    a = 0;
    b = 0;
    #100;
    rst_n = 1;
end

always #10 clk = ~clk;
always #20 a = {$random};
always #20 b = {$random};

top top_inst(
    .clk(clk),
    .rst_n(rst_n),
    .pi_a(a),
    .pi_b(b),
    .po_c(c)
);




endmodule