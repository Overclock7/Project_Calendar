module binary_to_bcd_16bit(binary,bcd_final); // use double dabble (16bit -> 16bit)

input [15:0] binary;
output[15:0] bcd_final;

reg [19:0]bcd;

integer i;

always @(binary)
	begin
		bcd = 0;
		
		for (i = 0 ; i < 16 ; i = i+1)
			begin
				if (bcd[3:0] >= 5) bcd[3:0] = bcd[3:0] + 2'd3;
				if (bcd[7:4] >= 5) bcd[7:4] = bcd[7:4] + 2'd3;
				if (bcd[11:8] >= 5) bcd[11:8] = bcd[11:8] + 2'd3;
				if (bcd[15:12] >= 5) bcd[15:12] = bcd[15:12] + 2'd3;
				if (bcd[19:16] >= 5) bcd[19:16] = bcd[19:16] + 2'd3;
				bcd = {bcd[19:0],binary[15-i]};
			end
	end
	
assign bcd_final = bcd;

endmodule