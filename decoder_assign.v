module decoder_assign
(input wire [3:0] bin_in,
input wire en,
output reg [15:0] hex_out);

assign hex_out = (en) ? (1<<bin_in) : 16'b0 ;
endmodule