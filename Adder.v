module half_adder(c, s, a, b);
input a, b;
output s, c;
xor sum(s,a,b);
and carry (c,a,b);
endmodule

module FA(sum_fa,carry_fa, a,b,c);
input wire a,b,c;
output sum_fa,carry_fa;
wire carry_ha, sum_ha, carry_ha2;
half_adder HA1 (carry_ha,sum_ha,  a, b);
half_adder HA2 (carry_ha2, sum_fa, sum_ha, c);
or Cout (carry_fa, carry_ha, carry_ha2);
endmodule
