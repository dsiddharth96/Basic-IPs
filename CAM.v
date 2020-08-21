module CAM (addr_out, hit_out, data_in, clk, en);
parameter data_width = 8;
parameter addr_width = 8;
parameter ram_depth = 1<<addr_width;
input wire [data_width-1:0] data_in;
input wire clk, en;
output reg [addr_width-1:0] addr_out;
output reg hit_out;
integer i;
reg found_match;
reg addr_out_combo;
reg hit_out_combo;

always @ (data_in)begin
addr_out_combo = {addr_width{1'b0}};
hit_out_combo = 1'b0;
found_match = 1'b0;
for (i=0; i<ram_depth; i=i+1)
if(data_in && !found_match) begin
addr_out_combo = i;
hit_out_combo = 1'b1;
found_match = 1'b1;
end else begin
addr_out_combo = addr_out_combo;
hit_out_combo = hit_out_combo;
found_match = found_match;
end
end

always @ (posedge clk)begin
if(en) begin
addr_out <= addr_out_combo;
hit_out <= hit_out_combo;
end else begin
addr_out <= {addr_width{1'b0}};
hit_out <= 1'b0;
end
end
endmodule

