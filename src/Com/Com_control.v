module Com_control(reset, Write, ComEnd, NewCom, clk);
    input clk, ComEnd, NewCom, reset;
    output Write;
    reg Write;
    reg [1:0]state;
    reg [1:0]n_state;
    parameter Comreset=0, ComWrite=1, ComWait=2, ComStop=3;
    always@(posedge clk)
       if(reset) state = Comreset;
       else state = n_state;
    always@(*)
       case (state)
           Comreset: begin n_state=ComWrite; Write=1; end
           ComWrite: begin n_state=ComWait; Write=0; end
           ComWait: begin if(ComEnd) 
                             begin n_state=ComStop; Write=0; end
                        else if(NewCom) 
                                begin n_state=ComWrite; Write=1; end
                             else 
                                begin n_state=ComWait; Write=0; end
                    end
        default: begin n_state = ComStop; Write = 0; end           
       endcase    
endmodule