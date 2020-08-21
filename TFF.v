module TFF
(input wire data_in, en, reset, clk,
output reg data_out);

always @ (posedge clk or posedge en or negedge reset)
begin
if (reset) begin
data_out <= 1'b0;
end else if (en) begin
data_out <= data_in;
end else begin
data_out <= ~data_in;
end
end
endmodule
