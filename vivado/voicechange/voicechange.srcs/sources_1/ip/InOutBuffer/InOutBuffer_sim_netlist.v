// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Sat Jul 14 14:21:39 2018
// Host        : Admin-pc running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top InOutBuffer -prefix
//               InOutBuffer_ InOutBuffer_sim_netlist.v
// Design      : InOutBuffer
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "InOutBuffer,dist_mem_gen_v8_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_11,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module InOutBuffer
   (a,
    d,
    dpra,
    clk,
    we,
    qdpo);
  input [9:0]a;
  input [15:0]d;
  input [9:0]dpra;
  input clk;
  input we;
  output [15:0]qdpo;

  wire [9:0]a;
  wire clk;
  wire [15:0]d;
  wire [9:0]dpra;
  wire [15:0]qdpo;
  wire we;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;
  wire [15:0]NLW_U0_spo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "1" *) 
  (* C_HAS_QDPO = "1" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_QSPO = "0" *) 
  (* C_HAS_QSPO_RST = "0" *) 
  (* C_HAS_QSPO_SRST = "0" *) 
  (* C_HAS_SPO = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qce_joined = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  InOutBuffer_dist_mem_gen_v8_0_11 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra(dpra),
        .i_ce(1'b1),
        .qdpo(qdpo),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[15:0]),
        .we(we));
endmodule

(* C_ADDR_WIDTH = "10" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "1024" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "1" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "1" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "1" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "0" *) (* C_HAS_WE = "1" *) 
(* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_MEM_TYPE = "4" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "0" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "16" *) 
module InOutBuffer_dist_mem_gen_v8_0_11
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [9:0]a;
  input [15:0]d;
  input [9:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [15:0]spo;
  output [15:0]dpo;
  output [15:0]qspo;
  output [15:0]qdpo;

  wire \<const0> ;
  wire [9:0]a;
  wire clk;
  wire [15:0]d;
  wire [9:0]dpra;
  wire [15:0]qdpo;
  wire we;

  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[15] = \<const0> ;
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6] = \<const0> ;
  assign spo[5] = \<const0> ;
  assign spo[4] = \<const0> ;
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1] = \<const0> ;
  assign spo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  InOutBuffer_dist_mem_gen_v8_0_11_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .dpra(dpra),
        .qdpo(qdpo),
        .we(we));
endmodule

module InOutBuffer_dist_mem_gen_v8_0_11_synth
   (qdpo,
    clk,
    d,
    dpra,
    a,
    we);
  output [15:0]qdpo;
  input clk;
  input [15:0]d;
  input [9:0]dpra;
  input [9:0]a;
  input we;

  wire [9:0]a;
  wire clk;
  wire [15:0]d;
  wire [9:0]dpra;
  wire [15:0]qdpo;
  wire we;

  InOutBuffer_sdpram \gen_sdp_ram.sdpram_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .dpra(dpra),
        .qdpo(qdpo),
        .we(we));
endmodule

