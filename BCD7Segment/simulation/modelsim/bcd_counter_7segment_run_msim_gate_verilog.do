transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {bcd_counter_7segment.vo}

vlog -vlog01compat -work work +incdir+C:/Programming/DSD/BCD7Segment {C:/Programming/DSD/BCD7Segment/tb_counter.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  tb_counter

add wave *
view structure
view signals
run -all
