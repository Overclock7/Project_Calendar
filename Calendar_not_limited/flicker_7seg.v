module flicker_7seg(clock_4Hz,input_7seg,select,hex); // according to input , flickering

input clock_4Hz;
input [6:0]input_7seg;
input [2:0]select;

output [6:0]hex;

wire sel;

assign sel = |select ? clock_4Hz : 1'b0;  // |select = bit or calculation // if select = 4'b1100 // |select = 1 or 1 or 0 or 0 = 1
assign hex = sel ? 7'b111_1111 : input_7seg;  // if sel = clock_4Hz, flickering


endmodule