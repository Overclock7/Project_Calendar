module day(clock, up, set, reset, day_case, day_count, day_carry, day_7seg);

input clock;
input up;			//KEY[2]
input [1:0]set;	//SW[0]
input reset;		//KEY[0]
input [4:0] day_case; // output of last_day_of_month

output [4:0] day_count;
reg [4:0] day_count_before;
output reg day_carry;
output [13:0] day_7seg;

wire MOD;
wire clock_in;
wire [7:0] day_bcd;

//clock selector
assign clock_in = |set ? up : clock;

//modulo-case_month counter
always @(posedge clock_in or negedge reset)
	begin
		if(!reset)
			begin
			day_count_before <= 1'b0;
			day_carry <= 1'b0;
			end
		else if(day_count_before < day_case-1'b1)
			begin
			day_count_before <= day_count_before + 1'b1;
			day_carry <= 1'b0;
			end
		else
			begin
			day_count_before <= 1'b0;
			if(set)
				day_carry <= 1'b0;
			else
				day_carry <= 1'b1;
			end
	end

assign day_count = day_count_before + 1'b1;

//binary to bcd
binary_to_bcd_8bit B0(day_count,day_bcd);

//bcd to 7segment
bcd_to_7segment S0 (day_bcd[3:0], day_7seg[6:0], 1'b0);
bcd_to_7segment S1 (day_bcd[7:4], day_7seg[13:7], 1'b1);

endmodule
