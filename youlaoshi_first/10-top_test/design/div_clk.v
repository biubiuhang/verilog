module div_clk(
    input   wire    clk,
    input   wire    rst_n,
    output  reg     po_flag
);

wire rst;
reg [1:0]   div_cnt;
assign rst = ~rst_n;

// div_cnt
always @(posedge clk)begin
    if(rst == 1'b1)begin
        div_cnt <= 'd0;
end
    else if(div_cnt == 'd3)begin
        div_cnt <= 'd0;
    end
    else begin
        div_cnt <= div_cnt + 1'b1;
    end
end

// po_flag
always @(posedge clk)begin
    if(rst == 1'b1)begin
        po_flag <= 1'b0;
    end 
    else if(div_cnt == 'd2)begin
        po_flag <= 1'b1;
    end
    else begin
        po_flag <= 1'b0;
    end
end


endmodule