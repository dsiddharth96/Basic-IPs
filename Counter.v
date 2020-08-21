module counter
(input wire clk, reset,load,up_dwn,
output reg [7:0] data_out);

always @ (posedge clk or negedge reset)
begin
if(reset)begin
data_out <= 8'b0;
end else if(load)begin
data_out <= data_out;
end else if (up_dwn) begin
data_out <= data_out + 1;
end else begin
data_out <= data_out - 1;
end
end
endmodule

