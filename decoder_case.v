module decoder_case
(input wire [3:0] hex_in,
input wire en,
output reg [15:0] bin_out);

always @ (hex_in or en) begin
bin_out = 0;
if (en) begin
case (hex_in) 
4'h0 : bin_out = 4'h0001;
4'h1 : bin_out = 4'h0002;
4'h2 : bin_out = 4'h0004;
4'h3 : bin_out = 4'h0008;
4'h4 : bin_out = 4'h0010;
4'h5 : bin_out = 4'h0020;
4'h6 : bin_out = 4'h0040;
4'h7 : bin_out = 4'h0080;
4'h8 : bin_out = 4'h0100;
4'h9 : bin_out = 4'h0200;
4'hA : bin_out = 4'h0400;
4'hB : bin_out = 4'h0800;
4'hC : bin_out = 4'h1000;
4'hD : bin_out = 4'h2000;
4'hE : bin_out = 4'h4000;
4'hF : bin_out = 4'h8000;
endcase
end
end
endmodule
