module binary_to_bcd_8bit(binary,bcd);

input [7:0] binary;
output reg [11:0] bcd;

integer i;

always @(binary)
	begin
		bcd = 0;
		
		for (i = 0 ; i < 8 ; i = i+1)
			begin
				if (bcd[3:0] >= 5) bcd[3:0] = bcd[3:0] + 3;
				if (bcd[7:4] >= 5) bcd[7:4] = bcd[7:4] + 3;
				if (bcd[11:8] >= 5) bcd[11:8] = bcd[11:8] + 3;
				bcd = {bcd[11:0],binary[7-i]};
			end
	end

endmodule