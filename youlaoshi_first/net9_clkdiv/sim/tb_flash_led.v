`timescale 1ns/1ns

module tb_flash_led();
reg     sclk,rst_n;
wire    led;

initial begin
    sclk = 0;
    rst_n = 0;
    #100 
    rst_n = 1;
end

always #10 sclk = ~sclk;

flash_led flash_led_inst(
    .sclk(sclk),
    .rst_n(rst_n),
    .led(led)
);

endmodule