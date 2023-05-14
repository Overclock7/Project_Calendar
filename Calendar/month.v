module month(clock, up, set, reset, month_count, month_carry, month_7seg);

parameter MODULO = 12;
parameter BITS = 4;

input clock;
input up;		//KEY[2]
input set;		//SW[0]
input reset;	//KEY[0]

output [3:0] month_count;
output month_carry;
output [13:0] month_7seg;

wire clock_in;
wire [3:0] month_count_before;
wire [7:0] month_count_bcd;

//clock selector
assign clock_in = set? up : clock;

//modulo-12 counter
counter_bugfix #(MODULO, BITS) C0 (clock_in, set,reset, month_count_before, month_carry);
assign month_count = month_count_before + 1'b1;

//binary to bcd
binary_to_bcd_4bit B0(month_count, month_count_bcd);

//binary to 7segment
bcd_to_7segment S0 (month_count_bcd[3:0], month_7seg[6:0], 1'b0);
bcd_to_7segment S1 (month_count_bcd[7:4], month_7seg[13:7], 1'b1);

endmodule





