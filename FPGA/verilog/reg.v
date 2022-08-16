// Verilog 寄存器例程

module dff (
    input    wire       clk,
    input    wire       din,
    output   reg        dout
);
    always @ (posedge clk) begin
        dout <= din ; // 当上升沿来到时，将din的值赋值给dout
    end

endmodule


module dff_tb();
    reg clk;
    reg din;
    wire    dout;

initial begin
    
    end
endmodule


