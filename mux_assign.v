module mux_assign
(input wire mux_in1, mux_in2, sel,
output reg mux_out);

assign mux_out = (sel) ? mux_in1 : mux_in2;
endmodule

