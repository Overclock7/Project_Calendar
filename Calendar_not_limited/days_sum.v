module days_sum(date,days);

input [22:0] date;
output [21:0] days;

wire [21:0] count_leap_year;
wire [8:0] month_to_days;
wire leap_year;

is_leap_year I0 (date[22:9],leap_year);
month_to_days M0 (date[8:5], leap_year, month_to_days);

assign count_leap_year = (((date[22:9]-1)/4)-((date[22:9]-1)/100)+((date[22:9]-1)/400));  //leap year count
assign days = ((date[22:9]-1)*365) + (count_leap_year) +  month_to_days + date[4:0];  //final result

endmodule


	
	

	
	
	
	
	
 



































	
