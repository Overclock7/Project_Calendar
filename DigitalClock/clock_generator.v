//clock_generator
module clock_generator(clock_in,reset,clock_out);

input clock_in;
input reset;
output clock_out;
wire clock_mid, clock_inv;

assign clock_inv = ~clock_out;

counter #(25000000,$clog2(25000000))C0(.clock(clock_in),.reset(reset),.carry(clock_mid));
d_flip_flop D0(clock_mid,reset,clock_inv,clock_out);

endmodule


