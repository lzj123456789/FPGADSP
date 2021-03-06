module Com_control(reset, Write, ComEnd, NewCom, clk);
    input clk, ComEnd, NewCom, reset;
    output Write;
    reg Write;
    reg [1:0]state;
    reg [1:0]n_state;
    parameter Comreset=0, ComWrite=1, ComWait=2, ComStop=3;
    always@(posedge clk)
       begin
       if(reset) state <= Comreset;
       else state <= n_state;
       end
    always@(*)
       begin
       case (state)
           Comreset: begin n_state <= ComWrite; Write=0; end
           ComWrite: begin n_state <= ComWait; Write=1; end
           ComWait: begin Write = 0;
                             if(ComEnd) 
                             begin n_state <= ComStop;  end
                             else if(NewCom) 
                                begin n_state <= ComWrite; end
                             else 
                                begin n_state <= ComWait; end
                    end
        default: begin  Write = 0; end           
       endcase
       end   
endmodule