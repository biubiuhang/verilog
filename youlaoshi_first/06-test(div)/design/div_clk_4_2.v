// 加入div_flag标志位
// 同一时钟域

module div_clk_4_2(
    input   wire                  clk,
    input   wire                  rst,
    output  reg     [1:0]         po_cnt = 'd0
);
// div counter
reg     [1:0]   div_cnt;
reg             div_flag;

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
/*
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
*/

always @(posedge clk)begin
    if (rst == 1'b1) begin
        div_flag <= 1'b0;
    end
    else if (div_cnt == 2'd1)begin
        div_flag <= 1'b1;
    end
    else  begin
        div_flag <= 1'b0;
    end
end


always @(posedge clk)begin
    if(rst == 1'b1)begin
        po_cnt <= 'd0;
    end
    else if(div_flag == 1'b1)begin
        po_cnt <= po_cnt + 1'b1;
    end
    else begin
        po_cnt <= po_cnt;
    end
end

endmodule