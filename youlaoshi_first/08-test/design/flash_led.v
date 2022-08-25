module flash_led(
    input   wire        clk,
    input   wire        rst_n,
    output  reg        led
);

reg [25:0]  cnt;

always @(posedge clk or negedge rst_n)begin
    if(rst_n <= 1'b0)
        cnt <= 26'd0;
    else
        if(cnt < 26'd50_000_000 - 1'b1)
            cnt <= cnt + 1'b1;
        else
            cnt <= 26'd0;
end


always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)
        led <= 1'b0;
    else
        if(cnt == 26'd50_000_000 - 1'b1)
            led <= ~led;
        else
            led <= led;
    end

endmodule