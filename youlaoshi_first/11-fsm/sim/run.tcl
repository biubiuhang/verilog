quit -sim
.main clear

vlib work

vlog ./tb_fsm.v
vlog ./../design/fsm.v

vsim -voptargs+=acc work.tb_fsm

virtual type {
    {3'b001 IDLE}
    {3'b010 ONE}
    {3'b100 TWO}
} abc;

virtual function {(abc)/tb_fsm/fsm_init/state} new_state

add wave /tb_fsm/fsb_init/*

run 1us