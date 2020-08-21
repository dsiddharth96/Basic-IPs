module clk_div_2
(input wire clk, 
reg [1:0] pos_clk, neg_clk,
output reg clk_out);

always @ (posedge clk)
begin
pos_clk <= (pos_clk == 2) ? 0 : pos_clk + 1;
end
always @ (negedge clk)
begin
neg_clk <= (neg_clk == 2) ? 0 : neg_clk + 1;
end
assign clk_out = ((pos_clk != 2) && (neg_clk != 2));
endmodule
	