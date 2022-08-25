`timescale 1ns/1ns

module tb_ex1_fsm();
reg     rst_n,clk,imoney;
wire    ocola;

initial begin
    rst_n = 0;
    clk   = 0;
    imoney = 0;
    #100 
    rst_n = 1;
end

always #10 clk = ~clk;

always #20 imoney = {$random};

fsm fsm_init(
    .clk(clk),
    .rst_n(rst_n),
    .pi_money(imoney),
    .po_cola(ocola)
);

endmodule