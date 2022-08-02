// 计数器例子
module ex_cnt(
    input   wire              sclk;
    input   wire              rst_n,
    output  wire   [9:0]      cnt
);
reg   [7:0]      cnt_r;
always@(*)
    if (rst == 1'b0)
        cnt_r <= 10'd0; // 1023 + 1 = 1024
    else    
        cnt_r <= cnt_r + 1'b1; // 0-1023-0-1023
    
endmoudle