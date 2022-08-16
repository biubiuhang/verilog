module a_and_b(
    input wire[2:0]   a,// 左边最高位,并且定义了a的位宽
    input wire        b,
    output wire       c
);

assign c = a[1] & b;

wire[1:0]           d




endmodule