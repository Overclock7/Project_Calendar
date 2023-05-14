module led_control(clock,led);

input [2:0] clock;
output reg [5:0] led;
always @(clock)
case(clock)
0: led <= 6'b000_001;
1: led <= 6'b000_011;
2: led <= 6'b000_111;
3: led <= 6'b001_111;
4: led <= 6'b011_111;
5: led <= 6'b111_111;
default: led <= 6'b000_000;
endcase
endmodule
