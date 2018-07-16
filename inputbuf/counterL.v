module counterL(clk,en,r,din,load,q,co);

   parameter n=2;
   parameter counter_bits = 2;
   parameter setnum = 10'h3ff;
   input clk,en,r,load;
   input [counter_bits:1] din;
   output reg[counter_bits:1] q;
   output co;
   assign co = (q==n)&&en;
   always @(posedge clk)
   begin
	   if(r) q=setnum;
	   else if (load) q=din;
	   else if(en)
	   begin
	      	if(q==n) q=setnum;
	   	   else q=q+1;
	   end
	   else q=q;
   end
endmodule