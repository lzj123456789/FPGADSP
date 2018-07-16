module counterL_m(mode,clk,en,r,din,load,q,co);
   parameter counter_bits = 2;
   input mode;
   input clk,en,r,load;
   input [counter_bits:1] din;
   output reg[counter_bits:1] q;
   output co;
   
   reg [2:0] I;
   assign co = (q==(I-1))&&en;
   always @(*)
      begin if(mode) I=3'b011;
            else  I=3'b100;
      end
   always @(posedge clk)
   begin
	   if(r) q=0;
	   else if (load) q=din;
	   else if(en)
	   begin
	      	if(q==(I-1)) q=0;
	   	   else q=q+1;
	   end
	   else q=q;
   end
endmodule