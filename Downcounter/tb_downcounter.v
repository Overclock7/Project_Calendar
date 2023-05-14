`timescale 1ns/1ps

module tb_downcounter;

parameter MOD = 10;
parameter BITS = 4;
parameter CLK_PERIOD = 10;

reg clk;
reg rst;
wire[BITS-1:0] count;
wire carry;

downcounter tb1(clk,rst,count,carry);

initial clk = 1'b0;
always #(CLK_PERIOD/2) clk = ~clk;

initial
begin
rst = 1'b1;
#5 rst = 1'b0;
#5 rst = 1'b1;
#28 rst = 1'b0;
#5 rst = 1'b1;
#(MOD*CLK_PERIOD*2) $stop;
end

initial
begin
	$monitor($time,") count_out = %d carry_out = %b", count, carry);
end


endmodule
