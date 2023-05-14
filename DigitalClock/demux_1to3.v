module demux_1to3(input_0,set,output_0,output_1,output_2);

input input_0;
input [1:0] set;
output reg output_0,output_1,output_2;

wire input_inv;

assign input_inv = !input_0; // if key pushed, result = 1 // else result = 0;

always @(set)
	case(set)
	0 : begin 
			output_0 = input_inv;
			output_1 = 1'b0;
			output_2 = 1'b0;
		 end
	1 : begin 
			output_0 = 1'b0;
			output_1 = input_inv;
			output_2 = 1'b0;
		 end
	2 : begin 
			output_0 = 1'b0;
			output_1 = 1'b0;
			output_2 = input_inv;
		 end
	default : begin
					output_0 = 1'b0;
					output_1 = 1'b0;
					output_2 = 1'b0;
				 end
	endcase
	
endmodule

