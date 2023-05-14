//counter
module counter(clock,reset,count,carry);

parameter MOD = 25000000;
parameter BITS = $clog2(MOD);

input clock,reset;
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
			carry <= 1'b1;
			end
	end

endmodule