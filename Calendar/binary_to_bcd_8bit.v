module binary_to_bcd_8bit(binary,bcd_final); // use double dabble (8bit -> 8bit)

input [7:0] binary;
output[7:0] bcd_final;

reg [11:0]bcd;

integer i;

always @(binary)
	begin
		bcd = 0;
		
		for (i = 0 ; i < 8 ; i = i+1)
			begin
				if (bcd[3:0] >= 5) bcd[3:0] = bcd[3:0] + 2'd3;
				if (bcd[7:4] >= 5) bcd[7:4] = bcd[7:4] + 2'd3;
				if (bcd[11:8] >= 5) bcd[11:8] = bcd[11:8] + 2'd3;
				bcd = {bcd[11:0],binary[7-i]};
			end
	end
	
assign bcd_final = bcd;

endmodule