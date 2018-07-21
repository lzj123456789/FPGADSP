module div_2(reset,clk,clk_2);
    input clk,reset;
    output clk_2;
    reg clk_2;
    always@(posedge clk)
       begin
           if(reset) clk_2=0;
           else      clk_2 = ~clk_2;
       end
endmodule