transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {downcounter.vo}

vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Downcounter {C:/Programming/DSD/Downcounter/tb_downcounter.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  tb_downcounter

add wave *
view structure
view signals
run -all
