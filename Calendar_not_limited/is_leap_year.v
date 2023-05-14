module is_leap_year (year_count, leap_year); // judge leap year

input [13:0]year_count;
output reg leap_year;

// judge leap year
always @(year_count)
begin
	if(year_count%400 == 0 || (year_count%100 != 0 && year_count%4 == 0))
		leap_year <= 1; // leap_year O
	else
		leap_year <= 0; // leap_year X
end

endmodule