module month_to_days(month, leap_year, result); // result = sum days of (n-1) month

input [3:0]month;
input leap_year;
output reg [8:0]result; // until (n-1) month


always @ (*)
	begin
	if(leap_year == 1) //leap_year
		case(month)
		1: result <= 0; // n = 1;
		2: result <= 31;
		3:	result <= 60;
		4:	result <= 91;
		5: result <= 121;
		6: result <= 152;
		7:	result <= 182;
		8:	result <= 213;
		9: result <= 244;
		10: result <= 274;
		11: result <= 305;
		12: result <= 335;
		default : result <= 0;
		endcase
	else
		case(month)
		1: result <= 0;
		2: result <= 31;
		3:	result <= 59;
		4:	result <= 90;
		5: result <= 120;
		6: result <= 151;
		7:	result <= 181;
		8:	result <= 212;
		9: result <= 243;
		10: result <= 273;
		11: result <= 304;
		12: result <= 334;
		default : result <= 0;
		endcase
	end

endmodule
