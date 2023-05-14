//clock_generator
module clock_generator(clock_in,reset,clock_out);

parameter MOD = 25000000;

input clock_in;
input reset;
output clock_out;
wire clock_mid, clock_inv;

assign clock_inv = ~clock_out;

counter #(MOD,$clog2(MOD))C0(.clock(clock_in),.reset(reset),.carry(clock_mid));
d_flip_flop D0(clock_mid,reset,clock_inv,clock_out);

endmodule


