module minute_bcd(clock_0,clock_1,set,reset,count_bcd,carry);

parameter MODULO = 60;
parameter BITS = 8;

input clock_0,clock_1,set,reset;

output [BITS-1:0]count_bcd;
output carry;

wire clock;
wire [BITS-1:0]count_binary;

assign clock = set ? clock_1 : clock_0;	// when set mode(1), clock = key[1]
	
counter #(MODULO,BITS)C0(clock,reset,count_binary,carry); // Modulo-60 count
binary_to_bcd_8bit B0(count_binary,count_bcd); // binary to bcd

endmodule
