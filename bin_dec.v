module encoder_if
(input wire [15:0] bin_in, 
input wire en, 
output reg [3:0] dec_out);

always @ (bin_in or en) begin
if (en) begin
if (bin_in == 16'h0002) begin
dec_out = 1;
end if (bin_in == 16'h0004) begin
dec_out = 2;
end if (bin_in == 16'h0008) begin
dec_out = 3;
end if (bin_in == 16'h0010) begin
dec_out = 4;
end if (bin_in == 16'h0020) begin
dec_out = 5;
end if (bin_in == 16'h0040) begin
dec_out = 6;
end if (bin_in == 16'h0080) begin
dec_out = 7;
end if (bin_in == 16'h0100) begin
dec_out = 8;
end if (bin_in == 16'h0200) begin
dec_out = 9;
end if (bin_in == 16'h0400) begin
dec_out = 10;
end if (bin_in == 16'h0800) begin
dec_out = 11;
end if (bin_in == 16'h1000) begin
dec_out = 12;
end if (bin_in == 16'h2000) begin
dec_out = 13;
end if (bin_in == 16'h4000) begin
dec_out = 14;
end if (bin_in == 16'h8000) begin
dec_out = 15;
end if (bin_in == 16'h0004) begin
dec_out = 16;
end
end
end
endmodule