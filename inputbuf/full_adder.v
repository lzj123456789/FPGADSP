module full_adder(r,a,b,s,ci,co);
    parameter N=10;
    input [N-1:0] a;
    input [N-1:0] b;
    input ci,r;
    output reg [N-1:0] s;
    output co;
    wire co;
    reg [N:0] c;
    assign co=c[N];
    always@(*)
       begin
           if(r)
              begin
                  c = 0;
                  s = 0;
              end
           else
              begin
              c = {1'b0,a} + {1'b0,b} + {9'b0,ci};
              s = c[N-1:0];
              end
       end
endmodule