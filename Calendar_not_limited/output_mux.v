module output_mux(in_0,in_1,in_2,in_3,mode,set_dday,out_0);

parameter BLANK = 7'b111_1111;

input [55:0] in_0;
input [55:0] in_1;
input [55:0] in_2;
input [55:0] in_3;
input [1:0] mode;
input set_dday;

output reg [55:0]out_0;


always @(mode,set_dday)
	begin
	if(set_dday != 1)
		case(mode)
		2'b00 : out_0 <= in_0;
		2'b01 : out_0 <= in_1;
		2'b10 : out_0 <= in_2;
		2'b11 : out_0 <= in_3;	  
		default : out_0 <= {BLANK,BLANK,BLANK,BLANK,BLANK,BLANK,BLANK,BLANK};
		endcase
	else
		case(mode)
		2'b00 : out_0 <= in_0;
		2'b01 : out_0 <= in_1;
		2'b10 : out_0 <= in_3; // if set_dday == 1 , show dday setting module
		2'b11 : out_0 <= in_3;	  
		default : out_0 <= {BLANK,BLANK,BLANK,BLANK,BLANK,BLANK,BLANK,BLANK};
		endcase
	end
	
endmodule

	