module ex_cnt(
        input   wire            sclk,
        input   wire            rst_n,
        output  wire    [7:0]   cnt_w
);

reg [7:0] cnt;

assign cnt_w = cnt;
// 异步触发器
always @ (posedge sclk or negedge rst_n)
    if(rst_n == 1'b0)
        cnt <= 'd0;
    else
        cnt <= cnt + 1'b1;        


endmodule