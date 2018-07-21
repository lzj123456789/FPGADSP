
 add_fsm_encoding \
       {Com_control.state} \
       { }  \
       {{00 00} {01 01} {10 10} {11 11} }

 add_fsm_encoding \
       {I2C_Control.state} \
       { }  \
       {{0000 0000} {0001 0001} {0010 0010} {0011 0011} {0100 0100} {0101 0101} {0110 0110} {0111 0111} {1000 1000} {1001 1001} {1010 1010} {1011 1011} {1100 1100} {1101 1101} }

 add_fsm_encoding \
       {I2C_Control.n_state} \
       { }  \
       {{0000 0000} {0001 0001} {0010 0010} {0011 0011} {0100 0100} {0101 0101} {0110 0110} {0111 0111} {1000 1000} {1001 1001} {1010 1010} {1011 1011} {1100 1100} {1101 1101} }

 add_fsm_encoding \
       {control.state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} }

 add_fsm_encoding \
       {smoothController.state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }
