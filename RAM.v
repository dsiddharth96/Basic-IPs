//Sync RAM - Single Port
module sp_srw_ram(addr, cs, we, oe, clk, data); 
parameter data_width=8;
parameter addr_width=8;
parameter ram_depth=1<addr_width;
input [addr_width-1:0] addr; 
input cs, we, oe, clk;
inout [data_width-1:0] data;
reg [data_width-1:0] data_out;
reg [addr_width-1:0] mem [0:ram_depth-1];

//Tristate Buffer, Initial read cycle.
assign data = (!we && oe && cs) ? data_out: 8'bz;

//Write
always @ (posedge clk)
begin : Mem_Write
if (we && cs) begin	
mem[addr] <= data;
end
end
//Read
always @ (posedge clk)
begin : Mem_Read
if (!we && oe && cs) begin
data_out<= mem[addr];
end
end
endmodule