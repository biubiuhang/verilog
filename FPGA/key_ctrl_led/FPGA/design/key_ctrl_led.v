module key_ctrl_led (
    input   wire        key1,
    input   wire        key2,
    output  wire        led
);
// 1 & 1 = 1 1 & 0 = 0 
assign led = key1 & key2;

    
endmodule