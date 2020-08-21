/*module parity (data_in, parity_out);
parameter data_width = 8;
input [data_width-1:0] data_in;
output parity_out;

assign parity_out = ^data_in;
endmodule
*/

module resial_crc(clk, data_in, en, reset, crc_out);
input wire clk, en, reset;
input wire data_in;
output reg [15:0] crc_out;
always @ (posedge clk)
begin : crc_series
if (reset) begin
crc_out <= 16'hF;
end else if (en) begin
crc_out[0] <= data_in ^ crc_out[15];
crc_out[1] <= crc_out[0];
crc_out[2] <= crc_out[1];
crc_out[3] <= crc_out[2];
crc_out[4] <= data_in ^ crc_out[15];
crc_out[5] <= crc_out[4];
crc_out[6] <= crc_out[5];
crc_out[7] <= crc_out[6];
crc_out[8] <= data_in ^ crc_out[15];
crc_out[9] <= crc_out[8];
crc_out[10] <= crc_out[9];
crc_out[11] <= crc_out[10];
crc_out[12] <= data_in ^ crc_out[15];
crc_out[13] <= crc_out[12];
crc_out[14] <= crc_out[13];
crc_out[15] <= crc_out[14];
end
end
endmodule
