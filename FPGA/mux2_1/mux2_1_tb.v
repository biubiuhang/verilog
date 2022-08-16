// 由于输入都是单bit，共有三个信号。一共会有8个测试向量
`timescale 1ns/1ps

module mux2_1_tb;

    reg      data_a;
    reg      data_b;
    reg      sel;

    wire     o_data;

    mux2_1 mux2_1_tb(
    .data_a(data_asig),
    .data_b(data_bsig),
    .sel(sel_sig),
    .o_data(o_datasig)
);

    initial begin
        data_a = 0;
        data_b = 0;
        sel    = 0;
        #20;
        data_a = 0;
        data_b = 0;
        sel    = 1;
        #20;
        data_a = 0;
        data_b = 1;
        sel    = 0;
        #20;
        data_a = 0;
        data_b = 1;
        sel    = 1;
        #20;
        data_a = 1;
        data_b = 0;
        sel    = 0;
        #20;
        data_a = 1;
        data_b = 0;
        sel    = 1;
        #20;
        data_a = 1;
        data_b = 1;
        sel    = 0;
        #20;
        data_a = 1;
        data_b = 1;
        sel    = 1;
        #20;
    end


endmodule