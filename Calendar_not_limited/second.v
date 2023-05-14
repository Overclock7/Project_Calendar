module second(clock,up,set,reset,sec_7seg,sec_carry);

parameter MODULO = 60;
parameter BITS = 6;

input clock;
input up;		// KEY[2]
input set;		// SW[0]
input reset;	// KEY[0]

output sec_carry;
output [13:0]sec_7seg;

wire clock_in; // clock selector result
wire [BITS-1:0]sec_count;
wire [8:0]sec_bcd;

// clock selector
assign clock_in = set ? up : clock;

// modulo-60 counter
counter_bugfix #(MODULO,BITS)C0(clock_in,set,reset,sec_count,sec_carry);

// binary to bcd
binary_to_bcd_8bit B0(sec_count,sec_bcd);

// bcd to 7segment
bcd_to_7segment S0(sec_bcd[3:0],sec_7seg[6:0],1'b0);
bcd_to_7segment S1(sec_bcd[7:4],sec_7seg[13:7],1'b1);

endmodule
