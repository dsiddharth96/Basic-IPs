module encoder_assign
(input wire [15:0] bin_in,
input wire en, 
output reg [3:0] bin_out);

assign bin_out = (!en) ? 0 : 
(
(bin_in[0]) ? 0 :
(bin_in[1]) ? 1 :
(bin_in[2]) ? 2 :
(bin_in[3]) ? 3 :
(bin_in[4]) ? 4 :
(bin_in[5]) ? 5 :
(bin_in[6]) ? 6 :
(bin_in[7]) ? 7 :
(bin_in[8]) ? 8 :
(bin_in[9]) ? 9 :
(bin_in[10]) ? 10 :
(bin_in[11]) ? 11 :
(bin_in[12]) ? 12 :
(bin_in[13]) ? 13 :
(bin_in[14]) ? 14 : 15
);
endmodule