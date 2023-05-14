transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Programming/DSD/BCD7Segment {C:/Programming/DSD/BCD7Segment/bcd_to_seven_segment_display.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/BCD7Segment {C:/Programming/DSD/BCD7Segment/led_control.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/BCD7Segment {C:/Programming/DSD/BCD7Segment/d_flip_flop.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/BCD7Segment {C:/Programming/DSD/BCD7Segment/counter.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/BCD7Segment {C:/Programming/DSD/BCD7Segment/clock_generator.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/BCD7Segment {C:/Programming/DSD/BCD7Segment/bcd_counter_7segment.v}

