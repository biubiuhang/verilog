module div_clk_4(
    input   wire                  clk,
    input   wire                  rst,
    output  reg     [1:0]         po_cnt
);
// div counter
reg     [1:0]   div_cnt;
reg             clk_4;

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

always @(posedge clk_4)begin
    if(rst == 1'b1)begin
        po_cnt <= 'd0;
    end
    else if(po_cnt == 2'd3)begin
        po_cnt <= 'd0;
    end
    else begin
        po_cnt <= po_cnt + 1'b1;
    end
end

endmodule