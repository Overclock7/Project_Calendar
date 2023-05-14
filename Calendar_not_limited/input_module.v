module input_module(clock_50MHz,key,sw,up,set,reset,select,mode_ampm,clock_out,clock_4Hz);

input clock_50MHz;
input [2:0]key;
input [4:0]sw;

output [14:0]up;
output [2:0]set;
output reset;
output [14:0]select;
output mode_ampm;
output clock_out;
output clock_4Hz;

wire [2:0] shift;
wire [1:0] up_clock_mode;
wire [2:0] up_date_mode;
wire [2:0] up_dset_mode;
wire clock_1Hz;
wire clock_demo;

// reset,mode_ampm assgin
assign reset = key[0];
assign mode_ampm = sw[3];

// clock generator
clock_generator #(25000000)G0(clock_50MHz,reset,clock_1Hz);
clock_generator #(6250000)G1(clock_50MHz,reset,clock_4Hz);
clock_generator #(100)G2(clock_50MHz,reset,clock_demo); // demo Hz = 250000Hz

assign clock_out = sw[4] ? clock_demo : clock_1Hz; // switch 1Hz / 250000Hz

// set_demux
demux D0 (sw[0],{sw[1],sw[2]},set);

// shift_demux
demux D1 (!key[1],{sw[1],sw[2]},shift);

// up_clock_demux
counter #(3,2)C0(.clock(shift[0]),.reset(set[0]),.count(up_clock_mode));
demux_1to3 D2 (!key[2],up_clock_mode,set[0],up[2:0],select[2:0]);

// up_date_demux
counter #(6,3)C1(.clock(shift[1]),.reset(set[1]),.count(up_date_mode));
demux_1to6 D3 (!key[2],up_date_mode,set[1],up[8:3],select[8:3]);

// up_dday_demux
counter #(6,3)C2(.clock(shift[2]),.reset(set[2]),.count(up_dset_mode));
demux_1to6 D4 (!key[2],up_dset_mode,set[2],up[14:9],select[14:9]);

endmodule
