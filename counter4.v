module counter(count,enable,clk,rst_n);  
  input enable,clk,rst_n;  
  output reg[3:0] count;  
  always @(posedge clk, negedge rst_n )  
  begin  
   if(rst_n) count <= 4'b0;  
   else if(enable)  
    count <= count + 4'b1;  
  end 
 endmodule
