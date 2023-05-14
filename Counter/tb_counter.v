`timescale 1ns/1ps

module tb_counter;
	
parameter MOD = 24;
parameter BITS = 5;
parameter CLK_PERIOD = 20; //20ns

reg clk;
reg rst;
wire [BITS-1:0] count;
wire carry;

counter tb1(clk,rst,count,carry);

initial clk = 1'b0;
always #(CLK_PERIOD/2) clk = ~clk; // after 10ns -> change

initial
begin
rst = 1'b1;
#10 rst = 1'b0;
#10 rst = 1'b1;
#55 rst = 1'b0;
#10 rst = 1'b1;
#(MOD*CLK_PERIOD) $stop;
end

initial
begin
	$monitor($time,") count_out = %d carry_out = %b", count, carry);
end
	
endmodule
