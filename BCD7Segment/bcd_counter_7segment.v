//main
module bcd_counter_7segment(CLOCK_50,KEY,LEDR,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5);

input CLOCK_50;		// 50MHz clock
input [0:0]KEY;		// KEY[0]
			
output [6:0]HEX0;		// 0 ~ 9 Sec
output [6:0]HEX1;		// 0 ~ 5 10Sec
output [6:0]HEX2;		// 0 ~ 9 Min
output [6:0]HEX3;		// 0 ~ 5 10Min
output [6:0]HEX4;		// 0 ~ 9 Hour
output [6:0]HEX5;		// 0 ~ 2 Hour
output [17:0]LEDR;	// 0 ~ 5 (10Min / 1LED) // 17(1Hz clock led)


wire [3:0]count_0;	// module-10's count
wire [2:0]count_1;	// module-6's count
wire [3:0]count_2;	// module-10's count
wire [2:0]count_3;	// module-6's count

wire [5:0]hour_4;		// module-24's count (Type bcd)

wire carry_0;			// module-10's carry
wire carry_1;			// module-6's carry
wire carry_2;			// module-10's carry
wire carry_3;			// module-6's carry

//time calculation
clock_generator CLK(.clock_in(CLOCK_50),.reset(KEY[0]),.clock_out(LEDR[17]));

counter #(10,4)C100(LEDR[17],KEY[0],count_0,carry_0);
counter #(6,3)C060(carry_0,KEY[0],count_1,carry_1);

counter #(10,4)C101(carry_1,KEY[0],count_2,carry_2);
counter #(6,3)C061(carry_2,KEY[0],count_3,carry_3);

hour_bcd H0(carry_3,KEY[0],hour_4);

//display
bcd_to_seven_segment_display DP0(count_0,HEX0,0);
bcd_to_seven_segment_display DP1({1'b0,count_1[2:0]},HEX1,1);

bcd_to_seven_segment_display DP2(count_2,HEX2,0);
bcd_to_seven_segment_display DP3({1'b0,count_3[2:0]},HEX3,1);

bcd_to_seven_segment_display DP4(hour_4[3:0],HEX4,0);
bcd_to_seven_segment_display DP5({3'b00,hour_4[5:4]},HEX5,1);

//display led
led_control L0(count_3,LEDR[5:0]);

endmodule
