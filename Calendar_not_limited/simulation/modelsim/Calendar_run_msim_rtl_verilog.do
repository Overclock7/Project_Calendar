transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/year.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/second.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/output_mux.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/output_module.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/month_to_days.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/month.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/minute.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/last_day_of_month.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/is_leap_year.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/input_module.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/hour.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/flicker_7seg.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/d_flip_flop.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/demux_1to6.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/demux_1to3.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/demux.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/dcal.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/day_of_the_week.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/days_sum.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/day.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/date.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/counter.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/clock_generator.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/clock.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/Calendar.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/binary_to_bcd_8bit.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/binary_to_bcd_4bit.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/bcd_to_7segment.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/counter_bugfix.v}
vlog -vlog01compat -work work +incdir+C:/Programming/DSD/Calendar_not_limited {C:/Programming/DSD/Calendar_not_limited/binary_to_bcd_24bit.v}

