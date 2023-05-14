module hour_bcd(clock_0,clock_1,set,reset,mode,count_bcd,carry,ampm_7seg);

parameter MODULO = 24;
parameter BITS = 8;

input clock_0,clock_1,set,reset,mode;

output [BITS-1:0]count_bcd;
output carry;
output reg [6:0]ampm_7seg;

wire clock;
wire [BITS-1:0]count_binary;
reg [BITS-1:0]count_binary_final;

assign clock = set ? clock_1 : clock_0;	// when set mode, clock = key[1]

counter #(MODULO,BITS)C0(clock,reset,count_binary,carry);  // Modulo-24 count

always @(mode)	// 12/24 mode setting
	begin
		if(!mode) // mode = 0 // 24
			begin
				count_binary_final <= count_binary;
				ampm_7seg <= 7'b111_1111; // Blank
			end
		else // mode = 1
			begin
				if(count_binary <= 11)
					begin
					count_binary_final <= count_binary + 1;
					ampm_7seg <= 7'b000_1000;  // A
					end
				else
					begin
					count_binary_final <= count_binary + 1 - 12;
					ampm_7seg <= 7'b000_1100;	// P
					end
			end
	end		
			
	
	binary_to_bcd_8bit B0(count_binary_final,count_bcd);  // binary to bcd

endmodule
