module day_of_the_week(date,ledr,ledg);

input [22:0]date;
output reg [4:0]ledr;
output reg [1:0]ledg;

wire leap_year;
wire [11:0]count_leap_year;
wire [8:0]month_to_days;
wire [14:0]days;
wire [2:0]convert_day_of_the_week;

//convert date -> days
is_leap_year I0 (date[22:9],leap_year);
month_to_days M0 (date[8:5], leap_year, month_to_days);

assign count_leap_year = (((date[22:9]-1)/4)-((date[22:9]-1)/100)+((date[22:9]-1)/400));
assign days = ((date[22:9]-1)) + (count_leap_year) +  month_to_days + date[4:0];

assign convert_day_of_the_week = days % 3'd7;

always @(convert_day_of_the_week)
	case(convert_day_of_the_week)
	1:{ledr,ledg} = {1'b1,6'b0};
	2:{ledr,ledg} = {1'b0,1'b1,5'b0};
	3:{ledr,ledg} = {2'b0,1'b1,4'b0};
	4:{ledr,ledg} = {3'b0,1'b1,3'b0};
	5:{ledr,ledg} = {4'b0,1'b1,2'b0};
	6:{ledr,ledg} = {5'b0,1'b1,1'b0};
	0:{ledr,ledg} = {6'b0,1'b1};
	default:{ledr,ledg} = {7'b0};
	endcase
	
endmodule