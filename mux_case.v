module mux_case
(input wire mux_in1, mux_in2, sel,
output reg mux_out);

always @ (mux_in1 or mux_in2 or sel)
begin
case (sel)
1'b1 : mux_out = mux_in1;
1'b0 : mux_out = mux_in2;

endcase
end
endmodule

