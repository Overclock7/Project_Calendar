//counter_bugfix(in set mode, not make carry)
//if count = 0 in "set" mode, do not make carry!!!
module counter_bugfix(clock,set,reset,count,carry); 

parameter MOD = 25000000;
parameter BITS = $clog2(MOD);

input clock,set,reset;
output reg [BITS-1:0] count;
output reg carry;

always @(posedge clock or negedge reset)
	begin
		if(!reset)
			begin
			count <= 1'b0;
			carry <= 1'b0;
			end
		else if(count<MOD-1)
			begin
			count <= count + 1'b1;
			carry <= 1'b0;
			end
		else
			begin
			count <= 1'b0;
			if(set)
				carry <= 1'b0;
			else
				carry <= 1'b1;
			end
	end

endmodule