module div_clk(
    input   wire    clk,
    input   wire    rst_n,
    output  reg     po_flag
);
// rst
wire    rst;
assign  rst = ~rst_n;

reg [1:0] div_cnt1;

// div_cnt1 
always @(posedge clk)begin
    if (rst_n == 1'b0)begin
        div_cnt1 <= 'd0;
    end
    else if(div_cnt1 == 'd3)begin
        div_cnt1 <= 'd0;
    end
    else begin
        div_cnt1 <= div_cnt1 + 1'b1;
    end
end

// po_flag
always @(posedge clk)begin
    if(rst_n == 1'b0)begin
        po_flag <= 'd0;
    end
    else if(div_cnt1 == 'd2)begin
            po_flag <= 'd0;
        end
    else begin
            po_flag <= po_flag + 1'b1;
    end
end

endmodule