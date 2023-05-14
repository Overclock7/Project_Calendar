module counter(clk,rst,count,carry);
parameter MOD = 24;
parameter BITS = 5;
  
input clk,rst;
output reg [BITS-1:0] count;
output reg carry;
  
always @(posedge clk or negedge rst)
begin
if (!rst)
begin
count <= 0;
carry <= 0;
end
else if (count < MOD-1)
begin
count <= count +1;
carry <= 0;
end
else
begin
count <=0;
carry <=1;
end
end

endmodule
