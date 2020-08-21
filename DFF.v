module dff
(input wire data_in, reset, en, clk,
output reg data_out);

always @ (posedge clk or negedge reset or posedge en)
begin
if (reset)begin
data_out <= 1'b0;
end else if (en) begin
data_out <= data_in;
end
end
endmodule
