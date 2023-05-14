module demux(in,mode,out); // no on_off

input in;
input [1:0]mode;
output reg [2:0]out;

always @(mode)
	case(mode)
	2'b00 : out = {1'b0,1'b0,in};
	2'b01 : out = {1'b0,in,1'b0};
	2'b10 : out = {in,1'b0,1'b0};
   2'b11 : out = {in,1'b0,1'b0};
	default : out = {1'b0,1'b0,1'b0};
	endcase
	
endmodule
