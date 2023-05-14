module year(clock, up, set, reset, year_count, year_7seg);

parameter MODULO = 10;
parameter BITS = 4;

input clock;
input [3:0]up;  //KEY[2]
input set;		 //SW[0]
input reset;	 //KEY[0]

output [13:0] year_count;
output [27:0] year_7seg;

wire clock_in0, clock_in1, clock_in2, clock_in3;

reg [3:0] year0_count;
wire [3:0] year1_count;
wire [3:0] year2_count;
wire [3:0] year3_count;

reg year0_carry;
wire year1_carry;
wire year2_carry;
wire year3_carry; //not used

//year0_count
assign clock_in0 = set ? up[0] : clock;
always @(posedge clock_in0 or negedge reset)
	begin
		if(!reset)	// if reset , year0_count = 1
			begin
			year0_count <= 1'b1;
			year0_carry <= 1'b0;
			end
		else if(year0_count<MODULO-1'b1)
			begin
			year0_count <= year0_count + 1'b1;
			year0_carry <= 1'b0;
			end
		else
			begin
			year0_count <= 1'b0;
			if(set)
				year0_carry <= 1'b0;
			else
				year0_carry <= 1'b1;
			end
	end

//year1_count
assign clock_in1 = set ? up[1] : year0_carry;
counter_bugfix #(MODULO,BITS)C1(clock_in1,set,reset,year1_count,year1_carry);  
//year2_count
assign clock_in2 = set ? up[2] : year1_carry;
counter_bugfix #(MODULO,BITS)C2(clock_in2,set,reset,year2_count,year2_carry);
//year3_count
assign clock_in3 = set ? up[3] : year1_carry;
counter_bugfix #(MODULO,BITS)C3(clock_in3,set,reset,year3_count,year3_carry);

//bcd_to_7segment
bcd_to_7segment S0(year0_count, year_7seg[6:0],1'b0);
bcd_to_7segment s1(year1_count, year_7seg[13:7],1'b0);
bcd_to_7segment s2(year2_count, year_7seg[20:14],1'b0);
bcd_to_7segment s3(year3_count, year_7seg[27:21],1'b0);

//zip
assign year_count = year3_count*10'd1000+year2_count*7'd100+year1_count*4'd10+year0_count*1'd1;

endmodule




