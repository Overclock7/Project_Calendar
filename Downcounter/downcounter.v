module downcounter(clk,rst,count,carry);

parameter MOD = 10;
parameter BITS = 4;

input clk,rst;
output reg [BITS-1:0] count;
output reg carry;

always @(posedge clk or negedge rst)
begin
if (!rst)
begin
count <=(MOD-1);
carry <=0;
end
else if (count > 0)
begin
count <= count -1;
carry <= 0;
end
else
begin
count <= (MOD -1);
carry <= 1;
end
end

endmodule
