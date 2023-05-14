module binary_to_bcd_24bit(binary,bcd_final);

input [23:0] binary;
output[19:0] bcd_final;

reg [27:0]bcd;

integer i;

always @(binary)
	begin
		bcd = 0;
		
		for (i = 0 ; i < 24 ; i = i+1)
			begin
				if (bcd[3:0] >= 5) bcd[3:0] = bcd[3:0] + 2'd3;
				if (bcd[7:4] >= 5) bcd[7:4] = bcd[7:4] + 2'd3;
				if (bcd[11:8] >= 5) bcd[11:8] = bcd[11:8] + 2'd3;
				if (bcd[15:12] >= 5) bcd[15:12] = bcd[15:12] + 2'd3;
				if (bcd[19:16] >= 5) bcd[19:16] = bcd[19:16] + 2'd3;
				if (bcd[23:20] >= 5) bcd[23:20] = bcd[23:20] + 2'd3;
				if (bcd[27:24] >= 5) bcd[27:24] = bcd[27:24] + 2'd3;
				bcd = {bcd[27:0],binary[23-i]};
			end
	end
	
assign bcd_final = bcd;

endmodule