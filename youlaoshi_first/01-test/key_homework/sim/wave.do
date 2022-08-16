onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -label sim:/tb_key/Group1 -group {Region: sim:/tb_key} /tb_key/key1
add wave -noupdate -expand -label sim:/tb_key/Group1 -group {Region: sim:/tb_key} /tb_key/key2
add wave -noupdate -expand -label sim:/tb_key/Group1 -group {Region: sim:/tb_key} /tb_key/key3
add wave -noupdate -expand -label sim:/tb_key/Group1 -group {Region: sim:/tb_key} /tb_key/led
add wave -noupdate -expand -label sim:/tb_key/key_init/Group1 -group {Region: sim:/tb_key/key_init} /tb_key/key_init/key1
add wave -noupdate -expand -label sim:/tb_key/key_init/Group1 -group {Region: sim:/tb_key/key_init} /tb_key/key_init/key2
add wave -noupdate -expand -label sim:/tb_key/key_init/Group1 -group {Region: sim:/tb_key/key_init} /tb_key/key_init/key3
add wave -noupdate -expand -label sim:/tb_key/key_init/Group1 -group {Region: sim:/tb_key/key_init} /tb_key/key_init/led
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {128 ns}
