//7 segment
module bcd_to_seven_segment_display(bcd,display,leading_zero);

input [3:0]bcd;
input leading_zero;
output reg [6:0]display;

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
if(!leading_zero)				//first segment
case(bcd)
0: display= ZERO;
1: display= ONE;
2: display= TWO;
3: display= THREE;
4: display= FOUR;
5: display= FIVE;
6: display= SIX;
7: display= SEVEN;
8: display= EIGHT;
9: display= NINE;
default : display = BLANK;
endcase
else
case(bcd)						//otherwise segment
0: display= BLANK;
1: display= ONE;
2: display= TWO;
3: display= THREE;
4: display= FOUR;
5: display= FIVE;
6: display= SIX;
7: display= SEVEN;
8: display= EIGHT;
9: display= NINE;
default : display = BLANK;
endcase
end

endmodule
