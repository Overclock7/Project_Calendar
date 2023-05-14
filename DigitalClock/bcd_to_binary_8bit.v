module bcd_to_binary_8bit(bcd,binary);

input [11:0] bcd;
output[7:0] binary;

assign binary = (bcd[11:8] * 7'd100)+(bcd[7:4] * 4'd10) + (bcd[3:0]*1'b1);
	
endmodule
