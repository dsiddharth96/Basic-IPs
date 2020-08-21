module encoder_case
(input wire [15:0] hex_in,
input wire en,
output reg [3:0] dec_out);

always @ (hex_in or en) begin
if (en) begin
case (hex_in) 
16'h0002 : dec_out = 1;
16'h0004 : dec_out = 2;
16'h0008 : dec_out = 3;
16'h0010 : dec_out = 4;
16'h0020 : dec_out = 5;
16'h0040 : dec_out = 6;
16'h0080 : dec_out = 7;
16'h0100 : dec_out = 8;
16'h0200 : dec_out = 9;
16'h0400 : dec_out = 10;
16'h0800 : dec_out = 11;
16'h1000 : dec_out = 12;
16'h2000 : dec_out = 13;
16'h4000 : dec_out = 14;
16'h8000 : dec_out = 15;
endcase
end
end 
endmodule
