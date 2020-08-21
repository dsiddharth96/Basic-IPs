
module lfsr
(input wire en, clk, reset,
output reg [7:0] out,
wire linear_fb);

assign linear_fb = !(out[2] ^ out[5]);
always @ (posedge clk or posedge en or negedge reset)

if (reset) begin
out <= 8'b0;
end else if (en) begin
out <= {out[6], out[5], out[4], out[3],out[2],out[1],out[0],linear_fb};
end
endmodule

/*
module lfsr
(input wire en, clk, reset, up_down,
output overflow, 
output reg [7:0] count);

assign overflow = (up_down) ? (count == {{7{1'b0}}, 1'b1}) :(count == {1'b1, {7{1'b0}}});

always @ (posedge clk or posedge en or negedge reset)
if (reset) begin
count <= {8{1'b0}};
else if (en) begin
if (up_down) begin
count <= {~(^(count & 8'b01100011)),count[7:1]};
end else begin
 count <= {count[6:0],~(^(count &  8'b10110001))};
end
end
endmodule*/