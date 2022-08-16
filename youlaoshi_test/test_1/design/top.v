module top(
    input   wire                sclk_i,
    input   wire                rst_n_i,
    output  wire    [7:0]       cnt_o

);

//模块名   例化名<自定义>
//();详情如下
//(
//.sclk(sclk_i), 括号里面连接的是模块外面的信号，模块内的信号是ex_cnt.v文件，模块外的信号是自己定义top.v文件
//.rst_n(rst_n_i),
//.cnt_w(cnt_o)
//);

ex_cnt ex_cnt_inst(
        .sclk(sclk_i),
        .rst_n(rst_n_i),
        .cnt_w(cnt_o)
);



endmodule





