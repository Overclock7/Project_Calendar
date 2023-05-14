module output_module(clock_4Hz,clock_7seg,date_7seg,dcal_7seg,dset_7seg,mode,set_dday,select,hex0,hex1,hex2,hex3,hex4,hex5,hex6,hex7);

input clock_4Hz;
input [55:0]clock_7seg,date_7seg,dcal_7seg,dset_7seg;
input [2:0]mode;
input set_dday;
input [14:0]select;

output [6:0]hex0,hex1,hex2,hex3,hex4,hex5,hex6,hex7;

wire [55:0]seg;

output_mux OM0(clock_7seg,date_7seg,dcal_7seg,dset_7seg,mode,set_dday,seg);

flicker_7seg F0(clock_4Hz,seg[6:0],{select[9],select[3],select[0]},hex0);
flicker_7seg F1(clock_4Hz,seg[13:7],{select[9],select[3],select[0]},hex1);
flicker_7seg F2(clock_4Hz,seg[20:14],{select[10],select[4],select[1]},hex2);
flicker_7seg F3(clock_4Hz,seg[27:21],{select[10],select[4],select[1]},hex3);
flicker_7seg F4(clock_4Hz,seg[34:28],{select[11],select[5],select[2]},hex4);
flicker_7seg F5(clock_4Hz,seg[41:35],{select[12],select[6],select[2]},hex5);
flicker_7seg F6(clock_4Hz,seg[48:42],{select[13],select[7],1'b0},hex6);
flicker_7seg F7(clock_4Hz,seg[55:49],{select[14],select[8],1'b0},hex7);

endmodule