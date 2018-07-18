// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Sat Jul 14 14:21:40 2018
// Host        : Admin-pc running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               f:/lab20_VoiceChanger/voicechange/voicechange.srcs/sources_1/ip/InOutBuffer/InOutBuffer_stub.v
// Design      : InOutBuffer
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2017.1" *)
module InOutBuffer(a, d, dpra, clk, we, qdpo)
/* synthesis syn_black_box black_box_pad_pin="a[9:0],d[15:0],dpra[9:0],clk,we,qdpo[15:0]" */;
  input [9:0]a;
  input [15:0]d;
  input [9:0]dpra;
  input clk;
  input we;
  output [15:0]qdpo;
endmodule
