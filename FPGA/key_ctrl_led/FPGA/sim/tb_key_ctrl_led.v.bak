`timescale 1ns/1ns
module tb_key_ctrl_led();

reg key1,key2;
wire led;

always #10 key1 = {$random};// 产生随机数
always #15 key2 = {$random};

// 例化被测试模块,被例化接口的第一个名字应与设计文件相同
key_ctrl_led key_ctrl_led_inst(
    .key1(key1),
    .key2(key2),
    .led(led)
);


endmodule