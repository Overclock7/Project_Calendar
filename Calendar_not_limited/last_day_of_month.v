module last_day_of_month(month, leap_year, modulo_day);

input [3:0]month;
input leap_year;
output reg [4:0]modulo_day;


always @(month or leap_year) // * : month_count, leap_year
begin
	if(leap_year == 1'b0) // not leaf_year
		case(month)
		1 : modulo_day = 31;
		2 : modulo_day = 28; // Faburary of normal year
		3 : modulo_day = 31;
		4 : modulo_day = 30;
		5 : modulo_day = 31;
		6 : modulo_day = 30;
		7 : modulo_day = 31;
		8 : modulo_day = 31;
		9 : modulo_day = 30;
		10 : modulo_day = 31;
		11 : modulo_day = 30;
		12 : modulo_day = 31;
		default : modulo_day = 31;
		endcase
	else
		case(month)
		1 : modulo_day = 31;
		2 : modulo_day = 29;	// February of leap year
		3 : modulo_day = 31;
		4 : modulo_day = 30;
		5 : modulo_day = 31;
		6 : modulo_day = 30;
		7 : modulo_day = 31;
		8 : modulo_day = 31;
		9 : modulo_day = 30;
		10 : modulo_day = 31;
		11 : modulo_day = 30;
		12 : modulo_day = 31;
		default : modulo_day = 31;
		endcase
end


endmodule