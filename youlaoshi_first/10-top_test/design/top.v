module top(
    input   wire        clk,
    input   wire        rst_n,
    input   wire        pi_a,
    input   wire        pi_b,
    output  wire        po_c
);

wire    flag;

div_clk div_clk_inst(
    .clk(clk),
    .rst_n(rst_n),
    .po_flag(flag)
);

a_and_b a_and_b_inst(
    .clk(clk),
    .rst_n(rst_n),
    .pi_a(pi_a),// 如果模块内部接口是输入例化时连接可以是wire变量也可以是reg
    .pi_b(pi_b),
    .pi_flag(flag),
    .po_c(po_c) // 如果模块内接口是输出例化时必须连接wire变量

);



endmodule