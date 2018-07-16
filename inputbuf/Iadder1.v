module Iadder1(I,clk,en,a,b,s,ci,co);
    input [2:0]I;
    input clk,en;
    input [2:0] a;
    input [1:0] b;
    input ci;
    output reg [1:0] s;
    output co;
    reg co;
    reg [2:0] c;
    reg [2:0] temp;
    always@(posedge clk)
       begin
           if(en) 
              begin
                 c = a + b + ci;
                 if(c >= I)
                    begin
                     co = 1;
                     temp = (c - I);
                     s = temp[1:0];
                    end
                 else   
                    begin
                       s = c[1:0];
                       co = 0;
                    end
               end
            else
               begin
                   s = s;
                   co=1'b0;
               end
       end
endmodule