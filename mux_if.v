module mux_if
(input wire mux_in1, mux_in2, sel,
output reg mux_out);

always @ (mux_in1 or mux_in2 or sel)
begin : MUX
if ( sel == 1'b0) begin
mux_out = mux_in1; 
end else begin
if ( sel == 1'b1) begin
mux_out = mux_in2;
end 
end
end
endmodule