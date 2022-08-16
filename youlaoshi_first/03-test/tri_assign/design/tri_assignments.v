module tri_assignments(
    input   wire        clk,
    input   wire        a,
    input   wire        b,
    output  wire        c1,
    output  reg         c2,
    output  reg         c3
);

assign c1 = a & b;

always @(posedge clk)begin
    c2 <= a & b;
end

// 如果敏感列表触发电平信号不全导致锁存器的产生
always @(*)begin
    c3 = a & b;
end


endmodule