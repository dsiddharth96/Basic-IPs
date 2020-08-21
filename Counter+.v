module greycode_onehot
(input en, clk, reset,
output reg clk_div,
output reg [7:0] out_grey, out_hot);

reg [7:0] count;
always @ (posedge clk)
if (reset) begin
assign clk_div = 8'b0;
assign out_grey = 8'b0;
assign out_hot = 8'b0;
end else if (en) begin
count <= count+1;
assign out_grey = {count[7], (count[7] ^ count[6]), (count[6] ^ count[5]),(count[5] ^ count[4]), 
(count[4] ^ count[3]),(count[3] ^ count[2]), (count[2] ^ count[1]), (count[1] ^ count[0])};
assign out_hot = { out_hot[6],out_hot[5],out_hot[4],out_hot[3],out_hot[2],out_hot[1],out_hot[0],out_hot[7]};
assign clk_div = !clk_div;
end
endmodule
 
