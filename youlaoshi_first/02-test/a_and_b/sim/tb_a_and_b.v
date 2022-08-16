`timescale 1ns/1ns

module tb_a_and_b();
// 随机生成ab变量
reg a,b;
reg inclk;
wire    c1,c2;

initial begin
    inclk = 0;
end

always #10 inclk = ~inclk; 

always #20 a = {$random};
always #15 b = {$random};

a_and_b a_and_b_inst(
    .clk(inclk),
    .pi_a(a),
    .pi_b(b),
    .po_c1(c1),
    .po_c2(c2)
);






endmodule