module InOutBuffer_sdpram
   (qdpo,
    clk,
    d,
    dpra,
    a,
    we);
  output [15:0]qdpo;
  input clk;
  input [15:0]d;
  input [9:0]dpra;
  input [9:0]a;
  input we;

  wire [9:0]a;
  wire clk;
  wire [15:0]d;
  wire [9:0]dpra;
  (* RTL_KEEP = "true" *) wire [15:0]qsdpo_int;
  wire \qsdpo_int[0]_i_4_n_0 ;
  wire \qsdpo_int[0]_i_5_n_0 ;
  wire \qsdpo_int[0]_i_6_n_0 ;
  wire \qsdpo_int[0]_i_7_n_0 ;
  wire \qsdpo_int[10]_i_4_n_0 ;
  wire \qsdpo_int[10]_i_5_n_0 ;
  wire \qsdpo_int[10]_i_6_n_0 ;
  wire \qsdpo_int[10]_i_7_n_0 ;
  wire \qsdpo_int[11]_i_4_n_0 ;
  wire \qsdpo_int[11]_i_5_n_0 ;
  wire \qsdpo_int[11]_i_6_n_0 ;
  wire \qsdpo_int[11]_i_7_n_0 ;
  wire \qsdpo_int[12]_i_4_n_0 ;
  wire \qsdpo_int[12]_i_5_n_0 ;
  wire \qsdpo_int[12]_i_6_n_0 ;
  wire \qsdpo_int[12]_i_7_n_0 ;
  wire \qsdpo_int[13]_i_4_n_0 ;
  wire \qsdpo_int[13]_i_5_n_0 ;
  wire \qsdpo_int[13]_i_6_n_0 ;
  wire \qsdpo_int[13]_i_7_n_0 ;
  wire \qsdpo_int[14]_i_4_n_0 ;
  wire \qsdpo_int[14]_i_5_n_0 ;
  wire \qsdpo_int[14]_i_6_n_0 ;
  wire \qsdpo_int[14]_i_7_n_0 ;
  wire \qsdpo_int[15]_i_4_n_0 ;
  wire \qsdpo_int[15]_i_5_n_0 ;
  wire \qsdpo_int[15]_i_6_n_0 ;
  wire \qsdpo_int[15]_i_7_n_0 ;
  wire \qsdpo_int[1]_i_4_n_0 ;
  wire \qsdpo_int[1]_i_5_n_0 ;
  wire \qsdpo_int[1]_i_6_n_0 ;
  wire \qsdpo_int[1]_i_7_n_0 ;
  wire \qsdpo_int[2]_i_4_n_0 ;
  wire \qsdpo_int[2]_i_5_n_0 ;
  wire \qsdpo_int[2]_i_6_n_0 ;
  wire \qsdpo_int[2]_i_7_n_0 ;
  wire \qsdpo_int[3]_i_4_n_0 ;
  wire \qsdpo_int[3]_i_5_n_0 ;
  wire \qsdpo_int[3]_i_6_n_0 ;
  wire \qsdpo_int[3]_i_7_n_0 ;
  wire \qsdpo_int[4]_i_4_n_0 ;
  wire \qsdpo_int[4]_i_5_n_0 ;
  wire \qsdpo_int[4]_i_6_n_0 ;
  wire \qsdpo_int[4]_i_7_n_0 ;
  wire \qsdpo_int[5]_i_4_n_0 ;
  wire \qsdpo_int[5]_i_5_n_0 ;
  wire \qsdpo_int[5]_i_6_n_0 ;
  wire \qsdpo_int[5]_i_7_n_0 ;
  wire \qsdpo_int[6]_i_4_n_0 ;
  wire \qsdpo_int[6]_i_5_n_0 ;
  wire \qsdpo_int[6]_i_6_n_0 ;
  wire \qsdpo_int[6]_i_7_n_0 ;
  wire \qsdpo_int[7]_i_4_n_0 ;
  wire \qsdpo_int[7]_i_5_n_0 ;
  wire \qsdpo_int[7]_i_6_n_0 ;
  wire \qsdpo_int[7]_i_7_n_0 ;
  wire \qsdpo_int[8]_i_4_n_0 ;
  wire \qsdpo_int[8]_i_5_n_0 ;
  wire \qsdpo_int[8]_i_6_n_0 ;
  wire \qsdpo_int[8]_i_7_n_0 ;
  wire \qsdpo_int[9]_i_4_n_0 ;
  wire \qsdpo_int[9]_i_5_n_0 ;
  wire \qsdpo_int[9]_i_6_n_0 ;
  wire \qsdpo_int[9]_i_7_n_0 ;
  wire \qsdpo_int_reg[0]_i_2_n_0 ;
  wire \qsdpo_int_reg[0]_i_3_n_0 ;
  wire \qsdpo_int_reg[10]_i_2_n_0 ;
  wire \qsdpo_int_reg[10]_i_3_n_0 ;
  wire \qsdpo_int_reg[11]_i_2_n_0 ;
  wire \qsdpo_int_reg[11]_i_3_n_0 ;
  wire \qsdpo_int_reg[12]_i_2_n_0 ;
  wire \qsdpo_int_reg[12]_i_3_n_0 ;
  wire \qsdpo_int_reg[13]_i_2_n_0 ;
  wire \qsdpo_int_reg[13]_i_3_n_0 ;
  wire \qsdpo_int_reg[14]_i_2_n_0 ;
  wire \qsdpo_int_reg[14]_i_3_n_0 ;
  wire \qsdpo_int_reg[15]_i_2_n_0 ;
  wire \qsdpo_int_reg[15]_i_3_n_0 ;
  wire \qsdpo_int_reg[1]_i_2_n_0 ;
  wire \qsdpo_int_reg[1]_i_3_n_0 ;
  wire \qsdpo_int_reg[2]_i_2_n_0 ;
  wire \qsdpo_int_reg[2]_i_3_n_0 ;
  wire \qsdpo_int_reg[3]_i_2_n_0 ;
  wire \qsdpo_int_reg[3]_i_3_n_0 ;
  wire \qsdpo_int_reg[4]_i_2_n_0 ;
  wire \qsdpo_int_reg[4]_i_3_n_0 ;
  wire \qsdpo_int_reg[5]_i_2_n_0 ;
  wire \qsdpo_int_reg[5]_i_3_n_0 ;
  wire \qsdpo_int_reg[6]_i_2_n_0 ;
  wire \qsdpo_int_reg[6]_i_3_n_0 ;
  wire \qsdpo_int_reg[7]_i_2_n_0 ;
  wire \qsdpo_int_reg[7]_i_3_n_0 ;
  wire \qsdpo_int_reg[8]_i_2_n_0 ;
  wire \qsdpo_int_reg[8]_i_3_n_0 ;
  wire \qsdpo_int_reg[9]_i_2_n_0 ;
  wire \qsdpo_int_reg[9]_i_3_n_0 ;
  wire ram_reg_0_63_0_2_i_1_n_0;
  wire ram_reg_0_63_0_2_n_0;
  wire ram_reg_0_63_0_2_n_1;
  wire ram_reg_0_63_0_2_n_2;
  wire ram_reg_0_63_12_14_n_0;
  wire ram_reg_0_63_12_14_n_1;
  wire ram_reg_0_63_12_14_n_2;
  wire ram_reg_0_63_15_15_n_0;
  wire ram_reg_0_63_3_5_n_0;
  wire ram_reg_0_63_3_5_n_1;
  wire ram_reg_0_63_3_5_n_2;
  wire ram_reg_0_63_6_8_n_0;
  wire ram_reg_0_63_6_8_n_1;
  wire ram_reg_0_63_6_8_n_2;
  wire ram_reg_0_63_9_11_n_0;
  wire ram_reg_0_63_9_11_n_1;
  wire ram_reg_0_63_9_11_n_2;
  wire ram_reg_128_191_0_2_i_1_n_0;
  wire ram_reg_128_191_0_2_n_0;
  wire ram_reg_128_191_0_2_n_1;
  wire ram_reg_128_191_0_2_n_2;
  wire ram_reg_128_191_12_14_n_0;
  wire ram_reg_128_191_12_14_n_1;
  wire ram_reg_128_191_12_14_n_2;
  wire ram_reg_128_191_15_15_n_0;
  wire ram_reg_128_191_3_5_n_0;
  wire ram_reg_128_191_3_5_n_1;
  wire ram_reg_128_191_3_5_n_2;
  wire ram_reg_128_191_6_8_n_0;
  wire ram_reg_128_191_6_8_n_1;
  wire ram_reg_128_191_6_8_n_2;
  wire ram_reg_128_191_9_11_n_0;
  wire ram_reg_128_191_9_11_n_1;
  wire ram_reg_128_191_9_11_n_2;
  wire ram_reg_192_255_0_2_i_1_n_0;
  wire ram_reg_192_255_0_2_n_0;
  wire ram_reg_192_255_0_2_n_1;
  wire ram_reg_192_255_0_2_n_2;
  wire ram_reg_192_255_12_14_n_0;
  wire ram_reg_192_255_12_14_n_1;
  wire ram_reg_192_255_12_14_n_2;
  wire ram_reg_192_255_15_15_n_0;
  wire ram_reg_192_255_3_5_n_0;
  wire ram_reg_192_255_3_5_n_1;
  wire ram_reg_192_255_3_5_n_2;
  wire ram_reg_192_255_6_8_n_0;
  wire ram_reg_192_255_6_8_n_1;
  wire ram_reg_192_255_6_8_n_2;
  wire ram_reg_192_255_9_11_n_0;
  wire ram_reg_192_255_9_11_n_1;
  wire ram_reg_192_255_9_11_n_2;
  wire ram_reg_256_319_0_2_i_1_n_0;
  wire ram_reg_256_319_0_2_n_0;
  wire ram_reg_256_319_0_2_n_1;
  wire ram_reg_256_319_0_2_n_2;
  wire ram_reg_256_319_12_14_n_0;
  wire ram_reg_256_319_12_14_n_1;
  wire ram_reg_256_319_12_14_n_2;
  wire ram_reg_256_319_15_15_n_0;
  wire ram_reg_256_319_3_5_n_0;
  wire ram_reg_256_319_3_5_n_1;
  wire ram_reg_256_319_3_5_n_2;
  wire ram_reg_256_319_6_8_n_0;
  wire ram_reg_256_319_6_8_n_1;
  wire ram_reg_256_319_6_8_n_2;
  wire ram_reg_256_319_9_11_n_0;
  wire ram_reg_256_319_9_11_n_1;
  wire ram_reg_256_319_9_11_n_2;
  wire ram_reg_320_383_0_2_i_1_n_0;
  wire ram_reg_320_383_0_2_n_0;
  wire ram_reg_320_383_0_2_n_1;
  wire ram_reg_320_383_0_2_n_2;
  wire ram_reg_320_383_12_14_n_0;
  wire ram_reg_320_383_12_14_n_1;
  wire ram_reg_320_383_12_14_n_2;
  wire ram_reg_320_383_15_15_n_0;
  wire ram_reg_320_383_3_5_n_0;
  wire ram_reg_320_383_3_5_n_1;
  wire ram_reg_320_383_3_5_n_2;
  wire ram_reg_320_383_6_8_n_0;
  wire ram_reg_320_383_6_8_n_1;
  wire ram_reg_320_383_6_8_n_2;
  wire ram_reg_320_383_9_11_n_0;
  wire ram_reg_320_383_9_11_n_1;
  wire ram_reg_320_383_9_11_n_2;
  wire ram_reg_384_447_0_2_i_1_n_0;
  wire ram_reg_384_447_0_2_n_0;
  wire ram_reg_384_447_0_2_n_1;
  wire ram_reg_384_447_0_2_n_2;
  wire ram_reg_384_447_12_14_n_0;
  wire ram_reg_384_447_12_14_n_1;
  wire ram_reg_384_447_12_14_n_2;
  wire ram_reg_384_447_15_15_n_0;
  wire ram_reg_384_447_3_5_n_0;
  wire ram_reg_384_447_3_5_n_1;
  wire ram_reg_384_447_3_5_n_2;
  wire ram_reg_384_447_6_8_n_0;
  wire ram_reg_384_447_6_8_n_1;
  wire ram_reg_384_447_6_8_n_2;
  wire ram_reg_384_447_9_11_n_0;
  wire ram_reg_384_447_9_11_n_1;
  wire ram_reg_384_447_9_11_n_2;
  wire ram_reg_448_511_0_2_i_1_n_0;
  wire ram_reg_448_511_0_2_n_0;
  wire ram_reg_448_511_0_2_n_1;
  wire ram_reg_448_511_0_2_n_2;
  wire ram_reg_448_511_12_14_n_0;
  wire ram_reg_448_511_12_14_n_1;
  wire ram_reg_448_511_12_14_n_2;
  wire ram_reg_448_511_15_15_n_0;
  wire ram_reg_448_511_3_5_n_0;
  wire ram_reg_448_511_3_5_n_1;
  wire ram_reg_448_511_3_5_n_2;
  wire ram_reg_448_511_6_8_n_0;
  wire ram_reg_448_511_6_8_n_1;
  wire ram_reg_448_511_6_8_n_2;
  wire ram_reg_448_511_9_11_n_0;
  wire ram_reg_448_511_9_11_n_1;
  wire ram_reg_448_511_9_11_n_2;
  wire ram_reg_512_575_0_2_i_1_n_0;
  wire ram_reg_512_575_0_2_n_0;
  wire ram_reg_512_575_0_2_n_1;
  wire ram_reg_512_575_0_2_n_2;
  wire ram_reg_512_575_12_14_n_0;
  wire ram_reg_512_575_12_14_n_1;
  wire ram_reg_512_575_12_14_n_2;
  wire ram_reg_512_575_15_15_n_0;
  wire ram_reg_512_575_3_5_n_0;
  wire ram_reg_512_575_3_5_n_1;
  wire ram_reg_512_575_3_5_n_2;
  wire ram_reg_512_575_6_8_n_0;
  wire ram_reg_512_575_6_8_n_1;
  wire ram_reg_512_575_6_8_n_2;
  wire ram_reg_512_575_9_11_n_0;
  wire ram_reg_512_575_9_11_n_1;
  wire ram_reg_512_575_9_11_n_2;
  wire ram_reg_576_639_0_2_i_1_n_0;
  wire ram_reg_576_639_0_2_n_0;
  wire ram_reg_576_639_0_2_n_1;
  wire ram_reg_576_639_0_2_n_2;
  wire ram_reg_576_639_12_14_n_0;
  wire ram_reg_576_639_12_14_n_1;
  wire ram_reg_576_639_12_14_n_2;
  wire ram_reg_576_639_15_15_n_0;
  wire ram_reg_576_639_3_5_n_0;
  wire ram_reg_576_639_3_5_n_1;
  wire ram_reg_576_639_3_5_n_2;
  wire ram_reg_576_639_6_8_n_0;
  wire ram_reg_576_639_6_8_n_1;
  wire ram_reg_576_639_6_8_n_2;
  wire ram_reg_576_639_9_11_n_0;
  wire ram_reg_576_639_9_11_n_1;
  wire ram_reg_576_639_9_11_n_2;
  wire ram_reg_640_703_0_2_i_1_n_0;
  wire ram_reg_640_703_0_2_n_0;
  wire ram_reg_640_703_0_2_n_1;
  wire ram_reg_640_703_0_2_n_2;
  wire ram_reg_640_703_12_14_n_0;
  wire ram_reg_640_703_12_14_n_1;
  wire ram_reg_640_703_12_14_n_2;
  wire ram_reg_640_703_15_15_n_0;
  wire ram_reg_640_703_3_5_n_0;
  wire ram_reg_640_703_3_5_n_1;
  wire ram_reg_640_703_3_5_n_2;
  wire ram_reg_640_703_6_8_n_0;
  wire ram_reg_640_703_6_8_n_1;
  wire ram_reg_640_703_6_8_n_2;
  wire ram_reg_640_703_9_11_n_0;
  wire ram_reg_640_703_9_11_n_1;
  wire ram_reg_640_703_9_11_n_2;
  wire ram_reg_64_127_0_2_i_1_n_0;
  wire ram_reg_64_127_0_2_n_0;
  wire ram_reg_64_127_0_2_n_1;
  wire ram_reg_64_127_0_2_n_2;
  wire ram_reg_64_127_12_14_n_0;
  wire ram_reg_64_127_12_14_n_1;
  wire ram_reg_64_127_12_14_n_2;
  wire ram_reg_64_127_15_15_n_0;
  wire ram_reg_64_127_3_5_n_0;
  wire ram_reg_64_127_3_5_n_1;
  wire ram_reg_64_127_3_5_n_2;
  wire ram_reg_64_127_6_8_n_0;
  wire ram_reg_64_127_6_8_n_1;
  wire ram_reg_64_127_6_8_n_2;
  wire ram_reg_64_127_9_11_n_0;
  wire ram_reg_64_127_9_11_n_1;
  wire ram_reg_64_127_9_11_n_2;
  wire ram_reg_704_767_0_2_i_1_n_0;
  wire ram_reg_704_767_0_2_n_0;
  wire ram_reg_704_767_0_2_n_1;
  wire ram_reg_704_767_0_2_n_2;
  wire ram_reg_704_767_12_14_n_0;
  wire ram_reg_704_767_12_14_n_1;
  wire ram_reg_704_767_12_14_n_2;
  wire ram_reg_704_767_15_15_n_0;
  wire ram_reg_704_767_3_5_n_0;
  wire ram_reg_704_767_3_5_n_1;
  wire ram_reg_704_767_3_5_n_2;
  wire ram_reg_704_767_6_8_n_0;
  wire ram_reg_704_767_6_8_n_1;
  wire ram_reg_704_767_6_8_n_2;
  wire ram_reg_704_767_9_11_n_0;
  wire ram_reg_704_767_9_11_n_1;
  wire ram_reg_704_767_9_11_n_2;
  wire ram_reg_768_831_0_2_i_1_n_0;
  wire ram_reg_768_831_0_2_n_0;
  wire ram_reg_768_831_0_2_n_1;
  wire ram_reg_768_831_0_2_n_2;
  wire ram_reg_768_831_12_14_n_0;
  wire ram_reg_768_831_12_14_n_1;
  wire ram_reg_768_831_12_14_n_2;
  wire ram_reg_768_831_15_15_n_0;
  wire ram_reg_768_831_3_5_n_0;
  wire ram_reg_768_831_3_5_n_1;
  wire ram_reg_768_831_3_5_n_2;
  wire ram_reg_768_831_6_8_n_0;
  wire ram_reg_768_831_6_8_n_1;
  wire ram_reg_768_831_6_8_n_2;
  wire ram_reg_768_831_9_11_n_0;
  wire ram_reg_768_831_9_11_n_1;
  wire ram_reg_768_831_9_11_n_2;
  wire ram_reg_832_895_0_2_i_1_n_0;
  wire ram_reg_832_895_0_2_n_0;
  wire ram_reg_832_895_0_2_n_1;
  wire ram_reg_832_895_0_2_n_2;
  wire ram_reg_832_895_12_14_n_0;
  wire ram_reg_832_895_12_14_n_1;
  wire ram_reg_832_895_12_14_n_2;
  wire ram_reg_832_895_15_15_n_0;
  wire ram_reg_832_895_3_5_n_0;
  wire ram_reg_832_895_3_5_n_1;
  wire ram_reg_832_895_3_5_n_2;
  wire ram_reg_832_895_6_8_n_0;
  wire ram_reg_832_895_6_8_n_1;
  wire ram_reg_832_895_6_8_n_2;
  wire ram_reg_832_895_9_11_n_0;
  wire ram_reg_832_895_9_11_n_1;
  wire ram_reg_832_895_9_11_n_2;
  wire ram_reg_896_959_0_2_i_1_n_0;
  wire ram_reg_896_959_0_2_n_0;
  wire ram_reg_896_959_0_2_n_1;
  wire ram_reg_896_959_0_2_n_2;
  wire ram_reg_896_959_12_14_n_0;
  wire ram_reg_896_959_12_14_n_1;
  wire ram_reg_896_959_12_14_n_2;
  wire ram_reg_896_959_15_15_n_0;
  wire ram_reg_896_959_3_5_n_0;
  wire ram_reg_896_959_3_5_n_1;
  wire ram_reg_896_959_3_5_n_2;
  wire ram_reg_896_959_6_8_n_0;
  wire ram_reg_896_959_6_8_n_1;
  wire ram_reg_896_959_6_8_n_2;
  wire ram_reg_896_959_9_11_n_0;
  wire ram_reg_896_959_9_11_n_1;
  wire ram_reg_896_959_9_11_n_2;
  wire ram_reg_960_1023_0_2_i_1_n_0;
  wire ram_reg_960_1023_0_2_n_0;
  wire ram_reg_960_1023_0_2_n_1;
  wire ram_reg_960_1023_0_2_n_2;
  wire ram_reg_960_1023_12_14_n_0;
  wire ram_reg_960_1023_12_14_n_1;
  wire ram_reg_960_1023_12_14_n_2;
  wire ram_reg_960_1023_15_15_n_0;
  wire ram_reg_960_1023_3_5_n_0;
  wire ram_reg_960_1023_3_5_n_1;
  wire ram_reg_960_1023_3_5_n_2;
  wire ram_reg_960_1023_6_8_n_0;
  wire ram_reg_960_1023_6_8_n_1;
  wire ram_reg_960_1023_6_8_n_2;
  wire ram_reg_960_1023_9_11_n_0;
  wire ram_reg_960_1023_9_11_n_1;
  wire ram_reg_960_1023_9_11_n_2;
  wire [15:0]sdpo_int;
  wire we;
  wire NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_128_191_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_128_191_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_192_255_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_192_255_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_256_319_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_256_319_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_256_319_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_256_319_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_320_383_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_320_383_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_320_383_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_320_383_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_320_383_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_320_383_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_384_447_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_384_447_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_384_447_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_384_447_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_384_447_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_384_447_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_448_511_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_448_511_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_448_511_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_448_511_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_448_511_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_448_511_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_512_575_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_512_575_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_512_575_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_512_575_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_512_575_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_512_575_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_576_639_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_576_639_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_576_639_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_576_639_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_576_639_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_576_639_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_640_703_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_640_703_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_640_703_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_640_703_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_640_703_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_640_703_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_64_127_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_704_767_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_704_767_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_704_767_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_704_767_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_704_767_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_704_767_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_768_831_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_768_831_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_768_831_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_768_831_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_768_831_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_768_831_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_832_895_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_832_895_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_832_895_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_832_895_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_832_895_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_832_895_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_896_959_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_896_959_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_896_959_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_896_959_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_896_959_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_896_959_9_11_DOD_UNCONNECTED;
  wire NLW_ram_reg_960_1023_0_2_DOD_UNCONNECTED;
  wire NLW_ram_reg_960_1023_12_14_DOD_UNCONNECTED;
  wire NLW_ram_reg_960_1023_15_15_SPO_UNCONNECTED;
  wire NLW_ram_reg_960_1023_3_5_DOD_UNCONNECTED;
  wire NLW_ram_reg_960_1023_6_8_DOD_UNCONNECTED;
  wire NLW_ram_reg_960_1023_9_11_DOD_UNCONNECTED;

  assign qdpo[15:0] = qsdpo_int;
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[0]_i_4 
       (.I0(ram_reg_192_255_0_2_n_0),
        .I1(ram_reg_128_191_0_2_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_0_2_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_0_2_n_0),
        .O(\qsdpo_int[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[0]_i_5 
       (.I0(ram_reg_448_511_0_2_n_0),
        .I1(ram_reg_384_447_0_2_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_0_2_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_0_2_n_0),
        .O(\qsdpo_int[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[0]_i_6 
       (.I0(ram_reg_704_767_0_2_n_0),
        .I1(ram_reg_640_703_0_2_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_0_2_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_0_2_n_0),
        .O(\qsdpo_int[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[0]_i_7 
       (.I0(ram_reg_960_1023_0_2_n_0),
        .I1(ram_reg_896_959_0_2_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_0_2_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_0_2_n_0),
        .O(\qsdpo_int[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[10]_i_4 
       (.I0(ram_reg_192_255_9_11_n_1),
        .I1(ram_reg_128_191_9_11_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_9_11_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_9_11_n_1),
        .O(\qsdpo_int[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[10]_i_5 
       (.I0(ram_reg_448_511_9_11_n_1),
        .I1(ram_reg_384_447_9_11_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_9_11_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_9_11_n_1),
        .O(\qsdpo_int[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[10]_i_6 
       (.I0(ram_reg_704_767_9_11_n_1),
        .I1(ram_reg_640_703_9_11_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_9_11_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_9_11_n_1),
        .O(\qsdpo_int[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[10]_i_7 
       (.I0(ram_reg_960_1023_9_11_n_1),
        .I1(ram_reg_896_959_9_11_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_9_11_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_9_11_n_1),
        .O(\qsdpo_int[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[11]_i_4 
       (.I0(ram_reg_192_255_9_11_n_2),
        .I1(ram_reg_128_191_9_11_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_9_11_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_9_11_n_2),
        .O(\qsdpo_int[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[11]_i_5 
       (.I0(ram_reg_448_511_9_11_n_2),
        .I1(ram_reg_384_447_9_11_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_9_11_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_9_11_n_2),
        .O(\qsdpo_int[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[11]_i_6 
       (.I0(ram_reg_704_767_9_11_n_2),
        .I1(ram_reg_640_703_9_11_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_9_11_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_9_11_n_2),
        .O(\qsdpo_int[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[11]_i_7 
       (.I0(ram_reg_960_1023_9_11_n_2),
        .I1(ram_reg_896_959_9_11_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_9_11_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_9_11_n_2),
        .O(\qsdpo_int[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[12]_i_4 
       (.I0(ram_reg_192_255_12_14_n_0),
        .I1(ram_reg_128_191_12_14_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_12_14_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_12_14_n_0),
        .O(\qsdpo_int[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[12]_i_5 
       (.I0(ram_reg_448_511_12_14_n_0),
        .I1(ram_reg_384_447_12_14_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_12_14_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_12_14_n_0),
        .O(\qsdpo_int[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[12]_i_6 
       (.I0(ram_reg_704_767_12_14_n_0),
        .I1(ram_reg_640_703_12_14_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_12_14_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_12_14_n_0),
        .O(\qsdpo_int[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[12]_i_7 
       (.I0(ram_reg_960_1023_12_14_n_0),
        .I1(ram_reg_896_959_12_14_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_12_14_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_12_14_n_0),
        .O(\qsdpo_int[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[13]_i_4 
       (.I0(ram_reg_192_255_12_14_n_1),
        .I1(ram_reg_128_191_12_14_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_12_14_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_12_14_n_1),
        .O(\qsdpo_int[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[13]_i_5 
       (.I0(ram_reg_448_511_12_14_n_1),
        .I1(ram_reg_384_447_12_14_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_12_14_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_12_14_n_1),
        .O(\qsdpo_int[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[13]_i_6 
       (.I0(ram_reg_704_767_12_14_n_1),
        .I1(ram_reg_640_703_12_14_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_12_14_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_12_14_n_1),
        .O(\qsdpo_int[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[13]_i_7 
       (.I0(ram_reg_960_1023_12_14_n_1),
        .I1(ram_reg_896_959_12_14_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_12_14_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_12_14_n_1),
        .O(\qsdpo_int[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[14]_i_4 
       (.I0(ram_reg_192_255_12_14_n_2),
        .I1(ram_reg_128_191_12_14_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_12_14_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_12_14_n_2),
        .O(\qsdpo_int[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[14]_i_5 
       (.I0(ram_reg_448_511_12_14_n_2),
        .I1(ram_reg_384_447_12_14_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_12_14_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_12_14_n_2),
        .O(\qsdpo_int[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[14]_i_6 
       (.I0(ram_reg_704_767_12_14_n_2),
        .I1(ram_reg_640_703_12_14_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_12_14_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_12_14_n_2),
        .O(\qsdpo_int[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[14]_i_7 
       (.I0(ram_reg_960_1023_12_14_n_2),
        .I1(ram_reg_896_959_12_14_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_12_14_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_12_14_n_2),
        .O(\qsdpo_int[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[15]_i_4 
       (.I0(ram_reg_192_255_15_15_n_0),
        .I1(ram_reg_128_191_15_15_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_15_15_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_15_15_n_0),
        .O(\qsdpo_int[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[15]_i_5 
       (.I0(ram_reg_448_511_15_15_n_0),
        .I1(ram_reg_384_447_15_15_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_15_15_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_15_15_n_0),
        .O(\qsdpo_int[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[15]_i_6 
       (.I0(ram_reg_704_767_15_15_n_0),
        .I1(ram_reg_640_703_15_15_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_15_15_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_15_15_n_0),
        .O(\qsdpo_int[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[15]_i_7 
       (.I0(ram_reg_960_1023_15_15_n_0),
        .I1(ram_reg_896_959_15_15_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_15_15_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_15_15_n_0),
        .O(\qsdpo_int[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[1]_i_4 
       (.I0(ram_reg_192_255_0_2_n_1),
        .I1(ram_reg_128_191_0_2_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_0_2_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_0_2_n_1),
        .O(\qsdpo_int[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[1]_i_5 
       (.I0(ram_reg_448_511_0_2_n_1),
        .I1(ram_reg_384_447_0_2_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_0_2_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_0_2_n_1),
        .O(\qsdpo_int[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[1]_i_6 
       (.I0(ram_reg_704_767_0_2_n_1),
        .I1(ram_reg_640_703_0_2_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_0_2_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_0_2_n_1),
        .O(\qsdpo_int[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[1]_i_7 
       (.I0(ram_reg_960_1023_0_2_n_1),
        .I1(ram_reg_896_959_0_2_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_0_2_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_0_2_n_1),
        .O(\qsdpo_int[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[2]_i_4 
       (.I0(ram_reg_192_255_0_2_n_2),
        .I1(ram_reg_128_191_0_2_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_0_2_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_0_2_n_2),
        .O(\qsdpo_int[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[2]_i_5 
       (.I0(ram_reg_448_511_0_2_n_2),
        .I1(ram_reg_384_447_0_2_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_0_2_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_0_2_n_2),
        .O(\qsdpo_int[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[2]_i_6 
       (.I0(ram_reg_704_767_0_2_n_2),
        .I1(ram_reg_640_703_0_2_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_0_2_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_0_2_n_2),
        .O(\qsdpo_int[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[2]_i_7 
       (.I0(ram_reg_960_1023_0_2_n_2),
        .I1(ram_reg_896_959_0_2_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_0_2_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_0_2_n_2),
        .O(\qsdpo_int[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[3]_i_4 
       (.I0(ram_reg_192_255_3_5_n_0),
        .I1(ram_reg_128_191_3_5_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_3_5_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_3_5_n_0),
        .O(\qsdpo_int[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[3]_i_5 
       (.I0(ram_reg_448_511_3_5_n_0),
        .I1(ram_reg_384_447_3_5_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_3_5_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_3_5_n_0),
        .O(\qsdpo_int[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[3]_i_6 
       (.I0(ram_reg_704_767_3_5_n_0),
        .I1(ram_reg_640_703_3_5_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_3_5_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_3_5_n_0),
        .O(\qsdpo_int[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[3]_i_7 
       (.I0(ram_reg_960_1023_3_5_n_0),
        .I1(ram_reg_896_959_3_5_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_3_5_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_3_5_n_0),
        .O(\qsdpo_int[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[4]_i_4 
       (.I0(ram_reg_192_255_3_5_n_1),
        .I1(ram_reg_128_191_3_5_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_3_5_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_3_5_n_1),
        .O(\qsdpo_int[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[4]_i_5 
       (.I0(ram_reg_448_511_3_5_n_1),
        .I1(ram_reg_384_447_3_5_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_3_5_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_3_5_n_1),
        .O(\qsdpo_int[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[4]_i_6 
       (.I0(ram_reg_704_767_3_5_n_1),
        .I1(ram_reg_640_703_3_5_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_3_5_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_3_5_n_1),
        .O(\qsdpo_int[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[4]_i_7 
       (.I0(ram_reg_960_1023_3_5_n_1),
        .I1(ram_reg_896_959_3_5_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_3_5_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_3_5_n_1),
        .O(\qsdpo_int[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[5]_i_4 
       (.I0(ram_reg_192_255_3_5_n_2),
        .I1(ram_reg_128_191_3_5_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_3_5_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_3_5_n_2),
        .O(\qsdpo_int[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[5]_i_5 
       (.I0(ram_reg_448_511_3_5_n_2),
        .I1(ram_reg_384_447_3_5_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_3_5_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_3_5_n_2),
        .O(\qsdpo_int[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[5]_i_6 
       (.I0(ram_reg_704_767_3_5_n_2),
        .I1(ram_reg_640_703_3_5_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_3_5_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_3_5_n_2),
        .O(\qsdpo_int[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[5]_i_7 
       (.I0(ram_reg_960_1023_3_5_n_2),
        .I1(ram_reg_896_959_3_5_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_3_5_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_3_5_n_2),
        .O(\qsdpo_int[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[6]_i_4 
       (.I0(ram_reg_192_255_6_8_n_0),
        .I1(ram_reg_128_191_6_8_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_6_8_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_6_8_n_0),
        .O(\qsdpo_int[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[6]_i_5 
       (.I0(ram_reg_448_511_6_8_n_0),
        .I1(ram_reg_384_447_6_8_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_6_8_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_6_8_n_0),
        .O(\qsdpo_int[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[6]_i_6 
       (.I0(ram_reg_704_767_6_8_n_0),
        .I1(ram_reg_640_703_6_8_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_6_8_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_6_8_n_0),
        .O(\qsdpo_int[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[6]_i_7 
       (.I0(ram_reg_960_1023_6_8_n_0),
        .I1(ram_reg_896_959_6_8_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_6_8_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_6_8_n_0),
        .O(\qsdpo_int[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[7]_i_4 
       (.I0(ram_reg_192_255_6_8_n_1),
        .I1(ram_reg_128_191_6_8_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_6_8_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_6_8_n_1),
        .O(\qsdpo_int[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[7]_i_5 
       (.I0(ram_reg_448_511_6_8_n_1),
        .I1(ram_reg_384_447_6_8_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_6_8_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_6_8_n_1),
        .O(\qsdpo_int[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[7]_i_6 
       (.I0(ram_reg_704_767_6_8_n_1),
        .I1(ram_reg_640_703_6_8_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_6_8_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_6_8_n_1),
        .O(\qsdpo_int[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[7]_i_7 
       (.I0(ram_reg_960_1023_6_8_n_1),
        .I1(ram_reg_896_959_6_8_n_1),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_6_8_n_1),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_6_8_n_1),
        .O(\qsdpo_int[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[8]_i_4 
       (.I0(ram_reg_192_255_6_8_n_2),
        .I1(ram_reg_128_191_6_8_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_6_8_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_6_8_n_2),
        .O(\qsdpo_int[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[8]_i_5 
       (.I0(ram_reg_448_511_6_8_n_2),
        .I1(ram_reg_384_447_6_8_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_6_8_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_6_8_n_2),
        .O(\qsdpo_int[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[8]_i_6 
       (.I0(ram_reg_704_767_6_8_n_2),
        .I1(ram_reg_640_703_6_8_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_6_8_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_6_8_n_2),
        .O(\qsdpo_int[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[8]_i_7 
       (.I0(ram_reg_960_1023_6_8_n_2),
        .I1(ram_reg_896_959_6_8_n_2),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_6_8_n_2),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_6_8_n_2),
        .O(\qsdpo_int[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[9]_i_4 
       (.I0(ram_reg_192_255_9_11_n_0),
        .I1(ram_reg_128_191_9_11_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_64_127_9_11_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_0_63_9_11_n_0),
        .O(\qsdpo_int[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[9]_i_5 
       (.I0(ram_reg_448_511_9_11_n_0),
        .I1(ram_reg_384_447_9_11_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_320_383_9_11_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_256_319_9_11_n_0),
        .O(\qsdpo_int[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[9]_i_6 
       (.I0(ram_reg_704_767_9_11_n_0),
        .I1(ram_reg_640_703_9_11_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_576_639_9_11_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_512_575_9_11_n_0),
        .O(\qsdpo_int[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \qsdpo_int[9]_i_7 
       (.I0(ram_reg_960_1023_9_11_n_0),
        .I1(ram_reg_896_959_9_11_n_0),
        .I2(dpra[7]),
        .I3(ram_reg_832_895_9_11_n_0),
        .I4(dpra[6]),
        .I5(ram_reg_768_831_9_11_n_0),
        .O(\qsdpo_int[9]_i_7_n_0 ));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[0]),
        .Q(qsdpo_int[0]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[0]_i_1 
       (.I0(\qsdpo_int_reg[0]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[0]_i_3_n_0 ),
        .O(sdpo_int[0]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[0]_i_2 
       (.I0(\qsdpo_int[0]_i_4_n_0 ),
        .I1(\qsdpo_int[0]_i_5_n_0 ),
        .O(\qsdpo_int_reg[0]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[0]_i_3 
       (.I0(\qsdpo_int[0]_i_6_n_0 ),
        .I1(\qsdpo_int[0]_i_7_n_0 ),
        .O(\qsdpo_int_reg[0]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[10]),
        .Q(qsdpo_int[10]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[10]_i_1 
       (.I0(\qsdpo_int_reg[10]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[10]_i_3_n_0 ),
        .O(sdpo_int[10]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[10]_i_2 
       (.I0(\qsdpo_int[10]_i_4_n_0 ),
        .I1(\qsdpo_int[10]_i_5_n_0 ),
        .O(\qsdpo_int_reg[10]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[10]_i_3 
       (.I0(\qsdpo_int[10]_i_6_n_0 ),
        .I1(\qsdpo_int[10]_i_7_n_0 ),
        .O(\qsdpo_int_reg[10]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[11]),
        .Q(qsdpo_int[11]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[11]_i_1 
       (.I0(\qsdpo_int_reg[11]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[11]_i_3_n_0 ),
        .O(sdpo_int[11]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[11]_i_2 
       (.I0(\qsdpo_int[11]_i_4_n_0 ),
        .I1(\qsdpo_int[11]_i_5_n_0 ),
        .O(\qsdpo_int_reg[11]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[11]_i_3 
       (.I0(\qsdpo_int[11]_i_6_n_0 ),
        .I1(\qsdpo_int[11]_i_7_n_0 ),
        .O(\qsdpo_int_reg[11]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[12]),
        .Q(qsdpo_int[12]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[12]_i_1 
       (.I0(\qsdpo_int_reg[12]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[12]_i_3_n_0 ),
        .O(sdpo_int[12]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[12]_i_2 
       (.I0(\qsdpo_int[12]_i_4_n_0 ),
        .I1(\qsdpo_int[12]_i_5_n_0 ),
        .O(\qsdpo_int_reg[12]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[12]_i_3 
       (.I0(\qsdpo_int[12]_i_6_n_0 ),
        .I1(\qsdpo_int[12]_i_7_n_0 ),
        .O(\qsdpo_int_reg[12]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[13]),
        .Q(qsdpo_int[13]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[13]_i_1 
       (.I0(\qsdpo_int_reg[13]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[13]_i_3_n_0 ),
        .O(sdpo_int[13]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[13]_i_2 
       (.I0(\qsdpo_int[13]_i_4_n_0 ),
        .I1(\qsdpo_int[13]_i_5_n_0 ),
        .O(\qsdpo_int_reg[13]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[13]_i_3 
       (.I0(\qsdpo_int[13]_i_6_n_0 ),
        .I1(\qsdpo_int[13]_i_7_n_0 ),
        .O(\qsdpo_int_reg[13]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[14]),
        .Q(qsdpo_int[14]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[14]_i_1 
       (.I0(\qsdpo_int_reg[14]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[14]_i_3_n_0 ),
        .O(sdpo_int[14]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[14]_i_2 
       (.I0(\qsdpo_int[14]_i_4_n_0 ),
        .I1(\qsdpo_int[14]_i_5_n_0 ),
        .O(\qsdpo_int_reg[14]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[14]_i_3 
       (.I0(\qsdpo_int[14]_i_6_n_0 ),
        .I1(\qsdpo_int[14]_i_7_n_0 ),
        .O(\qsdpo_int_reg[14]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[15]),
        .Q(qsdpo_int[15]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[15]_i_1 
       (.I0(\qsdpo_int_reg[15]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[15]_i_3_n_0 ),
        .O(sdpo_int[15]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[15]_i_2 
       (.I0(\qsdpo_int[15]_i_4_n_0 ),
        .I1(\qsdpo_int[15]_i_5_n_0 ),
        .O(\qsdpo_int_reg[15]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[15]_i_3 
       (.I0(\qsdpo_int[15]_i_6_n_0 ),
        .I1(\qsdpo_int[15]_i_7_n_0 ),
        .O(\qsdpo_int_reg[15]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[1]),
        .Q(qsdpo_int[1]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[1]_i_1 
       (.I0(\qsdpo_int_reg[1]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[1]_i_3_n_0 ),
        .O(sdpo_int[1]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[1]_i_2 
       (.I0(\qsdpo_int[1]_i_4_n_0 ),
        .I1(\qsdpo_int[1]_i_5_n_0 ),
        .O(\qsdpo_int_reg[1]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[1]_i_3 
       (.I0(\qsdpo_int[1]_i_6_n_0 ),
        .I1(\qsdpo_int[1]_i_7_n_0 ),
        .O(\qsdpo_int_reg[1]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[2]),
        .Q(qsdpo_int[2]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[2]_i_1 
       (.I0(\qsdpo_int_reg[2]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[2]_i_3_n_0 ),
        .O(sdpo_int[2]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[2]_i_2 
       (.I0(\qsdpo_int[2]_i_4_n_0 ),
        .I1(\qsdpo_int[2]_i_5_n_0 ),
        .O(\qsdpo_int_reg[2]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[2]_i_3 
       (.I0(\qsdpo_int[2]_i_6_n_0 ),
        .I1(\qsdpo_int[2]_i_7_n_0 ),
        .O(\qsdpo_int_reg[2]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[3]),
        .Q(qsdpo_int[3]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[3]_i_1 
       (.I0(\qsdpo_int_reg[3]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[3]_i_3_n_0 ),
        .O(sdpo_int[3]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[3]_i_2 
       (.I0(\qsdpo_int[3]_i_4_n_0 ),
        .I1(\qsdpo_int[3]_i_5_n_0 ),
        .O(\qsdpo_int_reg[3]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[3]_i_3 
       (.I0(\qsdpo_int[3]_i_6_n_0 ),
        .I1(\qsdpo_int[3]_i_7_n_0 ),
        .O(\qsdpo_int_reg[3]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[4]),
        .Q(qsdpo_int[4]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[4]_i_1 
       (.I0(\qsdpo_int_reg[4]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[4]_i_3_n_0 ),
        .O(sdpo_int[4]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[4]_i_2 
       (.I0(\qsdpo_int[4]_i_4_n_0 ),
        .I1(\qsdpo_int[4]_i_5_n_0 ),
        .O(\qsdpo_int_reg[4]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[4]_i_3 
       (.I0(\qsdpo_int[4]_i_6_n_0 ),
        .I1(\qsdpo_int[4]_i_7_n_0 ),
        .O(\qsdpo_int_reg[4]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[5]),
        .Q(qsdpo_int[5]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[5]_i_1 
       (.I0(\qsdpo_int_reg[5]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[5]_i_3_n_0 ),
        .O(sdpo_int[5]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[5]_i_2 
       (.I0(\qsdpo_int[5]_i_4_n_0 ),
        .I1(\qsdpo_int[5]_i_5_n_0 ),
        .O(\qsdpo_int_reg[5]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[5]_i_3 
       (.I0(\qsdpo_int[5]_i_6_n_0 ),
        .I1(\qsdpo_int[5]_i_7_n_0 ),
        .O(\qsdpo_int_reg[5]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[6]),
        .Q(qsdpo_int[6]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[6]_i_1 
       (.I0(\qsdpo_int_reg[6]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[6]_i_3_n_0 ),
        .O(sdpo_int[6]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[6]_i_2 
       (.I0(\qsdpo_int[6]_i_4_n_0 ),
        .I1(\qsdpo_int[6]_i_5_n_0 ),
        .O(\qsdpo_int_reg[6]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[6]_i_3 
       (.I0(\qsdpo_int[6]_i_6_n_0 ),
        .I1(\qsdpo_int[6]_i_7_n_0 ),
        .O(\qsdpo_int_reg[6]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[7]),
        .Q(qsdpo_int[7]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[7]_i_1 
       (.I0(\qsdpo_int_reg[7]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[7]_i_3_n_0 ),
        .O(sdpo_int[7]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[7]_i_2 
       (.I0(\qsdpo_int[7]_i_4_n_0 ),
        .I1(\qsdpo_int[7]_i_5_n_0 ),
        .O(\qsdpo_int_reg[7]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[7]_i_3 
       (.I0(\qsdpo_int[7]_i_6_n_0 ),
        .I1(\qsdpo_int[7]_i_7_n_0 ),
        .O(\qsdpo_int_reg[7]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[8]),
        .Q(qsdpo_int[8]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[8]_i_1 
       (.I0(\qsdpo_int_reg[8]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[8]_i_3_n_0 ),
        .O(sdpo_int[8]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[8]_i_2 
       (.I0(\qsdpo_int[8]_i_4_n_0 ),
        .I1(\qsdpo_int[8]_i_5_n_0 ),
        .O(\qsdpo_int_reg[8]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[8]_i_3 
       (.I0(\qsdpo_int[8]_i_6_n_0 ),
        .I1(\qsdpo_int[8]_i_7_n_0 ),
        .O(\qsdpo_int_reg[8]_i_3_n_0 ),
        .S(dpra[8]));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qsdpo_int_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(sdpo_int[9]),
        .Q(qsdpo_int[9]),
        .R(1'b0));
  MUXF8 \qsdpo_int_reg[9]_i_1 
       (.I0(\qsdpo_int_reg[9]_i_2_n_0 ),
        .I1(\qsdpo_int_reg[9]_i_3_n_0 ),
        .O(sdpo_int[9]),
        .S(dpra[9]));
  MUXF7 \qsdpo_int_reg[9]_i_2 
       (.I0(\qsdpo_int[9]_i_4_n_0 ),
        .I1(\qsdpo_int[9]_i_5_n_0 ),
        .O(\qsdpo_int_reg[9]_i_2_n_0 ),
        .S(dpra[8]));
  MUXF7 \qsdpo_int_reg[9]_i_3 
       (.I0(\qsdpo_int[9]_i_6_n_0 ),
        .I1(\qsdpo_int[9]_i_7_n_0 ),
        .O(\qsdpo_int_reg[9]_i_3_n_0 ),
        .S(dpra[8]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_0_63_0_2_n_0),
        .DOB(ram_reg_0_63_0_2_n_1),
        .DOC(ram_reg_0_63_0_2_n_2),
        .DOD(NLW_ram_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_0_63_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    ram_reg_0_63_0_2_i_1
       (.I0(we),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[9]),
        .I4(a[8]),
        .O(ram_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_0_63_12_14_n_0),
        .DOB(ram_reg_0_63_12_14_n_1),
        .DOC(ram_reg_0_63_12_14_n_2),
        .DOD(NLW_ram_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_0_63_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_0_63_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_0_63_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_0_63_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_0_63_3_5_n_0),
        .DOB(ram_reg_0_63_3_5_n_1),
        .DOC(ram_reg_0_63_3_5_n_2),
        .DOD(NLW_ram_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_0_63_6_8_n_0),
        .DOB(ram_reg_0_63_6_8_n_1),
        .DOC(ram_reg_0_63_6_8_n_2),
        .DOD(NLW_ram_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_0_63_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_0_63_9_11_n_0),
        .DOB(ram_reg_0_63_9_11_n_1),
        .DOC(ram_reg_0_63_9_11_n_2),
        .DOD(NLW_ram_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_128_191_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_128_191_0_2_n_0),
        .DOB(ram_reg_128_191_0_2_n_1),
        .DOC(ram_reg_128_191_0_2_n_2),
        .DOD(NLW_ram_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_128_191_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    ram_reg_128_191_0_2_i_1
       (.I0(we),
        .I1(a[8]),
        .I2(a[6]),
        .I3(a[9]),
        .I4(a[7]),
        .O(ram_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_128_191_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_128_191_12_14_n_0),
        .DOB(ram_reg_128_191_12_14_n_1),
        .DOC(ram_reg_128_191_12_14_n_2),
        .DOD(NLW_ram_reg_128_191_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_128_191_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_128_191_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_128_191_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_128_191_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_128_191_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_128_191_3_5_n_0),
        .DOB(ram_reg_128_191_3_5_n_1),
        .DOC(ram_reg_128_191_3_5_n_2),
        .DOD(NLW_ram_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_128_191_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_128_191_6_8_n_0),
        .DOB(ram_reg_128_191_6_8_n_1),
        .DOC(ram_reg_128_191_6_8_n_2),
        .DOD(NLW_ram_reg_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_128_191_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_128_191_9_11_n_0),
        .DOB(ram_reg_128_191_9_11_n_1),
        .DOC(ram_reg_128_191_9_11_n_2),
        .DOD(NLW_ram_reg_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_192_255_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_192_255_0_2_n_0),
        .DOB(ram_reg_192_255_0_2_n_1),
        .DOC(ram_reg_192_255_0_2_n_2),
        .DOD(NLW_ram_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_192_255_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    ram_reg_192_255_0_2_i_1
       (.I0(a[9]),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[8]),
        .I4(we),
        .O(ram_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_192_255_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_192_255_12_14_n_0),
        .DOB(ram_reg_192_255_12_14_n_1),
        .DOC(ram_reg_192_255_12_14_n_2),
        .DOD(NLW_ram_reg_192_255_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_192_255_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_192_255_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_192_255_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_192_255_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_192_255_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_192_255_3_5_n_0),
        .DOB(ram_reg_192_255_3_5_n_1),
        .DOC(ram_reg_192_255_3_5_n_2),
        .DOD(NLW_ram_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_192_255_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_192_255_6_8_n_0),
        .DOB(ram_reg_192_255_6_8_n_1),
        .DOC(ram_reg_192_255_6_8_n_2),
        .DOD(NLW_ram_reg_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_192_255_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_192_255_9_11_n_0),
        .DOB(ram_reg_192_255_9_11_n_1),
        .DOC(ram_reg_192_255_9_11_n_2),
        .DOD(NLW_ram_reg_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_256_319_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_256_319_0_2_n_0),
        .DOB(ram_reg_256_319_0_2_n_1),
        .DOC(ram_reg_256_319_0_2_n_2),
        .DOD(NLW_ram_reg_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_256_319_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    ram_reg_256_319_0_2_i_1
       (.I0(we),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[9]),
        .I4(a[8]),
        .O(ram_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_256_319_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_256_319_12_14_n_0),
        .DOB(ram_reg_256_319_12_14_n_1),
        .DOC(ram_reg_256_319_12_14_n_2),
        .DOD(NLW_ram_reg_256_319_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_256_319_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_256_319_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_256_319_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_256_319_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_256_319_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_256_319_3_5_n_0),
        .DOB(ram_reg_256_319_3_5_n_1),
        .DOC(ram_reg_256_319_3_5_n_2),
        .DOD(NLW_ram_reg_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_256_319_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_256_319_6_8_n_0),
        .DOB(ram_reg_256_319_6_8_n_1),
        .DOC(ram_reg_256_319_6_8_n_2),
        .DOD(NLW_ram_reg_256_319_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_256_319_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_256_319_9_11_n_0),
        .DOB(ram_reg_256_319_9_11_n_1),
        .DOC(ram_reg_256_319_9_11_n_2),
        .DOD(NLW_ram_reg_256_319_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_320_383_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_320_383_0_2_n_0),
        .DOB(ram_reg_320_383_0_2_n_1),
        .DOC(ram_reg_320_383_0_2_n_2),
        .DOD(NLW_ram_reg_320_383_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_320_383_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    ram_reg_320_383_0_2_i_1
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[6]),
        .I3(a[7]),
        .I4(we),
        .O(ram_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_320_383_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_320_383_12_14_n_0),
        .DOB(ram_reg_320_383_12_14_n_1),
        .DOC(ram_reg_320_383_12_14_n_2),
        .DOD(NLW_ram_reg_320_383_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_320_383_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_320_383_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_320_383_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_320_383_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_320_383_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_320_383_3_5_n_0),
        .DOB(ram_reg_320_383_3_5_n_1),
        .DOC(ram_reg_320_383_3_5_n_2),
        .DOD(NLW_ram_reg_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_320_383_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_320_383_6_8_n_0),
        .DOB(ram_reg_320_383_6_8_n_1),
        .DOC(ram_reg_320_383_6_8_n_2),
        .DOD(NLW_ram_reg_320_383_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_320_383_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_320_383_9_11_n_0),
        .DOB(ram_reg_320_383_9_11_n_1),
        .DOC(ram_reg_320_383_9_11_n_2),
        .DOD(NLW_ram_reg_320_383_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_384_447_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_384_447_0_2_n_0),
        .DOB(ram_reg_384_447_0_2_n_1),
        .DOC(ram_reg_384_447_0_2_n_2),
        .DOD(NLW_ram_reg_384_447_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_384_447_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    ram_reg_384_447_0_2_i_1
       (.I0(a[9]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[6]),
        .I4(we),
        .O(ram_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_384_447_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_384_447_12_14_n_0),
        .DOB(ram_reg_384_447_12_14_n_1),
        .DOC(ram_reg_384_447_12_14_n_2),
        .DOD(NLW_ram_reg_384_447_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_384_447_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_384_447_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_384_447_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_384_447_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_384_447_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_384_447_3_5_n_0),
        .DOB(ram_reg_384_447_3_5_n_1),
        .DOC(ram_reg_384_447_3_5_n_2),
        .DOD(NLW_ram_reg_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_384_447_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_384_447_6_8_n_0),
        .DOB(ram_reg_384_447_6_8_n_1),
        .DOC(ram_reg_384_447_6_8_n_2),
        .DOD(NLW_ram_reg_384_447_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_384_447_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_384_447_9_11_n_0),
        .DOB(ram_reg_384_447_9_11_n_1),
        .DOC(ram_reg_384_447_9_11_n_2),
        .DOD(NLW_ram_reg_384_447_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_448_511_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_448_511_0_2_n_0),
        .DOB(ram_reg_448_511_0_2_n_1),
        .DOC(ram_reg_448_511_0_2_n_2),
        .DOD(NLW_ram_reg_448_511_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_448_511_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    ram_reg_448_511_0_2_i_1
       (.I0(a[9]),
        .I1(a[7]),
        .I2(a[6]),
        .I3(we),
        .I4(a[8]),
        .O(ram_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_448_511_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_448_511_12_14_n_0),
        .DOB(ram_reg_448_511_12_14_n_1),
        .DOC(ram_reg_448_511_12_14_n_2),
        .DOD(NLW_ram_reg_448_511_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_448_511_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_448_511_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_448_511_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_448_511_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_448_511_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_448_511_3_5_n_0),
        .DOB(ram_reg_448_511_3_5_n_1),
        .DOC(ram_reg_448_511_3_5_n_2),
        .DOD(NLW_ram_reg_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_448_511_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_448_511_6_8_n_0),
        .DOB(ram_reg_448_511_6_8_n_1),
        .DOC(ram_reg_448_511_6_8_n_2),
        .DOD(NLW_ram_reg_448_511_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_448_511_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_448_511_9_11_n_0),
        .DOB(ram_reg_448_511_9_11_n_1),
        .DOC(ram_reg_448_511_9_11_n_2),
        .DOD(NLW_ram_reg_448_511_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_512_575_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_512_575_0_2_n_0),
        .DOB(ram_reg_512_575_0_2_n_1),
        .DOC(ram_reg_512_575_0_2_n_2),
        .DOD(NLW_ram_reg_512_575_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_512_575_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    ram_reg_512_575_0_2_i_1
       (.I0(we),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[8]),
        .I4(a[9]),
        .O(ram_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_512_575_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_512_575_12_14_n_0),
        .DOB(ram_reg_512_575_12_14_n_1),
        .DOC(ram_reg_512_575_12_14_n_2),
        .DOD(NLW_ram_reg_512_575_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_512_575_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_512_575_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_512_575_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_512_575_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_512_575_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_512_575_3_5_n_0),
        .DOB(ram_reg_512_575_3_5_n_1),
        .DOC(ram_reg_512_575_3_5_n_2),
        .DOD(NLW_ram_reg_512_575_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_512_575_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_512_575_6_8_n_0),
        .DOB(ram_reg_512_575_6_8_n_1),
        .DOC(ram_reg_512_575_6_8_n_2),
        .DOD(NLW_ram_reg_512_575_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_512_575_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_512_575_9_11_n_0),
        .DOB(ram_reg_512_575_9_11_n_1),
        .DOC(ram_reg_512_575_9_11_n_2),
        .DOD(NLW_ram_reg_512_575_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_576_639_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_576_639_0_2_n_0),
        .DOB(ram_reg_576_639_0_2_n_1),
        .DOC(ram_reg_576_639_0_2_n_2),
        .DOD(NLW_ram_reg_576_639_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_576_639_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    ram_reg_576_639_0_2_i_1
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[6]),
        .I3(a[7]),
        .I4(we),
        .O(ram_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_576_639_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_576_639_12_14_n_0),
        .DOB(ram_reg_576_639_12_14_n_1),
        .DOC(ram_reg_576_639_12_14_n_2),
        .DOD(NLW_ram_reg_576_639_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_576_639_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_576_639_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_576_639_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_576_639_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_576_639_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_576_639_3_5_n_0),
        .DOB(ram_reg_576_639_3_5_n_1),
        .DOC(ram_reg_576_639_3_5_n_2),
        .DOD(NLW_ram_reg_576_639_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_576_639_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_576_639_6_8_n_0),
        .DOB(ram_reg_576_639_6_8_n_1),
        .DOC(ram_reg_576_639_6_8_n_2),
        .DOD(NLW_ram_reg_576_639_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_576_639_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_576_639_9_11_n_0),
        .DOB(ram_reg_576_639_9_11_n_1),
        .DOC(ram_reg_576_639_9_11_n_2),
        .DOD(NLW_ram_reg_576_639_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_640_703_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_640_703_0_2_n_0),
        .DOB(ram_reg_640_703_0_2_n_1),
        .DOC(ram_reg_640_703_0_2_n_2),
        .DOD(NLW_ram_reg_640_703_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_640_703_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    ram_reg_640_703_0_2_i_1
       (.I0(a[8]),
        .I1(a[9]),
        .I2(a[7]),
        .I3(a[6]),
        .I4(we),
        .O(ram_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_640_703_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_640_703_12_14_n_0),
        .DOB(ram_reg_640_703_12_14_n_1),
        .DOC(ram_reg_640_703_12_14_n_2),
        .DOD(NLW_ram_reg_640_703_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_640_703_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_640_703_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_640_703_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_640_703_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_640_703_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_640_703_3_5_n_0),
        .DOB(ram_reg_640_703_3_5_n_1),
        .DOC(ram_reg_640_703_3_5_n_2),
        .DOD(NLW_ram_reg_640_703_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_640_703_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_640_703_6_8_n_0),
        .DOB(ram_reg_640_703_6_8_n_1),
        .DOC(ram_reg_640_703_6_8_n_2),
        .DOD(NLW_ram_reg_640_703_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_640_703_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_640_703_9_11_n_0),
        .DOB(ram_reg_640_703_9_11_n_1),
        .DOC(ram_reg_640_703_9_11_n_2),
        .DOD(NLW_ram_reg_640_703_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_64_127_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_64_127_0_2_n_0),
        .DOB(ram_reg_64_127_0_2_n_1),
        .DOC(ram_reg_64_127_0_2_n_2),
        .DOD(NLW_ram_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_64_127_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    ram_reg_64_127_0_2_i_1
       (.I0(we),
        .I1(a[8]),
        .I2(a[7]),
        .I3(a[9]),
        .I4(a[6]),
        .O(ram_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_64_127_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_64_127_12_14_n_0),
        .DOB(ram_reg_64_127_12_14_n_1),
        .DOC(ram_reg_64_127_12_14_n_2),
        .DOD(NLW_ram_reg_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_64_127_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_64_127_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_64_127_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_64_127_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_64_127_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_64_127_3_5_n_0),
        .DOB(ram_reg_64_127_3_5_n_1),
        .DOC(ram_reg_64_127_3_5_n_2),
        .DOD(NLW_ram_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_64_127_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_64_127_6_8_n_0),
        .DOB(ram_reg_64_127_6_8_n_1),
        .DOC(ram_reg_64_127_6_8_n_2),
        .DOD(NLW_ram_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_64_127_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_64_127_9_11_n_0),
        .DOB(ram_reg_64_127_9_11_n_1),
        .DOC(ram_reg_64_127_9_11_n_2),
        .DOD(NLW_ram_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_704_767_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_704_767_0_2_n_0),
        .DOB(ram_reg_704_767_0_2_n_1),
        .DOC(ram_reg_704_767_0_2_n_2),
        .DOD(NLW_ram_reg_704_767_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_704_767_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    ram_reg_704_767_0_2_i_1
       (.I0(a[8]),
        .I1(a[7]),
        .I2(a[6]),
        .I3(we),
        .I4(a[9]),
        .O(ram_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_704_767_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_704_767_12_14_n_0),
        .DOB(ram_reg_704_767_12_14_n_1),
        .DOC(ram_reg_704_767_12_14_n_2),
        .DOD(NLW_ram_reg_704_767_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_704_767_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_704_767_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_704_767_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_704_767_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_704_767_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_704_767_3_5_n_0),
        .DOB(ram_reg_704_767_3_5_n_1),
        .DOC(ram_reg_704_767_3_5_n_2),
        .DOD(NLW_ram_reg_704_767_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_704_767_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_704_767_6_8_n_0),
        .DOB(ram_reg_704_767_6_8_n_1),
        .DOC(ram_reg_704_767_6_8_n_2),
        .DOD(NLW_ram_reg_704_767_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_704_767_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_704_767_9_11_n_0),
        .DOB(ram_reg_704_767_9_11_n_1),
        .DOC(ram_reg_704_767_9_11_n_2),
        .DOD(NLW_ram_reg_704_767_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_768_831_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_768_831_0_2_n_0),
        .DOB(ram_reg_768_831_0_2_n_1),
        .DOC(ram_reg_768_831_0_2_n_2),
        .DOD(NLW_ram_reg_768_831_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_768_831_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    ram_reg_768_831_0_2_i_1
       (.I0(a[7]),
        .I1(a[9]),
        .I2(a[8]),
        .I3(a[6]),
        .I4(we),
        .O(ram_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_768_831_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_768_831_12_14_n_0),
        .DOB(ram_reg_768_831_12_14_n_1),
        .DOC(ram_reg_768_831_12_14_n_2),
        .DOD(NLW_ram_reg_768_831_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_768_831_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_768_831_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_768_831_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_768_831_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_768_831_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_768_831_3_5_n_0),
        .DOB(ram_reg_768_831_3_5_n_1),
        .DOC(ram_reg_768_831_3_5_n_2),
        .DOD(NLW_ram_reg_768_831_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_768_831_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_768_831_6_8_n_0),
        .DOB(ram_reg_768_831_6_8_n_1),
        .DOC(ram_reg_768_831_6_8_n_2),
        .DOD(NLW_ram_reg_768_831_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_768_831_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_768_831_9_11_n_0),
        .DOB(ram_reg_768_831_9_11_n_1),
        .DOC(ram_reg_768_831_9_11_n_2),
        .DOD(NLW_ram_reg_768_831_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_832_895_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_832_895_0_2_n_0),
        .DOB(ram_reg_832_895_0_2_n_1),
        .DOC(ram_reg_832_895_0_2_n_2),
        .DOD(NLW_ram_reg_832_895_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_832_895_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    ram_reg_832_895_0_2_i_1
       (.I0(a[7]),
        .I1(a[8]),
        .I2(a[6]),
        .I3(we),
        .I4(a[9]),
        .O(ram_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_832_895_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_832_895_12_14_n_0),
        .DOB(ram_reg_832_895_12_14_n_1),
        .DOC(ram_reg_832_895_12_14_n_2),
        .DOD(NLW_ram_reg_832_895_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_832_895_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_832_895_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_832_895_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_832_895_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_832_895_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_832_895_3_5_n_0),
        .DOB(ram_reg_832_895_3_5_n_1),
        .DOC(ram_reg_832_895_3_5_n_2),
        .DOD(NLW_ram_reg_832_895_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_832_895_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_832_895_6_8_n_0),
        .DOB(ram_reg_832_895_6_8_n_1),
        .DOC(ram_reg_832_895_6_8_n_2),
        .DOD(NLW_ram_reg_832_895_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_832_895_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_832_895_9_11_n_0),
        .DOB(ram_reg_832_895_9_11_n_1),
        .DOC(ram_reg_832_895_9_11_n_2),
        .DOD(NLW_ram_reg_832_895_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_896_959_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_896_959_0_2_n_0),
        .DOB(ram_reg_896_959_0_2_n_1),
        .DOC(ram_reg_896_959_0_2_n_2),
        .DOD(NLW_ram_reg_896_959_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_896_959_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    ram_reg_896_959_0_2_i_1
       (.I0(a[6]),
        .I1(a[8]),
        .I2(a[7]),
        .I3(we),
        .I4(a[9]),
        .O(ram_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_896_959_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_896_959_12_14_n_0),
        .DOB(ram_reg_896_959_12_14_n_1),
        .DOC(ram_reg_896_959_12_14_n_2),
        .DOD(NLW_ram_reg_896_959_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_896_959_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_896_959_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_896_959_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_896_959_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_896_959_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_896_959_3_5_n_0),
        .DOB(ram_reg_896_959_3_5_n_1),
        .DOC(ram_reg_896_959_3_5_n_2),
        .DOD(NLW_ram_reg_896_959_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_896_959_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_896_959_6_8_n_0),
        .DOB(ram_reg_896_959_6_8_n_1),
        .DOC(ram_reg_896_959_6_8_n_2),
        .DOD(NLW_ram_reg_896_959_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_896_959_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_896_959_9_11_n_0),
        .DOB(ram_reg_896_959_9_11_n_1),
        .DOC(ram_reg_896_959_9_11_n_2),
        .DOD(NLW_ram_reg_896_959_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_960_1023_0_2
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[0]),
        .DIB(d[1]),
        .DIC(d[2]),
        .DID(1'b0),
        .DOA(ram_reg_960_1023_0_2_n_0),
        .DOB(ram_reg_960_1023_0_2_n_1),
        .DOC(ram_reg_960_1023_0_2_n_2),
        .DOD(NLW_ram_reg_960_1023_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_960_1023_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    ram_reg_960_1023_0_2_i_1
       (.I0(we),
        .I1(a[7]),
        .I2(a[6]),
        .I3(a[9]),
        .I4(a[8]),
        .O(ram_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_960_1023_12_14
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[12]),
        .DIB(d[13]),
        .DIC(d[14]),
        .DID(1'b0),
        .DOA(ram_reg_960_1023_12_14_n_0),
        .DOB(ram_reg_960_1023_12_14_n_1),
        .DOC(ram_reg_960_1023_12_14_n_2),
        .DOD(NLW_ram_reg_960_1023_12_14_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_960_1023_0_2_i_1_n_0));
  RAM64X1D #(
    .INIT(64'h0000000000000000)) 
    ram_reg_960_1023_15_15
       (.A0(a[0]),
        .A1(a[1]),
        .A2(a[2]),
        .A3(a[3]),
        .A4(a[4]),
        .A5(a[5]),
        .D(d[15]),
        .DPO(ram_reg_960_1023_15_15_n_0),
        .DPRA0(dpra[0]),
        .DPRA1(dpra[1]),
        .DPRA2(dpra[2]),
        .DPRA3(dpra[3]),
        .DPRA4(dpra[4]),
        .DPRA5(dpra[5]),
        .SPO(NLW_ram_reg_960_1023_15_15_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_960_1023_3_5
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[3]),
        .DIB(d[4]),
        .DIC(d[5]),
        .DID(1'b0),
        .DOA(ram_reg_960_1023_3_5_n_0),
        .DOB(ram_reg_960_1023_3_5_n_1),
        .DOC(ram_reg_960_1023_3_5_n_2),
        .DOD(NLW_ram_reg_960_1023_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_960_1023_6_8
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[6]),
        .DIB(d[7]),
        .DIC(d[8]),
        .DID(1'b0),
        .DOA(ram_reg_960_1023_6_8_n_0),
        .DOB(ram_reg_960_1023_6_8_n_1),
        .DOC(ram_reg_960_1023_6_8_n_2),
        .DOD(NLW_ram_reg_960_1023_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    ram_reg_960_1023_9_11
       (.ADDRA(dpra[5:0]),
        .ADDRB(dpra[5:0]),
        .ADDRC(dpra[5:0]),
        .ADDRD(a[5:0]),
        .DIA(d[9]),
        .DIB(d[10]),
        .DIC(d[11]),
        .DID(1'b0),
        .DOA(ram_reg_960_1023_9_11_n_0),
        .DOB(ram_reg_960_1023_9_11_n_1),
        .DOC(ram_reg_960_1023_9_11_n_2),
        .DOD(NLW_ram_reg_960_1023_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(ram_reg_960_1023_0_2_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
