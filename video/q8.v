module q8(reset,clk, q);
    parameter N=8;
    input clk,reset;
    output reg[N-1:0] q;
    always@(posedge clk)
    if(reset) q=0;
    else q=q+1;
endmodule