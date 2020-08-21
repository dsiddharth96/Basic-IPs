module encoder_pri
(input wire [15:0] bin_in,
input wire en,
output reg [3:0] bin_out);

always @ (bin_in or en) begin

if (en) begin
if (bin_in[0] == 1) begin
bin_out = 1;
end if (bin_in[1] == 1) begin
bin_out = 2;
end if (bin_in[1] == 1) begin
bin_out = 3;
end if (bin_in[1] == 1) begin
bin_out = 4;
end if (bin_in[1] == 1) begin
bin_out = 5;
end if (bin_in[1] == 1) begin
bin_out = 6;
end if (bin_in[1] == 1) begin
bin_out = 7;
end if (bin_in[1] == 1) begin
bin_out = 8;
end if (bin_in[1] == 1) begin
bin_out = 9;
end if (bin_in[1] == 1) begin
bin_out = 10;
end if (bin_in[1] == 1) begin
bin_out = 11;
end if (bin_in[1] == 1) begin
bin_out = 12;
end if (bin_in[1] == 1) begin
bin_out = 13;
end if (bin_in[1] == 1) begin
bin_out = 14;
end if (bin_in[1] == 1) begin
bin_out = 15;
end
end
end
endmodule
