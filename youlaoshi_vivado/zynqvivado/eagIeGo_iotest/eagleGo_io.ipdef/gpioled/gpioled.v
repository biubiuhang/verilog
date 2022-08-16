module gpioled(
    input   wire                sclk,    // from zynq arm io
    input   wire                rst,
    input   wire    [1:0]       armgpio, // from-zynq-arm-pin
    output  wire    [1:0]       led      // connect fpga pin
);
reg [26:0] div_cnt;

reg [2:0]  div_cnt_ctrl;
reg        reg
// connect fpga pin
assign led = armgpio[0];
// armgpio[1] user logic ctrl

// 尽量的避免亚稳态引入
always@(posedge sclk)begin
    div_cnt_ctrl <= {div_cnt_ctrl[1:0],armgpio[1]}
end



always@(posedge sclk)begin
    if(rst == 1'b1)begin
        div_cnt <= 'd0;
    end
    else if (div_cnt_ctrl[2] == 1'b1 )begin
        if(div_cnt[26] == 1'b1)begin
            div_cnt <= 'd0;
        end
        else begin
        div_cnt <= div_cnt + 1'b1;
        end
    end
    else begin
        div_cnt <= 'd0;
    end
end



endmodule