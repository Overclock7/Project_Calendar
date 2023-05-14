module output_mux(input_0,input_1,input_2,input_3,mode,set_dday,seg);

parameter BLANK = 7'b111_1111;

input [55:0] input_0;
input [55:0] input_1;
input [55:0] input_2;
input [55:0] input_3;
input [1:0] mode;
input set_dday;

output reg [55:0]seg;


always @(mode,set_dday)
	begin
	if(set_dday != 1)
		case(mode)
		2'b00 : seg <= input_0;
		2'b01 : seg <= input_1;
		2'b10 : seg <= input_2;
		2'b11 : seg <= input_3;	  
		default : seg <= {BLANK,BLANK,BLANK,BLANK,BLANK,BLANK,BLANK,BLANK};
		endcase
	else
		case(mode)
		2'b00 : seg <= input_0;
		2'b01 : seg <= input_1;
		2'b10 : seg <= input_3; // if set_dday == 1 , show dsel module
		2'b11 : seg <= input_3;	  
		default : seg <= {BLANK,BLANK,BLANK,BLANK,BLANK,BLANK,BLANK,BLANK};
		endcase
	end
	
endmodule

	