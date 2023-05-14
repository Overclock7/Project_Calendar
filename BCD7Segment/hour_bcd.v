module hour_bcd(clock,reset,bcd);

input clock,reset;
output reg [6:0]bcd;
wire [4:0]count;
wire carry;

counter #(24,5)counter(.clock(clock),.reset(reset),.count(count));

always @(count)
begin
if (count < 10)
bcd[3:0] <= count;
else if (count >= 10 && count < 20)
bcd <= count+4'b0110;
else if (count >= 20)
bcd <= count+4'b1100;
end

endmodule
