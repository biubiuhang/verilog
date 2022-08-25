module flash_led(
    input   wire        sclk,
    input   wire        rst_n,
    output  reg         led
);

parameter END_CNT = 499;
parameter END_FLAG_CNT = END_CNT -1;

wire            rst;
reg     [25:0]  div_cnt;
reg             one_s_flag;

// active L ---> active H
assign  rst = ~rst_n;

// counter
always @(posedge sclk)begin
    if(rst == 1'b1)begin
        div_cnt <= 'd0;
    end
    else if(div_cnt != END_CNT)begin
        div_cnt <= div_cnt + 1'b1;
    end
    else begin
        div_cnt <= 'd0;
    end
end
// one_s_flag
always @(posedge sclk)begin
    if(rst == 1'b1) begin
        one_s_flag <= 1'b0;
    end
    else if(div_cnt == END_FLAG_CNT)begin
        one_s_flag <= 1'b1;
    end
    else begin
        one_s_flag <= 1'b0;
    end
end

//led
always @(posedge sclk)begin
    if(rst == 1'b1)begin
        led <= 1'b0;
    end
    else if (one_s_flag == 1'b1)begin
        led <= ~led;
    end
end


endmodule