module bcd_to_7segment(bcd,seg,leading_zero);

input [3:0]bcd;
input leading_zero;
output reg [6:0]seg;

parameter ZERO = 7'b100_0000;
parameter ONE = 7'b111_1001;
parameter TWO = 7'b010_0100;
parameter THREE = 7'b011_0000;
parameter FOUR = 7'b001_1001;
parameter FIVE = 7'b001_0010;
parameter SIX = 7'b000_0010;
parameter SEVEN = 7'b111_1000;
parameter EIGHT = 7'b000_0000;
parameter NINE = 7'b001_0000;
parameter BLANK = 7'b111_1111;

always @(bcd)
	begin
		if(!leading_zero)				
			case(bcd)
			0: seg= ZERO;
			1: seg= ONE;
			2: seg= TWO;
			3: seg= THREE;
			4: seg= FOUR;
			5: seg= FIVE;
			6: seg= SIX;
			7: seg= SEVEN;
			8: seg= EIGHT;
			9: seg= NINE;
			default : seg = BLANK;
			endcase
		else
			case(bcd)						
			0: seg= BLANK;
			1: seg= ONE;
			2: seg= TWO;
			3: seg= THREE;
			4: seg= FOUR;
			5: seg= FIVE;
			6: seg= SIX;
			7: seg= SEVEN;
			8: seg= EIGHT;
			9: seg= NINE;
			default : seg = BLANK;
			endcase
	end

endmodule
