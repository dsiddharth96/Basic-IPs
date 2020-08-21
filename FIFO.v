module FIFO (data_out, full, empty, data_in, clk, ws, rs, we, re, reset);
parameter data_width = 8;
parameter addr_width = 8;
parameter ram_depth = 1<<addr_width;
input [data_width-1:0] data_in;
input ws, rs, we, re, clk, reset;
output reg [data_width-1:0] data_out;
reg [addr_width-1:0] rd_pointer, wt_pointer;
output reg full, empty;
wire data_ram;
reg [addr_width-1:0] status;

assign full = (status == (ram_depth-1));
assign empty = (status == 8'b0);

always @ (posedge clk or posedge reset)
begin : pointer
if (reset) begin
rd_pointer <= 8'b0;
wt_pointer <= 8'b0;
end else if(ws && we) begin
wt_pointer <= wt_pointer +1;
end else if (rs && re) begin
rd_pointer <= rd_pointer +1;
end
end

always @ (posedge clk or negedge reset)
if(reset) begin
data_out <= 8'b0;
end else if ((ws && we) && !(re && rs)) begin
data_out <= data_ram;
end

always @ (posedge clk or negedge reset)
begin : counter_status
if((ws && we) && !(re && rs) && (status != 0)) begin
status <= status - 1;
end

if (!(ws && we) && (re && rs) && (status != ram_depth)) begin
status <= status + 1;
end
end
endmodule