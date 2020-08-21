module ram2(addr0, cs0, we0, oe0, clk, data0,addr1, cs1, we1, oe1,data1); 
parameter data_width=8;
parameter addr_width=8;
parameter ram_depth=1<<addr_width;
input [addr_width-1:0] addr0, addr1; 
input cs0,we0,oe0,clk,cs1,we1,oe1;
inout [data_width-1:0] data0, data1;
reg [data_width-1:0] data_out0, data_out1;
reg [addr_width-1:0] mem [0:ram_depth-1];

always @ (posedge clk)
begin : Mem_Write
if (we0 && cs0) begin	
mem[addr0] <= data0;
end else if (we1 && cs1) begin
mem[addr1] <= data1;
end
end

assign data0 = (!we0 && oe0 && cs0) ? data_out0: 8'bz;

always @ (posedge clk)
begin : mem_read0
if (!we0 && oe0 && cs0) begin
data_out0 <= mem[addr0];
end
end 

assign data1 = (!we1 && oe1 && cs1) ? data_out1: 8'bz;

always @ (posedge clk)
begin : mem_read1
if (!we1 && oe1 && cs1) begin
data_out1 <= mem[addr1];
end
end 
endmodule
