module ROM(data,clk,en,cs,addr);
input clk, en, cs;
input [7:0]addr;
output [7:0]data;
reg [7:0] mem[0:255];

assign data = (cs && en) ? mem[addr] : 8'bz;
initial begin 
$readmemb ("file.list", mem);
end
endmodule