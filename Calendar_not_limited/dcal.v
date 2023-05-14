module dcal(now_date,set_date,dcal_7seg);

input [22:0]now_date; // year[13:0]_month[8:5]_day[4:0]
input [22:0]set_date;

output reg [55:0]dcal_7seg;

wire [21:0]now_days;
wire [21:0]set_days;
reg [20:0]sign_7seg;
wire [34:0]dday_7seg;
reg [4:0]leading_zero;

reg [21:0]result;
wire [21:0]result_final;
wire [19:0]result_bcd;

// convert date -> days
days_sum S1(now_date,now_days);
days_sum S2(set_date,set_days);

// judge bigger one between now_days and set_days
always @(now_days or set_days)
	begin
	if(now_days <= set_days)
		begin
		result <= set_days - now_days;
		sign_7seg[20:0] <= 21'b010_0001_011_1111_011_1111; // "D--"
		end
	else
		begin
		result <= now_days - set_days;
		sign_7seg[20:0] <= 21'b010_0001_011_1001_000_1111; // "D++"
		end
	end

assign result_final = result;

always @(result_final)
	begin
	if(result_final < 4'd10) leading_zero <= {1'b1,1'b1,1'b1,1'b1,1'b1};
	else if(result_final < 7'd100) leading_zero <= {1'b1,1'b1,1'b1,1'b1,1'b0};
	else if(result_final < 10'd1000) leading_zero <= {1'b1,1'b1,1'b1,1'b0,1'b0};
	else if(result_final < 14'd10000) leading_zero <= {1'b1,1'b1,1'b0,1'b0,1'b0};
	else leading_zero <= {1'b1,1'b0,1'b0,1'b0,1'b0};
	end

// convert binary -> bcd -> 7seg
binary_to_bcd_24bit T0(result_final,result_bcd);
bcd_to_7segment B0(result_bcd[3:0],dday_7seg[6:0],leading_zero[0]);
bcd_to_7segment B1(result_bcd[7:4],dday_7seg[13:7],leading_zero[1]);
bcd_to_7segment B2(result_bcd[11:8],dday_7seg[20:14],leading_zero[2]);
bcd_to_7segment B3(result_bcd[15:12],dday_7seg[27:21],leading_zero[3]);
bcd_to_7segment B4(result_bcd[19:16],dday_7seg[34:28],leading_zero[4]);

// show 7segment
always @(dday_7seg)
	begin
	if(result_final==0) 
	dcal_7seg <= {sign_7seg,35'b111_1111_010_0001_000_1000_001_0001_111_1111}; // show "(Blank)day(Blank)"
	else if(result_final > 99999) 
	dcal_7seg <= {sign_7seg,35'b111_1111_100_0111_010_0011_010_1011_001_0000}; // show "(Blank)Long"
	else 
	dcal_7seg <= {sign_7seg,dday_7seg}; // show number
	end

endmodule
