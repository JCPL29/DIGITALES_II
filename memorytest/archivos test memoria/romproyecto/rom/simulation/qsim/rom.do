onerror {exit -code 1}
vlib work
vlog -work work rom.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.rom_vlg_vec_tst -voptargs="+acc"
vcd file -direction rom.msim.vcd
vcd add -internal rom_vlg_vec_tst/*
vcd add -internal rom_vlg_vec_tst/i1/*
run -all
quit -f
