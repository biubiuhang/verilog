module div_clk(
    input   wire             clk,
    input   wire             rst,
    output  reg              clk_4
);
// div counter
reg     [1:0]   div_cnt;

always @(posedge clk)begin
    if (rst == 1'b1)begin
        div_cnt <= 'd0;
    end

    else if(div_cnt == 2'd3)begin
        div_cnt <= 'd0;
    end
    else begin
        div_cnt <= div_cnt + 1'b1;
    end
end

always @(posedge clk)begin
    if (rst == 1'b1) begin
        clk_4 <= 1'b0;
    end
    else if (div_cnt == 2'd1)begin
        clk_4 <= 1'b1;
    end
    else if (div_cnt == 2'd3)begin
        clk_4 <= 1'b0;
    end
end



endmodule