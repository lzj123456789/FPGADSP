module d(d,q,en,clk);
    parameter N = 24;
    input en, clk;
    input [N-1:0] d;
    output reg [N-1:0] q;
    always@(posedge clk)
       begin
           if(en) q=d;
           else q=q;
       end
endmodule