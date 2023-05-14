module digital_clock(CLOCK_50,KEY,SW,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7,LEDR);

input CLOCK_50;
input [2:0]KEY; // reset/
input [1:0]SW; // 12/24 set / set_mode

output [6:0] HEX0;
output [6:0] HEX1;
output [6:0] HEX2;
output [6:0] HEX3;
output [6:0] HEX4;
output [6:0] HEX5;
output reg [6:0] HEX6;
output [6:0] HEX7;
output [17:0] LEDR; // CLK_1

// clock_wire
wire clk_1;
wire [7:0] sec_bcd,min_bcd,hour_bcd;
wire sec_carry,min_carry,hour_carry;
wire [6:0]ampm_7seg;

// select mode wire and reg 
wire [1:0]sel_count;
wire sel_carry;
wire sel_sec,sel_min,sel_hour;
reg [2:0] led;

// 50MHz -> 1Hz (LEDR[17])
clock_generator CG(CLOCK_50,KEY[0],clk_1);
assign LEDR[17] = clk_1;

// sel_mode_module
counter #(3,2)C0(KEY[2],KEY[0],sel_count,sel_carry);

always @(sel_count)
	case(sel_count)
	0 : led = 3'b001;
	1 : led = 3'b011;
	2 : led = 3'b111;
	default : led = 3'b000;
	endcase
assign LEDR[2:0] = led;

demux_1to3 DM(KEY[1],sel_count,sel_sec,sel_min,sel_hour);

// bcd clock generator
second_bcd SB(clk_1,sel_sec,SW[1],KEY[0],sec_bcd,sec_carry);
minute_bcd MB(sec_carry,sel_min,SW[1],KEY[0],min_bcd,min_carry);
hour_bcd HB(min_carry,sel_hour,SW[1],KEY[0],SW[0],hour_bcd,hour_carry,ampm_7seg);

// display 7segment
bcd_to_7segment B7S0(sec_bcd[3:0],HEX0,0);
bcd_to_7segment B7S1(sec_bcd[7:4],HEX1,1);
bcd_to_7segment B7S2(min_bcd[3:0],HEX2,0);
bcd_to_7segment B7S3(min_bcd[7:4],HEX3,1);
bcd_to_7segment B7S4(hour_bcd[3:0],HEX4,0);
bcd_to_7segment B7S5(hour_bcd[7:4],HEX5,1);

// '-' display
always @(ampm_7seg)
	begin
	if(ampm_7seg == 7'b111_1111)
		HEX6 = 7'b111_1111;
	else
		HEX6 = 7'b011_1111;
	end		
// ' ','A','P' display
assign HEX7 = ampm_7seg;

endmodule
