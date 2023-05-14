module clock(clock,up,set,reset,mode_ampm,clock_carry,clock_7seg);

input clock;
input [2:0] up;	// KEY[2]
input set;			// SW[0]
input reset;		// KEY[0]
input mode_ampm;	// KEY[3]

output clock_carry;
output [55:0] clock_7seg;

wire sec_carry,min_carry;

// clock module
second S0(clock,up[0],set,reset,clock_7seg[13:0],sec_carry);
minute M0(sec_carry,up[1],set,reset,clock_7seg[27:14],min_carry);
hour H0(min_carry,up[2],set,reset,mode_ampm,clock_7seg[55:28],clock_carry);

endmodule