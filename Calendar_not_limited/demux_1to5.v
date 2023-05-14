module demux_1to5(key,mode,on_off,up,select);

input key;
input [2:0] mode;
input on_off;
output reg [4:0]up;
output reg [4:0]select;

always @(mode,on_off)
	begin
	if(!on_off)		// on_off = 0
		begin
		up = {1'b0,1'b0,1'b0,1'b0,1'b0};
		select = {1'b0,1'b0,1'b0,1'b0,1'b0};
		end
	else				// on_off = 1
		case(mode)
		3'b000 : begin 
					up <= {1'b0,1'b0,1'b0,1'b0,key};
					select <= {1'b0,1'b0,1'b0,1'b0,1'b1};
					end
		3'b001 : begin 
					up <= {1'b0,1'b0,1'b0,key,1'b0};
					select <= {1'b0,1'b0,1'b0,1'b1,1'b0};
					end
		3'b010 : begin 
					up <= {1'b0,1'b0,key,1'b0,1'b0};
					select <= {1'b0,1'b0,1'b1,1'b0,1'b0};
					end
		3'b011 : begin 
					up <= {1'b0,key,1'b0,1'b0,1'b0};
					select <= {1'b0,1'b1,1'b0,1'b0,1'b0};
					end
	   3'b100 : begin 
					up <= {key,1'b0,1'b0,1'b0,1'b0};
					select <= {1'b1,1'b0,1'b0,1'b0,1'b0};
					end
		default : begin 
					 up <= {1'b0,1'b0,1'b0,1'b0,1'b0};
					 select <= {1'b0,1'b0,1'b0,1'b0,1'b0};
					 end
		endcase
	end
	
	endmodule
