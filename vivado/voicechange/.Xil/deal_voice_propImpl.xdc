set_property SRC_FILE_INFO {cfile:f:/7231/FPGADSP/vivado/voicechange/voicechange.srcs/sources_1/ip/DCM_PLL/DCM_PLL.xdc rfile:../voicechange.srcs/sources_1/ip/DCM_PLL/DCM_PLL.xdc id:1 order:EARLY scoped_inst:DCM/inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
