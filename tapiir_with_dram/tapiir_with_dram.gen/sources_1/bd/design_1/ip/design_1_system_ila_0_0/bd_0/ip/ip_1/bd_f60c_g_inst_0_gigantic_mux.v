// file: bd_f60c_g_inst_0.v
//////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version : 1.0
//  \   \         Application : giga mux
//  /   /         Filename : bd_f60c_g_inst_0_gigantic_mux.v
// /___/   /\     
// \   \  /  \ 
//  \___\/\___\
//
// (c) Copyright 2010 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.



`timescale 1ns / 1ps

module bd_f60c_g_inst_0_gigantic_mux # (
   
   parameter integer C_NUM_MONITOR_SLOTS = 1,
   parameter integer C_MUX_LEVEL = "1", // "2", "3", "4"
   
   parameter C_AXI_CH_SEL = "ALL", //"AR", "AW", "R", "W", "B", "A_R", "A_W_B", "C"
   parameter C_SYNC_EN = "false",

   parameter C_SLOT_0_AXI_CH_SEL = "ALL",
   parameter C_SLOT_0_AXI_AW_SEL = 1,
   parameter C_SLOT_0_AXI_AR_SEL = 1,
   parameter C_SLOT_0_AXI_W_SEL = 1,
   parameter C_SLOT_0_AXI_R_SEL = 1,
   parameter C_SLOT_0_AXI_B_SEL = 1,
   parameter C_SLOT_1_AXI_CH_SEL = "ALL",
   parameter C_SLOT_1_AXI_AW_SEL = 1,
   parameter C_SLOT_1_AXI_AR_SEL = 1,
   parameter C_SLOT_1_AXI_W_SEL = 1,
   parameter C_SLOT_1_AXI_R_SEL = 1,
   parameter C_SLOT_1_AXI_B_SEL = 1,
   parameter C_SLOT_2_AXI_CH_SEL = "ALL",
   parameter C_SLOT_2_AXI_AW_SEL = 1,
   parameter C_SLOT_2_AXI_AR_SEL = 1,
   parameter C_SLOT_2_AXI_W_SEL = 1,
   parameter C_SLOT_2_AXI_R_SEL = 1,
   parameter C_SLOT_2_AXI_B_SEL = 1,
   parameter C_SLOT_3_AXI_CH_SEL = "ALL",
   parameter C_SLOT_3_AXI_AW_SEL = 1,
   parameter C_SLOT_3_AXI_AR_SEL = 1,
   parameter C_SLOT_3_AXI_W_SEL = 1,
   parameter C_SLOT_3_AXI_R_SEL = 1,
   parameter C_SLOT_3_AXI_B_SEL = 1,
   parameter C_SLOT_4_AXI_CH_SEL = "ALL",
   parameter C_SLOT_4_AXI_AW_SEL = 1,
   parameter C_SLOT_4_AXI_AR_SEL = 1,
   parameter C_SLOT_4_AXI_W_SEL = 1,
   parameter C_SLOT_4_AXI_R_SEL = 1,
   parameter C_SLOT_4_AXI_B_SEL = 1,
   parameter C_SLOT_5_AXI_CH_SEL = "ALL",
   parameter C_SLOT_5_AXI_AW_SEL = 1,
   parameter C_SLOT_5_AXI_AR_SEL = 1,
   parameter C_SLOT_5_AXI_W_SEL = 1,
   parameter C_SLOT_5_AXI_R_SEL = 1,
   parameter C_SLOT_5_AXI_B_SEL = 1,
   parameter C_SLOT_6_AXI_CH_SEL = "ALL",
   parameter C_SLOT_6_AXI_AW_SEL = 1,
   parameter C_SLOT_6_AXI_AR_SEL = 1,
   parameter C_SLOT_6_AXI_W_SEL = 1,
   parameter C_SLOT_6_AXI_R_SEL = 1,
   parameter C_SLOT_6_AXI_B_SEL = 1,
   parameter C_SLOT_7_AXI_CH_SEL = "ALL",
   parameter C_SLOT_7_AXI_AW_SEL = 1,
   parameter C_SLOT_7_AXI_AR_SEL = 1,
   parameter C_SLOT_7_AXI_W_SEL = 1,
   parameter C_SLOT_7_AXI_R_SEL = 1,
   parameter C_SLOT_7_AXI_B_SEL = 1,
   parameter C_SLOT_8_AXI_CH_SEL = "ALL",
   parameter C_SLOT_8_AXI_AW_SEL = 1,
   parameter C_SLOT_8_AXI_AR_SEL = 1,
   parameter C_SLOT_8_AXI_W_SEL = 1,
   parameter C_SLOT_8_AXI_R_SEL = 1,
   parameter C_SLOT_8_AXI_B_SEL = 1,
   parameter C_SLOT_9_AXI_CH_SEL = "ALL",
   parameter C_SLOT_9_AXI_AW_SEL = 1,
   parameter C_SLOT_9_AXI_AR_SEL = 1,
   parameter C_SLOT_9_AXI_W_SEL = 1,
   parameter C_SLOT_9_AXI_R_SEL = 1,
   parameter C_SLOT_9_AXI_B_SEL = 1,
   parameter C_SLOT_10_AXI_CH_SEL = "ALL",
   parameter C_SLOT_10_AXI_AW_SEL = 1,
   parameter C_SLOT_10_AXI_AR_SEL = 1,
   parameter C_SLOT_10_AXI_W_SEL = 1,
   parameter C_SLOT_10_AXI_R_SEL = 1,
   parameter C_SLOT_10_AXI_B_SEL = 1,
   parameter C_SLOT_11_AXI_CH_SEL = "ALL",
   parameter C_SLOT_11_AXI_AW_SEL = 1,
   parameter C_SLOT_11_AXI_AR_SEL = 1,
   parameter C_SLOT_11_AXI_W_SEL = 1,
   parameter C_SLOT_11_AXI_R_SEL = 1,
   parameter C_SLOT_11_AXI_B_SEL = 1,
   parameter C_SLOT_12_AXI_CH_SEL = "ALL",
   parameter C_SLOT_12_AXI_AW_SEL = 1,
   parameter C_SLOT_12_AXI_AR_SEL = 1,
   parameter C_SLOT_12_AXI_W_SEL = 1,
   parameter C_SLOT_12_AXI_R_SEL = 1,
   parameter C_SLOT_12_AXI_B_SEL = 1,
   parameter C_SLOT_13_AXI_CH_SEL = "ALL",
   parameter C_SLOT_13_AXI_AW_SEL = 1,
   parameter C_SLOT_13_AXI_AR_SEL = 1,
   parameter C_SLOT_13_AXI_W_SEL = 1,
   parameter C_SLOT_13_AXI_R_SEL = 1,
   parameter C_SLOT_13_AXI_B_SEL = 1,
   parameter C_SLOT_14_AXI_CH_SEL = "ALL",
   parameter C_SLOT_14_AXI_AW_SEL = 1,
   parameter C_SLOT_14_AXI_AR_SEL = 1,
   parameter C_SLOT_14_AXI_W_SEL = 1,
   parameter C_SLOT_14_AXI_R_SEL = 1,
   parameter C_SLOT_14_AXI_B_SEL = 1,
   parameter C_SLOT_15_AXI_CH_SEL = "ALL",
   parameter C_SLOT_15_AXI_AW_SEL = 1,
   parameter C_SLOT_15_AXI_AR_SEL = 1,
   parameter C_SLOT_15_AXI_W_SEL = 1,
   parameter C_SLOT_15_AXI_R_SEL = 1,
   parameter C_SLOT_15_AXI_B_SEL = 1,
  
   parameter C_SLOT_0_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_1_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_2_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_3_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_4_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_5_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_6_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_7_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_8_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_9_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_10_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_11_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_12_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_13_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_14_MON_MODE = "RT",  // "FT"                     
   parameter C_SLOT_15_MON_MODE = "RT",  // "FT"                     

   parameter C_MUX_0_AXI_ID_WIDTH           = 4,
   parameter C_MUX_0_AXI_AWUSER_WIDTH       = 1,
   parameter C_MUX_0_AXI_WUSER_WIDTH        = 1,
   parameter C_MUX_0_AXI_BUSER_WIDTH        = 1,
   parameter C_MUX_0_AXI_ARUSER_WIDTH       = 1,
   parameter C_MUX_0_AXI_RUSER_WIDTH        = 1,
   parameter C_MUX_0_AXI_AXLEN_WIDTH        = 1,
   parameter C_MUX_0_AXI_AXLOCK_WIDTH         = 1,
   
   parameter C_MUX_0_HAS_BRESP         = 1,
   parameter C_MUX_0_HAS_BURST         = 1,
   parameter C_MUX_0_HAS_CACHE         = 1,
   parameter C_MUX_0_HAS_LOCK         = 1,
   parameter C_MUX_0_HAS_PROT         = 1,
   parameter C_MUX_0_HAS_QOS         = 1,
   parameter C_MUX_0_HAS_REGION         = 1,
   parameter C_MUX_0_HAS_RRESP         = 1,
   parameter C_MUX_0_HAS_WSTRB         = 1,
   parameter C_MUX_0_HAS_TSTRB         = 1,
   parameter C_MUX_0_HAS_TKEEP         = 1,
   
   parameter C_MUX_0_AXI_ADDR_WIDTH         = 32,
   parameter C_MUX_0_AXI_DATA_WIDTH         = 32,
   parameter C_MUX_0_AXI_PROTOCOL           = "AXI4",
   parameter C_MUX_0_AXIS_TDATA_WIDTH       = 32,
   parameter C_MUX_0_AXIS_TID_WIDTH         = 1,
   parameter C_MUX_0_AXIS_TDEST_WIDTH       = 1,
   parameter C_MUX_0_AXIS_TUSER_WIDTH       = 1,
   parameter C_MUX_1_AXI_ID_WIDTH           = 4,
   parameter C_MUX_1_AXI_AWUSER_WIDTH       = 1,
   parameter C_MUX_1_AXI_WUSER_WIDTH        = 1,
   parameter C_MUX_1_AXI_BUSER_WIDTH        = 1,
   parameter C_MUX_1_AXI_ARUSER_WIDTH       = 1,
   parameter C_MUX_1_AXI_RUSER_WIDTH        = 1,
   parameter C_MUX_1_AXI_AXLEN_WIDTH        = 1,
   parameter C_MUX_1_AXI_AXLOCK_WIDTH         = 1,
   
   parameter C_MUX_1_HAS_BRESP         = 1,
   parameter C_MUX_1_HAS_BURST         = 1,
   parameter C_MUX_1_HAS_CACHE         = 1,
   parameter C_MUX_1_HAS_LOCK         = 1,
   parameter C_MUX_1_HAS_PROT         = 1,
   parameter C_MUX_1_HAS_QOS         = 1,
   parameter C_MUX_1_HAS_REGION         = 1,
   parameter C_MUX_1_HAS_RRESP         = 1,
   parameter C_MUX_1_HAS_WSTRB         = 1,
   parameter C_MUX_1_HAS_TSTRB         = 1,
   parameter C_MUX_1_HAS_TKEEP         = 1,
   
   parameter C_MUX_1_AXI_ADDR_WIDTH         = 32,
   parameter C_MUX_1_AXI_DATA_WIDTH         = 32,
   parameter C_MUX_1_AXI_PROTOCOL           = "AXI4",
   parameter C_MUX_1_AXIS_TDATA_WIDTH       = 32,
   parameter C_MUX_1_AXIS_TID_WIDTH         = 1,
   parameter C_MUX_1_AXIS_TDEST_WIDTH       = 1,
   parameter C_MUX_1_AXIS_TUSER_WIDTH       = 1,
   parameter C_MUX_2_AXI_ID_WIDTH           = 4,
   parameter C_MUX_2_AXI_AWUSER_WIDTH       = 1,
   parameter C_MUX_2_AXI_WUSER_WIDTH        = 1,
   parameter C_MUX_2_AXI_BUSER_WIDTH        = 1,
   parameter C_MUX_2_AXI_ARUSER_WIDTH       = 1,
   parameter C_MUX_2_AXI_RUSER_WIDTH        = 1,
   parameter C_MUX_2_AXI_AXLEN_WIDTH        = 1,
   parameter C_MUX_2_AXI_AXLOCK_WIDTH         = 1,
   
   parameter C_MUX_2_HAS_BRESP         = 1,
   parameter C_MUX_2_HAS_BURST         = 1,
   parameter C_MUX_2_HAS_CACHE         = 1,
   parameter C_MUX_2_HAS_LOCK         = 1,
   parameter C_MUX_2_HAS_PROT         = 1,
   parameter C_MUX_2_HAS_QOS         = 1,
   parameter C_MUX_2_HAS_REGION         = 1,
   parameter C_MUX_2_HAS_RRESP         = 1,
   parameter C_MUX_2_HAS_WSTRB         = 1,
   parameter C_MUX_2_HAS_TSTRB         = 1,
   parameter C_MUX_2_HAS_TKEEP         = 1,
   
   parameter C_MUX_2_AXI_ADDR_WIDTH         = 32,
   parameter C_MUX_2_AXI_DATA_WIDTH         = 32,
   parameter C_MUX_2_AXI_PROTOCOL           = "AXI4",
   parameter C_MUX_2_AXIS_TDATA_WIDTH       = 32,
   parameter C_MUX_2_AXIS_TID_WIDTH         = 1,
   parameter C_MUX_2_AXIS_TDEST_WIDTH       = 1,
   parameter C_MUX_2_AXIS_TUSER_WIDTH       = 1,
   parameter C_MUX_3_AXI_ID_WIDTH           = 4,
   parameter C_MUX_3_AXI_AWUSER_WIDTH       = 1,
   parameter C_MUX_3_AXI_WUSER_WIDTH        = 1,
   parameter C_MUX_3_AXI_BUSER_WIDTH        = 1,
   parameter C_MUX_3_AXI_ARUSER_WIDTH       = 1,
   parameter C_MUX_3_AXI_RUSER_WIDTH        = 1,
   parameter C_MUX_3_AXI_AXLEN_WIDTH        = 1,
   parameter C_MUX_3_AXI_AXLOCK_WIDTH         = 1,
   
   parameter C_MUX_3_HAS_BRESP         = 1,
   parameter C_MUX_3_HAS_BURST         = 1,
   parameter C_MUX_3_HAS_CACHE         = 1,
   parameter C_MUX_3_HAS_LOCK         = 1,
   parameter C_MUX_3_HAS_PROT         = 1,
   parameter C_MUX_3_HAS_QOS         = 1,
   parameter C_MUX_3_HAS_REGION         = 1,
   parameter C_MUX_3_HAS_RRESP         = 1,
   parameter C_MUX_3_HAS_WSTRB         = 1,
   parameter C_MUX_3_HAS_TSTRB         = 1,
   parameter C_MUX_3_HAS_TKEEP         = 1,
   
   parameter C_MUX_3_AXI_ADDR_WIDTH         = 32,
   parameter C_MUX_3_AXI_DATA_WIDTH         = 32,
   parameter C_MUX_3_AXI_PROTOCOL           = "AXI4",
   parameter C_MUX_3_AXIS_TDATA_WIDTH       = 32,
   parameter C_MUX_3_AXIS_TID_WIDTH         = 1,
   parameter C_MUX_3_AXIS_TDEST_WIDTH       = 1,
   parameter C_MUX_3_AXIS_TUSER_WIDTH       = 1,
                          
   parameter C_NUM_OF_PROBES = 1,
   parameter C_PROBE0_WIDTH = 1,
   parameter C_PROBE1_WIDTH = 1,
   parameter C_PROBE2_WIDTH = 1,
   parameter C_PROBE3_WIDTH = 1,
   parameter C_PROBE4_WIDTH = 1,
   parameter C_PROBE5_WIDTH = 1,
   parameter C_PROBE6_WIDTH = 1,
   parameter C_PROBE7_WIDTH = 1,
   parameter C_PROBE8_WIDTH = 1,
   parameter C_PROBE9_WIDTH = 1,
   parameter C_PROBE10_WIDTH = 1,
   parameter C_PROBE11_WIDTH = 1,
   parameter C_PROBE12_WIDTH = 1,
   parameter C_PROBE13_WIDTH = 1,
   parameter C_PROBE14_WIDTH = 1,
   parameter C_PROBE15_WIDTH = 1,
   parameter C_PROBE16_WIDTH = 1,
   parameter C_PROBE17_WIDTH = 1,
   parameter C_PROBE18_WIDTH = 1,
   parameter C_PROBE19_WIDTH = 1,
   parameter C_PROBE20_WIDTH = 1,
   parameter C_PROBE21_WIDTH = 1,
   parameter C_PROBE22_WIDTH = 1,
   parameter C_PROBE23_WIDTH = 1,
   parameter C_PROBE24_WIDTH = 1,
   parameter C_PROBE25_WIDTH = 1,
   parameter C_PROBE26_WIDTH = 1,
   parameter C_PROBE27_WIDTH = 1,
   parameter C_PROBE28_WIDTH = 1,
   parameter C_PROBE29_WIDTH = 1,
   parameter C_PROBE30_WIDTH = 1,
   parameter C_PROBE31_WIDTH = 1,
   parameter C_PROBE32_WIDTH = 1,
   parameter C_PROBE33_WIDTH = 1,
   parameter C_PROBE34_WIDTH = 1,
   parameter C_PROBE35_WIDTH = 1,
   parameter C_PROBE36_WIDTH = 1,
   parameter C_PROBE37_WIDTH = 1,
   parameter C_PROBE38_WIDTH = 1,
   parameter C_PROBE39_WIDTH = 1,
   parameter C_PROBE40_WIDTH = 1,
   parameter C_PROBE41_WIDTH = 1,
   parameter C_PROBE42_WIDTH = 1,
   parameter C_PROBE43_WIDTH = 1,
   parameter C_PROBE44_WIDTH = 1,
   parameter C_PROBE45_WIDTH = 1,
   parameter C_PROBE46_WIDTH = 1,
   parameter C_PROBE47_WIDTH = 1,
   parameter C_PROBE48_WIDTH = 1,
   parameter C_PROBE49_WIDTH = 1,
   parameter C_PROBE50_WIDTH = 1,
   parameter C_PROBE51_WIDTH = 1,
   parameter C_PROBE52_WIDTH = 1,
   parameter C_PROBE53_WIDTH = 1,
   parameter C_PROBE54_WIDTH = 1,
   parameter C_PROBE55_WIDTH = 1,
   parameter C_PROBE56_WIDTH = 1,
   parameter C_PROBE57_WIDTH = 1,
   parameter C_PROBE58_WIDTH = 1,
   parameter C_PROBE59_WIDTH = 1,
   parameter C_PROBE60_WIDTH = 1,
   parameter C_PROBE61_WIDTH = 1,
   parameter C_PROBE62_WIDTH = 1,
   parameter C_PROBE63_WIDTH = 1,
   parameter C_PROBE64_WIDTH = 1,
   parameter C_PROBE65_WIDTH = 1,
   parameter C_PROBE66_WIDTH = 1,
   parameter C_PROBE67_WIDTH = 1,
   parameter C_PROBE68_WIDTH = 1,
   parameter C_PROBE69_WIDTH = 1,
   parameter C_PROBE70_WIDTH = 1,
   parameter C_PROBE71_WIDTH = 1,
   parameter C_PROBE72_WIDTH = 1,
   parameter C_PROBE73_WIDTH = 1,
   parameter C_PROBE74_WIDTH = 1,
   parameter C_PROBE75_WIDTH = 1,
   parameter C_PROBE76_WIDTH = 1,
   parameter C_PROBE77_WIDTH = 1,
   parameter C_PROBE78_WIDTH = 1,
   parameter C_PROBE79_WIDTH = 1,
   parameter C_PROBE80_WIDTH = 1,
   parameter C_PROBE81_WIDTH = 1,
   parameter C_PROBE82_WIDTH = 1,
   parameter C_PROBE83_WIDTH = 1,
   parameter C_PROBE84_WIDTH = 1,
   parameter C_PROBE85_WIDTH = 1,
   parameter C_PROBE86_WIDTH = 1,
   parameter C_PROBE87_WIDTH = 1,
   parameter C_PROBE88_WIDTH = 1,
   parameter C_PROBE89_WIDTH = 1,
   parameter C_PROBE90_WIDTH = 1,
   parameter C_PROBE91_WIDTH = 1,
   parameter C_PROBE92_WIDTH = 1,
   parameter C_PROBE93_WIDTH = 1,
   parameter C_PROBE94_WIDTH = 1,
   parameter C_PROBE95_WIDTH = 1,
   parameter C_PROBE96_WIDTH = 1,
   parameter C_PROBE97_WIDTH = 1,
   parameter C_PROBE98_WIDTH = 1,
   parameter C_PROBE99_WIDTH = 1,
   parameter C_PROBE100_WIDTH = 1,
   parameter C_PROBE101_WIDTH = 1,
   parameter C_PROBE102_WIDTH = 1,
   parameter C_PROBE103_WIDTH = 1,
   parameter C_PROBE104_WIDTH = 1,
   parameter C_PROBE105_WIDTH = 1,
   parameter C_PROBE106_WIDTH = 1,
   parameter C_PROBE107_WIDTH = 1,
   parameter C_PROBE108_WIDTH = 1,
   parameter C_PROBE109_WIDTH = 1,
   parameter C_PROBE110_WIDTH = 1,
   parameter C_PROBE111_WIDTH = 1,
   parameter C_PROBE112_WIDTH = 1,
   parameter C_PROBE113_WIDTH = 1,
   parameter C_PROBE114_WIDTH = 1,
   parameter C_PROBE115_WIDTH = 1,
   parameter C_PROBE116_WIDTH = 1,
   parameter C_PROBE117_WIDTH = 1,
   parameter C_PROBE118_WIDTH = 1,
   parameter C_PROBE119_WIDTH = 1,
   parameter C_PROBE120_WIDTH = 1,
   parameter C_PROBE121_WIDTH = 1,
   parameter C_PROBE122_WIDTH = 1,
   parameter C_PROBE123_WIDTH = 1,
   parameter C_PROBE124_WIDTH = 1,
   parameter C_PROBE125_WIDTH = 1,
   parameter C_PROBE126_WIDTH = 1,
   parameter C_PROBE127_WIDTH = 1,
   parameter C_PROBE128_WIDTH = 1,
   parameter C_PROBE129_WIDTH = 1,
   parameter C_PROBE130_WIDTH = 1,
   parameter C_PROBE131_WIDTH = 1,
   parameter C_PROBE132_WIDTH = 1,
   parameter C_PROBE133_WIDTH = 1,
   parameter C_PROBE134_WIDTH = 1,
   parameter C_PROBE135_WIDTH = 1,
   parameter C_PROBE136_WIDTH = 1,
   parameter C_PROBE137_WIDTH = 1,
   parameter C_PROBE138_WIDTH = 1,
   parameter C_PROBE139_WIDTH = 1,
   parameter C_PROBE140_WIDTH = 1,
   parameter C_PROBE141_WIDTH = 1,
   parameter C_PROBE142_WIDTH = 1,
   parameter C_PROBE143_WIDTH = 1,
   parameter C_PROBE144_WIDTH = 1,
   parameter C_PROBE145_WIDTH = 1,
   parameter C_PROBE146_WIDTH = 1,
   parameter C_PROBE147_WIDTH = 1,
   parameter C_PROBE148_WIDTH = 1,
   parameter C_PROBE149_WIDTH = 1,
   parameter C_PROBE150_WIDTH = 1,
   parameter C_PROBE151_WIDTH = 1,
   parameter C_PROBE152_WIDTH = 1,
   parameter C_PROBE153_WIDTH = 1,
   parameter C_PROBE154_WIDTH = 1,
   parameter C_PROBE155_WIDTH = 1,
   parameter C_PROBE156_WIDTH = 1,
   parameter C_PROBE157_WIDTH = 1,
   parameter C_PROBE158_WIDTH = 1,
   parameter C_PROBE159_WIDTH = 1,
   parameter C_PROBE160_WIDTH = 1,
   parameter C_PROBE161_WIDTH = 1,
   parameter C_PROBE162_WIDTH = 1,
   parameter C_PROBE163_WIDTH = 1,
   parameter C_PROBE164_WIDTH = 1,
   parameter C_PROBE165_WIDTH = 1,
   parameter C_PROBE166_WIDTH = 1,
   parameter C_PROBE167_WIDTH = 1,
   parameter C_PROBE168_WIDTH = 1,
   parameter C_PROBE169_WIDTH = 1,
   parameter C_PROBE170_WIDTH = 1,
   parameter C_PROBE171_WIDTH = 1,
   parameter C_PROBE172_WIDTH = 1,
   parameter C_PROBE173_WIDTH = 1,
   parameter C_PROBE174_WIDTH = 1,
   parameter C_PROBE175_WIDTH = 1,
   parameter C_PROBE176_WIDTH = 1,
   parameter C_PROBE177_WIDTH = 1,
   parameter C_PROBE178_WIDTH = 1,
   parameter C_PROBE179_WIDTH = 1,
   parameter C_PROBE180_WIDTH = 1,
   parameter C_PROBE181_WIDTH = 1,
   parameter C_PROBE182_WIDTH = 1,
   parameter C_PROBE183_WIDTH = 1,
   parameter C_PROBE184_WIDTH = 1,
   parameter C_PROBE185_WIDTH = 1,
   parameter C_PROBE186_WIDTH = 1,
   parameter C_PROBE187_WIDTH = 1,
   parameter C_PROBE188_WIDTH = 1,
   parameter C_PROBE189_WIDTH = 1,
   parameter C_PROBE190_WIDTH = 1,
   parameter C_PROBE191_WIDTH = 1,
   parameter C_PROBE192_WIDTH = 1,
   parameter C_PROBE193_WIDTH = 1,
   parameter C_PROBE194_WIDTH = 1,
   parameter C_PROBE195_WIDTH = 1,
   parameter C_PROBE196_WIDTH = 1,
   parameter C_PROBE197_WIDTH = 1,
   parameter C_PROBE198_WIDTH = 1,
   parameter C_PROBE199_WIDTH = 1,
   parameter C_PROBE200_WIDTH = 1,
   parameter C_PROBE201_WIDTH = 1,
   parameter C_PROBE202_WIDTH = 1,
   parameter C_PROBE203_WIDTH = 1,
   parameter C_PROBE204_WIDTH = 1,
   parameter C_PROBE205_WIDTH = 1,
   parameter C_PROBE206_WIDTH = 1,
   parameter C_PROBE207_WIDTH = 1,
   parameter C_PROBE208_WIDTH = 1,
   parameter C_PROBE209_WIDTH = 1,
   parameter C_PROBE210_WIDTH = 1,
   parameter C_PROBE211_WIDTH = 1,
   parameter C_PROBE212_WIDTH = 1,
   parameter C_PROBE213_WIDTH = 1,
   parameter C_PROBE214_WIDTH = 1,
   parameter C_PROBE215_WIDTH = 1,
   parameter C_PROBE216_WIDTH = 1,
   parameter C_PROBE217_WIDTH = 1,
   parameter C_PROBE218_WIDTH = 1,
   parameter C_PROBE219_WIDTH = 1,
   parameter C_PROBE220_WIDTH = 1,
   parameter C_PROBE221_WIDTH = 1,
   parameter C_PROBE222_WIDTH = 1,
   parameter C_PROBE223_WIDTH = 1,
   parameter C_PROBE224_WIDTH = 1,
   parameter C_PROBE225_WIDTH = 1,
   parameter C_PROBE226_WIDTH = 1,
   parameter C_PROBE227_WIDTH = 1,
   parameter C_PROBE228_WIDTH = 1,
   parameter C_PROBE229_WIDTH = 1,
   parameter C_PROBE230_WIDTH = 1,
   parameter C_PROBE231_WIDTH = 1,
   parameter C_PROBE232_WIDTH = 1,
   parameter C_PROBE233_WIDTH = 1,
   parameter C_PROBE234_WIDTH = 1,
   parameter C_PROBE235_WIDTH = 1,
   parameter C_PROBE236_WIDTH = 1,
   parameter C_PROBE237_WIDTH = 1,
   parameter C_PROBE238_WIDTH = 1,
   parameter C_PROBE239_WIDTH = 1,
   parameter C_PROBE240_WIDTH = 1,
   parameter C_PROBE241_WIDTH = 1,
   parameter C_PROBE242_WIDTH = 1,
   parameter C_PROBE243_WIDTH = 1,
   parameter C_PROBE244_WIDTH = 1,
   parameter C_PROBE245_WIDTH = 1,
   parameter C_PROBE246_WIDTH = 1,
   parameter C_PROBE247_WIDTH = 1,
   parameter C_PROBE248_WIDTH = 1,
   parameter C_PROBE249_WIDTH = 1,
   parameter C_PROBE250_WIDTH = 1,
   parameter C_PROBE251_WIDTH = 1,
   parameter C_PROBE252_WIDTH = 1,
   parameter C_PROBE253_WIDTH = 1,
   parameter C_PROBE254_WIDTH = 1,
   parameter C_PROBE255_WIDTH = 1,
   parameter C_PROBE256_WIDTH = 1,
   parameter C_PROBE257_WIDTH = 1,
   parameter C_PROBE258_WIDTH = 1,
   parameter C_PROBE259_WIDTH = 1,
   parameter C_PROBE260_WIDTH = 1,
   parameter C_PROBE261_WIDTH = 1,
   parameter C_PROBE262_WIDTH = 1,
   parameter C_PROBE263_WIDTH = 1,
   parameter C_PROBE264_WIDTH = 1,
   parameter C_PROBE265_WIDTH = 1,
   parameter C_PROBE266_WIDTH = 1,
   parameter C_PROBE267_WIDTH = 1,
   parameter C_PROBE268_WIDTH = 1,
   parameter C_PROBE269_WIDTH = 1,
   parameter C_PROBE270_WIDTH = 1,
   parameter C_PROBE271_WIDTH = 1,
   parameter C_PROBE272_WIDTH = 1,
   parameter C_PROBE273_WIDTH = 1,
   parameter C_PROBE274_WIDTH = 1,
   parameter C_PROBE275_WIDTH = 1,
   parameter C_PROBE276_WIDTH = 1,
   parameter C_PROBE277_WIDTH = 1,
   parameter C_PROBE278_WIDTH = 1,
   parameter C_PROBE279_WIDTH = 1,
   parameter C_PROBE280_WIDTH = 1,
   parameter C_PROBE281_WIDTH = 1,
   parameter C_PROBE282_WIDTH = 1,
   parameter C_PROBE283_WIDTH = 1,
   parameter C_PROBE284_WIDTH = 1,
   parameter C_PROBE285_WIDTH = 1,
   parameter C_PROBE286_WIDTH = 1,
   parameter C_PROBE287_WIDTH = 1,
   parameter C_PROBE288_WIDTH = 1,
   parameter C_PROBE289_WIDTH = 1,
   parameter C_PROBE290_WIDTH = 1,
   parameter C_PROBE291_WIDTH = 1,
   parameter C_PROBE292_WIDTH = 1,
   parameter C_PROBE293_WIDTH = 1,
   parameter C_PROBE294_WIDTH = 1,
   parameter C_PROBE295_WIDTH = 1,
   parameter C_PROBE296_WIDTH = 1,
   parameter C_PROBE297_WIDTH = 1,
   parameter C_PROBE298_WIDTH = 1,
   parameter C_PROBE299_WIDTH = 1,
   parameter C_PROBE300_WIDTH = 1,
   parameter C_PROBE301_WIDTH = 1,
   parameter C_PROBE302_WIDTH = 1,
   parameter C_PROBE303_WIDTH = 1,
   parameter C_PROBE304_WIDTH = 1,
   parameter C_PROBE305_WIDTH = 1,
   parameter C_PROBE306_WIDTH = 1,
   parameter C_PROBE307_WIDTH = 1,
   parameter C_PROBE308_WIDTH = 1,
   parameter C_PROBE309_WIDTH = 1,
   parameter C_PROBE310_WIDTH = 1,
   parameter C_PROBE311_WIDTH = 1,
   parameter C_PROBE312_WIDTH = 1,
   parameter C_PROBE313_WIDTH = 1,
   parameter C_PROBE314_WIDTH = 1,
   parameter C_PROBE315_WIDTH = 1,
   parameter C_PROBE316_WIDTH = 1,
   parameter C_PROBE317_WIDTH = 1,
   parameter C_PROBE318_WIDTH = 1,
   parameter C_PROBE319_WIDTH = 1,
   parameter C_PROBE320_WIDTH = 1,
   parameter C_PROBE321_WIDTH = 1,
   parameter C_PROBE322_WIDTH = 1,
   parameter C_PROBE323_WIDTH = 1,
   parameter C_PROBE324_WIDTH = 1,
   parameter C_PROBE325_WIDTH = 1,
   parameter C_PROBE326_WIDTH = 1,
   parameter C_PROBE327_WIDTH = 1,
   parameter C_PROBE328_WIDTH = 1,
   parameter C_PROBE329_WIDTH = 1,
   parameter C_PROBE330_WIDTH = 1,
   parameter C_PROBE331_WIDTH = 1,
   parameter C_PROBE332_WIDTH = 1,
   parameter C_PROBE333_WIDTH = 1,
   parameter C_PROBE334_WIDTH = 1,
   parameter C_PROBE335_WIDTH = 1,
   parameter C_PROBE336_WIDTH = 1,
   parameter C_PROBE337_WIDTH = 1,
   parameter C_PROBE338_WIDTH = 1,
   parameter C_PROBE339_WIDTH = 1,
   parameter C_PROBE340_WIDTH = 1,
   parameter C_PROBE341_WIDTH = 1,
   parameter C_PROBE342_WIDTH = 1,
   parameter C_PROBE343_WIDTH = 1,
   parameter C_PROBE344_WIDTH = 1,
   parameter C_PROBE345_WIDTH = 1,
   parameter C_PROBE346_WIDTH = 1,
   parameter C_PROBE347_WIDTH = 1,
   parameter C_PROBE348_WIDTH = 1,
   parameter C_PROBE349_WIDTH = 1,
   parameter C_PROBE350_WIDTH = 1,
   parameter C_PROBE351_WIDTH = 1,
   parameter C_PROBE352_WIDTH = 1,
   parameter C_PROBE353_WIDTH = 1,
   parameter C_PROBE354_WIDTH = 1,
   parameter C_PROBE355_WIDTH = 1,
   parameter C_PROBE356_WIDTH = 1,
   parameter C_PROBE357_WIDTH = 1,
   parameter C_PROBE358_WIDTH = 1,
   parameter C_PROBE359_WIDTH = 1,
   parameter C_PROBE360_WIDTH = 1,
   parameter C_PROBE361_WIDTH = 1,
   parameter C_PROBE362_WIDTH = 1,
   parameter C_PROBE363_WIDTH = 1,
   parameter C_PROBE364_WIDTH = 1,
   parameter C_PROBE365_WIDTH = 1,
   parameter C_PROBE366_WIDTH = 1,
   parameter C_PROBE367_WIDTH = 1,
   parameter C_PROBE368_WIDTH = 1,
   parameter C_PROBE369_WIDTH = 1,
   parameter C_PROBE370_WIDTH = 1,
   parameter C_PROBE371_WIDTH = 1,
   parameter C_PROBE372_WIDTH = 1,
   parameter C_PROBE373_WIDTH = 1,
   parameter C_PROBE374_WIDTH = 1,
   parameter C_PROBE375_WIDTH = 1,
   parameter C_PROBE376_WIDTH = 1,
   parameter C_PROBE377_WIDTH = 1,
   parameter C_PROBE378_WIDTH = 1,
   parameter C_PROBE379_WIDTH = 1,
   parameter C_PROBE380_WIDTH = 1,
   parameter C_PROBE381_WIDTH = 1,
   parameter C_PROBE382_WIDTH = 1,
   parameter C_PROBE383_WIDTH = 1,
   parameter C_PROBE384_WIDTH = 1,
   parameter C_PROBE385_WIDTH = 1,
   parameter C_PROBE386_WIDTH = 1,
   parameter C_PROBE387_WIDTH = 1,
   parameter C_PROBE388_WIDTH = 1,
   parameter C_PROBE389_WIDTH = 1,
   parameter C_PROBE390_WIDTH = 1,
   parameter C_PROBE391_WIDTH = 1,
   parameter C_PROBE392_WIDTH = 1,
   parameter C_PROBE393_WIDTH = 1,
   parameter C_PROBE394_WIDTH = 1,
   parameter C_PROBE395_WIDTH = 1,
   parameter C_PROBE396_WIDTH = 1,
   parameter C_PROBE397_WIDTH = 1,
   parameter C_PROBE398_WIDTH = 1,
   parameter C_PROBE399_WIDTH = 1,
   parameter C_PROBE400_WIDTH = 1,
   parameter C_PROBE401_WIDTH = 1,
   parameter C_PROBE402_WIDTH = 1,
   parameter C_PROBE403_WIDTH = 1,
   parameter C_PROBE404_WIDTH = 1,
   parameter C_PROBE405_WIDTH = 1,
   parameter C_PROBE406_WIDTH = 1,
   parameter C_PROBE407_WIDTH = 1,
   parameter C_PROBE408_WIDTH = 1,
   parameter C_PROBE409_WIDTH = 1,
   parameter C_PROBE410_WIDTH = 1,
   parameter C_PROBE411_WIDTH = 1,
   parameter C_PROBE412_WIDTH = 1,
   parameter C_PROBE413_WIDTH = 1,
   parameter C_PROBE414_WIDTH = 1,
   parameter C_PROBE415_WIDTH = 1,
   parameter C_PROBE416_WIDTH = 1,
   parameter C_PROBE417_WIDTH = 1,
   parameter C_PROBE418_WIDTH = 1,
   parameter C_PROBE419_WIDTH = 1,
   parameter C_PROBE420_WIDTH = 1,
   parameter C_PROBE421_WIDTH = 1,
   parameter C_PROBE422_WIDTH = 1,
   parameter C_PROBE423_WIDTH = 1,
   parameter C_PROBE424_WIDTH = 1,
   parameter C_PROBE425_WIDTH = 1,
   parameter C_PROBE426_WIDTH = 1,
   parameter C_PROBE427_WIDTH = 1,
   parameter C_PROBE428_WIDTH = 1,
   parameter C_PROBE429_WIDTH = 1,
   parameter C_PROBE430_WIDTH = 1,
   parameter C_PROBE431_WIDTH = 1,
   parameter C_PROBE432_WIDTH = 1,
   parameter C_PROBE433_WIDTH = 1,
   parameter C_PROBE434_WIDTH = 1,
   parameter C_PROBE435_WIDTH = 1,
   parameter C_PROBE436_WIDTH = 1,
   parameter C_PROBE437_WIDTH = 1,
   parameter C_PROBE438_WIDTH = 1,
   parameter C_PROBE439_WIDTH = 1,
   parameter C_PROBE440_WIDTH = 1,
   parameter C_PROBE441_WIDTH = 1,
   parameter C_PROBE442_WIDTH = 1,
   parameter C_PROBE443_WIDTH = 1,
   parameter C_PROBE444_WIDTH = 1,
   parameter C_PROBE445_WIDTH = 1,
   parameter C_PROBE446_WIDTH = 1,
   parameter C_PROBE447_WIDTH = 1,
   parameter C_PROBE448_WIDTH = 1,
   parameter C_PROBE449_WIDTH = 1,
   parameter C_PROBE450_WIDTH = 1,
   parameter C_PROBE451_WIDTH = 1,
   parameter C_PROBE452_WIDTH = 1,
   parameter C_PROBE453_WIDTH = 1,
   parameter C_PROBE454_WIDTH = 1,
   parameter C_PROBE455_WIDTH = 1,
   parameter C_PROBE456_WIDTH = 1,
   parameter C_PROBE457_WIDTH = 1,
   parameter C_PROBE458_WIDTH = 1,
   parameter C_PROBE459_WIDTH = 1,
   parameter C_PROBE460_WIDTH = 1,
   parameter C_PROBE461_WIDTH = 1,
   parameter C_PROBE462_WIDTH = 1,
   parameter C_PROBE463_WIDTH = 1,
   parameter C_PROBE464_WIDTH = 1,
   parameter C_PROBE465_WIDTH = 1,
   parameter C_PROBE466_WIDTH = 1,
   parameter C_PROBE467_WIDTH = 1,
   parameter C_PROBE468_WIDTH = 1,
   parameter C_PROBE469_WIDTH = 1,
   parameter C_PROBE470_WIDTH = 1,
   parameter C_PROBE471_WIDTH = 1,
   parameter C_PROBE472_WIDTH = 1,
   parameter C_PROBE473_WIDTH = 1,
   parameter C_PROBE474_WIDTH = 1,
   parameter C_PROBE475_WIDTH = 1,
   parameter C_PROBE476_WIDTH = 1,
   parameter C_PROBE477_WIDTH = 1,
   parameter C_PROBE478_WIDTH = 1,
   parameter C_PROBE479_WIDTH = 1,
   parameter C_PROBE480_WIDTH = 1,
   parameter C_PROBE481_WIDTH = 1,
   parameter C_PROBE482_WIDTH = 1,
   parameter C_PROBE483_WIDTH = 1,
   parameter C_PROBE484_WIDTH = 1,
   parameter C_PROBE485_WIDTH = 1,
   parameter C_PROBE486_WIDTH = 1,
   parameter C_PROBE487_WIDTH = 1,
   parameter C_PROBE488_WIDTH = 1,
   parameter C_PROBE489_WIDTH = 1,
   parameter C_PROBE490_WIDTH = 1,
   parameter C_PROBE491_WIDTH = 1,
   parameter C_PROBE492_WIDTH = 1,
   parameter C_PROBE493_WIDTH = 1,
   parameter C_PROBE494_WIDTH = 1,
   parameter C_PROBE495_WIDTH = 1,
   parameter C_PROBE496_WIDTH = 1,
   parameter C_PROBE497_WIDTH = 1,
   parameter C_PROBE498_WIDTH = 1,
   parameter C_PROBE499_WIDTH = 1,
   parameter C_PROBE500_WIDTH = 1,
   parameter C_PROBE501_WIDTH = 1,
   parameter C_PROBE502_WIDTH = 1,
   parameter C_PROBE503_WIDTH = 1,
   parameter C_PROBE504_WIDTH = 1,
   parameter C_PROBE505_WIDTH = 1,
   parameter C_PROBE506_WIDTH = 1,
   parameter C_PROBE507_WIDTH = 1,
   parameter C_PROBE508_WIDTH = 1,
   parameter C_PROBE509_WIDTH = 1,
   parameter C_PROBE510_WIDTH = 1,
   parameter C_PROBE511_WIDTH = 1,
   parameter C_MUX_PROBE0_WIDTH = 1,
   parameter C_MUX_PROBE1_WIDTH = 1,
   parameter C_MUX_PROBE2_WIDTH = 1,
   parameter C_MUX_PROBE3_WIDTH = 1,
   parameter C_MUX_PROBE4_WIDTH = 1,
   parameter C_MUX_PROBE5_WIDTH = 1,
   parameter C_MUX_PROBE6_WIDTH = 1,
   parameter C_MUX_PROBE7_WIDTH = 1,
   parameter C_MUX_PROBE8_WIDTH = 1,
   parameter C_MUX_PROBE9_WIDTH = 1,
   parameter C_MUX_PROBE10_WIDTH = 1,
   parameter C_MUX_PROBE11_WIDTH = 1,
   parameter C_MUX_PROBE12_WIDTH = 1,
   parameter C_MUX_PROBE13_WIDTH = 1,
   parameter C_MUX_PROBE14_WIDTH = 1,
   parameter C_MUX_PROBE15_WIDTH = 1,
   parameter C_MUX_PROBE16_WIDTH = 1,
   parameter C_MUX_PROBE17_WIDTH = 1,
   parameter C_MUX_PROBE18_WIDTH = 1,
   parameter C_MUX_PROBE19_WIDTH = 1,
   parameter C_MUX_PROBE20_WIDTH = 1,
   parameter C_MUX_PROBE21_WIDTH = 1,
   parameter C_MUX_PROBE22_WIDTH = 1,
   parameter C_MUX_PROBE23_WIDTH = 1,
   parameter C_MUX_PROBE24_WIDTH = 1,
   parameter C_MUX_PROBE25_WIDTH = 1,
   parameter C_MUX_PROBE26_WIDTH = 1,
   parameter C_MUX_PROBE27_WIDTH = 1,
   parameter C_MUX_PROBE28_WIDTH = 1,
   parameter C_MUX_PROBE29_WIDTH = 1,
   parameter C_MUX_PROBE30_WIDTH = 1,
   parameter C_MUX_PROBE31_WIDTH = 1,
   parameter C_MUX_PROBE32_WIDTH = 1,
   parameter C_MUX_PROBE33_WIDTH = 1,
   parameter C_MUX_PROBE34_WIDTH = 1,
   parameter C_MUX_PROBE35_WIDTH = 1,
   parameter C_MUX_PROBE36_WIDTH = 1,
   parameter C_MUX_PROBE37_WIDTH = 1,
   parameter C_MUX_PROBE38_WIDTH = 1,
   parameter C_MUX_PROBE39_WIDTH = 1,
   parameter C_MUX_PROBE40_WIDTH = 1,
   parameter C_MUX_PROBE41_WIDTH = 1,
   parameter C_MUX_PROBE42_WIDTH = 1,
   parameter C_MUX_PROBE43_WIDTH = 1,
   parameter C_MUX_PROBE44_WIDTH = 1,
   parameter C_MUX_PROBE45_WIDTH = 1,
   parameter C_MUX_PROBE46_WIDTH = 1,
   parameter C_MUX_PROBE47_WIDTH = 1,
   parameter C_MUX_PROBE48_WIDTH = 1,
   parameter C_MUX_PROBE49_WIDTH = 1,
   parameter C_MUX_PROBE50_WIDTH = 1,
   parameter C_MUX_PROBE51_WIDTH = 1,
   parameter C_MUX_PROBE52_WIDTH = 1,
   parameter C_MUX_PROBE53_WIDTH = 1,
   parameter C_MUX_PROBE54_WIDTH = 1,
   parameter C_MUX_PROBE55_WIDTH = 1,
   parameter C_MUX_PROBE56_WIDTH = 1,
   parameter C_MUX_PROBE57_WIDTH = 1,
   parameter C_MUX_PROBE58_WIDTH = 1,
   parameter C_MUX_PROBE59_WIDTH = 1,
   parameter C_MUX_PROBE60_WIDTH = 1,
   parameter C_MUX_PROBE61_WIDTH = 1,
   parameter C_MUX_PROBE62_WIDTH = 1,
   parameter C_MUX_PROBE63_WIDTH = 1,
   parameter C_MUX_PROBE64_WIDTH = 1,
   parameter C_MUX_PROBE65_WIDTH = 1,
   parameter C_MUX_PROBE66_WIDTH = 1,
   parameter C_MUX_PROBE67_WIDTH = 1,
   parameter C_MUX_PROBE68_WIDTH = 1,
   parameter C_MUX_PROBE69_WIDTH = 1,
   parameter C_MUX_PROBE70_WIDTH = 1,
   parameter C_MUX_PROBE71_WIDTH = 1,
   parameter C_MUX_PROBE72_WIDTH = 1,
   parameter C_MUX_PROBE73_WIDTH = 1,
   parameter C_MUX_PROBE74_WIDTH = 1,
   parameter C_MUX_PROBE75_WIDTH = 1,
   parameter C_MUX_PROBE76_WIDTH = 1,
   parameter C_MUX_PROBE77_WIDTH = 1,
   parameter C_MUX_PROBE78_WIDTH = 1,
   parameter C_MUX_PROBE79_WIDTH = 1,
   parameter C_MUX_PROBE80_WIDTH = 1,
   parameter C_MUX_PROBE81_WIDTH = 1,
   parameter C_MUX_PROBE82_WIDTH = 1,
   parameter C_MUX_PROBE83_WIDTH = 1,
   parameter C_MUX_PROBE84_WIDTH = 1,
   parameter C_MUX_PROBE85_WIDTH = 1,
   parameter C_MUX_PROBE86_WIDTH = 1,
   parameter C_MUX_PROBE87_WIDTH = 1,
   parameter C_MUX_PROBE88_WIDTH = 1,
   parameter C_MUX_PROBE89_WIDTH = 1,
   parameter C_MUX_PROBE90_WIDTH = 1,
   parameter C_MUX_PROBE91_WIDTH = 1,
   parameter C_MUX_PROBE92_WIDTH = 1,
   parameter C_MUX_PROBE93_WIDTH = 1,
   parameter C_MUX_PROBE94_WIDTH = 1,
   parameter C_MUX_PROBE95_WIDTH = 1,
   parameter C_MUX_PROBE96_WIDTH = 1,
   parameter C_MUX_PROBE97_WIDTH = 1,
   parameter C_MUX_PROBE98_WIDTH = 1,
   parameter C_MUX_PROBE99_WIDTH = 1,
   parameter C_MUX_PROBE100_WIDTH = 1,
   parameter C_MUX_PROBE101_WIDTH = 1,
   parameter C_MUX_PROBE102_WIDTH = 1,
   parameter C_MUX_PROBE103_WIDTH = 1,
   parameter C_MUX_PROBE104_WIDTH = 1,
   parameter C_MUX_PROBE105_WIDTH = 1,
   parameter C_MUX_PROBE106_WIDTH = 1,
   parameter C_MUX_PROBE107_WIDTH = 1,
   parameter C_MUX_PROBE108_WIDTH = 1,
   parameter C_MUX_PROBE109_WIDTH = 1,
   parameter C_MUX_PROBE110_WIDTH = 1,
   parameter C_MUX_PROBE111_WIDTH = 1,
   parameter C_MUX_PROBE112_WIDTH = 1,
   parameter C_MUX_PROBE113_WIDTH = 1,
   parameter C_MUX_PROBE114_WIDTH = 1,
   parameter C_MUX_PROBE115_WIDTH = 1,
   parameter C_MUX_PROBE116_WIDTH = 1,
   parameter C_MUX_PROBE117_WIDTH = 1,
   parameter C_MUX_PROBE118_WIDTH = 1,
   parameter C_MUX_PROBE119_WIDTH = 1,
   parameter C_MUX_PROBE120_WIDTH = 1,
   parameter C_MUX_PROBE121_WIDTH = 1,
   parameter C_MUX_PROBE122_WIDTH = 1,
   parameter C_MUX_PROBE123_WIDTH = 1,
   parameter C_MUX_PROBE124_WIDTH = 1,
   parameter C_MUX_PROBE125_WIDTH = 1,
   parameter C_MUX_PROBE126_WIDTH = 1,
   parameter C_MUX_PROBE127_WIDTH = 1,
    //AXI Slot 0 Interface parameters
    parameter C_SLOT_0_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_0_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_0_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_0_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_0_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_0_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_0_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_0_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_0_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_0_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_0_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_0_MAX_RD_BURSTS = 5,
    parameter C_SLOT_0_MAX_WR_BURSTS = 5,
    parameter C_SLOT_0_TXN_CNTR_EN = 1,

    parameter C_SLOT_0_HAS_BRESP         = 1,
    parameter C_SLOT_0_HAS_BURST         = 1,
    parameter C_SLOT_0_HAS_CACHE         = 1,
    parameter C_SLOT_0_HAS_LOCK         = 1,
    parameter C_SLOT_0_HAS_PROT         = 1,
    parameter C_SLOT_0_HAS_QOS         = 1,
    parameter C_SLOT_0_HAS_REGION         = 1,
    parameter C_SLOT_0_HAS_RRESP         = 1,
    parameter C_SLOT_0_HAS_WSTRB         = 1,
    parameter C_SLOT_0_HAS_TKEEP         = 1,
    parameter C_SLOT_0_HAS_TSTRB         = 1,
    parameter C_SLOT_0_HAS_TREADY        = 1,

    parameter C_SLOT_0_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_0_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_0_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_0_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 1 Interface parameters
    parameter C_SLOT_1_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_1_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_1_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_1_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_1_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_1_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_1_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_1_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_1_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_1_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_1_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_1_MAX_RD_BURSTS = 5,
    parameter C_SLOT_1_MAX_WR_BURSTS = 5,
    parameter C_SLOT_1_TXN_CNTR_EN = 1,

    parameter C_SLOT_1_HAS_BRESP         = 1,
    parameter C_SLOT_1_HAS_BURST         = 1,
    parameter C_SLOT_1_HAS_CACHE         = 1,
    parameter C_SLOT_1_HAS_LOCK         = 1,
    parameter C_SLOT_1_HAS_PROT         = 1,
    parameter C_SLOT_1_HAS_QOS         = 1,
    parameter C_SLOT_1_HAS_REGION         = 1,
    parameter C_SLOT_1_HAS_RRESP         = 1,
    parameter C_SLOT_1_HAS_WSTRB         = 1,
    parameter C_SLOT_1_HAS_TKEEP         = 1,
    parameter C_SLOT_1_HAS_TSTRB         = 1,
    parameter C_SLOT_1_HAS_TREADY        = 1,

    parameter C_SLOT_1_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_1_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_1_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_1_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 2 Interface parameters
    parameter C_SLOT_2_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_2_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_2_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_2_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_2_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_2_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_2_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_2_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_2_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_2_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_2_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_2_MAX_RD_BURSTS = 5,
    parameter C_SLOT_2_MAX_WR_BURSTS = 5,
    parameter C_SLOT_2_TXN_CNTR_EN = 1,

    parameter C_SLOT_2_HAS_BRESP         = 1,
    parameter C_SLOT_2_HAS_BURST         = 1,
    parameter C_SLOT_2_HAS_CACHE         = 1,
    parameter C_SLOT_2_HAS_LOCK         = 1,
    parameter C_SLOT_2_HAS_PROT         = 1,
    parameter C_SLOT_2_HAS_QOS         = 1,
    parameter C_SLOT_2_HAS_REGION         = 1,
    parameter C_SLOT_2_HAS_RRESP         = 1,
    parameter C_SLOT_2_HAS_WSTRB         = 1,
    parameter C_SLOT_2_HAS_TKEEP         = 1,
    parameter C_SLOT_2_HAS_TSTRB         = 1,
    parameter C_SLOT_2_HAS_TREADY        = 1,

    parameter C_SLOT_2_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_2_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_2_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_2_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 3 Interface parameters
    parameter C_SLOT_3_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_3_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_3_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_3_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_3_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_3_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_3_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_3_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_3_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_3_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_3_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_3_MAX_RD_BURSTS = 5,
    parameter C_SLOT_3_MAX_WR_BURSTS = 5,
    parameter C_SLOT_3_TXN_CNTR_EN = 1,

    parameter C_SLOT_3_HAS_BRESP         = 1,
    parameter C_SLOT_3_HAS_BURST         = 1,
    parameter C_SLOT_3_HAS_CACHE         = 1,
    parameter C_SLOT_3_HAS_LOCK         = 1,
    parameter C_SLOT_3_HAS_PROT         = 1,
    parameter C_SLOT_3_HAS_QOS         = 1,
    parameter C_SLOT_3_HAS_REGION         = 1,
    parameter C_SLOT_3_HAS_RRESP         = 1,
    parameter C_SLOT_3_HAS_WSTRB         = 1,
    parameter C_SLOT_3_HAS_TKEEP         = 1,
    parameter C_SLOT_3_HAS_TSTRB         = 1,
    parameter C_SLOT_3_HAS_TREADY        = 1,

    parameter C_SLOT_3_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_3_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_3_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_3_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 4 Interface parameters
    parameter C_SLOT_4_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_4_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_4_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_4_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_4_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_4_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_4_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_4_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_4_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_4_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_4_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_4_MAX_RD_BURSTS = 5,
    parameter C_SLOT_4_MAX_WR_BURSTS = 5,
    parameter C_SLOT_4_TXN_CNTR_EN = 1,

    parameter C_SLOT_4_HAS_BRESP         = 1,
    parameter C_SLOT_4_HAS_BURST         = 1,
    parameter C_SLOT_4_HAS_CACHE         = 1,
    parameter C_SLOT_4_HAS_LOCK         = 1,
    parameter C_SLOT_4_HAS_PROT         = 1,
    parameter C_SLOT_4_HAS_QOS         = 1,
    parameter C_SLOT_4_HAS_REGION         = 1,
    parameter C_SLOT_4_HAS_RRESP         = 1,
    parameter C_SLOT_4_HAS_WSTRB         = 1,
    parameter C_SLOT_4_HAS_TKEEP         = 1,
    parameter C_SLOT_4_HAS_TSTRB         = 1,
    parameter C_SLOT_4_HAS_TREADY        = 1,

    parameter C_SLOT_4_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_4_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_4_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_4_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 5 Interface parameters
    parameter C_SLOT_5_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_5_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_5_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_5_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_5_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_5_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_5_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_5_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_5_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_5_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_5_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_5_MAX_RD_BURSTS = 5,
    parameter C_SLOT_5_MAX_WR_BURSTS = 5,
    parameter C_SLOT_5_TXN_CNTR_EN = 1,

    parameter C_SLOT_5_HAS_BRESP         = 1,
    parameter C_SLOT_5_HAS_BURST         = 1,
    parameter C_SLOT_5_HAS_CACHE         = 1,
    parameter C_SLOT_5_HAS_LOCK         = 1,
    parameter C_SLOT_5_HAS_PROT         = 1,
    parameter C_SLOT_5_HAS_QOS         = 1,
    parameter C_SLOT_5_HAS_REGION         = 1,
    parameter C_SLOT_5_HAS_RRESP         = 1,
    parameter C_SLOT_5_HAS_WSTRB         = 1,
    parameter C_SLOT_5_HAS_TKEEP         = 1,
    parameter C_SLOT_5_HAS_TSTRB         = 1,
    parameter C_SLOT_5_HAS_TREADY        = 1,

    parameter C_SLOT_5_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_5_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_5_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_5_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 6 Interface parameters
    parameter C_SLOT_6_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_6_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_6_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_6_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_6_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_6_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_6_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_6_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_6_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_6_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_6_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_6_MAX_RD_BURSTS = 5,
    parameter C_SLOT_6_MAX_WR_BURSTS = 5,
    parameter C_SLOT_6_TXN_CNTR_EN = 1,

    parameter C_SLOT_6_HAS_BRESP         = 1,
    parameter C_SLOT_6_HAS_BURST         = 1,
    parameter C_SLOT_6_HAS_CACHE         = 1,
    parameter C_SLOT_6_HAS_LOCK         = 1,
    parameter C_SLOT_6_HAS_PROT         = 1,
    parameter C_SLOT_6_HAS_QOS         = 1,
    parameter C_SLOT_6_HAS_REGION         = 1,
    parameter C_SLOT_6_HAS_RRESP         = 1,
    parameter C_SLOT_6_HAS_WSTRB         = 1,
    parameter C_SLOT_6_HAS_TKEEP         = 1,
    parameter C_SLOT_6_HAS_TSTRB         = 1,
    parameter C_SLOT_6_HAS_TREADY        = 1,

    parameter C_SLOT_6_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_6_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_6_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_6_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 7 Interface parameters
    parameter C_SLOT_7_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_7_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_7_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_7_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_7_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_7_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_7_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_7_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_7_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_7_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_7_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_7_MAX_RD_BURSTS = 5,
    parameter C_SLOT_7_MAX_WR_BURSTS = 5,
    parameter C_SLOT_7_TXN_CNTR_EN = 1,

    parameter C_SLOT_7_HAS_BRESP         = 1,
    parameter C_SLOT_7_HAS_BURST         = 1,
    parameter C_SLOT_7_HAS_CACHE         = 1,
    parameter C_SLOT_7_HAS_LOCK         = 1,
    parameter C_SLOT_7_HAS_PROT         = 1,
    parameter C_SLOT_7_HAS_QOS         = 1,
    parameter C_SLOT_7_HAS_REGION         = 1,
    parameter C_SLOT_7_HAS_RRESP         = 1,
    parameter C_SLOT_7_HAS_WSTRB         = 1,
    parameter C_SLOT_7_HAS_TKEEP         = 1,
    parameter C_SLOT_7_HAS_TSTRB         = 1,
    parameter C_SLOT_7_HAS_TREADY        = 1,

    parameter C_SLOT_7_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_7_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_7_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_7_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 8 Interface parameters
    parameter C_SLOT_8_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_8_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_8_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_8_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_8_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_8_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_8_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_8_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_8_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_8_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_8_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_8_MAX_RD_BURSTS = 5,
    parameter C_SLOT_8_MAX_WR_BURSTS = 5,
    parameter C_SLOT_8_TXN_CNTR_EN = 1,

    parameter C_SLOT_8_HAS_BRESP         = 1,
    parameter C_SLOT_8_HAS_BURST         = 1,
    parameter C_SLOT_8_HAS_CACHE         = 1,
    parameter C_SLOT_8_HAS_LOCK         = 1,
    parameter C_SLOT_8_HAS_PROT         = 1,
    parameter C_SLOT_8_HAS_QOS         = 1,
    parameter C_SLOT_8_HAS_REGION         = 1,
    parameter C_SLOT_8_HAS_RRESP         = 1,
    parameter C_SLOT_8_HAS_WSTRB         = 1,
    parameter C_SLOT_8_HAS_TKEEP         = 1,
    parameter C_SLOT_8_HAS_TSTRB         = 1,
    parameter C_SLOT_8_HAS_TREADY        = 1,

    parameter C_SLOT_8_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_8_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_8_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_8_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 9 Interface parameters
    parameter C_SLOT_9_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_9_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_9_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_9_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_9_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_9_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_9_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_9_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_9_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_9_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_9_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_9_MAX_RD_BURSTS = 5,
    parameter C_SLOT_9_MAX_WR_BURSTS = 5,
    parameter C_SLOT_9_TXN_CNTR_EN = 1,

    parameter C_SLOT_9_HAS_BRESP         = 1,
    parameter C_SLOT_9_HAS_BURST         = 1,
    parameter C_SLOT_9_HAS_CACHE         = 1,
    parameter C_SLOT_9_HAS_LOCK         = 1,
    parameter C_SLOT_9_HAS_PROT         = 1,
    parameter C_SLOT_9_HAS_QOS         = 1,
    parameter C_SLOT_9_HAS_REGION         = 1,
    parameter C_SLOT_9_HAS_RRESP         = 1,
    parameter C_SLOT_9_HAS_WSTRB         = 1,
    parameter C_SLOT_9_HAS_TKEEP         = 1,
    parameter C_SLOT_9_HAS_TSTRB         = 1,
    parameter C_SLOT_9_HAS_TREADY        = 1,

    parameter C_SLOT_9_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_9_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_9_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_9_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 10 Interface parameters
    parameter C_SLOT_10_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_10_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_10_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_10_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_10_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_10_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_10_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_10_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_10_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_10_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_10_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_10_MAX_RD_BURSTS = 5,
    parameter C_SLOT_10_MAX_WR_BURSTS = 5,
    parameter C_SLOT_10_TXN_CNTR_EN = 1,

    parameter C_SLOT_10_HAS_BRESP         = 1,
    parameter C_SLOT_10_HAS_BURST         = 1,
    parameter C_SLOT_10_HAS_CACHE         = 1,
    parameter C_SLOT_10_HAS_LOCK         = 1,
    parameter C_SLOT_10_HAS_PROT         = 1,
    parameter C_SLOT_10_HAS_QOS         = 1,
    parameter C_SLOT_10_HAS_REGION         = 1,
    parameter C_SLOT_10_HAS_RRESP         = 1,
    parameter C_SLOT_10_HAS_WSTRB         = 1,
    parameter C_SLOT_10_HAS_TKEEP         = 1,
    parameter C_SLOT_10_HAS_TSTRB         = 1,
    parameter C_SLOT_10_HAS_TREADY        = 1,

    parameter C_SLOT_10_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_10_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_10_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_10_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 11 Interface parameters
    parameter C_SLOT_11_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_11_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_11_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_11_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_11_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_11_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_11_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_11_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_11_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_11_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_11_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_11_MAX_RD_BURSTS = 5,
    parameter C_SLOT_11_MAX_WR_BURSTS = 5,
    parameter C_SLOT_11_TXN_CNTR_EN = 1,

    parameter C_SLOT_11_HAS_BRESP         = 1,
    parameter C_SLOT_11_HAS_BURST         = 1,
    parameter C_SLOT_11_HAS_CACHE         = 1,
    parameter C_SLOT_11_HAS_LOCK         = 1,
    parameter C_SLOT_11_HAS_PROT         = 1,
    parameter C_SLOT_11_HAS_QOS         = 1,
    parameter C_SLOT_11_HAS_REGION         = 1,
    parameter C_SLOT_11_HAS_RRESP         = 1,
    parameter C_SLOT_11_HAS_WSTRB         = 1,
    parameter C_SLOT_11_HAS_TKEEP         = 1,
    parameter C_SLOT_11_HAS_TSTRB         = 1,
    parameter C_SLOT_11_HAS_TREADY        = 1,

    parameter C_SLOT_11_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_11_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_11_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_11_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 12 Interface parameters
    parameter C_SLOT_12_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_12_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_12_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_12_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_12_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_12_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_12_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_12_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_12_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_12_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_12_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_12_MAX_RD_BURSTS = 5,
    parameter C_SLOT_12_MAX_WR_BURSTS = 5,
    parameter C_SLOT_12_TXN_CNTR_EN = 1,

    parameter C_SLOT_12_HAS_BRESP         = 1,
    parameter C_SLOT_12_HAS_BURST         = 1,
    parameter C_SLOT_12_HAS_CACHE         = 1,
    parameter C_SLOT_12_HAS_LOCK         = 1,
    parameter C_SLOT_12_HAS_PROT         = 1,
    parameter C_SLOT_12_HAS_QOS         = 1,
    parameter C_SLOT_12_HAS_REGION         = 1,
    parameter C_SLOT_12_HAS_RRESP         = 1,
    parameter C_SLOT_12_HAS_WSTRB         = 1,
    parameter C_SLOT_12_HAS_TKEEP         = 1,
    parameter C_SLOT_12_HAS_TSTRB         = 1,
    parameter C_SLOT_12_HAS_TREADY        = 1,

    parameter C_SLOT_12_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_12_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_12_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_12_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 13 Interface parameters
    parameter C_SLOT_13_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_13_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_13_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_13_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_13_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_13_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_13_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_13_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_13_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_13_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_13_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_13_MAX_RD_BURSTS = 5,
    parameter C_SLOT_13_MAX_WR_BURSTS = 5,
    parameter C_SLOT_13_TXN_CNTR_EN = 1,

    parameter C_SLOT_13_HAS_BRESP         = 1,
    parameter C_SLOT_13_HAS_BURST         = 1,
    parameter C_SLOT_13_HAS_CACHE         = 1,
    parameter C_SLOT_13_HAS_LOCK         = 1,
    parameter C_SLOT_13_HAS_PROT         = 1,
    parameter C_SLOT_13_HAS_QOS         = 1,
    parameter C_SLOT_13_HAS_REGION         = 1,
    parameter C_SLOT_13_HAS_RRESP         = 1,
    parameter C_SLOT_13_HAS_WSTRB         = 1,
    parameter C_SLOT_13_HAS_TKEEP         = 1,
    parameter C_SLOT_13_HAS_TSTRB         = 1,
    parameter C_SLOT_13_HAS_TREADY        = 1,

    parameter C_SLOT_13_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_13_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_13_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_13_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 14 Interface parameters
    parameter C_SLOT_14_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_14_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_14_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_14_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_14_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_14_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_14_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_14_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_14_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_14_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_14_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_14_MAX_RD_BURSTS = 5,
    parameter C_SLOT_14_MAX_WR_BURSTS = 5,
    parameter C_SLOT_14_TXN_CNTR_EN = 1,

    parameter C_SLOT_14_HAS_BRESP         = 1,
    parameter C_SLOT_14_HAS_BURST         = 1,
    parameter C_SLOT_14_HAS_CACHE         = 1,
    parameter C_SLOT_14_HAS_LOCK         = 1,
    parameter C_SLOT_14_HAS_PROT         = 1,
    parameter C_SLOT_14_HAS_QOS         = 1,
    parameter C_SLOT_14_HAS_REGION         = 1,
    parameter C_SLOT_14_HAS_RRESP         = 1,
    parameter C_SLOT_14_HAS_WSTRB         = 1,
    parameter C_SLOT_14_HAS_TKEEP         = 1,
    parameter C_SLOT_14_HAS_TSTRB         = 1,
    parameter C_SLOT_14_HAS_TREADY        = 1,

    parameter C_SLOT_14_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_14_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_14_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_14_AXIS_TUSER_WIDTH       = 1,
    //AXI Slot 15 Interface parameters
    parameter C_SLOT_15_AXI_ADDR_WIDTH         = 32,
    parameter C_SLOT_15_AXI_DATA_WIDTH         = 32,
    parameter C_SLOT_15_AXI_AWUSER_WIDTH       = 1,
    parameter C_SLOT_15_AXI_WUSER_WIDTH        = 1,
    parameter C_SLOT_15_AXI_BUSER_WIDTH        = 1,
    parameter C_SLOT_15_AXI_ARUSER_WIDTH       = 1,
    parameter C_SLOT_15_AXI_RUSER_WIDTH        = 1,
    parameter C_SLOT_15_AXI_AXLEN_WIDTH        = 1,
    parameter C_SLOT_15_AXI_AXLOCK_WIDTH       = 1,
    parameter C_SLOT_15_AXI_ID_WIDTH           = 1,
    parameter C_SLOT_15_AXI_PROTOCOL           = "AXI4",
    parameter C_SLOT_15_MAX_RD_BURSTS = 5,
    parameter C_SLOT_15_MAX_WR_BURSTS = 5,
    parameter C_SLOT_15_TXN_CNTR_EN = 1,

    parameter C_SLOT_15_HAS_BRESP         = 1,
    parameter C_SLOT_15_HAS_BURST         = 1,
    parameter C_SLOT_15_HAS_CACHE         = 1,
    parameter C_SLOT_15_HAS_LOCK         = 1,
    parameter C_SLOT_15_HAS_PROT         = 1,
    parameter C_SLOT_15_HAS_QOS         = 1,
    parameter C_SLOT_15_HAS_REGION         = 1,
    parameter C_SLOT_15_HAS_RRESP         = 1,
    parameter C_SLOT_15_HAS_WSTRB         = 1,
    parameter C_SLOT_15_HAS_TKEEP         = 1,
    parameter C_SLOT_15_HAS_TSTRB         = 1,
    parameter C_SLOT_15_HAS_TREADY        = 1,

    parameter C_SLOT_15_AXIS_TDATA_WIDTH       = 32,
    parameter C_SLOT_15_AXIS_TID_WIDTH         = 1,
    parameter C_SLOT_15_AXIS_TDEST_WIDTH       = 1,
    parameter C_SLOT_15_AXIS_TUSER_WIDTH       = 1,
   parameter C_EN_GIGAMUX = "1"


) (
    input wire aclk,
    input wire aresetn,
    input [C_PROBE0_WIDTH-1:0] probe0,
    input [C_PROBE1_WIDTH-1:0] probe1,
    input [C_PROBE2_WIDTH-1:0] probe2,
    input [C_PROBE3_WIDTH-1:0] probe3,
    input [C_PROBE4_WIDTH-1:0] probe4,
    input [C_PROBE5_WIDTH-1:0] probe5,
    input [C_PROBE6_WIDTH-1:0] probe6,
    input [C_PROBE7_WIDTH-1:0] probe7,
    input [C_PROBE8_WIDTH-1:0] probe8,
    input [C_PROBE9_WIDTH-1:0] probe9,
    input [C_PROBE10_WIDTH-1:0] probe10,
    input [C_PROBE11_WIDTH-1:0] probe11,
    input [C_PROBE12_WIDTH-1:0] probe12,
    input [C_PROBE13_WIDTH-1:0] probe13,
    input [C_PROBE14_WIDTH-1:0] probe14,
    input [C_PROBE15_WIDTH-1:0] probe15,
    input [C_PROBE16_WIDTH-1:0] probe16,
    input [C_PROBE17_WIDTH-1:0] probe17,
    input [C_PROBE18_WIDTH-1:0] probe18,
    input [C_PROBE19_WIDTH-1:0] probe19,
    input [C_PROBE20_WIDTH-1:0] probe20,
    input [C_PROBE21_WIDTH-1:0] probe21,
    input [C_PROBE22_WIDTH-1:0] probe22,
    input [C_PROBE23_WIDTH-1:0] probe23,
    input [C_PROBE24_WIDTH-1:0] probe24,
    input [C_PROBE25_WIDTH-1:0] probe25,
    input [C_PROBE26_WIDTH-1:0] probe26,
    input [C_PROBE27_WIDTH-1:0] probe27,
    input [C_PROBE28_WIDTH-1:0] probe28,
    input [C_PROBE29_WIDTH-1:0] probe29,
    input [C_PROBE30_WIDTH-1:0] probe30,
    input [C_PROBE31_WIDTH-1:0] probe31,
    input [C_PROBE32_WIDTH-1:0] probe32,
    input [C_PROBE33_WIDTH-1:0] probe33,
    input [C_PROBE34_WIDTH-1:0] probe34,
    input [C_PROBE35_WIDTH-1:0] probe35,
    input [C_PROBE36_WIDTH-1:0] probe36,
    input [C_PROBE37_WIDTH-1:0] probe37,
    input [C_PROBE38_WIDTH-1:0] probe38,
    input [C_PROBE39_WIDTH-1:0] probe39,
    input [C_PROBE40_WIDTH-1:0] probe40,
    input [C_PROBE41_WIDTH-1:0] probe41,
    input [C_PROBE42_WIDTH-1:0] probe42,
    input [C_PROBE43_WIDTH-1:0] probe43,
    input [C_PROBE44_WIDTH-1:0] probe44,
    input [C_PROBE45_WIDTH-1:0] probe45,
    input [C_PROBE46_WIDTH-1:0] probe46,
    input [C_PROBE47_WIDTH-1:0] probe47,
    input [C_PROBE48_WIDTH-1:0] probe48,
    input [C_PROBE49_WIDTH-1:0] probe49,
    input [C_PROBE50_WIDTH-1:0] probe50,
    input [C_PROBE51_WIDTH-1:0] probe51,
    input [C_PROBE52_WIDTH-1:0] probe52,
    input [C_PROBE53_WIDTH-1:0] probe53,
    input [C_PROBE54_WIDTH-1:0] probe54,
    input [C_PROBE55_WIDTH-1:0] probe55,
    input [C_PROBE56_WIDTH-1:0] probe56,
    input [C_PROBE57_WIDTH-1:0] probe57,
    input [C_PROBE58_WIDTH-1:0] probe58,
    input [C_PROBE59_WIDTH-1:0] probe59,
    input [C_PROBE60_WIDTH-1:0] probe60,
    input [C_PROBE61_WIDTH-1:0] probe61,
    input [C_PROBE62_WIDTH-1:0] probe62,
    input [C_PROBE63_WIDTH-1:0] probe63,
    input [C_PROBE64_WIDTH-1:0] probe64,
    input [C_PROBE65_WIDTH-1:0] probe65,
    input [C_PROBE66_WIDTH-1:0] probe66,
    input [C_PROBE67_WIDTH-1:0] probe67,
    input [C_PROBE68_WIDTH-1:0] probe68,
    input [C_PROBE69_WIDTH-1:0] probe69,
    input [C_PROBE70_WIDTH-1:0] probe70,
    input [C_PROBE71_WIDTH-1:0] probe71,
    input [C_PROBE72_WIDTH-1:0] probe72,
    input [C_PROBE73_WIDTH-1:0] probe73,
    input [C_PROBE74_WIDTH-1:0] probe74,
    input [C_PROBE75_WIDTH-1:0] probe75,
    input [C_PROBE76_WIDTH-1:0] probe76,
    input [C_PROBE77_WIDTH-1:0] probe77,
    input [C_PROBE78_WIDTH-1:0] probe78,
    input [C_PROBE79_WIDTH-1:0] probe79,
    input [C_PROBE80_WIDTH-1:0] probe80,
    input [C_PROBE81_WIDTH-1:0] probe81,
    input [C_PROBE82_WIDTH-1:0] probe82,
    input [C_PROBE83_WIDTH-1:0] probe83,
    input [C_PROBE84_WIDTH-1:0] probe84,
    input [C_PROBE85_WIDTH-1:0] probe85,
    input [C_PROBE86_WIDTH-1:0] probe86,
    input [C_PROBE87_WIDTH-1:0] probe87,
    input [C_PROBE88_WIDTH-1:0] probe88,
    input [C_PROBE89_WIDTH-1:0] probe89,
    input [C_PROBE90_WIDTH-1:0] probe90,
    input [C_PROBE91_WIDTH-1:0] probe91,
    input [C_PROBE92_WIDTH-1:0] probe92,
    input [C_PROBE93_WIDTH-1:0] probe93,
    input [C_PROBE94_WIDTH-1:0] probe94,
    input [C_PROBE95_WIDTH-1:0] probe95,
    input [C_PROBE96_WIDTH-1:0] probe96,
    input [C_PROBE97_WIDTH-1:0] probe97,
    input [C_PROBE98_WIDTH-1:0] probe98,
    input [C_PROBE99_WIDTH-1:0] probe99,
    input [C_PROBE100_WIDTH-1:0] probe100,
    input [C_PROBE101_WIDTH-1:0] probe101,
    input [C_PROBE102_WIDTH-1:0] probe102,
    input [C_PROBE103_WIDTH-1:0] probe103,
    input [C_PROBE104_WIDTH-1:0] probe104,
    input [C_PROBE105_WIDTH-1:0] probe105,
    input [C_PROBE106_WIDTH-1:0] probe106,
    input [C_PROBE107_WIDTH-1:0] probe107,
    input [C_PROBE108_WIDTH-1:0] probe108,
    input [C_PROBE109_WIDTH-1:0] probe109,
    input [C_PROBE110_WIDTH-1:0] probe110,
    input [C_PROBE111_WIDTH-1:0] probe111,
    input [C_PROBE112_WIDTH-1:0] probe112,
    input [C_PROBE113_WIDTH-1:0] probe113,
    input [C_PROBE114_WIDTH-1:0] probe114,
    input [C_PROBE115_WIDTH-1:0] probe115,
    input [C_PROBE116_WIDTH-1:0] probe116,
    input [C_PROBE117_WIDTH-1:0] probe117,
    input [C_PROBE118_WIDTH-1:0] probe118,
    input [C_PROBE119_WIDTH-1:0] probe119,
    input [C_PROBE120_WIDTH-1:0] probe120,
    input [C_PROBE121_WIDTH-1:0] probe121,
    input [C_PROBE122_WIDTH-1:0] probe122,
    input [C_PROBE123_WIDTH-1:0] probe123,
    input [C_PROBE124_WIDTH-1:0] probe124,
    input [C_PROBE125_WIDTH-1:0] probe125,
    input [C_PROBE126_WIDTH-1:0] probe126,
    input [C_PROBE127_WIDTH-1:0] probe127,
    input [C_PROBE128_WIDTH-1:0] probe128,
    input [C_PROBE129_WIDTH-1:0] probe129,
    input [C_PROBE130_WIDTH-1:0] probe130,
    input [C_PROBE131_WIDTH-1:0] probe131,
    input [C_PROBE132_WIDTH-1:0] probe132,
    input [C_PROBE133_WIDTH-1:0] probe133,
    input [C_PROBE134_WIDTH-1:0] probe134,
    input [C_PROBE135_WIDTH-1:0] probe135,
    input [C_PROBE136_WIDTH-1:0] probe136,
    input [C_PROBE137_WIDTH-1:0] probe137,
    input [C_PROBE138_WIDTH-1:0] probe138,
    input [C_PROBE139_WIDTH-1:0] probe139,
    input [C_PROBE140_WIDTH-1:0] probe140,
    input [C_PROBE141_WIDTH-1:0] probe141,
    input [C_PROBE142_WIDTH-1:0] probe142,
    input [C_PROBE143_WIDTH-1:0] probe143,
    input [C_PROBE144_WIDTH-1:0] probe144,
    input [C_PROBE145_WIDTH-1:0] probe145,
    input [C_PROBE146_WIDTH-1:0] probe146,
    input [C_PROBE147_WIDTH-1:0] probe147,
    input [C_PROBE148_WIDTH-1:0] probe148,
    input [C_PROBE149_WIDTH-1:0] probe149,
    input [C_PROBE150_WIDTH-1:0] probe150,
    input [C_PROBE151_WIDTH-1:0] probe151,
    input [C_PROBE152_WIDTH-1:0] probe152,
    input [C_PROBE153_WIDTH-1:0] probe153,
    input [C_PROBE154_WIDTH-1:0] probe154,
    input [C_PROBE155_WIDTH-1:0] probe155,
    input [C_PROBE156_WIDTH-1:0] probe156,
    input [C_PROBE157_WIDTH-1:0] probe157,
    input [C_PROBE158_WIDTH-1:0] probe158,
    input [C_PROBE159_WIDTH-1:0] probe159,
    input [C_PROBE160_WIDTH-1:0] probe160,
    input [C_PROBE161_WIDTH-1:0] probe161,
    input [C_PROBE162_WIDTH-1:0] probe162,
    input [C_PROBE163_WIDTH-1:0] probe163,
    input [C_PROBE164_WIDTH-1:0] probe164,
    input [C_PROBE165_WIDTH-1:0] probe165,
    input [C_PROBE166_WIDTH-1:0] probe166,
    input [C_PROBE167_WIDTH-1:0] probe167,
    input [C_PROBE168_WIDTH-1:0] probe168,
    input [C_PROBE169_WIDTH-1:0] probe169,
    input [C_PROBE170_WIDTH-1:0] probe170,
    input [C_PROBE171_WIDTH-1:0] probe171,
    input [C_PROBE172_WIDTH-1:0] probe172,
    input [C_PROBE173_WIDTH-1:0] probe173,
    input [C_PROBE174_WIDTH-1:0] probe174,
    input [C_PROBE175_WIDTH-1:0] probe175,
    input [C_PROBE176_WIDTH-1:0] probe176,
    input [C_PROBE177_WIDTH-1:0] probe177,
    input [C_PROBE178_WIDTH-1:0] probe178,
    input [C_PROBE179_WIDTH-1:0] probe179,
    input [C_PROBE180_WIDTH-1:0] probe180,
    input [C_PROBE181_WIDTH-1:0] probe181,
    input [C_PROBE182_WIDTH-1:0] probe182,
    input [C_PROBE183_WIDTH-1:0] probe183,
    input [C_PROBE184_WIDTH-1:0] probe184,
    input [C_PROBE185_WIDTH-1:0] probe185,
    input [C_PROBE186_WIDTH-1:0] probe186,
    input [C_PROBE187_WIDTH-1:0] probe187,
    input [C_PROBE188_WIDTH-1:0] probe188,
    input [C_PROBE189_WIDTH-1:0] probe189,
    input [C_PROBE190_WIDTH-1:0] probe190,
    input [C_PROBE191_WIDTH-1:0] probe191,
    input [C_PROBE192_WIDTH-1:0] probe192,
    input [C_PROBE193_WIDTH-1:0] probe193,
    input [C_PROBE194_WIDTH-1:0] probe194,
    input [C_PROBE195_WIDTH-1:0] probe195,
    input [C_PROBE196_WIDTH-1:0] probe196,
    input [C_PROBE197_WIDTH-1:0] probe197,
    input [C_PROBE198_WIDTH-1:0] probe198,
    input [C_PROBE199_WIDTH-1:0] probe199,
    input [C_PROBE200_WIDTH-1:0] probe200,
    input [C_PROBE201_WIDTH-1:0] probe201,
    input [C_PROBE202_WIDTH-1:0] probe202,
    input [C_PROBE203_WIDTH-1:0] probe203,
    input [C_PROBE204_WIDTH-1:0] probe204,
    input [C_PROBE205_WIDTH-1:0] probe205,
    input [C_PROBE206_WIDTH-1:0] probe206,
    input [C_PROBE207_WIDTH-1:0] probe207,
    input [C_PROBE208_WIDTH-1:0] probe208,
    input [C_PROBE209_WIDTH-1:0] probe209,
    input [C_PROBE210_WIDTH-1:0] probe210,
    input [C_PROBE211_WIDTH-1:0] probe211,
    input [C_PROBE212_WIDTH-1:0] probe212,
    input [C_PROBE213_WIDTH-1:0] probe213,
    input [C_PROBE214_WIDTH-1:0] probe214,
    input [C_PROBE215_WIDTH-1:0] probe215,
    input [C_PROBE216_WIDTH-1:0] probe216,
    input [C_PROBE217_WIDTH-1:0] probe217,
    input [C_PROBE218_WIDTH-1:0] probe218,
    input [C_PROBE219_WIDTH-1:0] probe219,
    input [C_PROBE220_WIDTH-1:0] probe220,
    input [C_PROBE221_WIDTH-1:0] probe221,
    input [C_PROBE222_WIDTH-1:0] probe222,
    input [C_PROBE223_WIDTH-1:0] probe223,
    input [C_PROBE224_WIDTH-1:0] probe224,
    input [C_PROBE225_WIDTH-1:0] probe225,
    input [C_PROBE226_WIDTH-1:0] probe226,
    input [C_PROBE227_WIDTH-1:0] probe227,
    input [C_PROBE228_WIDTH-1:0] probe228,
    input [C_PROBE229_WIDTH-1:0] probe229,
    input [C_PROBE230_WIDTH-1:0] probe230,
    input [C_PROBE231_WIDTH-1:0] probe231,
    input [C_PROBE232_WIDTH-1:0] probe232,
    input [C_PROBE233_WIDTH-1:0] probe233,
    input [C_PROBE234_WIDTH-1:0] probe234,
    input [C_PROBE235_WIDTH-1:0] probe235,
    input [C_PROBE236_WIDTH-1:0] probe236,
    input [C_PROBE237_WIDTH-1:0] probe237,
    input [C_PROBE238_WIDTH-1:0] probe238,
    input [C_PROBE239_WIDTH-1:0] probe239,
    input [C_PROBE240_WIDTH-1:0] probe240,
    input [C_PROBE241_WIDTH-1:0] probe241,
    input [C_PROBE242_WIDTH-1:0] probe242,
    input [C_PROBE243_WIDTH-1:0] probe243,
    input [C_PROBE244_WIDTH-1:0] probe244,
    input [C_PROBE245_WIDTH-1:0] probe245,
    input [C_PROBE246_WIDTH-1:0] probe246,
    input [C_PROBE247_WIDTH-1:0] probe247,
    input [C_PROBE248_WIDTH-1:0] probe248,
    input [C_PROBE249_WIDTH-1:0] probe249,
    input [C_PROBE250_WIDTH-1:0] probe250,
    input [C_PROBE251_WIDTH-1:0] probe251,
    input [C_PROBE252_WIDTH-1:0] probe252,
    input [C_PROBE253_WIDTH-1:0] probe253,
    input [C_PROBE254_WIDTH-1:0] probe254,
    input [C_PROBE255_WIDTH-1:0] probe255,
    input [C_PROBE256_WIDTH-1:0] probe256,
    input [C_PROBE257_WIDTH-1:0] probe257,
    input [C_PROBE258_WIDTH-1:0] probe258,
    input [C_PROBE259_WIDTH-1:0] probe259,
    input [C_PROBE260_WIDTH-1:0] probe260,
    input [C_PROBE261_WIDTH-1:0] probe261,
    input [C_PROBE262_WIDTH-1:0] probe262,
    input [C_PROBE263_WIDTH-1:0] probe263,
    input [C_PROBE264_WIDTH-1:0] probe264,
    input [C_PROBE265_WIDTH-1:0] probe265,
    input [C_PROBE266_WIDTH-1:0] probe266,
    input [C_PROBE267_WIDTH-1:0] probe267,
    input [C_PROBE268_WIDTH-1:0] probe268,
    input [C_PROBE269_WIDTH-1:0] probe269,
    input [C_PROBE270_WIDTH-1:0] probe270,
    input [C_PROBE271_WIDTH-1:0] probe271,
    input [C_PROBE272_WIDTH-1:0] probe272,
    input [C_PROBE273_WIDTH-1:0] probe273,
    input [C_PROBE274_WIDTH-1:0] probe274,
    input [C_PROBE275_WIDTH-1:0] probe275,
    input [C_PROBE276_WIDTH-1:0] probe276,
    input [C_PROBE277_WIDTH-1:0] probe277,
    input [C_PROBE278_WIDTH-1:0] probe278,
    input [C_PROBE279_WIDTH-1:0] probe279,
    input [C_PROBE280_WIDTH-1:0] probe280,
    input [C_PROBE281_WIDTH-1:0] probe281,
    input [C_PROBE282_WIDTH-1:0] probe282,
    input [C_PROBE283_WIDTH-1:0] probe283,
    input [C_PROBE284_WIDTH-1:0] probe284,
    input [C_PROBE285_WIDTH-1:0] probe285,
    input [C_PROBE286_WIDTH-1:0] probe286,
    input [C_PROBE287_WIDTH-1:0] probe287,
    input [C_PROBE288_WIDTH-1:0] probe288,
    input [C_PROBE289_WIDTH-1:0] probe289,
    input [C_PROBE290_WIDTH-1:0] probe290,
    input [C_PROBE291_WIDTH-1:0] probe291,
    input [C_PROBE292_WIDTH-1:0] probe292,
    input [C_PROBE293_WIDTH-1:0] probe293,
    input [C_PROBE294_WIDTH-1:0] probe294,
    input [C_PROBE295_WIDTH-1:0] probe295,
    input [C_PROBE296_WIDTH-1:0] probe296,
    input [C_PROBE297_WIDTH-1:0] probe297,
    input [C_PROBE298_WIDTH-1:0] probe298,
    input [C_PROBE299_WIDTH-1:0] probe299,
    input [C_PROBE300_WIDTH-1:0] probe300,
    input [C_PROBE301_WIDTH-1:0] probe301,
    input [C_PROBE302_WIDTH-1:0] probe302,
    input [C_PROBE303_WIDTH-1:0] probe303,
    input [C_PROBE304_WIDTH-1:0] probe304,
    input [C_PROBE305_WIDTH-1:0] probe305,
    input [C_PROBE306_WIDTH-1:0] probe306,
    input [C_PROBE307_WIDTH-1:0] probe307,
    input [C_PROBE308_WIDTH-1:0] probe308,
    input [C_PROBE309_WIDTH-1:0] probe309,
    input [C_PROBE310_WIDTH-1:0] probe310,
    input [C_PROBE311_WIDTH-1:0] probe311,
    input [C_PROBE312_WIDTH-1:0] probe312,
    input [C_PROBE313_WIDTH-1:0] probe313,
    input [C_PROBE314_WIDTH-1:0] probe314,
    input [C_PROBE315_WIDTH-1:0] probe315,
    input [C_PROBE316_WIDTH-1:0] probe316,
    input [C_PROBE317_WIDTH-1:0] probe317,
    input [C_PROBE318_WIDTH-1:0] probe318,
    input [C_PROBE319_WIDTH-1:0] probe319,
    input [C_PROBE320_WIDTH-1:0] probe320,
    input [C_PROBE321_WIDTH-1:0] probe321,
    input [C_PROBE322_WIDTH-1:0] probe322,
    input [C_PROBE323_WIDTH-1:0] probe323,
    input [C_PROBE324_WIDTH-1:0] probe324,
    input [C_PROBE325_WIDTH-1:0] probe325,
    input [C_PROBE326_WIDTH-1:0] probe326,
    input [C_PROBE327_WIDTH-1:0] probe327,
    input [C_PROBE328_WIDTH-1:0] probe328,
    input [C_PROBE329_WIDTH-1:0] probe329,
    input [C_PROBE330_WIDTH-1:0] probe330,
    input [C_PROBE331_WIDTH-1:0] probe331,
    input [C_PROBE332_WIDTH-1:0] probe332,
    input [C_PROBE333_WIDTH-1:0] probe333,
    input [C_PROBE334_WIDTH-1:0] probe334,
    input [C_PROBE335_WIDTH-1:0] probe335,
    input [C_PROBE336_WIDTH-1:0] probe336,
    input [C_PROBE337_WIDTH-1:0] probe337,
    input [C_PROBE338_WIDTH-1:0] probe338,
    input [C_PROBE339_WIDTH-1:0] probe339,
    input [C_PROBE340_WIDTH-1:0] probe340,
    input [C_PROBE341_WIDTH-1:0] probe341,
    input [C_PROBE342_WIDTH-1:0] probe342,
    input [C_PROBE343_WIDTH-1:0] probe343,
    input [C_PROBE344_WIDTH-1:0] probe344,
    input [C_PROBE345_WIDTH-1:0] probe345,
    input [C_PROBE346_WIDTH-1:0] probe346,
    input [C_PROBE347_WIDTH-1:0] probe347,
    input [C_PROBE348_WIDTH-1:0] probe348,
    input [C_PROBE349_WIDTH-1:0] probe349,
    input [C_PROBE350_WIDTH-1:0] probe350,
    input [C_PROBE351_WIDTH-1:0] probe351,
    input [C_PROBE352_WIDTH-1:0] probe352,
    input [C_PROBE353_WIDTH-1:0] probe353,
    input [C_PROBE354_WIDTH-1:0] probe354,
    input [C_PROBE355_WIDTH-1:0] probe355,
    input [C_PROBE356_WIDTH-1:0] probe356,
    input [C_PROBE357_WIDTH-1:0] probe357,
    input [C_PROBE358_WIDTH-1:0] probe358,
    input [C_PROBE359_WIDTH-1:0] probe359,
    input [C_PROBE360_WIDTH-1:0] probe360,
    input [C_PROBE361_WIDTH-1:0] probe361,
    input [C_PROBE362_WIDTH-1:0] probe362,
    input [C_PROBE363_WIDTH-1:0] probe363,
    input [C_PROBE364_WIDTH-1:0] probe364,
    input [C_PROBE365_WIDTH-1:0] probe365,
    input [C_PROBE366_WIDTH-1:0] probe366,
    input [C_PROBE367_WIDTH-1:0] probe367,
    input [C_PROBE368_WIDTH-1:0] probe368,
    input [C_PROBE369_WIDTH-1:0] probe369,
    input [C_PROBE370_WIDTH-1:0] probe370,
    input [C_PROBE371_WIDTH-1:0] probe371,
    input [C_PROBE372_WIDTH-1:0] probe372,
    input [C_PROBE373_WIDTH-1:0] probe373,
    input [C_PROBE374_WIDTH-1:0] probe374,
    input [C_PROBE375_WIDTH-1:0] probe375,
    input [C_PROBE376_WIDTH-1:0] probe376,
    input [C_PROBE377_WIDTH-1:0] probe377,
    input [C_PROBE378_WIDTH-1:0] probe378,
    input [C_PROBE379_WIDTH-1:0] probe379,
    input [C_PROBE380_WIDTH-1:0] probe380,
    input [C_PROBE381_WIDTH-1:0] probe381,
    input [C_PROBE382_WIDTH-1:0] probe382,
    input [C_PROBE383_WIDTH-1:0] probe383,
    input [C_PROBE384_WIDTH-1:0] probe384,
    input [C_PROBE385_WIDTH-1:0] probe385,
    input [C_PROBE386_WIDTH-1:0] probe386,
    input [C_PROBE387_WIDTH-1:0] probe387,
    input [C_PROBE388_WIDTH-1:0] probe388,
    input [C_PROBE389_WIDTH-1:0] probe389,
    input [C_PROBE390_WIDTH-1:0] probe390,
    input [C_PROBE391_WIDTH-1:0] probe391,
    input [C_PROBE392_WIDTH-1:0] probe392,
    input [C_PROBE393_WIDTH-1:0] probe393,
    input [C_PROBE394_WIDTH-1:0] probe394,
    input [C_PROBE395_WIDTH-1:0] probe395,
    input [C_PROBE396_WIDTH-1:0] probe396,
    input [C_PROBE397_WIDTH-1:0] probe397,
    input [C_PROBE398_WIDTH-1:0] probe398,
    input [C_PROBE399_WIDTH-1:0] probe399,
    input [C_PROBE400_WIDTH-1:0] probe400,
    input [C_PROBE401_WIDTH-1:0] probe401,
    input [C_PROBE402_WIDTH-1:0] probe402,
    input [C_PROBE403_WIDTH-1:0] probe403,
    input [C_PROBE404_WIDTH-1:0] probe404,
    input [C_PROBE405_WIDTH-1:0] probe405,
    input [C_PROBE406_WIDTH-1:0] probe406,
    input [C_PROBE407_WIDTH-1:0] probe407,
    input [C_PROBE408_WIDTH-1:0] probe408,
    input [C_PROBE409_WIDTH-1:0] probe409,
    input [C_PROBE410_WIDTH-1:0] probe410,
    input [C_PROBE411_WIDTH-1:0] probe411,
    input [C_PROBE412_WIDTH-1:0] probe412,
    input [C_PROBE413_WIDTH-1:0] probe413,
    input [C_PROBE414_WIDTH-1:0] probe414,
    input [C_PROBE415_WIDTH-1:0] probe415,
    input [C_PROBE416_WIDTH-1:0] probe416,
    input [C_PROBE417_WIDTH-1:0] probe417,
    input [C_PROBE418_WIDTH-1:0] probe418,
    input [C_PROBE419_WIDTH-1:0] probe419,
    input [C_PROBE420_WIDTH-1:0] probe420,
    input [C_PROBE421_WIDTH-1:0] probe421,
    input [C_PROBE422_WIDTH-1:0] probe422,
    input [C_PROBE423_WIDTH-1:0] probe423,
    input [C_PROBE424_WIDTH-1:0] probe424,
    input [C_PROBE425_WIDTH-1:0] probe425,
    input [C_PROBE426_WIDTH-1:0] probe426,
    input [C_PROBE427_WIDTH-1:0] probe427,
    input [C_PROBE428_WIDTH-1:0] probe428,
    input [C_PROBE429_WIDTH-1:0] probe429,
    input [C_PROBE430_WIDTH-1:0] probe430,
    input [C_PROBE431_WIDTH-1:0] probe431,
    input [C_PROBE432_WIDTH-1:0] probe432,
    input [C_PROBE433_WIDTH-1:0] probe433,
    input [C_PROBE434_WIDTH-1:0] probe434,
    input [C_PROBE435_WIDTH-1:0] probe435,
    input [C_PROBE436_WIDTH-1:0] probe436,
    input [C_PROBE437_WIDTH-1:0] probe437,
    input [C_PROBE438_WIDTH-1:0] probe438,
    input [C_PROBE439_WIDTH-1:0] probe439,
    input [C_PROBE440_WIDTH-1:0] probe440,
    input [C_PROBE441_WIDTH-1:0] probe441,
    input [C_PROBE442_WIDTH-1:0] probe442,
    input [C_PROBE443_WIDTH-1:0] probe443,
    input [C_PROBE444_WIDTH-1:0] probe444,
    input [C_PROBE445_WIDTH-1:0] probe445,
    input [C_PROBE446_WIDTH-1:0] probe446,
    input [C_PROBE447_WIDTH-1:0] probe447,
    input [C_PROBE448_WIDTH-1:0] probe448,
    input [C_PROBE449_WIDTH-1:0] probe449,
    input [C_PROBE450_WIDTH-1:0] probe450,
    input [C_PROBE451_WIDTH-1:0] probe451,
    input [C_PROBE452_WIDTH-1:0] probe452,
    input [C_PROBE453_WIDTH-1:0] probe453,
    input [C_PROBE454_WIDTH-1:0] probe454,
    input [C_PROBE455_WIDTH-1:0] probe455,
    input [C_PROBE456_WIDTH-1:0] probe456,
    input [C_PROBE457_WIDTH-1:0] probe457,
    input [C_PROBE458_WIDTH-1:0] probe458,
    input [C_PROBE459_WIDTH-1:0] probe459,
    input [C_PROBE460_WIDTH-1:0] probe460,
    input [C_PROBE461_WIDTH-1:0] probe461,
    input [C_PROBE462_WIDTH-1:0] probe462,
    input [C_PROBE463_WIDTH-1:0] probe463,
    input [C_PROBE464_WIDTH-1:0] probe464,
    input [C_PROBE465_WIDTH-1:0] probe465,
    input [C_PROBE466_WIDTH-1:0] probe466,
    input [C_PROBE467_WIDTH-1:0] probe467,
    input [C_PROBE468_WIDTH-1:0] probe468,
    input [C_PROBE469_WIDTH-1:0] probe469,
    input [C_PROBE470_WIDTH-1:0] probe470,
    input [C_PROBE471_WIDTH-1:0] probe471,
    input [C_PROBE472_WIDTH-1:0] probe472,
    input [C_PROBE473_WIDTH-1:0] probe473,
    input [C_PROBE474_WIDTH-1:0] probe474,
    input [C_PROBE475_WIDTH-1:0] probe475,
    input [C_PROBE476_WIDTH-1:0] probe476,
    input [C_PROBE477_WIDTH-1:0] probe477,
    input [C_PROBE478_WIDTH-1:0] probe478,
    input [C_PROBE479_WIDTH-1:0] probe479,
    input [C_PROBE480_WIDTH-1:0] probe480,
    input [C_PROBE481_WIDTH-1:0] probe481,
    input [C_PROBE482_WIDTH-1:0] probe482,
    input [C_PROBE483_WIDTH-1:0] probe483,
    input [C_PROBE484_WIDTH-1:0] probe484,
    input [C_PROBE485_WIDTH-1:0] probe485,
    input [C_PROBE486_WIDTH-1:0] probe486,
    input [C_PROBE487_WIDTH-1:0] probe487,
    input [C_PROBE488_WIDTH-1:0] probe488,
    input [C_PROBE489_WIDTH-1:0] probe489,
    input [C_PROBE490_WIDTH-1:0] probe490,
    input [C_PROBE491_WIDTH-1:0] probe491,
    input [C_PROBE492_WIDTH-1:0] probe492,
    input [C_PROBE493_WIDTH-1:0] probe493,
    input [C_PROBE494_WIDTH-1:0] probe494,
    input [C_PROBE495_WIDTH-1:0] probe495,
    input [C_PROBE496_WIDTH-1:0] probe496,
    input [C_PROBE497_WIDTH-1:0] probe497,
    input [C_PROBE498_WIDTH-1:0] probe498,
    input [C_PROBE499_WIDTH-1:0] probe499,
    input [C_PROBE500_WIDTH-1:0] probe500,
    input [C_PROBE501_WIDTH-1:0] probe501,
    input [C_PROBE502_WIDTH-1:0] probe502,
    input [C_PROBE503_WIDTH-1:0] probe503,
    input [C_PROBE504_WIDTH-1:0] probe504,
    input [C_PROBE505_WIDTH-1:0] probe505,
    input [C_PROBE506_WIDTH-1:0] probe506,
    input [C_PROBE507_WIDTH-1:0] probe507,
    input [C_PROBE508_WIDTH-1:0] probe508,
    input [C_PROBE509_WIDTH-1:0] probe509,
    input [C_PROBE510_WIDTH-1:0] probe510,
    input [C_PROBE511_WIDTH-1:0] probe511,
    output reg [C_MUX_PROBE0_WIDTH-1:0] probe_out0,
    output reg [C_MUX_PROBE1_WIDTH-1:0] probe_out1,
    output reg [C_MUX_PROBE2_WIDTH-1:0] probe_out2,
    output reg [C_MUX_PROBE3_WIDTH-1:0] probe_out3,
    output reg [C_MUX_PROBE4_WIDTH-1:0] probe_out4,
    output reg [C_MUX_PROBE5_WIDTH-1:0] probe_out5,
    output reg [C_MUX_PROBE6_WIDTH-1:0] probe_out6,
    output reg [C_MUX_PROBE7_WIDTH-1:0] probe_out7,
    output reg [C_MUX_PROBE8_WIDTH-1:0] probe_out8,
    output reg [C_MUX_PROBE9_WIDTH-1:0] probe_out9,
    output reg [C_MUX_PROBE10_WIDTH-1:0] probe_out10,
    output reg [C_MUX_PROBE11_WIDTH-1:0] probe_out11,
    output reg [C_MUX_PROBE12_WIDTH-1:0] probe_out12,
    output reg [C_MUX_PROBE13_WIDTH-1:0] probe_out13,
    output reg [C_MUX_PROBE14_WIDTH-1:0] probe_out14,
    output reg [C_MUX_PROBE15_WIDTH-1:0] probe_out15,
    output reg [C_MUX_PROBE16_WIDTH-1:0] probe_out16,
    output reg [C_MUX_PROBE17_WIDTH-1:0] probe_out17,
    output reg [C_MUX_PROBE18_WIDTH-1:0] probe_out18,
    output reg [C_MUX_PROBE19_WIDTH-1:0] probe_out19,
    output reg [C_MUX_PROBE20_WIDTH-1:0] probe_out20,
    output reg [C_MUX_PROBE21_WIDTH-1:0] probe_out21,
    output reg [C_MUX_PROBE22_WIDTH-1:0] probe_out22,
    output reg [C_MUX_PROBE23_WIDTH-1:0] probe_out23,
    output reg [C_MUX_PROBE24_WIDTH-1:0] probe_out24,
    output reg [C_MUX_PROBE25_WIDTH-1:0] probe_out25,
    output reg [C_MUX_PROBE26_WIDTH-1:0] probe_out26,
    output reg [C_MUX_PROBE27_WIDTH-1:0] probe_out27,
    output reg [C_MUX_PROBE28_WIDTH-1:0] probe_out28,
    output reg [C_MUX_PROBE29_WIDTH-1:0] probe_out29,
    output reg [C_MUX_PROBE30_WIDTH-1:0] probe_out30,
    output reg [C_MUX_PROBE31_WIDTH-1:0] probe_out31,
    output reg [C_MUX_PROBE32_WIDTH-1:0] probe_out32,
    output reg [C_MUX_PROBE33_WIDTH-1:0] probe_out33,
    output reg [C_MUX_PROBE34_WIDTH-1:0] probe_out34,
    output reg [C_MUX_PROBE35_WIDTH-1:0] probe_out35,
    output reg [C_MUX_PROBE36_WIDTH-1:0] probe_out36,
    output reg [C_MUX_PROBE37_WIDTH-1:0] probe_out37,
    output reg [C_MUX_PROBE38_WIDTH-1:0] probe_out38,
    output reg [C_MUX_PROBE39_WIDTH-1:0] probe_out39,
    output reg [C_MUX_PROBE40_WIDTH-1:0] probe_out40,
    output reg [C_MUX_PROBE41_WIDTH-1:0] probe_out41,
    output reg [C_MUX_PROBE42_WIDTH-1:0] probe_out42,
    output reg [C_MUX_PROBE43_WIDTH-1:0] probe_out43,
    output reg [C_MUX_PROBE44_WIDTH-1:0] probe_out44,
    output reg [C_MUX_PROBE45_WIDTH-1:0] probe_out45,
    output reg [C_MUX_PROBE46_WIDTH-1:0] probe_out46,
    output reg [C_MUX_PROBE47_WIDTH-1:0] probe_out47,
    output reg [C_MUX_PROBE48_WIDTH-1:0] probe_out48,
    output reg [C_MUX_PROBE49_WIDTH-1:0] probe_out49,
    output reg [C_MUX_PROBE50_WIDTH-1:0] probe_out50,
    output reg [C_MUX_PROBE51_WIDTH-1:0] probe_out51,
    output reg [C_MUX_PROBE52_WIDTH-1:0] probe_out52,
    output reg [C_MUX_PROBE53_WIDTH-1:0] probe_out53,
    output reg [C_MUX_PROBE54_WIDTH-1:0] probe_out54,
    output reg [C_MUX_PROBE55_WIDTH-1:0] probe_out55,
    output reg [C_MUX_PROBE56_WIDTH-1:0] probe_out56,
    output reg [C_MUX_PROBE57_WIDTH-1:0] probe_out57,
    output reg [C_MUX_PROBE58_WIDTH-1:0] probe_out58,
    output reg [C_MUX_PROBE59_WIDTH-1:0] probe_out59,
    output reg [C_MUX_PROBE60_WIDTH-1:0] probe_out60,
    output reg [C_MUX_PROBE61_WIDTH-1:0] probe_out61,
    output reg [C_MUX_PROBE62_WIDTH-1:0] probe_out62,
    output reg [C_MUX_PROBE63_WIDTH-1:0] probe_out63,
    output reg [C_MUX_PROBE64_WIDTH-1:0] probe_out64,
    output reg [C_MUX_PROBE65_WIDTH-1:0] probe_out65,
    output reg [C_MUX_PROBE66_WIDTH-1:0] probe_out66,
    output reg [C_MUX_PROBE67_WIDTH-1:0] probe_out67,
    output reg [C_MUX_PROBE68_WIDTH-1:0] probe_out68,
    output reg [C_MUX_PROBE69_WIDTH-1:0] probe_out69,
    output reg [C_MUX_PROBE70_WIDTH-1:0] probe_out70,
    output reg [C_MUX_PROBE71_WIDTH-1:0] probe_out71,
    output reg [C_MUX_PROBE72_WIDTH-1:0] probe_out72,
    output reg [C_MUX_PROBE73_WIDTH-1:0] probe_out73,
    output reg [C_MUX_PROBE74_WIDTH-1:0] probe_out74,
    output reg [C_MUX_PROBE75_WIDTH-1:0] probe_out75,
    output reg [C_MUX_PROBE76_WIDTH-1:0] probe_out76,
    output reg [C_MUX_PROBE77_WIDTH-1:0] probe_out77,
    output reg [C_MUX_PROBE78_WIDTH-1:0] probe_out78,
    output reg [C_MUX_PROBE79_WIDTH-1:0] probe_out79,
    output reg [C_MUX_PROBE80_WIDTH-1:0] probe_out80,
    output reg [C_MUX_PROBE81_WIDTH-1:0] probe_out81,
    output reg [C_MUX_PROBE82_WIDTH-1:0] probe_out82,
    output reg [C_MUX_PROBE83_WIDTH-1:0] probe_out83,
    output reg [C_MUX_PROBE84_WIDTH-1:0] probe_out84,
    output reg [C_MUX_PROBE85_WIDTH-1:0] probe_out85,
    output reg [C_MUX_PROBE86_WIDTH-1:0] probe_out86,
    output reg [C_MUX_PROBE87_WIDTH-1:0] probe_out87,
    output reg [C_MUX_PROBE88_WIDTH-1:0] probe_out88,
    output reg [C_MUX_PROBE89_WIDTH-1:0] probe_out89,
    output reg [C_MUX_PROBE90_WIDTH-1:0] probe_out90,
    output reg [C_MUX_PROBE91_WIDTH-1:0] probe_out91,
    output reg [C_MUX_PROBE92_WIDTH-1:0] probe_out92,
    output reg [C_MUX_PROBE93_WIDTH-1:0] probe_out93,
    output reg [C_MUX_PROBE94_WIDTH-1:0] probe_out94,
    output reg [C_MUX_PROBE95_WIDTH-1:0] probe_out95,
    output reg [C_MUX_PROBE96_WIDTH-1:0] probe_out96,
    output reg [C_MUX_PROBE97_WIDTH-1:0] probe_out97,
    output reg [C_MUX_PROBE98_WIDTH-1:0] probe_out98,
    output reg [C_MUX_PROBE99_WIDTH-1:0] probe_out99,
    output reg [C_MUX_PROBE100_WIDTH-1:0] probe_out100,
    output reg [C_MUX_PROBE101_WIDTH-1:0] probe_out101,
    output reg [C_MUX_PROBE102_WIDTH-1:0] probe_out102,
    output reg [C_MUX_PROBE103_WIDTH-1:0] probe_out103,
    output reg [C_MUX_PROBE104_WIDTH-1:0] probe_out104,
    output reg [C_MUX_PROBE105_WIDTH-1:0] probe_out105,
    output reg [C_MUX_PROBE106_WIDTH-1:0] probe_out106,
    output reg [C_MUX_PROBE107_WIDTH-1:0] probe_out107,
    output reg [C_MUX_PROBE108_WIDTH-1:0] probe_out108,
    output reg [C_MUX_PROBE109_WIDTH-1:0] probe_out109,
    output reg [C_MUX_PROBE110_WIDTH-1:0] probe_out110,
    output reg [C_MUX_PROBE111_WIDTH-1:0] probe_out111,
    output reg [C_MUX_PROBE112_WIDTH-1:0] probe_out112,
    output reg [C_MUX_PROBE113_WIDTH-1:0] probe_out113,
    output reg [C_MUX_PROBE114_WIDTH-1:0] probe_out114,
    output reg [C_MUX_PROBE115_WIDTH-1:0] probe_out115,
    output reg [C_MUX_PROBE116_WIDTH-1:0] probe_out116,
    output reg [C_MUX_PROBE117_WIDTH-1:0] probe_out117,
    output reg [C_MUX_PROBE118_WIDTH-1:0] probe_out118,
    output reg [C_MUX_PROBE119_WIDTH-1:0] probe_out119,
    output reg [C_MUX_PROBE120_WIDTH-1:0] probe_out120,
    output reg [C_MUX_PROBE121_WIDTH-1:0] probe_out121,
    output reg [C_MUX_PROBE122_WIDTH-1:0] probe_out122,
    output reg [C_MUX_PROBE123_WIDTH-1:0] probe_out123,
    output reg [C_MUX_PROBE124_WIDTH-1:0] probe_out124,
    output reg [C_MUX_PROBE125_WIDTH-1:0] probe_out125,
    output reg [C_MUX_PROBE126_WIDTH-1:0] probe_out126,
    output reg [C_MUX_PROBE127_WIDTH-1:0] probe_out127,

    // SLOT 0 AXI MM Interface signals
    output wire  [C_SLOT_0_AXI_ID_WIDTH-1:0]        m_slot_0_axi_awid,
    output wire  [C_SLOT_0_AXI_ADDR_WIDTH-1:0]      m_slot_0_axi_awaddr,
    output wire  [C_SLOT_0_AXI_AWUSER_WIDTH-1:0]      m_slot_0_axi_awuser,
    output wire  [2:0]                              m_slot_0_axi_awprot,
    output wire  [C_SLOT_0_AXI_AXLEN_WIDTH-1:0] m_slot_0_axi_awlen,
    output wire  [2:0]                              m_slot_0_axi_awsize,
    output wire  [1:0]                              m_slot_0_axi_awburst,
    output wire  [3:0]                              m_slot_0_axi_awcache,
    output wire  [C_SLOT_0_AXI_AXLOCK_WIDTH-1:0] m_slot_0_axi_awlock,
    output wire                                     m_slot_0_axi_awvalid,
    output wire                                     m_slot_0_axi_awready,
    output wire  [C_SLOT_0_AXI_DATA_WIDTH-1:0]      m_slot_0_axi_wdata,
    output wire  [C_SLOT_0_AXI_DATA_WIDTH/8-1:0]    m_slot_0_axi_wstrb,
    output wire                                     m_slot_0_axi_wlast,
    output wire                                     m_slot_0_axi_wvalid,
    output wire                                     m_slot_0_axi_wready,
    output wire  [C_SLOT_0_AXI_WUSER_WIDTH-1:0]      m_slot_0_axi_wuser,
    output wire  [C_SLOT_0_AXI_ID_WIDTH-1:0]        m_slot_0_axi_bid,
    output wire  [1:0]                              m_slot_0_axi_bresp,
    output wire                                     m_slot_0_axi_bvalid,
    output wire                                     m_slot_0_axi_bready,
    output wire  [C_SLOT_0_AXI_BUSER_WIDTH-1:0]      m_slot_0_axi_buser,
    output wire  [C_SLOT_0_AXI_ID_WIDTH-1:0]        m_slot_0_axi_arid,
    output wire  [C_SLOT_0_AXI_ADDR_WIDTH-1:0]      m_slot_0_axi_araddr,
    output wire  [C_SLOT_0_AXI_AXLEN_WIDTH-1:0] m_slot_0_axi_arlen,
    output wire  [2:0]                              m_slot_0_axi_arsize,
    output wire  [1:0]                              m_slot_0_axi_arburst,
    output wire  [3:0]                              m_slot_0_axi_arcache,
    output wire  [2:0]                              m_slot_0_axi_arprot,
    output wire  [C_SLOT_0_AXI_AXLOCK_WIDTH-1:0] m_slot_0_axi_arlock,
    output wire                                     m_slot_0_axi_arvalid,
    output wire                                     m_slot_0_axi_arready,
    output wire  [C_SLOT_0_AXI_ARUSER_WIDTH-1:0]      m_slot_0_axi_aruser,
    output wire  [C_SLOT_0_AXI_ID_WIDTH-1:0]        m_slot_0_axi_rid,
    output wire  [C_SLOT_0_AXI_DATA_WIDTH-1:0]      m_slot_0_axi_rdata,
    output wire  [1:0]                              m_slot_0_axi_rresp,
    output wire                                     m_slot_0_axi_rlast,
    output wire                                     m_slot_0_axi_rvalid,
    output wire                                     m_slot_0_axi_rready,
    output wire  [C_SLOT_0_AXI_RUSER_WIDTH-1:0]      m_slot_0_axi_ruser,
    output wire  [C_SLOT_0_AXI_ID_WIDTH-1:0]        m_slot_0_axi_wid,
    output wire  [3:0]                              m_slot_0_axi_awregion,
    output wire  [3:0]                              m_slot_0_axi_arregion,
    output wire  [3:0]                              m_slot_0_axi_awqos,
    output wire  [3:0]                              m_slot_0_axi_arqos,
    output wire [C_SLOT_0_MAX_WR_BURSTS:0]  m_slot_0_axi_aw_cnt,
    output wire [C_SLOT_0_MAX_RD_BURSTS:0]  m_slot_0_axi_ar_cnt,
    output wire [C_SLOT_0_MAX_WR_BURSTS:0]  m_slot_0_axi_b_cnt,
    output wire [C_SLOT_0_MAX_RD_BURSTS:0]  m_slot_0_axi_r_cnt,

    //SLOT 0 AXI Streaming Interface

    output wire                                     m_slot_0_axis_tvalid,
    output wire                                     m_slot_0_axis_tready,
    output wire  [C_SLOT_0_AXIS_TDATA_WIDTH-1:0]    m_slot_0_axis_tdata,
    output wire  [C_SLOT_0_AXIS_TDATA_WIDTH/8-1:0]  m_slot_0_axis_tstrb,
    output wire  [C_SLOT_0_AXIS_TDATA_WIDTH/8-1:0]  m_slot_0_axis_tkeep,
    output wire                                     m_slot_0_axis_tlast,
    output wire  [C_SLOT_0_AXIS_TID_WIDTH-1:0]      m_slot_0_axis_tid,
    output wire  [C_SLOT_0_AXIS_TDEST_WIDTH-1:0]    m_slot_0_axis_tdest,
    output wire  [C_SLOT_0_AXIS_TUSER_WIDTH-1:0]    m_slot_0_axis_tuser,


    // SLOT 1 AXI MM Interface signals
    output wire  [C_SLOT_1_AXI_ID_WIDTH-1:0]        m_slot_1_axi_awid,
    output wire  [C_SLOT_1_AXI_ADDR_WIDTH-1:0]      m_slot_1_axi_awaddr,
    output wire  [C_SLOT_1_AXI_AWUSER_WIDTH-1:0]      m_slot_1_axi_awuser,
    output wire  [2:0]                              m_slot_1_axi_awprot,
    output wire  [C_SLOT_1_AXI_AXLEN_WIDTH-1:0] m_slot_1_axi_awlen,
    output wire  [2:0]                              m_slot_1_axi_awsize,
    output wire  [1:0]                              m_slot_1_axi_awburst,
    output wire  [3:0]                              m_slot_1_axi_awcache,
    output wire  [C_SLOT_1_AXI_AXLOCK_WIDTH-1:0] m_slot_1_axi_awlock,
    output wire                                     m_slot_1_axi_awvalid,
    output wire                                     m_slot_1_axi_awready,
    output wire  [C_SLOT_1_AXI_DATA_WIDTH-1:0]      m_slot_1_axi_wdata,
    output wire  [C_SLOT_1_AXI_DATA_WIDTH/8-1:0]    m_slot_1_axi_wstrb,
    output wire                                     m_slot_1_axi_wlast,
    output wire                                     m_slot_1_axi_wvalid,
    output wire                                     m_slot_1_axi_wready,
    output wire  [C_SLOT_1_AXI_WUSER_WIDTH-1:0]      m_slot_1_axi_wuser,
    output wire  [C_SLOT_1_AXI_ID_WIDTH-1:0]        m_slot_1_axi_bid,
    output wire  [1:0]                              m_slot_1_axi_bresp,
    output wire                                     m_slot_1_axi_bvalid,
    output wire                                     m_slot_1_axi_bready,
    output wire  [C_SLOT_1_AXI_BUSER_WIDTH-1:0]      m_slot_1_axi_buser,
    output wire  [C_SLOT_1_AXI_ID_WIDTH-1:0]        m_slot_1_axi_arid,
    output wire  [C_SLOT_1_AXI_ADDR_WIDTH-1:0]      m_slot_1_axi_araddr,
    output wire  [C_SLOT_1_AXI_AXLEN_WIDTH-1:0] m_slot_1_axi_arlen,
    output wire  [2:0]                              m_slot_1_axi_arsize,
    output wire  [1:0]                              m_slot_1_axi_arburst,
    output wire  [3:0]                              m_slot_1_axi_arcache,
    output wire  [2:0]                              m_slot_1_axi_arprot,
    output wire  [C_SLOT_1_AXI_AXLOCK_WIDTH-1:0] m_slot_1_axi_arlock,
    output wire                                     m_slot_1_axi_arvalid,
    output wire                                     m_slot_1_axi_arready,
    output wire  [C_SLOT_1_AXI_ARUSER_WIDTH-1:0]      m_slot_1_axi_aruser,
    output wire  [C_SLOT_1_AXI_ID_WIDTH-1:0]        m_slot_1_axi_rid,
    output wire  [C_SLOT_1_AXI_DATA_WIDTH-1:0]      m_slot_1_axi_rdata,
    output wire  [1:0]                              m_slot_1_axi_rresp,
    output wire                                     m_slot_1_axi_rlast,
    output wire                                     m_slot_1_axi_rvalid,
    output wire                                     m_slot_1_axi_rready,
    output wire  [C_SLOT_1_AXI_RUSER_WIDTH-1:0]      m_slot_1_axi_ruser,
    output wire  [C_SLOT_1_AXI_ID_WIDTH-1:0]        m_slot_1_axi_wid,
    output wire  [3:0]                              m_slot_1_axi_awregion,
    output wire  [3:0]                              m_slot_1_axi_arregion,
    output wire  [3:0]                              m_slot_1_axi_awqos,
    output wire  [3:0]                              m_slot_1_axi_arqos,
    output wire [C_SLOT_1_MAX_WR_BURSTS:0]  m_slot_1_axi_aw_cnt,
    output wire [C_SLOT_1_MAX_RD_BURSTS:0]  m_slot_1_axi_ar_cnt,
    output wire [C_SLOT_1_MAX_WR_BURSTS:0]  m_slot_1_axi_b_cnt,
    output wire [C_SLOT_1_MAX_RD_BURSTS:0]  m_slot_1_axi_r_cnt,

    //SLOT 1 AXI Streaming Interface

    output wire                                     m_slot_1_axis_tvalid,
    output wire                                     m_slot_1_axis_tready,
    output wire  [C_SLOT_1_AXIS_TDATA_WIDTH-1:0]    m_slot_1_axis_tdata,
    output wire  [C_SLOT_1_AXIS_TDATA_WIDTH/8-1:0]  m_slot_1_axis_tstrb,
    output wire  [C_SLOT_1_AXIS_TDATA_WIDTH/8-1:0]  m_slot_1_axis_tkeep,
    output wire                                     m_slot_1_axis_tlast,
    output wire  [C_SLOT_1_AXIS_TID_WIDTH-1:0]      m_slot_1_axis_tid,
    output wire  [C_SLOT_1_AXIS_TDEST_WIDTH-1:0]    m_slot_1_axis_tdest,
    output wire  [C_SLOT_1_AXIS_TUSER_WIDTH-1:0]    m_slot_1_axis_tuser,


    // SLOT 2 AXI MM Interface signals
    output wire  [C_SLOT_2_AXI_ID_WIDTH-1:0]        m_slot_2_axi_awid,
    output wire  [C_SLOT_2_AXI_ADDR_WIDTH-1:0]      m_slot_2_axi_awaddr,
    output wire  [C_SLOT_2_AXI_AWUSER_WIDTH-1:0]      m_slot_2_axi_awuser,
    output wire  [2:0]                              m_slot_2_axi_awprot,
    output wire  [C_SLOT_2_AXI_AXLEN_WIDTH-1:0] m_slot_2_axi_awlen,
    output wire  [2:0]                              m_slot_2_axi_awsize,
    output wire  [1:0]                              m_slot_2_axi_awburst,
    output wire  [3:0]                              m_slot_2_axi_awcache,
    output wire  [C_SLOT_2_AXI_AXLOCK_WIDTH-1:0] m_slot_2_axi_awlock,
    output wire                                     m_slot_2_axi_awvalid,
    output wire                                     m_slot_2_axi_awready,
    output wire  [C_SLOT_2_AXI_DATA_WIDTH-1:0]      m_slot_2_axi_wdata,
    output wire  [C_SLOT_2_AXI_DATA_WIDTH/8-1:0]    m_slot_2_axi_wstrb,
    output wire                                     m_slot_2_axi_wlast,
    output wire                                     m_slot_2_axi_wvalid,
    output wire                                     m_slot_2_axi_wready,
    output wire  [C_SLOT_2_AXI_WUSER_WIDTH-1:0]      m_slot_2_axi_wuser,
    output wire  [C_SLOT_2_AXI_ID_WIDTH-1:0]        m_slot_2_axi_bid,
    output wire  [1:0]                              m_slot_2_axi_bresp,
    output wire                                     m_slot_2_axi_bvalid,
    output wire                                     m_slot_2_axi_bready,
    output wire  [C_SLOT_2_AXI_BUSER_WIDTH-1:0]      m_slot_2_axi_buser,
    output wire  [C_SLOT_2_AXI_ID_WIDTH-1:0]        m_slot_2_axi_arid,
    output wire  [C_SLOT_2_AXI_ADDR_WIDTH-1:0]      m_slot_2_axi_araddr,
    output wire  [C_SLOT_2_AXI_AXLEN_WIDTH-1:0] m_slot_2_axi_arlen,
    output wire  [2:0]                              m_slot_2_axi_arsize,
    output wire  [1:0]                              m_slot_2_axi_arburst,
    output wire  [3:0]                              m_slot_2_axi_arcache,
    output wire  [2:0]                              m_slot_2_axi_arprot,
    output wire  [C_SLOT_2_AXI_AXLOCK_WIDTH-1:0] m_slot_2_axi_arlock,
    output wire                                     m_slot_2_axi_arvalid,
    output wire                                     m_slot_2_axi_arready,
    output wire  [C_SLOT_2_AXI_ARUSER_WIDTH-1:0]      m_slot_2_axi_aruser,
    output wire  [C_SLOT_2_AXI_ID_WIDTH-1:0]        m_slot_2_axi_rid,
    output wire  [C_SLOT_2_AXI_DATA_WIDTH-1:0]      m_slot_2_axi_rdata,
    output wire  [1:0]                              m_slot_2_axi_rresp,
    output wire                                     m_slot_2_axi_rlast,
    output wire                                     m_slot_2_axi_rvalid,
    output wire                                     m_slot_2_axi_rready,
    output wire  [C_SLOT_2_AXI_RUSER_WIDTH-1:0]      m_slot_2_axi_ruser,
    output wire  [C_SLOT_2_AXI_ID_WIDTH-1:0]        m_slot_2_axi_wid,
    output wire  [3:0]                              m_slot_2_axi_awregion,
    output wire  [3:0]                              m_slot_2_axi_arregion,
    output wire  [3:0]                              m_slot_2_axi_awqos,
    output wire  [3:0]                              m_slot_2_axi_arqos,
    output wire [C_SLOT_2_MAX_WR_BURSTS:0]  m_slot_2_axi_aw_cnt,
    output wire [C_SLOT_2_MAX_RD_BURSTS:0]  m_slot_2_axi_ar_cnt,
    output wire [C_SLOT_2_MAX_WR_BURSTS:0]  m_slot_2_axi_b_cnt,
    output wire [C_SLOT_2_MAX_RD_BURSTS:0]  m_slot_2_axi_r_cnt,

    //SLOT 2 AXI Streaming Interface

    output wire                                     m_slot_2_axis_tvalid,
    output wire                                     m_slot_2_axis_tready,
    output wire  [C_SLOT_2_AXIS_TDATA_WIDTH-1:0]    m_slot_2_axis_tdata,
    output wire  [C_SLOT_2_AXIS_TDATA_WIDTH/8-1:0]  m_slot_2_axis_tstrb,
    output wire  [C_SLOT_2_AXIS_TDATA_WIDTH/8-1:0]  m_slot_2_axis_tkeep,
    output wire                                     m_slot_2_axis_tlast,
    output wire  [C_SLOT_2_AXIS_TID_WIDTH-1:0]      m_slot_2_axis_tid,
    output wire  [C_SLOT_2_AXIS_TDEST_WIDTH-1:0]    m_slot_2_axis_tdest,
    output wire  [C_SLOT_2_AXIS_TUSER_WIDTH-1:0]    m_slot_2_axis_tuser,


    // SLOT 3 AXI MM Interface signals
    output wire  [C_SLOT_3_AXI_ID_WIDTH-1:0]        m_slot_3_axi_awid,
    output wire  [C_SLOT_3_AXI_ADDR_WIDTH-1:0]      m_slot_3_axi_awaddr,
    output wire  [C_SLOT_3_AXI_AWUSER_WIDTH-1:0]      m_slot_3_axi_awuser,
    output wire  [2:0]                              m_slot_3_axi_awprot,
    output wire  [C_SLOT_3_AXI_AXLEN_WIDTH-1:0] m_slot_3_axi_awlen,
    output wire  [2:0]                              m_slot_3_axi_awsize,
    output wire  [1:0]                              m_slot_3_axi_awburst,
    output wire  [3:0]                              m_slot_3_axi_awcache,
    output wire  [C_SLOT_3_AXI_AXLOCK_WIDTH-1:0] m_slot_3_axi_awlock,
    output wire                                     m_slot_3_axi_awvalid,
    output wire                                     m_slot_3_axi_awready,
    output wire  [C_SLOT_3_AXI_DATA_WIDTH-1:0]      m_slot_3_axi_wdata,
    output wire  [C_SLOT_3_AXI_DATA_WIDTH/8-1:0]    m_slot_3_axi_wstrb,
    output wire                                     m_slot_3_axi_wlast,
    output wire                                     m_slot_3_axi_wvalid,
    output wire                                     m_slot_3_axi_wready,
    output wire  [C_SLOT_3_AXI_WUSER_WIDTH-1:0]      m_slot_3_axi_wuser,
    output wire  [C_SLOT_3_AXI_ID_WIDTH-1:0]        m_slot_3_axi_bid,
    output wire  [1:0]                              m_slot_3_axi_bresp,
    output wire                                     m_slot_3_axi_bvalid,
    output wire                                     m_slot_3_axi_bready,
    output wire  [C_SLOT_3_AXI_BUSER_WIDTH-1:0]      m_slot_3_axi_buser,
    output wire  [C_SLOT_3_AXI_ID_WIDTH-1:0]        m_slot_3_axi_arid,
    output wire  [C_SLOT_3_AXI_ADDR_WIDTH-1:0]      m_slot_3_axi_araddr,
    output wire  [C_SLOT_3_AXI_AXLEN_WIDTH-1:0] m_slot_3_axi_arlen,
    output wire  [2:0]                              m_slot_3_axi_arsize,
    output wire  [1:0]                              m_slot_3_axi_arburst,
    output wire  [3:0]                              m_slot_3_axi_arcache,
    output wire  [2:0]                              m_slot_3_axi_arprot,
    output wire  [C_SLOT_3_AXI_AXLOCK_WIDTH-1:0] m_slot_3_axi_arlock,
    output wire                                     m_slot_3_axi_arvalid,
    output wire                                     m_slot_3_axi_arready,
    output wire  [C_SLOT_3_AXI_ARUSER_WIDTH-1:0]      m_slot_3_axi_aruser,
    output wire  [C_SLOT_3_AXI_ID_WIDTH-1:0]        m_slot_3_axi_rid,
    output wire  [C_SLOT_3_AXI_DATA_WIDTH-1:0]      m_slot_3_axi_rdata,
    output wire  [1:0]                              m_slot_3_axi_rresp,
    output wire                                     m_slot_3_axi_rlast,
    output wire                                     m_slot_3_axi_rvalid,
    output wire                                     m_slot_3_axi_rready,
    output wire  [C_SLOT_3_AXI_RUSER_WIDTH-1:0]      m_slot_3_axi_ruser,
    output wire  [C_SLOT_3_AXI_ID_WIDTH-1:0]        m_slot_3_axi_wid,
    output wire  [3:0]                              m_slot_3_axi_awregion,
    output wire  [3:0]                              m_slot_3_axi_arregion,
    output wire  [3:0]                              m_slot_3_axi_awqos,
    output wire  [3:0]                              m_slot_3_axi_arqos,
    output wire [C_SLOT_3_MAX_WR_BURSTS:0]  m_slot_3_axi_aw_cnt,
    output wire [C_SLOT_3_MAX_RD_BURSTS:0]  m_slot_3_axi_ar_cnt,
    output wire [C_SLOT_3_MAX_WR_BURSTS:0]  m_slot_3_axi_b_cnt,
    output wire [C_SLOT_3_MAX_RD_BURSTS:0]  m_slot_3_axi_r_cnt,

    //SLOT 3 AXI Streaming Interface

    output wire                                     m_slot_3_axis_tvalid,
    output wire                                     m_slot_3_axis_tready,
    output wire  [C_SLOT_3_AXIS_TDATA_WIDTH-1:0]    m_slot_3_axis_tdata,
    output wire  [C_SLOT_3_AXIS_TDATA_WIDTH/8-1:0]  m_slot_3_axis_tstrb,
    output wire  [C_SLOT_3_AXIS_TDATA_WIDTH/8-1:0]  m_slot_3_axis_tkeep,
    output wire                                     m_slot_3_axis_tlast,
    output wire  [C_SLOT_3_AXIS_TID_WIDTH-1:0]      m_slot_3_axis_tid,
    output wire  [C_SLOT_3_AXIS_TDEST_WIDTH-1:0]    m_slot_3_axis_tdest,
    output wire  [C_SLOT_3_AXIS_TUSER_WIDTH-1:0]    m_slot_3_axis_tuser,


    // SLOT 4 AXI MM Interface signals
    output wire  [C_SLOT_4_AXI_ID_WIDTH-1:0]        m_slot_4_axi_awid,
    output wire  [C_SLOT_4_AXI_ADDR_WIDTH-1:0]      m_slot_4_axi_awaddr,
    output wire  [C_SLOT_4_AXI_AWUSER_WIDTH-1:0]      m_slot_4_axi_awuser,
    output wire  [2:0]                              m_slot_4_axi_awprot,
    output wire  [C_SLOT_4_AXI_AXLEN_WIDTH-1:0] m_slot_4_axi_awlen,
    output wire  [2:0]                              m_slot_4_axi_awsize,
    output wire  [1:0]                              m_slot_4_axi_awburst,
    output wire  [3:0]                              m_slot_4_axi_awcache,
    output wire  [C_SLOT_4_AXI_AXLOCK_WIDTH-1:0] m_slot_4_axi_awlock,
    output wire                                     m_slot_4_axi_awvalid,
    output wire                                     m_slot_4_axi_awready,
    output wire  [C_SLOT_4_AXI_DATA_WIDTH-1:0]      m_slot_4_axi_wdata,
    output wire  [C_SLOT_4_AXI_DATA_WIDTH/8-1:0]    m_slot_4_axi_wstrb,
    output wire                                     m_slot_4_axi_wlast,
    output wire                                     m_slot_4_axi_wvalid,
    output wire                                     m_slot_4_axi_wready,
    output wire  [C_SLOT_4_AXI_WUSER_WIDTH-1:0]      m_slot_4_axi_wuser,
    output wire  [C_SLOT_4_AXI_ID_WIDTH-1:0]        m_slot_4_axi_bid,
    output wire  [1:0]                              m_slot_4_axi_bresp,
    output wire                                     m_slot_4_axi_bvalid,
    output wire                                     m_slot_4_axi_bready,
    output wire  [C_SLOT_4_AXI_BUSER_WIDTH-1:0]      m_slot_4_axi_buser,
    output wire  [C_SLOT_4_AXI_ID_WIDTH-1:0]        m_slot_4_axi_arid,
    output wire  [C_SLOT_4_AXI_ADDR_WIDTH-1:0]      m_slot_4_axi_araddr,
    output wire  [C_SLOT_4_AXI_AXLEN_WIDTH-1:0] m_slot_4_axi_arlen,
    output wire  [2:0]                              m_slot_4_axi_arsize,
    output wire  [1:0]                              m_slot_4_axi_arburst,
    output wire  [3:0]                              m_slot_4_axi_arcache,
    output wire  [2:0]                              m_slot_4_axi_arprot,
    output wire  [C_SLOT_4_AXI_AXLOCK_WIDTH-1:0] m_slot_4_axi_arlock,
    output wire                                     m_slot_4_axi_arvalid,
    output wire                                     m_slot_4_axi_arready,
    output wire  [C_SLOT_4_AXI_ARUSER_WIDTH-1:0]      m_slot_4_axi_aruser,
    output wire  [C_SLOT_4_AXI_ID_WIDTH-1:0]        m_slot_4_axi_rid,
    output wire  [C_SLOT_4_AXI_DATA_WIDTH-1:0]      m_slot_4_axi_rdata,
    output wire  [1:0]                              m_slot_4_axi_rresp,
    output wire                                     m_slot_4_axi_rlast,
    output wire                                     m_slot_4_axi_rvalid,
    output wire                                     m_slot_4_axi_rready,
    output wire  [C_SLOT_4_AXI_RUSER_WIDTH-1:0]      m_slot_4_axi_ruser,
    output wire  [C_SLOT_4_AXI_ID_WIDTH-1:0]        m_slot_4_axi_wid,
    output wire  [3:0]                              m_slot_4_axi_awregion,
    output wire  [3:0]                              m_slot_4_axi_arregion,
    output wire  [3:0]                              m_slot_4_axi_awqos,
    output wire  [3:0]                              m_slot_4_axi_arqos,
    output wire [C_SLOT_4_MAX_WR_BURSTS:0]  m_slot_4_axi_aw_cnt,
    output wire [C_SLOT_4_MAX_RD_BURSTS:0]  m_slot_4_axi_ar_cnt,
    output wire [C_SLOT_4_MAX_WR_BURSTS:0]  m_slot_4_axi_b_cnt,
    output wire [C_SLOT_4_MAX_RD_BURSTS:0]  m_slot_4_axi_r_cnt,

    //SLOT 4 AXI Streaming Interface

    output wire                                     m_slot_4_axis_tvalid,
    output wire                                     m_slot_4_axis_tready,
    output wire  [C_SLOT_4_AXIS_TDATA_WIDTH-1:0]    m_slot_4_axis_tdata,
    output wire  [C_SLOT_4_AXIS_TDATA_WIDTH/8-1:0]  m_slot_4_axis_tstrb,
    output wire  [C_SLOT_4_AXIS_TDATA_WIDTH/8-1:0]  m_slot_4_axis_tkeep,
    output wire                                     m_slot_4_axis_tlast,
    output wire  [C_SLOT_4_AXIS_TID_WIDTH-1:0]      m_slot_4_axis_tid,
    output wire  [C_SLOT_4_AXIS_TDEST_WIDTH-1:0]    m_slot_4_axis_tdest,
    output wire  [C_SLOT_4_AXIS_TUSER_WIDTH-1:0]    m_slot_4_axis_tuser,


    // SLOT 5 AXI MM Interface signals
    output wire  [C_SLOT_5_AXI_ID_WIDTH-1:0]        m_slot_5_axi_awid,
    output wire  [C_SLOT_5_AXI_ADDR_WIDTH-1:0]      m_slot_5_axi_awaddr,
    output wire  [C_SLOT_5_AXI_AWUSER_WIDTH-1:0]      m_slot_5_axi_awuser,
    output wire  [2:0]                              m_slot_5_axi_awprot,
    output wire  [C_SLOT_5_AXI_AXLEN_WIDTH-1:0] m_slot_5_axi_awlen,
    output wire  [2:0]                              m_slot_5_axi_awsize,
    output wire  [1:0]                              m_slot_5_axi_awburst,
    output wire  [3:0]                              m_slot_5_axi_awcache,
    output wire  [C_SLOT_5_AXI_AXLOCK_WIDTH-1:0] m_slot_5_axi_awlock,
    output wire                                     m_slot_5_axi_awvalid,
    output wire                                     m_slot_5_axi_awready,
    output wire  [C_SLOT_5_AXI_DATA_WIDTH-1:0]      m_slot_5_axi_wdata,
    output wire  [C_SLOT_5_AXI_DATA_WIDTH/8-1:0]    m_slot_5_axi_wstrb,
    output wire                                     m_slot_5_axi_wlast,
    output wire                                     m_slot_5_axi_wvalid,
    output wire                                     m_slot_5_axi_wready,
    output wire  [C_SLOT_5_AXI_WUSER_WIDTH-1:0]      m_slot_5_axi_wuser,
    output wire  [C_SLOT_5_AXI_ID_WIDTH-1:0]        m_slot_5_axi_bid,
    output wire  [1:0]                              m_slot_5_axi_bresp,
    output wire                                     m_slot_5_axi_bvalid,
    output wire                                     m_slot_5_axi_bready,
    output wire  [C_SLOT_5_AXI_BUSER_WIDTH-1:0]      m_slot_5_axi_buser,
    output wire  [C_SLOT_5_AXI_ID_WIDTH-1:0]        m_slot_5_axi_arid,
    output wire  [C_SLOT_5_AXI_ADDR_WIDTH-1:0]      m_slot_5_axi_araddr,
    output wire  [C_SLOT_5_AXI_AXLEN_WIDTH-1:0] m_slot_5_axi_arlen,
    output wire  [2:0]                              m_slot_5_axi_arsize,
    output wire  [1:0]                              m_slot_5_axi_arburst,
    output wire  [3:0]                              m_slot_5_axi_arcache,
    output wire  [2:0]                              m_slot_5_axi_arprot,
    output wire  [C_SLOT_5_AXI_AXLOCK_WIDTH-1:0] m_slot_5_axi_arlock,
    output wire                                     m_slot_5_axi_arvalid,
    output wire                                     m_slot_5_axi_arready,
    output wire  [C_SLOT_5_AXI_ARUSER_WIDTH-1:0]      m_slot_5_axi_aruser,
    output wire  [C_SLOT_5_AXI_ID_WIDTH-1:0]        m_slot_5_axi_rid,
    output wire  [C_SLOT_5_AXI_DATA_WIDTH-1:0]      m_slot_5_axi_rdata,
    output wire  [1:0]                              m_slot_5_axi_rresp,
    output wire                                     m_slot_5_axi_rlast,
    output wire                                     m_slot_5_axi_rvalid,
    output wire                                     m_slot_5_axi_rready,
    output wire  [C_SLOT_5_AXI_RUSER_WIDTH-1:0]      m_slot_5_axi_ruser,
    output wire  [C_SLOT_5_AXI_ID_WIDTH-1:0]        m_slot_5_axi_wid,
    output wire  [3:0]                              m_slot_5_axi_awregion,
    output wire  [3:0]                              m_slot_5_axi_arregion,
    output wire  [3:0]                              m_slot_5_axi_awqos,
    output wire  [3:0]                              m_slot_5_axi_arqos,
    output wire [C_SLOT_5_MAX_WR_BURSTS:0]  m_slot_5_axi_aw_cnt,
    output wire [C_SLOT_5_MAX_RD_BURSTS:0]  m_slot_5_axi_ar_cnt,
    output wire [C_SLOT_5_MAX_WR_BURSTS:0]  m_slot_5_axi_b_cnt,
    output wire [C_SLOT_5_MAX_RD_BURSTS:0]  m_slot_5_axi_r_cnt,

    //SLOT 5 AXI Streaming Interface

    output wire                                     m_slot_5_axis_tvalid,
    output wire                                     m_slot_5_axis_tready,
    output wire  [C_SLOT_5_AXIS_TDATA_WIDTH-1:0]    m_slot_5_axis_tdata,
    output wire  [C_SLOT_5_AXIS_TDATA_WIDTH/8-1:0]  m_slot_5_axis_tstrb,
    output wire  [C_SLOT_5_AXIS_TDATA_WIDTH/8-1:0]  m_slot_5_axis_tkeep,
    output wire                                     m_slot_5_axis_tlast,
    output wire  [C_SLOT_5_AXIS_TID_WIDTH-1:0]      m_slot_5_axis_tid,
    output wire  [C_SLOT_5_AXIS_TDEST_WIDTH-1:0]    m_slot_5_axis_tdest,
    output wire  [C_SLOT_5_AXIS_TUSER_WIDTH-1:0]    m_slot_5_axis_tuser,


    // SLOT 6 AXI MM Interface signals
    output wire  [C_SLOT_6_AXI_ID_WIDTH-1:0]        m_slot_6_axi_awid,
    output wire  [C_SLOT_6_AXI_ADDR_WIDTH-1:0]      m_slot_6_axi_awaddr,
    output wire  [C_SLOT_6_AXI_AWUSER_WIDTH-1:0]      m_slot_6_axi_awuser,
    output wire  [2:0]                              m_slot_6_axi_awprot,
    output wire  [C_SLOT_6_AXI_AXLEN_WIDTH-1:0] m_slot_6_axi_awlen,
    output wire  [2:0]                              m_slot_6_axi_awsize,
    output wire  [1:0]                              m_slot_6_axi_awburst,
    output wire  [3:0]                              m_slot_6_axi_awcache,
    output wire  [C_SLOT_6_AXI_AXLOCK_WIDTH-1:0] m_slot_6_axi_awlock,
    output wire                                     m_slot_6_axi_awvalid,
    output wire                                     m_slot_6_axi_awready,
    output wire  [C_SLOT_6_AXI_DATA_WIDTH-1:0]      m_slot_6_axi_wdata,
    output wire  [C_SLOT_6_AXI_DATA_WIDTH/8-1:0]    m_slot_6_axi_wstrb,
    output wire                                     m_slot_6_axi_wlast,
    output wire                                     m_slot_6_axi_wvalid,
    output wire                                     m_slot_6_axi_wready,
    output wire  [C_SLOT_6_AXI_WUSER_WIDTH-1:0]      m_slot_6_axi_wuser,
    output wire  [C_SLOT_6_AXI_ID_WIDTH-1:0]        m_slot_6_axi_bid,
    output wire  [1:0]                              m_slot_6_axi_bresp,
    output wire                                     m_slot_6_axi_bvalid,
    output wire                                     m_slot_6_axi_bready,
    output wire  [C_SLOT_6_AXI_BUSER_WIDTH-1:0]      m_slot_6_axi_buser,
    output wire  [C_SLOT_6_AXI_ID_WIDTH-1:0]        m_slot_6_axi_arid,
    output wire  [C_SLOT_6_AXI_ADDR_WIDTH-1:0]      m_slot_6_axi_araddr,
    output wire  [C_SLOT_6_AXI_AXLEN_WIDTH-1:0] m_slot_6_axi_arlen,
    output wire  [2:0]                              m_slot_6_axi_arsize,
    output wire  [1:0]                              m_slot_6_axi_arburst,
    output wire  [3:0]                              m_slot_6_axi_arcache,
    output wire  [2:0]                              m_slot_6_axi_arprot,
    output wire  [C_SLOT_6_AXI_AXLOCK_WIDTH-1:0] m_slot_6_axi_arlock,
    output wire                                     m_slot_6_axi_arvalid,
    output wire                                     m_slot_6_axi_arready,
    output wire  [C_SLOT_6_AXI_ARUSER_WIDTH-1:0]      m_slot_6_axi_aruser,
    output wire  [C_SLOT_6_AXI_ID_WIDTH-1:0]        m_slot_6_axi_rid,
    output wire  [C_SLOT_6_AXI_DATA_WIDTH-1:0]      m_slot_6_axi_rdata,
    output wire  [1:0]                              m_slot_6_axi_rresp,
    output wire                                     m_slot_6_axi_rlast,
    output wire                                     m_slot_6_axi_rvalid,
    output wire                                     m_slot_6_axi_rready,
    output wire  [C_SLOT_6_AXI_RUSER_WIDTH-1:0]      m_slot_6_axi_ruser,
    output wire  [C_SLOT_6_AXI_ID_WIDTH-1:0]        m_slot_6_axi_wid,
    output wire  [3:0]                              m_slot_6_axi_awregion,
    output wire  [3:0]                              m_slot_6_axi_arregion,
    output wire  [3:0]                              m_slot_6_axi_awqos,
    output wire  [3:0]                              m_slot_6_axi_arqos,
    output wire [C_SLOT_6_MAX_WR_BURSTS:0]  m_slot_6_axi_aw_cnt,
    output wire [C_SLOT_6_MAX_RD_BURSTS:0]  m_slot_6_axi_ar_cnt,
    output wire [C_SLOT_6_MAX_WR_BURSTS:0]  m_slot_6_axi_b_cnt,
    output wire [C_SLOT_6_MAX_RD_BURSTS:0]  m_slot_6_axi_r_cnt,

    //SLOT 6 AXI Streaming Interface

    output wire                                     m_slot_6_axis_tvalid,
    output wire                                     m_slot_6_axis_tready,
    output wire  [C_SLOT_6_AXIS_TDATA_WIDTH-1:0]    m_slot_6_axis_tdata,
    output wire  [C_SLOT_6_AXIS_TDATA_WIDTH/8-1:0]  m_slot_6_axis_tstrb,
    output wire  [C_SLOT_6_AXIS_TDATA_WIDTH/8-1:0]  m_slot_6_axis_tkeep,
    output wire                                     m_slot_6_axis_tlast,
    output wire  [C_SLOT_6_AXIS_TID_WIDTH-1:0]      m_slot_6_axis_tid,
    output wire  [C_SLOT_6_AXIS_TDEST_WIDTH-1:0]    m_slot_6_axis_tdest,
    output wire  [C_SLOT_6_AXIS_TUSER_WIDTH-1:0]    m_slot_6_axis_tuser,


    // SLOT 7 AXI MM Interface signals
    output wire  [C_SLOT_7_AXI_ID_WIDTH-1:0]        m_slot_7_axi_awid,
    output wire  [C_SLOT_7_AXI_ADDR_WIDTH-1:0]      m_slot_7_axi_awaddr,
    output wire  [C_SLOT_7_AXI_AWUSER_WIDTH-1:0]      m_slot_7_axi_awuser,
    output wire  [2:0]                              m_slot_7_axi_awprot,
    output wire  [C_SLOT_7_AXI_AXLEN_WIDTH-1:0] m_slot_7_axi_awlen,
    output wire  [2:0]                              m_slot_7_axi_awsize,
    output wire  [1:0]                              m_slot_7_axi_awburst,
    output wire  [3:0]                              m_slot_7_axi_awcache,
    output wire  [C_SLOT_7_AXI_AXLOCK_WIDTH-1:0] m_slot_7_axi_awlock,
    output wire                                     m_slot_7_axi_awvalid,
    output wire                                     m_slot_7_axi_awready,
    output wire  [C_SLOT_7_AXI_DATA_WIDTH-1:0]      m_slot_7_axi_wdata,
    output wire  [C_SLOT_7_AXI_DATA_WIDTH/8-1:0]    m_slot_7_axi_wstrb,
    output wire                                     m_slot_7_axi_wlast,
    output wire                                     m_slot_7_axi_wvalid,
    output wire                                     m_slot_7_axi_wready,
    output wire  [C_SLOT_7_AXI_WUSER_WIDTH-1:0]      m_slot_7_axi_wuser,
    output wire  [C_SLOT_7_AXI_ID_WIDTH-1:0]        m_slot_7_axi_bid,
    output wire  [1:0]                              m_slot_7_axi_bresp,
    output wire                                     m_slot_7_axi_bvalid,
    output wire                                     m_slot_7_axi_bready,
    output wire  [C_SLOT_7_AXI_BUSER_WIDTH-1:0]      m_slot_7_axi_buser,
    output wire  [C_SLOT_7_AXI_ID_WIDTH-1:0]        m_slot_7_axi_arid,
    output wire  [C_SLOT_7_AXI_ADDR_WIDTH-1:0]      m_slot_7_axi_araddr,
    output wire  [C_SLOT_7_AXI_AXLEN_WIDTH-1:0] m_slot_7_axi_arlen,
    output wire  [2:0]                              m_slot_7_axi_arsize,
    output wire  [1:0]                              m_slot_7_axi_arburst,
    output wire  [3:0]                              m_slot_7_axi_arcache,
    output wire  [2:0]                              m_slot_7_axi_arprot,
    output wire  [C_SLOT_7_AXI_AXLOCK_WIDTH-1:0] m_slot_7_axi_arlock,
    output wire                                     m_slot_7_axi_arvalid,
    output wire                                     m_slot_7_axi_arready,
    output wire  [C_SLOT_7_AXI_ARUSER_WIDTH-1:0]      m_slot_7_axi_aruser,
    output wire  [C_SLOT_7_AXI_ID_WIDTH-1:0]        m_slot_7_axi_rid,
    output wire  [C_SLOT_7_AXI_DATA_WIDTH-1:0]      m_slot_7_axi_rdata,
    output wire  [1:0]                              m_slot_7_axi_rresp,
    output wire                                     m_slot_7_axi_rlast,
    output wire                                     m_slot_7_axi_rvalid,
    output wire                                     m_slot_7_axi_rready,
    output wire  [C_SLOT_7_AXI_RUSER_WIDTH-1:0]      m_slot_7_axi_ruser,
    output wire  [C_SLOT_7_AXI_ID_WIDTH-1:0]        m_slot_7_axi_wid,
    output wire  [3:0]                              m_slot_7_axi_awregion,
    output wire  [3:0]                              m_slot_7_axi_arregion,
    output wire  [3:0]                              m_slot_7_axi_awqos,
    output wire  [3:0]                              m_slot_7_axi_arqos,
    output wire [C_SLOT_7_MAX_WR_BURSTS:0]  m_slot_7_axi_aw_cnt,
    output wire [C_SLOT_7_MAX_RD_BURSTS:0]  m_slot_7_axi_ar_cnt,
    output wire [C_SLOT_7_MAX_WR_BURSTS:0]  m_slot_7_axi_b_cnt,
    output wire [C_SLOT_7_MAX_RD_BURSTS:0]  m_slot_7_axi_r_cnt,

    //SLOT 7 AXI Streaming Interface

    output wire                                     m_slot_7_axis_tvalid,
    output wire                                     m_slot_7_axis_tready,
    output wire  [C_SLOT_7_AXIS_TDATA_WIDTH-1:0]    m_slot_7_axis_tdata,
    output wire  [C_SLOT_7_AXIS_TDATA_WIDTH/8-1:0]  m_slot_7_axis_tstrb,
    output wire  [C_SLOT_7_AXIS_TDATA_WIDTH/8-1:0]  m_slot_7_axis_tkeep,
    output wire                                     m_slot_7_axis_tlast,
    output wire  [C_SLOT_7_AXIS_TID_WIDTH-1:0]      m_slot_7_axis_tid,
    output wire  [C_SLOT_7_AXIS_TDEST_WIDTH-1:0]    m_slot_7_axis_tdest,
    output wire  [C_SLOT_7_AXIS_TUSER_WIDTH-1:0]    m_slot_7_axis_tuser,


    // SLOT 8 AXI MM Interface signals
    output wire  [C_SLOT_8_AXI_ID_WIDTH-1:0]        m_slot_8_axi_awid,
    output wire  [C_SLOT_8_AXI_ADDR_WIDTH-1:0]      m_slot_8_axi_awaddr,
    output wire  [C_SLOT_8_AXI_AWUSER_WIDTH-1:0]      m_slot_8_axi_awuser,
    output wire  [2:0]                              m_slot_8_axi_awprot,
    output wire  [C_SLOT_8_AXI_AXLEN_WIDTH-1:0] m_slot_8_axi_awlen,
    output wire  [2:0]                              m_slot_8_axi_awsize,
    output wire  [1:0]                              m_slot_8_axi_awburst,
    output wire  [3:0]                              m_slot_8_axi_awcache,
    output wire  [C_SLOT_8_AXI_AXLOCK_WIDTH-1:0] m_slot_8_axi_awlock,
    output wire                                     m_slot_8_axi_awvalid,
    output wire                                     m_slot_8_axi_awready,
    output wire  [C_SLOT_8_AXI_DATA_WIDTH-1:0]      m_slot_8_axi_wdata,
    output wire  [C_SLOT_8_AXI_DATA_WIDTH/8-1:0]    m_slot_8_axi_wstrb,
    output wire                                     m_slot_8_axi_wlast,
    output wire                                     m_slot_8_axi_wvalid,
    output wire                                     m_slot_8_axi_wready,
    output wire  [C_SLOT_8_AXI_WUSER_WIDTH-1:0]      m_slot_8_axi_wuser,
    output wire  [C_SLOT_8_AXI_ID_WIDTH-1:0]        m_slot_8_axi_bid,
    output wire  [1:0]                              m_slot_8_axi_bresp,
    output wire                                     m_slot_8_axi_bvalid,
    output wire                                     m_slot_8_axi_bready,
    output wire  [C_SLOT_8_AXI_BUSER_WIDTH-1:0]      m_slot_8_axi_buser,
    output wire  [C_SLOT_8_AXI_ID_WIDTH-1:0]        m_slot_8_axi_arid,
    output wire  [C_SLOT_8_AXI_ADDR_WIDTH-1:0]      m_slot_8_axi_araddr,
    output wire  [C_SLOT_8_AXI_AXLEN_WIDTH-1:0] m_slot_8_axi_arlen,
    output wire  [2:0]                              m_slot_8_axi_arsize,
    output wire  [1:0]                              m_slot_8_axi_arburst,
    output wire  [3:0]                              m_slot_8_axi_arcache,
    output wire  [2:0]                              m_slot_8_axi_arprot,
    output wire  [C_SLOT_8_AXI_AXLOCK_WIDTH-1:0] m_slot_8_axi_arlock,
    output wire                                     m_slot_8_axi_arvalid,
    output wire                                     m_slot_8_axi_arready,
    output wire  [C_SLOT_8_AXI_ARUSER_WIDTH-1:0]      m_slot_8_axi_aruser,
    output wire  [C_SLOT_8_AXI_ID_WIDTH-1:0]        m_slot_8_axi_rid,
    output wire  [C_SLOT_8_AXI_DATA_WIDTH-1:0]      m_slot_8_axi_rdata,
    output wire  [1:0]                              m_slot_8_axi_rresp,
    output wire                                     m_slot_8_axi_rlast,
    output wire                                     m_slot_8_axi_rvalid,
    output wire                                     m_slot_8_axi_rready,
    output wire  [C_SLOT_8_AXI_RUSER_WIDTH-1:0]      m_slot_8_axi_ruser,
    output wire  [C_SLOT_8_AXI_ID_WIDTH-1:0]        m_slot_8_axi_wid,
    output wire  [3:0]                              m_slot_8_axi_awregion,
    output wire  [3:0]                              m_slot_8_axi_arregion,
    output wire  [3:0]                              m_slot_8_axi_awqos,
    output wire  [3:0]                              m_slot_8_axi_arqos,
    output wire [C_SLOT_8_MAX_WR_BURSTS:0]  m_slot_8_axi_aw_cnt,
    output wire [C_SLOT_8_MAX_RD_BURSTS:0]  m_slot_8_axi_ar_cnt,
    output wire [C_SLOT_8_MAX_WR_BURSTS:0]  m_slot_8_axi_b_cnt,
    output wire [C_SLOT_8_MAX_RD_BURSTS:0]  m_slot_8_axi_r_cnt,

    //SLOT 8 AXI Streaming Interface

    output wire                                     m_slot_8_axis_tvalid,
    output wire                                     m_slot_8_axis_tready,
    output wire  [C_SLOT_8_AXIS_TDATA_WIDTH-1:0]    m_slot_8_axis_tdata,
    output wire  [C_SLOT_8_AXIS_TDATA_WIDTH/8-1:0]  m_slot_8_axis_tstrb,
    output wire  [C_SLOT_8_AXIS_TDATA_WIDTH/8-1:0]  m_slot_8_axis_tkeep,
    output wire                                     m_slot_8_axis_tlast,
    output wire  [C_SLOT_8_AXIS_TID_WIDTH-1:0]      m_slot_8_axis_tid,
    output wire  [C_SLOT_8_AXIS_TDEST_WIDTH-1:0]    m_slot_8_axis_tdest,
    output wire  [C_SLOT_8_AXIS_TUSER_WIDTH-1:0]    m_slot_8_axis_tuser,


    // SLOT 9 AXI MM Interface signals
    output wire  [C_SLOT_9_AXI_ID_WIDTH-1:0]        m_slot_9_axi_awid,
    output wire  [C_SLOT_9_AXI_ADDR_WIDTH-1:0]      m_slot_9_axi_awaddr,
    output wire  [C_SLOT_9_AXI_AWUSER_WIDTH-1:0]      m_slot_9_axi_awuser,
    output wire  [2:0]                              m_slot_9_axi_awprot,
    output wire  [C_SLOT_9_AXI_AXLEN_WIDTH-1:0] m_slot_9_axi_awlen,
    output wire  [2:0]                              m_slot_9_axi_awsize,
    output wire  [1:0]                              m_slot_9_axi_awburst,
    output wire  [3:0]                              m_slot_9_axi_awcache,
    output wire  [C_SLOT_9_AXI_AXLOCK_WIDTH-1:0] m_slot_9_axi_awlock,
    output wire                                     m_slot_9_axi_awvalid,
    output wire                                     m_slot_9_axi_awready,
    output wire  [C_SLOT_9_AXI_DATA_WIDTH-1:0]      m_slot_9_axi_wdata,
    output wire  [C_SLOT_9_AXI_DATA_WIDTH/8-1:0]    m_slot_9_axi_wstrb,
    output wire                                     m_slot_9_axi_wlast,
    output wire                                     m_slot_9_axi_wvalid,
    output wire                                     m_slot_9_axi_wready,
    output wire  [C_SLOT_9_AXI_WUSER_WIDTH-1:0]      m_slot_9_axi_wuser,
    output wire  [C_SLOT_9_AXI_ID_WIDTH-1:0]        m_slot_9_axi_bid,
    output wire  [1:0]                              m_slot_9_axi_bresp,
    output wire                                     m_slot_9_axi_bvalid,
    output wire                                     m_slot_9_axi_bready,
    output wire  [C_SLOT_9_AXI_BUSER_WIDTH-1:0]      m_slot_9_axi_buser,
    output wire  [C_SLOT_9_AXI_ID_WIDTH-1:0]        m_slot_9_axi_arid,
    output wire  [C_SLOT_9_AXI_ADDR_WIDTH-1:0]      m_slot_9_axi_araddr,
    output wire  [C_SLOT_9_AXI_AXLEN_WIDTH-1:0] m_slot_9_axi_arlen,
    output wire  [2:0]                              m_slot_9_axi_arsize,
    output wire  [1:0]                              m_slot_9_axi_arburst,
    output wire  [3:0]                              m_slot_9_axi_arcache,
    output wire  [2:0]                              m_slot_9_axi_arprot,
    output wire  [C_SLOT_9_AXI_AXLOCK_WIDTH-1:0] m_slot_9_axi_arlock,
    output wire                                     m_slot_9_axi_arvalid,
    output wire                                     m_slot_9_axi_arready,
    output wire  [C_SLOT_9_AXI_ARUSER_WIDTH-1:0]      m_slot_9_axi_aruser,
    output wire  [C_SLOT_9_AXI_ID_WIDTH-1:0]        m_slot_9_axi_rid,
    output wire  [C_SLOT_9_AXI_DATA_WIDTH-1:0]      m_slot_9_axi_rdata,
    output wire  [1:0]                              m_slot_9_axi_rresp,
    output wire                                     m_slot_9_axi_rlast,
    output wire                                     m_slot_9_axi_rvalid,
    output wire                                     m_slot_9_axi_rready,
    output wire  [C_SLOT_9_AXI_RUSER_WIDTH-1:0]      m_slot_9_axi_ruser,
    output wire  [C_SLOT_9_AXI_ID_WIDTH-1:0]        m_slot_9_axi_wid,
    output wire  [3:0]                              m_slot_9_axi_awregion,
    output wire  [3:0]                              m_slot_9_axi_arregion,
    output wire  [3:0]                              m_slot_9_axi_awqos,
    output wire  [3:0]                              m_slot_9_axi_arqos,
    output wire [C_SLOT_9_MAX_WR_BURSTS:0]  m_slot_9_axi_aw_cnt,
    output wire [C_SLOT_9_MAX_RD_BURSTS:0]  m_slot_9_axi_ar_cnt,
    output wire [C_SLOT_9_MAX_WR_BURSTS:0]  m_slot_9_axi_b_cnt,
    output wire [C_SLOT_9_MAX_RD_BURSTS:0]  m_slot_9_axi_r_cnt,

    //SLOT 9 AXI Streaming Interface

    output wire                                     m_slot_9_axis_tvalid,
    output wire                                     m_slot_9_axis_tready,
    output wire  [C_SLOT_9_AXIS_TDATA_WIDTH-1:0]    m_slot_9_axis_tdata,
    output wire  [C_SLOT_9_AXIS_TDATA_WIDTH/8-1:0]  m_slot_9_axis_tstrb,
    output wire  [C_SLOT_9_AXIS_TDATA_WIDTH/8-1:0]  m_slot_9_axis_tkeep,
    output wire                                     m_slot_9_axis_tlast,
    output wire  [C_SLOT_9_AXIS_TID_WIDTH-1:0]      m_slot_9_axis_tid,
    output wire  [C_SLOT_9_AXIS_TDEST_WIDTH-1:0]    m_slot_9_axis_tdest,
    output wire  [C_SLOT_9_AXIS_TUSER_WIDTH-1:0]    m_slot_9_axis_tuser,


    // SLOT 10 AXI MM Interface signals
    output wire  [C_SLOT_10_AXI_ID_WIDTH-1:0]        m_slot_10_axi_awid,
    output wire  [C_SLOT_10_AXI_ADDR_WIDTH-1:0]      m_slot_10_axi_awaddr,
    output wire  [C_SLOT_10_AXI_AWUSER_WIDTH-1:0]      m_slot_10_axi_awuser,
    output wire  [2:0]                              m_slot_10_axi_awprot,
    output wire  [C_SLOT_10_AXI_AXLEN_WIDTH-1:0] m_slot_10_axi_awlen,
    output wire  [2:0]                              m_slot_10_axi_awsize,
    output wire  [1:0]                              m_slot_10_axi_awburst,
    output wire  [3:0]                              m_slot_10_axi_awcache,
    output wire  [C_SLOT_10_AXI_AXLOCK_WIDTH-1:0] m_slot_10_axi_awlock,
    output wire                                     m_slot_10_axi_awvalid,
    output wire                                     m_slot_10_axi_awready,
    output wire  [C_SLOT_10_AXI_DATA_WIDTH-1:0]      m_slot_10_axi_wdata,
    output wire  [C_SLOT_10_AXI_DATA_WIDTH/8-1:0]    m_slot_10_axi_wstrb,
    output wire                                     m_slot_10_axi_wlast,
    output wire                                     m_slot_10_axi_wvalid,
    output wire                                     m_slot_10_axi_wready,
    output wire  [C_SLOT_10_AXI_WUSER_WIDTH-1:0]      m_slot_10_axi_wuser,
    output wire  [C_SLOT_10_AXI_ID_WIDTH-1:0]        m_slot_10_axi_bid,
    output wire  [1:0]                              m_slot_10_axi_bresp,
    output wire                                     m_slot_10_axi_bvalid,
    output wire                                     m_slot_10_axi_bready,
    output wire  [C_SLOT_10_AXI_BUSER_WIDTH-1:0]      m_slot_10_axi_buser,
    output wire  [C_SLOT_10_AXI_ID_WIDTH-1:0]        m_slot_10_axi_arid,
    output wire  [C_SLOT_10_AXI_ADDR_WIDTH-1:0]      m_slot_10_axi_araddr,
    output wire  [C_SLOT_10_AXI_AXLEN_WIDTH-1:0] m_slot_10_axi_arlen,
    output wire  [2:0]                              m_slot_10_axi_arsize,
    output wire  [1:0]                              m_slot_10_axi_arburst,
    output wire  [3:0]                              m_slot_10_axi_arcache,
    output wire  [2:0]                              m_slot_10_axi_arprot,
    output wire  [C_SLOT_10_AXI_AXLOCK_WIDTH-1:0] m_slot_10_axi_arlock,
    output wire                                     m_slot_10_axi_arvalid,
    output wire                                     m_slot_10_axi_arready,
    output wire  [C_SLOT_10_AXI_ARUSER_WIDTH-1:0]      m_slot_10_axi_aruser,
    output wire  [C_SLOT_10_AXI_ID_WIDTH-1:0]        m_slot_10_axi_rid,
    output wire  [C_SLOT_10_AXI_DATA_WIDTH-1:0]      m_slot_10_axi_rdata,
    output wire  [1:0]                              m_slot_10_axi_rresp,
    output wire                                     m_slot_10_axi_rlast,
    output wire                                     m_slot_10_axi_rvalid,
    output wire                                     m_slot_10_axi_rready,
    output wire  [C_SLOT_10_AXI_RUSER_WIDTH-1:0]      m_slot_10_axi_ruser,
    output wire  [C_SLOT_10_AXI_ID_WIDTH-1:0]        m_slot_10_axi_wid,
    output wire  [3:0]                              m_slot_10_axi_awregion,
    output wire  [3:0]                              m_slot_10_axi_arregion,
    output wire  [3:0]                              m_slot_10_axi_awqos,
    output wire  [3:0]                              m_slot_10_axi_arqos,
    output wire [C_SLOT_10_MAX_WR_BURSTS:0]  m_slot_10_axi_aw_cnt,
    output wire [C_SLOT_10_MAX_RD_BURSTS:0]  m_slot_10_axi_ar_cnt,
    output wire [C_SLOT_10_MAX_WR_BURSTS:0]  m_slot_10_axi_b_cnt,
    output wire [C_SLOT_10_MAX_RD_BURSTS:0]  m_slot_10_axi_r_cnt,

    //SLOT 10 AXI Streaming Interface

    output wire                                     m_slot_10_axis_tvalid,
    output wire                                     m_slot_10_axis_tready,
    output wire  [C_SLOT_10_AXIS_TDATA_WIDTH-1:0]    m_slot_10_axis_tdata,
    output wire  [C_SLOT_10_AXIS_TDATA_WIDTH/8-1:0]  m_slot_10_axis_tstrb,
    output wire  [C_SLOT_10_AXIS_TDATA_WIDTH/8-1:0]  m_slot_10_axis_tkeep,
    output wire                                     m_slot_10_axis_tlast,
    output wire  [C_SLOT_10_AXIS_TID_WIDTH-1:0]      m_slot_10_axis_tid,
    output wire  [C_SLOT_10_AXIS_TDEST_WIDTH-1:0]    m_slot_10_axis_tdest,
    output wire  [C_SLOT_10_AXIS_TUSER_WIDTH-1:0]    m_slot_10_axis_tuser,


    // SLOT 11 AXI MM Interface signals
    output wire  [C_SLOT_11_AXI_ID_WIDTH-1:0]        m_slot_11_axi_awid,
    output wire  [C_SLOT_11_AXI_ADDR_WIDTH-1:0]      m_slot_11_axi_awaddr,
    output wire  [C_SLOT_11_AXI_AWUSER_WIDTH-1:0]      m_slot_11_axi_awuser,
    output wire  [2:0]                              m_slot_11_axi_awprot,
    output wire  [C_SLOT_11_AXI_AXLEN_WIDTH-1:0] m_slot_11_axi_awlen,
    output wire  [2:0]                              m_slot_11_axi_awsize,
    output wire  [1:0]                              m_slot_11_axi_awburst,
    output wire  [3:0]                              m_slot_11_axi_awcache,
    output wire  [C_SLOT_11_AXI_AXLOCK_WIDTH-1:0] m_slot_11_axi_awlock,
    output wire                                     m_slot_11_axi_awvalid,
    output wire                                     m_slot_11_axi_awready,
    output wire  [C_SLOT_11_AXI_DATA_WIDTH-1:0]      m_slot_11_axi_wdata,
    output wire  [C_SLOT_11_AXI_DATA_WIDTH/8-1:0]    m_slot_11_axi_wstrb,
    output wire                                     m_slot_11_axi_wlast,
    output wire                                     m_slot_11_axi_wvalid,
    output wire                                     m_slot_11_axi_wready,
    output wire  [C_SLOT_11_AXI_WUSER_WIDTH-1:0]      m_slot_11_axi_wuser,
    output wire  [C_SLOT_11_AXI_ID_WIDTH-1:0]        m_slot_11_axi_bid,
    output wire  [1:0]                              m_slot_11_axi_bresp,
    output wire                                     m_slot_11_axi_bvalid,
    output wire                                     m_slot_11_axi_bready,
    output wire  [C_SLOT_11_AXI_BUSER_WIDTH-1:0]      m_slot_11_axi_buser,
    output wire  [C_SLOT_11_AXI_ID_WIDTH-1:0]        m_slot_11_axi_arid,
    output wire  [C_SLOT_11_AXI_ADDR_WIDTH-1:0]      m_slot_11_axi_araddr,
    output wire  [C_SLOT_11_AXI_AXLEN_WIDTH-1:0] m_slot_11_axi_arlen,
    output wire  [2:0]                              m_slot_11_axi_arsize,
    output wire  [1:0]                              m_slot_11_axi_arburst,
    output wire  [3:0]                              m_slot_11_axi_arcache,
    output wire  [2:0]                              m_slot_11_axi_arprot,
    output wire  [C_SLOT_11_AXI_AXLOCK_WIDTH-1:0] m_slot_11_axi_arlock,
    output wire                                     m_slot_11_axi_arvalid,
    output wire                                     m_slot_11_axi_arready,
    output wire  [C_SLOT_11_AXI_ARUSER_WIDTH-1:0]      m_slot_11_axi_aruser,
    output wire  [C_SLOT_11_AXI_ID_WIDTH-1:0]        m_slot_11_axi_rid,
    output wire  [C_SLOT_11_AXI_DATA_WIDTH-1:0]      m_slot_11_axi_rdata,
    output wire  [1:0]                              m_slot_11_axi_rresp,
    output wire                                     m_slot_11_axi_rlast,
    output wire                                     m_slot_11_axi_rvalid,
    output wire                                     m_slot_11_axi_rready,
    output wire  [C_SLOT_11_AXI_RUSER_WIDTH-1:0]      m_slot_11_axi_ruser,
    output wire  [C_SLOT_11_AXI_ID_WIDTH-1:0]        m_slot_11_axi_wid,
    output wire  [3:0]                              m_slot_11_axi_awregion,
    output wire  [3:0]                              m_slot_11_axi_arregion,
    output wire  [3:0]                              m_slot_11_axi_awqos,
    output wire  [3:0]                              m_slot_11_axi_arqos,
    output wire [C_SLOT_11_MAX_WR_BURSTS:0]  m_slot_11_axi_aw_cnt,
    output wire [C_SLOT_11_MAX_RD_BURSTS:0]  m_slot_11_axi_ar_cnt,
    output wire [C_SLOT_11_MAX_WR_BURSTS:0]  m_slot_11_axi_b_cnt,
    output wire [C_SLOT_11_MAX_RD_BURSTS:0]  m_slot_11_axi_r_cnt,

    //SLOT 11 AXI Streaming Interface

    output wire                                     m_slot_11_axis_tvalid,
    output wire                                     m_slot_11_axis_tready,
    output wire  [C_SLOT_11_AXIS_TDATA_WIDTH-1:0]    m_slot_11_axis_tdata,
    output wire  [C_SLOT_11_AXIS_TDATA_WIDTH/8-1:0]  m_slot_11_axis_tstrb,
    output wire  [C_SLOT_11_AXIS_TDATA_WIDTH/8-1:0]  m_slot_11_axis_tkeep,
    output wire                                     m_slot_11_axis_tlast,
    output wire  [C_SLOT_11_AXIS_TID_WIDTH-1:0]      m_slot_11_axis_tid,
    output wire  [C_SLOT_11_AXIS_TDEST_WIDTH-1:0]    m_slot_11_axis_tdest,
    output wire  [C_SLOT_11_AXIS_TUSER_WIDTH-1:0]    m_slot_11_axis_tuser,


    // SLOT 12 AXI MM Interface signals
    output wire  [C_SLOT_12_AXI_ID_WIDTH-1:0]        m_slot_12_axi_awid,
    output wire  [C_SLOT_12_AXI_ADDR_WIDTH-1:0]      m_slot_12_axi_awaddr,
    output wire  [C_SLOT_12_AXI_AWUSER_WIDTH-1:0]      m_slot_12_axi_awuser,
    output wire  [2:0]                              m_slot_12_axi_awprot,
    output wire  [C_SLOT_12_AXI_AXLEN_WIDTH-1:0] m_slot_12_axi_awlen,
    output wire  [2:0]                              m_slot_12_axi_awsize,
    output wire  [1:0]                              m_slot_12_axi_awburst,
    output wire  [3:0]                              m_slot_12_axi_awcache,
    output wire  [C_SLOT_12_AXI_AXLOCK_WIDTH-1:0] m_slot_12_axi_awlock,
    output wire                                     m_slot_12_axi_awvalid,
    output wire                                     m_slot_12_axi_awready,
    output wire  [C_SLOT_12_AXI_DATA_WIDTH-1:0]      m_slot_12_axi_wdata,
    output wire  [C_SLOT_12_AXI_DATA_WIDTH/8-1:0]    m_slot_12_axi_wstrb,
    output wire                                     m_slot_12_axi_wlast,
    output wire                                     m_slot_12_axi_wvalid,
    output wire                                     m_slot_12_axi_wready,
    output wire  [C_SLOT_12_AXI_WUSER_WIDTH-1:0]      m_slot_12_axi_wuser,
    output wire  [C_SLOT_12_AXI_ID_WIDTH-1:0]        m_slot_12_axi_bid,
    output wire  [1:0]                              m_slot_12_axi_bresp,
    output wire                                     m_slot_12_axi_bvalid,
    output wire                                     m_slot_12_axi_bready,
    output wire  [C_SLOT_12_AXI_BUSER_WIDTH-1:0]      m_slot_12_axi_buser,
    output wire  [C_SLOT_12_AXI_ID_WIDTH-1:0]        m_slot_12_axi_arid,
    output wire  [C_SLOT_12_AXI_ADDR_WIDTH-1:0]      m_slot_12_axi_araddr,
    output wire  [C_SLOT_12_AXI_AXLEN_WIDTH-1:0] m_slot_12_axi_arlen,
    output wire  [2:0]                              m_slot_12_axi_arsize,
    output wire  [1:0]                              m_slot_12_axi_arburst,
    output wire  [3:0]                              m_slot_12_axi_arcache,
    output wire  [2:0]                              m_slot_12_axi_arprot,
    output wire  [C_SLOT_12_AXI_AXLOCK_WIDTH-1:0] m_slot_12_axi_arlock,
    output wire                                     m_slot_12_axi_arvalid,
    output wire                                     m_slot_12_axi_arready,
    output wire  [C_SLOT_12_AXI_ARUSER_WIDTH-1:0]      m_slot_12_axi_aruser,
    output wire  [C_SLOT_12_AXI_ID_WIDTH-1:0]        m_slot_12_axi_rid,
    output wire  [C_SLOT_12_AXI_DATA_WIDTH-1:0]      m_slot_12_axi_rdata,
    output wire  [1:0]                              m_slot_12_axi_rresp,
    output wire                                     m_slot_12_axi_rlast,
    output wire                                     m_slot_12_axi_rvalid,
    output wire                                     m_slot_12_axi_rready,
    output wire  [C_SLOT_12_AXI_RUSER_WIDTH-1:0]      m_slot_12_axi_ruser,
    output wire  [C_SLOT_12_AXI_ID_WIDTH-1:0]        m_slot_12_axi_wid,
    output wire  [3:0]                              m_slot_12_axi_awregion,
    output wire  [3:0]                              m_slot_12_axi_arregion,
    output wire  [3:0]                              m_slot_12_axi_awqos,
    output wire  [3:0]                              m_slot_12_axi_arqos,
    output wire [C_SLOT_12_MAX_WR_BURSTS:0]  m_slot_12_axi_aw_cnt,
    output wire [C_SLOT_12_MAX_RD_BURSTS:0]  m_slot_12_axi_ar_cnt,
    output wire [C_SLOT_12_MAX_WR_BURSTS:0]  m_slot_12_axi_b_cnt,
    output wire [C_SLOT_12_MAX_RD_BURSTS:0]  m_slot_12_axi_r_cnt,

    //SLOT 12 AXI Streaming Interface

    output wire                                     m_slot_12_axis_tvalid,
    output wire                                     m_slot_12_axis_tready,
    output wire  [C_SLOT_12_AXIS_TDATA_WIDTH-1:0]    m_slot_12_axis_tdata,
    output wire  [C_SLOT_12_AXIS_TDATA_WIDTH/8-1:0]  m_slot_12_axis_tstrb,
    output wire  [C_SLOT_12_AXIS_TDATA_WIDTH/8-1:0]  m_slot_12_axis_tkeep,
    output wire                                     m_slot_12_axis_tlast,
    output wire  [C_SLOT_12_AXIS_TID_WIDTH-1:0]      m_slot_12_axis_tid,
    output wire  [C_SLOT_12_AXIS_TDEST_WIDTH-1:0]    m_slot_12_axis_tdest,
    output wire  [C_SLOT_12_AXIS_TUSER_WIDTH-1:0]    m_slot_12_axis_tuser,


    // SLOT 13 AXI MM Interface signals
    output wire  [C_SLOT_13_AXI_ID_WIDTH-1:0]        m_slot_13_axi_awid,
    output wire  [C_SLOT_13_AXI_ADDR_WIDTH-1:0]      m_slot_13_axi_awaddr,
    output wire  [C_SLOT_13_AXI_AWUSER_WIDTH-1:0]      m_slot_13_axi_awuser,
    output wire  [2:0]                              m_slot_13_axi_awprot,
    output wire  [C_SLOT_13_AXI_AXLEN_WIDTH-1:0] m_slot_13_axi_awlen,
    output wire  [2:0]                              m_slot_13_axi_awsize,
    output wire  [1:0]                              m_slot_13_axi_awburst,
    output wire  [3:0]                              m_slot_13_axi_awcache,
    output wire  [C_SLOT_13_AXI_AXLOCK_WIDTH-1:0] m_slot_13_axi_awlock,
    output wire                                     m_slot_13_axi_awvalid,
    output wire                                     m_slot_13_axi_awready,
    output wire  [C_SLOT_13_AXI_DATA_WIDTH-1:0]      m_slot_13_axi_wdata,
    output wire  [C_SLOT_13_AXI_DATA_WIDTH/8-1:0]    m_slot_13_axi_wstrb,
    output wire                                     m_slot_13_axi_wlast,
    output wire                                     m_slot_13_axi_wvalid,
    output wire                                     m_slot_13_axi_wready,
    output wire  [C_SLOT_13_AXI_WUSER_WIDTH-1:0]      m_slot_13_axi_wuser,
    output wire  [C_SLOT_13_AXI_ID_WIDTH-1:0]        m_slot_13_axi_bid,
    output wire  [1:0]                              m_slot_13_axi_bresp,
    output wire                                     m_slot_13_axi_bvalid,
    output wire                                     m_slot_13_axi_bready,
    output wire  [C_SLOT_13_AXI_BUSER_WIDTH-1:0]      m_slot_13_axi_buser,
    output wire  [C_SLOT_13_AXI_ID_WIDTH-1:0]        m_slot_13_axi_arid,
    output wire  [C_SLOT_13_AXI_ADDR_WIDTH-1:0]      m_slot_13_axi_araddr,
    output wire  [C_SLOT_13_AXI_AXLEN_WIDTH-1:0] m_slot_13_axi_arlen,
    output wire  [2:0]                              m_slot_13_axi_arsize,
    output wire  [1:0]                              m_slot_13_axi_arburst,
    output wire  [3:0]                              m_slot_13_axi_arcache,
    output wire  [2:0]                              m_slot_13_axi_arprot,
    output wire  [C_SLOT_13_AXI_AXLOCK_WIDTH-1:0] m_slot_13_axi_arlock,
    output wire                                     m_slot_13_axi_arvalid,
    output wire                                     m_slot_13_axi_arready,
    output wire  [C_SLOT_13_AXI_ARUSER_WIDTH-1:0]      m_slot_13_axi_aruser,
    output wire  [C_SLOT_13_AXI_ID_WIDTH-1:0]        m_slot_13_axi_rid,
    output wire  [C_SLOT_13_AXI_DATA_WIDTH-1:0]      m_slot_13_axi_rdata,
    output wire  [1:0]                              m_slot_13_axi_rresp,
    output wire                                     m_slot_13_axi_rlast,
    output wire                                     m_slot_13_axi_rvalid,
    output wire                                     m_slot_13_axi_rready,
    output wire  [C_SLOT_13_AXI_RUSER_WIDTH-1:0]      m_slot_13_axi_ruser,
    output wire  [C_SLOT_13_AXI_ID_WIDTH-1:0]        m_slot_13_axi_wid,
    output wire  [3:0]                              m_slot_13_axi_awregion,
    output wire  [3:0]                              m_slot_13_axi_arregion,
    output wire  [3:0]                              m_slot_13_axi_awqos,
    output wire  [3:0]                              m_slot_13_axi_arqos,
    output wire [C_SLOT_13_MAX_WR_BURSTS:0]  m_slot_13_axi_aw_cnt,
    output wire [C_SLOT_13_MAX_RD_BURSTS:0]  m_slot_13_axi_ar_cnt,
    output wire [C_SLOT_13_MAX_WR_BURSTS:0]  m_slot_13_axi_b_cnt,
    output wire [C_SLOT_13_MAX_RD_BURSTS:0]  m_slot_13_axi_r_cnt,

    //SLOT 13 AXI Streaming Interface

    output wire                                     m_slot_13_axis_tvalid,
    output wire                                     m_slot_13_axis_tready,
    output wire  [C_SLOT_13_AXIS_TDATA_WIDTH-1:0]    m_slot_13_axis_tdata,
    output wire  [C_SLOT_13_AXIS_TDATA_WIDTH/8-1:0]  m_slot_13_axis_tstrb,
    output wire  [C_SLOT_13_AXIS_TDATA_WIDTH/8-1:0]  m_slot_13_axis_tkeep,
    output wire                                     m_slot_13_axis_tlast,
    output wire  [C_SLOT_13_AXIS_TID_WIDTH-1:0]      m_slot_13_axis_tid,
    output wire  [C_SLOT_13_AXIS_TDEST_WIDTH-1:0]    m_slot_13_axis_tdest,
    output wire  [C_SLOT_13_AXIS_TUSER_WIDTH-1:0]    m_slot_13_axis_tuser,


    // SLOT 14 AXI MM Interface signals
    output wire  [C_SLOT_14_AXI_ID_WIDTH-1:0]        m_slot_14_axi_awid,
    output wire  [C_SLOT_14_AXI_ADDR_WIDTH-1:0]      m_slot_14_axi_awaddr,
    output wire  [C_SLOT_14_AXI_AWUSER_WIDTH-1:0]      m_slot_14_axi_awuser,
    output wire  [2:0]                              m_slot_14_axi_awprot,
    output wire  [C_SLOT_14_AXI_AXLEN_WIDTH-1:0] m_slot_14_axi_awlen,
    output wire  [2:0]                              m_slot_14_axi_awsize,
    output wire  [1:0]                              m_slot_14_axi_awburst,
    output wire  [3:0]                              m_slot_14_axi_awcache,
    output wire  [C_SLOT_14_AXI_AXLOCK_WIDTH-1:0] m_slot_14_axi_awlock,
    output wire                                     m_slot_14_axi_awvalid,
    output wire                                     m_slot_14_axi_awready,
    output wire  [C_SLOT_14_AXI_DATA_WIDTH-1:0]      m_slot_14_axi_wdata,
    output wire  [C_SLOT_14_AXI_DATA_WIDTH/8-1:0]    m_slot_14_axi_wstrb,
    output wire                                     m_slot_14_axi_wlast,
    output wire                                     m_slot_14_axi_wvalid,
    output wire                                     m_slot_14_axi_wready,
    output wire  [C_SLOT_14_AXI_WUSER_WIDTH-1:0]      m_slot_14_axi_wuser,
    output wire  [C_SLOT_14_AXI_ID_WIDTH-1:0]        m_slot_14_axi_bid,
    output wire  [1:0]                              m_slot_14_axi_bresp,
    output wire                                     m_slot_14_axi_bvalid,
    output wire                                     m_slot_14_axi_bready,
    output wire  [C_SLOT_14_AXI_BUSER_WIDTH-1:0]      m_slot_14_axi_buser,
    output wire  [C_SLOT_14_AXI_ID_WIDTH-1:0]        m_slot_14_axi_arid,
    output wire  [C_SLOT_14_AXI_ADDR_WIDTH-1:0]      m_slot_14_axi_araddr,
    output wire  [C_SLOT_14_AXI_AXLEN_WIDTH-1:0] m_slot_14_axi_arlen,
    output wire  [2:0]                              m_slot_14_axi_arsize,
    output wire  [1:0]                              m_slot_14_axi_arburst,
    output wire  [3:0]                              m_slot_14_axi_arcache,
    output wire  [2:0]                              m_slot_14_axi_arprot,
    output wire  [C_SLOT_14_AXI_AXLOCK_WIDTH-1:0] m_slot_14_axi_arlock,
    output wire                                     m_slot_14_axi_arvalid,
    output wire                                     m_slot_14_axi_arready,
    output wire  [C_SLOT_14_AXI_ARUSER_WIDTH-1:0]      m_slot_14_axi_aruser,
    output wire  [C_SLOT_14_AXI_ID_WIDTH-1:0]        m_slot_14_axi_rid,
    output wire  [C_SLOT_14_AXI_DATA_WIDTH-1:0]      m_slot_14_axi_rdata,
    output wire  [1:0]                              m_slot_14_axi_rresp,
    output wire                                     m_slot_14_axi_rlast,
    output wire                                     m_slot_14_axi_rvalid,
    output wire                                     m_slot_14_axi_rready,
    output wire  [C_SLOT_14_AXI_RUSER_WIDTH-1:0]      m_slot_14_axi_ruser,
    output wire  [C_SLOT_14_AXI_ID_WIDTH-1:0]        m_slot_14_axi_wid,
    output wire  [3:0]                              m_slot_14_axi_awregion,
    output wire  [3:0]                              m_slot_14_axi_arregion,
    output wire  [3:0]                              m_slot_14_axi_awqos,
    output wire  [3:0]                              m_slot_14_axi_arqos,
    output wire [C_SLOT_14_MAX_WR_BURSTS:0]  m_slot_14_axi_aw_cnt,
    output wire [C_SLOT_14_MAX_RD_BURSTS:0]  m_slot_14_axi_ar_cnt,
    output wire [C_SLOT_14_MAX_WR_BURSTS:0]  m_slot_14_axi_b_cnt,
    output wire [C_SLOT_14_MAX_RD_BURSTS:0]  m_slot_14_axi_r_cnt,

    //SLOT 14 AXI Streaming Interface

    output wire                                     m_slot_14_axis_tvalid,
    output wire                                     m_slot_14_axis_tready,
    output wire  [C_SLOT_14_AXIS_TDATA_WIDTH-1:0]    m_slot_14_axis_tdata,
    output wire  [C_SLOT_14_AXIS_TDATA_WIDTH/8-1:0]  m_slot_14_axis_tstrb,
    output wire  [C_SLOT_14_AXIS_TDATA_WIDTH/8-1:0]  m_slot_14_axis_tkeep,
    output wire                                     m_slot_14_axis_tlast,
    output wire  [C_SLOT_14_AXIS_TID_WIDTH-1:0]      m_slot_14_axis_tid,
    output wire  [C_SLOT_14_AXIS_TDEST_WIDTH-1:0]    m_slot_14_axis_tdest,
    output wire  [C_SLOT_14_AXIS_TUSER_WIDTH-1:0]    m_slot_14_axis_tuser,


    // SLOT 15 AXI MM Interface signals
    output wire  [C_SLOT_15_AXI_ID_WIDTH-1:0]        m_slot_15_axi_awid,
    output wire  [C_SLOT_15_AXI_ADDR_WIDTH-1:0]      m_slot_15_axi_awaddr,
    output wire  [C_SLOT_15_AXI_AWUSER_WIDTH-1:0]      m_slot_15_axi_awuser,
    output wire  [2:0]                              m_slot_15_axi_awprot,
    output wire  [C_SLOT_15_AXI_AXLEN_WIDTH-1:0] m_slot_15_axi_awlen,
    output wire  [2:0]                              m_slot_15_axi_awsize,
    output wire  [1:0]                              m_slot_15_axi_awburst,
    output wire  [3:0]                              m_slot_15_axi_awcache,
    output wire  [C_SLOT_15_AXI_AXLOCK_WIDTH-1:0] m_slot_15_axi_awlock,
    output wire                                     m_slot_15_axi_awvalid,
    output wire                                     m_slot_15_axi_awready,
    output wire  [C_SLOT_15_AXI_DATA_WIDTH-1:0]      m_slot_15_axi_wdata,
    output wire  [C_SLOT_15_AXI_DATA_WIDTH/8-1:0]    m_slot_15_axi_wstrb,
    output wire                                     m_slot_15_axi_wlast,
    output wire                                     m_slot_15_axi_wvalid,
    output wire                                     m_slot_15_axi_wready,
    output wire  [C_SLOT_15_AXI_WUSER_WIDTH-1:0]      m_slot_15_axi_wuser,
    output wire  [C_SLOT_15_AXI_ID_WIDTH-1:0]        m_slot_15_axi_bid,
    output wire  [1:0]                              m_slot_15_axi_bresp,
    output wire                                     m_slot_15_axi_bvalid,
    output wire                                     m_slot_15_axi_bready,
    output wire  [C_SLOT_15_AXI_BUSER_WIDTH-1:0]      m_slot_15_axi_buser,
    output wire  [C_SLOT_15_AXI_ID_WIDTH-1:0]        m_slot_15_axi_arid,
    output wire  [C_SLOT_15_AXI_ADDR_WIDTH-1:0]      m_slot_15_axi_araddr,
    output wire  [C_SLOT_15_AXI_AXLEN_WIDTH-1:0] m_slot_15_axi_arlen,
    output wire  [2:0]                              m_slot_15_axi_arsize,
    output wire  [1:0]                              m_slot_15_axi_arburst,
    output wire  [3:0]                              m_slot_15_axi_arcache,
    output wire  [2:0]                              m_slot_15_axi_arprot,
    output wire  [C_SLOT_15_AXI_AXLOCK_WIDTH-1:0] m_slot_15_axi_arlock,
    output wire                                     m_slot_15_axi_arvalid,
    output wire                                     m_slot_15_axi_arready,
    output wire  [C_SLOT_15_AXI_ARUSER_WIDTH-1:0]      m_slot_15_axi_aruser,
    output wire  [C_SLOT_15_AXI_ID_WIDTH-1:0]        m_slot_15_axi_rid,
    output wire  [C_SLOT_15_AXI_DATA_WIDTH-1:0]      m_slot_15_axi_rdata,
    output wire  [1:0]                              m_slot_15_axi_rresp,
    output wire                                     m_slot_15_axi_rlast,
    output wire                                     m_slot_15_axi_rvalid,
    output wire                                     m_slot_15_axi_rready,
    output wire  [C_SLOT_15_AXI_RUSER_WIDTH-1:0]      m_slot_15_axi_ruser,
    output wire  [C_SLOT_15_AXI_ID_WIDTH-1:0]        m_slot_15_axi_wid,
    output wire  [3:0]                              m_slot_15_axi_awregion,
    output wire  [3:0]                              m_slot_15_axi_arregion,
    output wire  [3:0]                              m_slot_15_axi_awqos,
    output wire  [3:0]                              m_slot_15_axi_arqos,
    output wire [C_SLOT_15_MAX_WR_BURSTS:0]  m_slot_15_axi_aw_cnt,
    output wire [C_SLOT_15_MAX_RD_BURSTS:0]  m_slot_15_axi_ar_cnt,
    output wire [C_SLOT_15_MAX_WR_BURSTS:0]  m_slot_15_axi_b_cnt,
    output wire [C_SLOT_15_MAX_RD_BURSTS:0]  m_slot_15_axi_r_cnt,

    //SLOT 15 AXI Streaming Interface

    output wire                                     m_slot_15_axis_tvalid,
    output wire                                     m_slot_15_axis_tready,
    output wire  [C_SLOT_15_AXIS_TDATA_WIDTH-1:0]    m_slot_15_axis_tdata,
    output wire  [C_SLOT_15_AXIS_TDATA_WIDTH/8-1:0]  m_slot_15_axis_tstrb,
    output wire  [C_SLOT_15_AXIS_TDATA_WIDTH/8-1:0]  m_slot_15_axis_tkeep,
    output wire                                     m_slot_15_axis_tlast,
    output wire  [C_SLOT_15_AXIS_TID_WIDTH-1:0]      m_slot_15_axis_tid,
    output wire  [C_SLOT_15_AXIS_TDEST_WIDTH-1:0]    m_slot_15_axis_tdest,
    output wire  [C_SLOT_15_AXIS_TUSER_WIDTH-1:0]    m_slot_15_axis_tuser,


    // SLOT 0 AXI MM Interface signals
    input wire  [C_SLOT_0_AXI_ID_WIDTH-1:0]        slot_0_axi_awid,
    input wire  [C_SLOT_0_AXI_ADDR_WIDTH-1:0]      slot_0_axi_awaddr,
    input wire  [C_SLOT_0_AXI_AWUSER_WIDTH-1:0]      slot_0_axi_awuser,
    input wire  [2:0]                              slot_0_axi_awprot,
    input wire  [C_SLOT_0_AXI_AXLEN_WIDTH-1:0] slot_0_axi_awlen,
    input wire  [2:0]                              slot_0_axi_awsize,
    input wire  [1:0]                              slot_0_axi_awburst,
    input wire  [3:0]                              slot_0_axi_awcache,
    input wire  [C_SLOT_0_AXI_AXLOCK_WIDTH-1:0] slot_0_axi_awlock,
    input wire                                     slot_0_axi_awvalid,
    input wire                                     slot_0_axi_awready,
    input wire  [C_SLOT_0_AXI_DATA_WIDTH-1:0]      slot_0_axi_wdata,
    input wire  [C_SLOT_0_AXI_DATA_WIDTH/8-1:0]    slot_0_axi_wstrb,
    input wire                                     slot_0_axi_wlast,
    input wire                                     slot_0_axi_wvalid,
    input wire                                     slot_0_axi_wready,
    input wire  [C_SLOT_0_AXI_WUSER_WIDTH-1:0]      slot_0_axi_wuser,
    input wire  [C_SLOT_0_AXI_ID_WIDTH-1:0]        slot_0_axi_bid,
    input wire  [1:0]                              slot_0_axi_bresp,
    input wire                                     slot_0_axi_bvalid,
    input wire                                     slot_0_axi_bready,
    input wire  [C_SLOT_0_AXI_BUSER_WIDTH-1:0]      slot_0_axi_buser,
    input wire  [C_SLOT_0_AXI_ID_WIDTH-1:0]        slot_0_axi_arid,
    input wire  [C_SLOT_0_AXI_ADDR_WIDTH-1:0]      slot_0_axi_araddr,
    input wire  [C_SLOT_0_AXI_AXLEN_WIDTH-1:0]  slot_0_axi_arlen,
    input wire  [2:0]                              slot_0_axi_arsize,
    input wire  [1:0]                              slot_0_axi_arburst,
    input wire  [3:0]                              slot_0_axi_arcache,
    input wire  [2:0]                              slot_0_axi_arprot,
    input wire  [C_SLOT_0_AXI_AXLOCK_WIDTH-1:0] slot_0_axi_arlock,
    input wire                                     slot_0_axi_arvalid,
    input wire                                     slot_0_axi_arready,
    input wire  [C_SLOT_0_AXI_ARUSER_WIDTH-1:0]      slot_0_axi_aruser,
    input wire  [C_SLOT_0_AXI_ID_WIDTH-1:0]        slot_0_axi_rid,
    input wire  [C_SLOT_0_AXI_DATA_WIDTH-1:0]      slot_0_axi_rdata,
    input wire  [1:0]                              slot_0_axi_rresp,
    input wire                                     slot_0_axi_rlast,
    input wire                                     slot_0_axi_rvalid,
    input wire                                     slot_0_axi_rready,
    input wire  [C_SLOT_0_AXI_RUSER_WIDTH-1:0]      slot_0_axi_ruser,
    input wire  [C_SLOT_0_AXI_ID_WIDTH-1:0]        slot_0_axi_wid,
    input wire  [3:0]                              slot_0_axi_awregion,
    input wire  [3:0]                              slot_0_axi_arregion,
    input wire  [3:0]                              slot_0_axi_awqos,
    input wire  [3:0]                              slot_0_axi_arqos,

    //SLOT 0 AXI Streaming Interface

    input wire                                     slot_0_axis_tvalid,
    input wire                                     slot_0_axis_tready,
    input wire  [C_SLOT_0_AXIS_TDATA_WIDTH-1:0]    slot_0_axis_tdata,
    input wire  [C_SLOT_0_AXIS_TDATA_WIDTH/8-1:0]  slot_0_axis_tstrb,
    input wire  [C_SLOT_0_AXIS_TDATA_WIDTH/8-1:0]  slot_0_axis_tkeep,
    input wire                                     slot_0_axis_tlast,
    input wire  [C_SLOT_0_AXIS_TID_WIDTH-1:0]      slot_0_axis_tid,
    input wire  [C_SLOT_0_AXIS_TDEST_WIDTH-1:0]    slot_0_axis_tdest,
    input wire  [C_SLOT_0_AXIS_TUSER_WIDTH-1:0]    slot_0_axis_tuser,


    // SLOT 1 AXI MM Interface signals
    input wire  [C_SLOT_1_AXI_ID_WIDTH-1:0]        slot_1_axi_awid,
    input wire  [C_SLOT_1_AXI_ADDR_WIDTH-1:0]      slot_1_axi_awaddr,
    input wire  [C_SLOT_1_AXI_AWUSER_WIDTH-1:0]      slot_1_axi_awuser,
    input wire  [2:0]                              slot_1_axi_awprot,
    input wire  [C_SLOT_1_AXI_AXLEN_WIDTH-1:0] slot_1_axi_awlen,
    input wire  [2:0]                              slot_1_axi_awsize,
    input wire  [1:0]                              slot_1_axi_awburst,
    input wire  [3:0]                              slot_1_axi_awcache,
    input wire  [C_SLOT_1_AXI_AXLOCK_WIDTH-1:0] slot_1_axi_awlock,
    input wire                                     slot_1_axi_awvalid,
    input wire                                     slot_1_axi_awready,
    input wire  [C_SLOT_1_AXI_DATA_WIDTH-1:0]      slot_1_axi_wdata,
    input wire  [C_SLOT_1_AXI_DATA_WIDTH/8-1:0]    slot_1_axi_wstrb,
    input wire                                     slot_1_axi_wlast,
    input wire                                     slot_1_axi_wvalid,
    input wire                                     slot_1_axi_wready,
    input wire  [C_SLOT_1_AXI_WUSER_WIDTH-1:0]      slot_1_axi_wuser,
    input wire  [C_SLOT_1_AXI_ID_WIDTH-1:0]        slot_1_axi_bid,
    input wire  [1:0]                              slot_1_axi_bresp,
    input wire                                     slot_1_axi_bvalid,
    input wire                                     slot_1_axi_bready,
    input wire  [C_SLOT_1_AXI_BUSER_WIDTH-1:0]      slot_1_axi_buser,
    input wire  [C_SLOT_1_AXI_ID_WIDTH-1:0]        slot_1_axi_arid,
    input wire  [C_SLOT_1_AXI_ADDR_WIDTH-1:0]      slot_1_axi_araddr,
    input wire  [C_SLOT_1_AXI_AXLEN_WIDTH-1:0]  slot_1_axi_arlen,
    input wire  [2:0]                              slot_1_axi_arsize,
    input wire  [1:0]                              slot_1_axi_arburst,
    input wire  [3:0]                              slot_1_axi_arcache,
    input wire  [2:0]                              slot_1_axi_arprot,
    input wire  [C_SLOT_1_AXI_AXLOCK_WIDTH-1:0] slot_1_axi_arlock,
    input wire                                     slot_1_axi_arvalid,
    input wire                                     slot_1_axi_arready,
    input wire  [C_SLOT_1_AXI_ARUSER_WIDTH-1:0]      slot_1_axi_aruser,
    input wire  [C_SLOT_1_AXI_ID_WIDTH-1:0]        slot_1_axi_rid,
    input wire  [C_SLOT_1_AXI_DATA_WIDTH-1:0]      slot_1_axi_rdata,
    input wire  [1:0]                              slot_1_axi_rresp,
    input wire                                     slot_1_axi_rlast,
    input wire                                     slot_1_axi_rvalid,
    input wire                                     slot_1_axi_rready,
    input wire  [C_SLOT_1_AXI_RUSER_WIDTH-1:0]      slot_1_axi_ruser,
    input wire  [C_SLOT_1_AXI_ID_WIDTH-1:0]        slot_1_axi_wid,
    input wire  [3:0]                              slot_1_axi_awregion,
    input wire  [3:0]                              slot_1_axi_arregion,
    input wire  [3:0]                              slot_1_axi_awqos,
    input wire  [3:0]                              slot_1_axi_arqos,

    //SLOT 1 AXI Streaming Interface

    input wire                                     slot_1_axis_tvalid,
    input wire                                     slot_1_axis_tready,
    input wire  [C_SLOT_1_AXIS_TDATA_WIDTH-1:0]    slot_1_axis_tdata,
    input wire  [C_SLOT_1_AXIS_TDATA_WIDTH/8-1:0]  slot_1_axis_tstrb,
    input wire  [C_SLOT_1_AXIS_TDATA_WIDTH/8-1:0]  slot_1_axis_tkeep,
    input wire                                     slot_1_axis_tlast,
    input wire  [C_SLOT_1_AXIS_TID_WIDTH-1:0]      slot_1_axis_tid,
    input wire  [C_SLOT_1_AXIS_TDEST_WIDTH-1:0]    slot_1_axis_tdest,
    input wire  [C_SLOT_1_AXIS_TUSER_WIDTH-1:0]    slot_1_axis_tuser,


    // SLOT 2 AXI MM Interface signals
    input wire  [C_SLOT_2_AXI_ID_WIDTH-1:0]        slot_2_axi_awid,
    input wire  [C_SLOT_2_AXI_ADDR_WIDTH-1:0]      slot_2_axi_awaddr,
    input wire  [C_SLOT_2_AXI_AWUSER_WIDTH-1:0]      slot_2_axi_awuser,
    input wire  [2:0]                              slot_2_axi_awprot,
    input wire  [C_SLOT_2_AXI_AXLEN_WIDTH-1:0] slot_2_axi_awlen,
    input wire  [2:0]                              slot_2_axi_awsize,
    input wire  [1:0]                              slot_2_axi_awburst,
    input wire  [3:0]                              slot_2_axi_awcache,
    input wire  [C_SLOT_2_AXI_AXLOCK_WIDTH-1:0] slot_2_axi_awlock,
    input wire                                     slot_2_axi_awvalid,
    input wire                                     slot_2_axi_awready,
    input wire  [C_SLOT_2_AXI_DATA_WIDTH-1:0]      slot_2_axi_wdata,
    input wire  [C_SLOT_2_AXI_DATA_WIDTH/8-1:0]    slot_2_axi_wstrb,
    input wire                                     slot_2_axi_wlast,
    input wire                                     slot_2_axi_wvalid,
    input wire                                     slot_2_axi_wready,
    input wire  [C_SLOT_2_AXI_WUSER_WIDTH-1:0]      slot_2_axi_wuser,
    input wire  [C_SLOT_2_AXI_ID_WIDTH-1:0]        slot_2_axi_bid,
    input wire  [1:0]                              slot_2_axi_bresp,
    input wire                                     slot_2_axi_bvalid,
    input wire                                     slot_2_axi_bready,
    input wire  [C_SLOT_2_AXI_BUSER_WIDTH-1:0]      slot_2_axi_buser,
    input wire  [C_SLOT_2_AXI_ID_WIDTH-1:0]        slot_2_axi_arid,
    input wire  [C_SLOT_2_AXI_ADDR_WIDTH-1:0]      slot_2_axi_araddr,
    input wire  [C_SLOT_2_AXI_AXLEN_WIDTH-1:0]  slot_2_axi_arlen,
    input wire  [2:0]                              slot_2_axi_arsize,
    input wire  [1:0]                              slot_2_axi_arburst,
    input wire  [3:0]                              slot_2_axi_arcache,
    input wire  [2:0]                              slot_2_axi_arprot,
    input wire  [C_SLOT_2_AXI_AXLOCK_WIDTH-1:0] slot_2_axi_arlock,
    input wire                                     slot_2_axi_arvalid,
    input wire                                     slot_2_axi_arready,
    input wire  [C_SLOT_2_AXI_ARUSER_WIDTH-1:0]      slot_2_axi_aruser,
    input wire  [C_SLOT_2_AXI_ID_WIDTH-1:0]        slot_2_axi_rid,
    input wire  [C_SLOT_2_AXI_DATA_WIDTH-1:0]      slot_2_axi_rdata,
    input wire  [1:0]                              slot_2_axi_rresp,
    input wire                                     slot_2_axi_rlast,
    input wire                                     slot_2_axi_rvalid,
    input wire                                     slot_2_axi_rready,
    input wire  [C_SLOT_2_AXI_RUSER_WIDTH-1:0]      slot_2_axi_ruser,
    input wire  [C_SLOT_2_AXI_ID_WIDTH-1:0]        slot_2_axi_wid,
    input wire  [3:0]                              slot_2_axi_awregion,
    input wire  [3:0]                              slot_2_axi_arregion,
    input wire  [3:0]                              slot_2_axi_awqos,
    input wire  [3:0]                              slot_2_axi_arqos,

    //SLOT 2 AXI Streaming Interface

    input wire                                     slot_2_axis_tvalid,
    input wire                                     slot_2_axis_tready,
    input wire  [C_SLOT_2_AXIS_TDATA_WIDTH-1:0]    slot_2_axis_tdata,
    input wire  [C_SLOT_2_AXIS_TDATA_WIDTH/8-1:0]  slot_2_axis_tstrb,
    input wire  [C_SLOT_2_AXIS_TDATA_WIDTH/8-1:0]  slot_2_axis_tkeep,
    input wire                                     slot_2_axis_tlast,
    input wire  [C_SLOT_2_AXIS_TID_WIDTH-1:0]      slot_2_axis_tid,
    input wire  [C_SLOT_2_AXIS_TDEST_WIDTH-1:0]    slot_2_axis_tdest,
    input wire  [C_SLOT_2_AXIS_TUSER_WIDTH-1:0]    slot_2_axis_tuser,


    // SLOT 3 AXI MM Interface signals
    input wire  [C_SLOT_3_AXI_ID_WIDTH-1:0]        slot_3_axi_awid,
    input wire  [C_SLOT_3_AXI_ADDR_WIDTH-1:0]      slot_3_axi_awaddr,
    input wire  [C_SLOT_3_AXI_AWUSER_WIDTH-1:0]      slot_3_axi_awuser,
    input wire  [2:0]                              slot_3_axi_awprot,
    input wire  [C_SLOT_3_AXI_AXLEN_WIDTH-1:0] slot_3_axi_awlen,
    input wire  [2:0]                              slot_3_axi_awsize,
    input wire  [1:0]                              slot_3_axi_awburst,
    input wire  [3:0]                              slot_3_axi_awcache,
    input wire  [C_SLOT_3_AXI_AXLOCK_WIDTH-1:0] slot_3_axi_awlock,
    input wire                                     slot_3_axi_awvalid,
    input wire                                     slot_3_axi_awready,
    input wire  [C_SLOT_3_AXI_DATA_WIDTH-1:0]      slot_3_axi_wdata,
    input wire  [C_SLOT_3_AXI_DATA_WIDTH/8-1:0]    slot_3_axi_wstrb,
    input wire                                     slot_3_axi_wlast,
    input wire                                     slot_3_axi_wvalid,
    input wire                                     slot_3_axi_wready,
    input wire  [C_SLOT_3_AXI_WUSER_WIDTH-1:0]      slot_3_axi_wuser,
    input wire  [C_SLOT_3_AXI_ID_WIDTH-1:0]        slot_3_axi_bid,
    input wire  [1:0]                              slot_3_axi_bresp,
    input wire                                     slot_3_axi_bvalid,
    input wire                                     slot_3_axi_bready,
    input wire  [C_SLOT_3_AXI_BUSER_WIDTH-1:0]      slot_3_axi_buser,
    input wire  [C_SLOT_3_AXI_ID_WIDTH-1:0]        slot_3_axi_arid,
    input wire  [C_SLOT_3_AXI_ADDR_WIDTH-1:0]      slot_3_axi_araddr,
    input wire  [C_SLOT_3_AXI_AXLEN_WIDTH-1:0]  slot_3_axi_arlen,
    input wire  [2:0]                              slot_3_axi_arsize,
    input wire  [1:0]                              slot_3_axi_arburst,
    input wire  [3:0]                              slot_3_axi_arcache,
    input wire  [2:0]                              slot_3_axi_arprot,
    input wire  [C_SLOT_3_AXI_AXLOCK_WIDTH-1:0] slot_3_axi_arlock,
    input wire                                     slot_3_axi_arvalid,
    input wire                                     slot_3_axi_arready,
    input wire  [C_SLOT_3_AXI_ARUSER_WIDTH-1:0]      slot_3_axi_aruser,
    input wire  [C_SLOT_3_AXI_ID_WIDTH-1:0]        slot_3_axi_rid,
    input wire  [C_SLOT_3_AXI_DATA_WIDTH-1:0]      slot_3_axi_rdata,
    input wire  [1:0]                              slot_3_axi_rresp,
    input wire                                     slot_3_axi_rlast,
    input wire                                     slot_3_axi_rvalid,
    input wire                                     slot_3_axi_rready,
    input wire  [C_SLOT_3_AXI_RUSER_WIDTH-1:0]      slot_3_axi_ruser,
    input wire  [C_SLOT_3_AXI_ID_WIDTH-1:0]        slot_3_axi_wid,
    input wire  [3:0]                              slot_3_axi_awregion,
    input wire  [3:0]                              slot_3_axi_arregion,
    input wire  [3:0]                              slot_3_axi_awqos,
    input wire  [3:0]                              slot_3_axi_arqos,

    //SLOT 3 AXI Streaming Interface

    input wire                                     slot_3_axis_tvalid,
    input wire                                     slot_3_axis_tready,
    input wire  [C_SLOT_3_AXIS_TDATA_WIDTH-1:0]    slot_3_axis_tdata,
    input wire  [C_SLOT_3_AXIS_TDATA_WIDTH/8-1:0]  slot_3_axis_tstrb,
    input wire  [C_SLOT_3_AXIS_TDATA_WIDTH/8-1:0]  slot_3_axis_tkeep,
    input wire                                     slot_3_axis_tlast,
    input wire  [C_SLOT_3_AXIS_TID_WIDTH-1:0]      slot_3_axis_tid,
    input wire  [C_SLOT_3_AXIS_TDEST_WIDTH-1:0]    slot_3_axis_tdest,
    input wire  [C_SLOT_3_AXIS_TUSER_WIDTH-1:0]    slot_3_axis_tuser,


    // SLOT 4 AXI MM Interface signals
    input wire  [C_SLOT_4_AXI_ID_WIDTH-1:0]        slot_4_axi_awid,
    input wire  [C_SLOT_4_AXI_ADDR_WIDTH-1:0]      slot_4_axi_awaddr,
    input wire  [C_SLOT_4_AXI_AWUSER_WIDTH-1:0]      slot_4_axi_awuser,
    input wire  [2:0]                              slot_4_axi_awprot,
    input wire  [C_SLOT_4_AXI_AXLEN_WIDTH-1:0] slot_4_axi_awlen,
    input wire  [2:0]                              slot_4_axi_awsize,
    input wire  [1:0]                              slot_4_axi_awburst,
    input wire  [3:0]                              slot_4_axi_awcache,
    input wire  [C_SLOT_4_AXI_AXLOCK_WIDTH-1:0] slot_4_axi_awlock,
    input wire                                     slot_4_axi_awvalid,
    input wire                                     slot_4_axi_awready,
    input wire  [C_SLOT_4_AXI_DATA_WIDTH-1:0]      slot_4_axi_wdata,
    input wire  [C_SLOT_4_AXI_DATA_WIDTH/8-1:0]    slot_4_axi_wstrb,
    input wire                                     slot_4_axi_wlast,
    input wire                                     slot_4_axi_wvalid,
    input wire                                     slot_4_axi_wready,
    input wire  [C_SLOT_4_AXI_WUSER_WIDTH-1:0]      slot_4_axi_wuser,
    input wire  [C_SLOT_4_AXI_ID_WIDTH-1:0]        slot_4_axi_bid,
    input wire  [1:0]                              slot_4_axi_bresp,
    input wire                                     slot_4_axi_bvalid,
    input wire                                     slot_4_axi_bready,
    input wire  [C_SLOT_4_AXI_BUSER_WIDTH-1:0]      slot_4_axi_buser,
    input wire  [C_SLOT_4_AXI_ID_WIDTH-1:0]        slot_4_axi_arid,
    input wire  [C_SLOT_4_AXI_ADDR_WIDTH-1:0]      slot_4_axi_araddr,
    input wire  [C_SLOT_4_AXI_AXLEN_WIDTH-1:0]  slot_4_axi_arlen,
    input wire  [2:0]                              slot_4_axi_arsize,
    input wire  [1:0]                              slot_4_axi_arburst,
    input wire  [3:0]                              slot_4_axi_arcache,
    input wire  [2:0]                              slot_4_axi_arprot,
    input wire  [C_SLOT_4_AXI_AXLOCK_WIDTH-1:0] slot_4_axi_arlock,
    input wire                                     slot_4_axi_arvalid,
    input wire                                     slot_4_axi_arready,
    input wire  [C_SLOT_4_AXI_ARUSER_WIDTH-1:0]      slot_4_axi_aruser,
    input wire  [C_SLOT_4_AXI_ID_WIDTH-1:0]        slot_4_axi_rid,
    input wire  [C_SLOT_4_AXI_DATA_WIDTH-1:0]      slot_4_axi_rdata,
    input wire  [1:0]                              slot_4_axi_rresp,
    input wire                                     slot_4_axi_rlast,
    input wire                                     slot_4_axi_rvalid,
    input wire                                     slot_4_axi_rready,
    input wire  [C_SLOT_4_AXI_RUSER_WIDTH-1:0]      slot_4_axi_ruser,
    input wire  [C_SLOT_4_AXI_ID_WIDTH-1:0]        slot_4_axi_wid,
    input wire  [3:0]                              slot_4_axi_awregion,
    input wire  [3:0]                              slot_4_axi_arregion,
    input wire  [3:0]                              slot_4_axi_awqos,
    input wire  [3:0]                              slot_4_axi_arqos,

    //SLOT 4 AXI Streaming Interface

    input wire                                     slot_4_axis_tvalid,
    input wire                                     slot_4_axis_tready,
    input wire  [C_SLOT_4_AXIS_TDATA_WIDTH-1:0]    slot_4_axis_tdata,
    input wire  [C_SLOT_4_AXIS_TDATA_WIDTH/8-1:0]  slot_4_axis_tstrb,
    input wire  [C_SLOT_4_AXIS_TDATA_WIDTH/8-1:0]  slot_4_axis_tkeep,
    input wire                                     slot_4_axis_tlast,
    input wire  [C_SLOT_4_AXIS_TID_WIDTH-1:0]      slot_4_axis_tid,
    input wire  [C_SLOT_4_AXIS_TDEST_WIDTH-1:0]    slot_4_axis_tdest,
    input wire  [C_SLOT_4_AXIS_TUSER_WIDTH-1:0]    slot_4_axis_tuser,


    // SLOT 5 AXI MM Interface signals
    input wire  [C_SLOT_5_AXI_ID_WIDTH-1:0]        slot_5_axi_awid,
    input wire  [C_SLOT_5_AXI_ADDR_WIDTH-1:0]      slot_5_axi_awaddr,
    input wire  [C_SLOT_5_AXI_AWUSER_WIDTH-1:0]      slot_5_axi_awuser,
    input wire  [2:0]                              slot_5_axi_awprot,
    input wire  [C_SLOT_5_AXI_AXLEN_WIDTH-1:0] slot_5_axi_awlen,
    input wire  [2:0]                              slot_5_axi_awsize,
    input wire  [1:0]                              slot_5_axi_awburst,
    input wire  [3:0]                              slot_5_axi_awcache,
    input wire  [C_SLOT_5_AXI_AXLOCK_WIDTH-1:0] slot_5_axi_awlock,
    input wire                                     slot_5_axi_awvalid,
    input wire                                     slot_5_axi_awready,
    input wire  [C_SLOT_5_AXI_DATA_WIDTH-1:0]      slot_5_axi_wdata,
    input wire  [C_SLOT_5_AXI_DATA_WIDTH/8-1:0]    slot_5_axi_wstrb,
    input wire                                     slot_5_axi_wlast,
    input wire                                     slot_5_axi_wvalid,
    input wire                                     slot_5_axi_wready,
    input wire  [C_SLOT_5_AXI_WUSER_WIDTH-1:0]      slot_5_axi_wuser,
    input wire  [C_SLOT_5_AXI_ID_WIDTH-1:0]        slot_5_axi_bid,
    input wire  [1:0]                              slot_5_axi_bresp,
    input wire                                     slot_5_axi_bvalid,
    input wire                                     slot_5_axi_bready,
    input wire  [C_SLOT_5_AXI_BUSER_WIDTH-1:0]      slot_5_axi_buser,
    input wire  [C_SLOT_5_AXI_ID_WIDTH-1:0]        slot_5_axi_arid,
    input wire  [C_SLOT_5_AXI_ADDR_WIDTH-1:0]      slot_5_axi_araddr,
    input wire  [C_SLOT_5_AXI_AXLEN_WIDTH-1:0]  slot_5_axi_arlen,
    input wire  [2:0]                              slot_5_axi_arsize,
    input wire  [1:0]                              slot_5_axi_arburst,
    input wire  [3:0]                              slot_5_axi_arcache,
    input wire  [2:0]                              slot_5_axi_arprot,
    input wire  [C_SLOT_5_AXI_AXLOCK_WIDTH-1:0] slot_5_axi_arlock,
    input wire                                     slot_5_axi_arvalid,
    input wire                                     slot_5_axi_arready,
    input wire  [C_SLOT_5_AXI_ARUSER_WIDTH-1:0]      slot_5_axi_aruser,
    input wire  [C_SLOT_5_AXI_ID_WIDTH-1:0]        slot_5_axi_rid,
    input wire  [C_SLOT_5_AXI_DATA_WIDTH-1:0]      slot_5_axi_rdata,
    input wire  [1:0]                              slot_5_axi_rresp,
    input wire                                     slot_5_axi_rlast,
    input wire                                     slot_5_axi_rvalid,
    input wire                                     slot_5_axi_rready,
    input wire  [C_SLOT_5_AXI_RUSER_WIDTH-1:0]      slot_5_axi_ruser,
    input wire  [C_SLOT_5_AXI_ID_WIDTH-1:0]        slot_5_axi_wid,
    input wire  [3:0]                              slot_5_axi_awregion,
    input wire  [3:0]                              slot_5_axi_arregion,
    input wire  [3:0]                              slot_5_axi_awqos,
    input wire  [3:0]                              slot_5_axi_arqos,

    //SLOT 5 AXI Streaming Interface

    input wire                                     slot_5_axis_tvalid,
    input wire                                     slot_5_axis_tready,
    input wire  [C_SLOT_5_AXIS_TDATA_WIDTH-1:0]    slot_5_axis_tdata,
    input wire  [C_SLOT_5_AXIS_TDATA_WIDTH/8-1:0]  slot_5_axis_tstrb,
    input wire  [C_SLOT_5_AXIS_TDATA_WIDTH/8-1:0]  slot_5_axis_tkeep,
    input wire                                     slot_5_axis_tlast,
    input wire  [C_SLOT_5_AXIS_TID_WIDTH-1:0]      slot_5_axis_tid,
    input wire  [C_SLOT_5_AXIS_TDEST_WIDTH-1:0]    slot_5_axis_tdest,
    input wire  [C_SLOT_5_AXIS_TUSER_WIDTH-1:0]    slot_5_axis_tuser,


    // SLOT 6 AXI MM Interface signals
    input wire  [C_SLOT_6_AXI_ID_WIDTH-1:0]        slot_6_axi_awid,
    input wire  [C_SLOT_6_AXI_ADDR_WIDTH-1:0]      slot_6_axi_awaddr,
    input wire  [C_SLOT_6_AXI_AWUSER_WIDTH-1:0]      slot_6_axi_awuser,
    input wire  [2:0]                              slot_6_axi_awprot,
    input wire  [C_SLOT_6_AXI_AXLEN_WIDTH-1:0] slot_6_axi_awlen,
    input wire  [2:0]                              slot_6_axi_awsize,
    input wire  [1:0]                              slot_6_axi_awburst,
    input wire  [3:0]                              slot_6_axi_awcache,
    input wire  [C_SLOT_6_AXI_AXLOCK_WIDTH-1:0] slot_6_axi_awlock,
    input wire                                     slot_6_axi_awvalid,
    input wire                                     slot_6_axi_awready,
    input wire  [C_SLOT_6_AXI_DATA_WIDTH-1:0]      slot_6_axi_wdata,
    input wire  [C_SLOT_6_AXI_DATA_WIDTH/8-1:0]    slot_6_axi_wstrb,
    input wire                                     slot_6_axi_wlast,
    input wire                                     slot_6_axi_wvalid,
    input wire                                     slot_6_axi_wready,
    input wire  [C_SLOT_6_AXI_WUSER_WIDTH-1:0]      slot_6_axi_wuser,
    input wire  [C_SLOT_6_AXI_ID_WIDTH-1:0]        slot_6_axi_bid,
    input wire  [1:0]                              slot_6_axi_bresp,
    input wire                                     slot_6_axi_bvalid,
    input wire                                     slot_6_axi_bready,
    input wire  [C_SLOT_6_AXI_BUSER_WIDTH-1:0]      slot_6_axi_buser,
    input wire  [C_SLOT_6_AXI_ID_WIDTH-1:0]        slot_6_axi_arid,
    input wire  [C_SLOT_6_AXI_ADDR_WIDTH-1:0]      slot_6_axi_araddr,
    input wire  [C_SLOT_6_AXI_AXLEN_WIDTH-1:0]  slot_6_axi_arlen,
    input wire  [2:0]                              slot_6_axi_arsize,
    input wire  [1:0]                              slot_6_axi_arburst,
    input wire  [3:0]                              slot_6_axi_arcache,
    input wire  [2:0]                              slot_6_axi_arprot,
    input wire  [C_SLOT_6_AXI_AXLOCK_WIDTH-1:0] slot_6_axi_arlock,
    input wire                                     slot_6_axi_arvalid,
    input wire                                     slot_6_axi_arready,
    input wire  [C_SLOT_6_AXI_ARUSER_WIDTH-1:0]      slot_6_axi_aruser,
    input wire  [C_SLOT_6_AXI_ID_WIDTH-1:0]        slot_6_axi_rid,
    input wire  [C_SLOT_6_AXI_DATA_WIDTH-1:0]      slot_6_axi_rdata,
    input wire  [1:0]                              slot_6_axi_rresp,
    input wire                                     slot_6_axi_rlast,
    input wire                                     slot_6_axi_rvalid,
    input wire                                     slot_6_axi_rready,
    input wire  [C_SLOT_6_AXI_RUSER_WIDTH-1:0]      slot_6_axi_ruser,
    input wire  [C_SLOT_6_AXI_ID_WIDTH-1:0]        slot_6_axi_wid,
    input wire  [3:0]                              slot_6_axi_awregion,
    input wire  [3:0]                              slot_6_axi_arregion,
    input wire  [3:0]                              slot_6_axi_awqos,
    input wire  [3:0]                              slot_6_axi_arqos,

    //SLOT 6 AXI Streaming Interface

    input wire                                     slot_6_axis_tvalid,
    input wire                                     slot_6_axis_tready,
    input wire  [C_SLOT_6_AXIS_TDATA_WIDTH-1:0]    slot_6_axis_tdata,
    input wire  [C_SLOT_6_AXIS_TDATA_WIDTH/8-1:0]  slot_6_axis_tstrb,
    input wire  [C_SLOT_6_AXIS_TDATA_WIDTH/8-1:0]  slot_6_axis_tkeep,
    input wire                                     slot_6_axis_tlast,
    input wire  [C_SLOT_6_AXIS_TID_WIDTH-1:0]      slot_6_axis_tid,
    input wire  [C_SLOT_6_AXIS_TDEST_WIDTH-1:0]    slot_6_axis_tdest,
    input wire  [C_SLOT_6_AXIS_TUSER_WIDTH-1:0]    slot_6_axis_tuser,


    // SLOT 7 AXI MM Interface signals
    input wire  [C_SLOT_7_AXI_ID_WIDTH-1:0]        slot_7_axi_awid,
    input wire  [C_SLOT_7_AXI_ADDR_WIDTH-1:0]      slot_7_axi_awaddr,
    input wire  [C_SLOT_7_AXI_AWUSER_WIDTH-1:0]      slot_7_axi_awuser,
    input wire  [2:0]                              slot_7_axi_awprot,
    input wire  [C_SLOT_7_AXI_AXLEN_WIDTH-1:0] slot_7_axi_awlen,
    input wire  [2:0]                              slot_7_axi_awsize,
    input wire  [1:0]                              slot_7_axi_awburst,
    input wire  [3:0]                              slot_7_axi_awcache,
    input wire  [C_SLOT_7_AXI_AXLOCK_WIDTH-1:0] slot_7_axi_awlock,
    input wire                                     slot_7_axi_awvalid,
    input wire                                     slot_7_axi_awready,
    input wire  [C_SLOT_7_AXI_DATA_WIDTH-1:0]      slot_7_axi_wdata,
    input wire  [C_SLOT_7_AXI_DATA_WIDTH/8-1:0]    slot_7_axi_wstrb,
    input wire                                     slot_7_axi_wlast,
    input wire                                     slot_7_axi_wvalid,
    input wire                                     slot_7_axi_wready,
    input wire  [C_SLOT_7_AXI_WUSER_WIDTH-1:0]      slot_7_axi_wuser,
    input wire  [C_SLOT_7_AXI_ID_WIDTH-1:0]        slot_7_axi_bid,
    input wire  [1:0]                              slot_7_axi_bresp,
    input wire                                     slot_7_axi_bvalid,
    input wire                                     slot_7_axi_bready,
    input wire  [C_SLOT_7_AXI_BUSER_WIDTH-1:0]      slot_7_axi_buser,
    input wire  [C_SLOT_7_AXI_ID_WIDTH-1:0]        slot_7_axi_arid,
    input wire  [C_SLOT_7_AXI_ADDR_WIDTH-1:0]      slot_7_axi_araddr,
    input wire  [C_SLOT_7_AXI_AXLEN_WIDTH-1:0]  slot_7_axi_arlen,
    input wire  [2:0]                              slot_7_axi_arsize,
    input wire  [1:0]                              slot_7_axi_arburst,
    input wire  [3:0]                              slot_7_axi_arcache,
    input wire  [2:0]                              slot_7_axi_arprot,
    input wire  [C_SLOT_7_AXI_AXLOCK_WIDTH-1:0] slot_7_axi_arlock,
    input wire                                     slot_7_axi_arvalid,
    input wire                                     slot_7_axi_arready,
    input wire  [C_SLOT_7_AXI_ARUSER_WIDTH-1:0]      slot_7_axi_aruser,
    input wire  [C_SLOT_7_AXI_ID_WIDTH-1:0]        slot_7_axi_rid,
    input wire  [C_SLOT_7_AXI_DATA_WIDTH-1:0]      slot_7_axi_rdata,
    input wire  [1:0]                              slot_7_axi_rresp,
    input wire                                     slot_7_axi_rlast,
    input wire                                     slot_7_axi_rvalid,
    input wire                                     slot_7_axi_rready,
    input wire  [C_SLOT_7_AXI_RUSER_WIDTH-1:0]      slot_7_axi_ruser,
    input wire  [C_SLOT_7_AXI_ID_WIDTH-1:0]        slot_7_axi_wid,
    input wire  [3:0]                              slot_7_axi_awregion,
    input wire  [3:0]                              slot_7_axi_arregion,
    input wire  [3:0]                              slot_7_axi_awqos,
    input wire  [3:0]                              slot_7_axi_arqos,

    //SLOT 7 AXI Streaming Interface

    input wire                                     slot_7_axis_tvalid,
    input wire                                     slot_7_axis_tready,
    input wire  [C_SLOT_7_AXIS_TDATA_WIDTH-1:0]    slot_7_axis_tdata,
    input wire  [C_SLOT_7_AXIS_TDATA_WIDTH/8-1:0]  slot_7_axis_tstrb,
    input wire  [C_SLOT_7_AXIS_TDATA_WIDTH/8-1:0]  slot_7_axis_tkeep,
    input wire                                     slot_7_axis_tlast,
    input wire  [C_SLOT_7_AXIS_TID_WIDTH-1:0]      slot_7_axis_tid,
    input wire  [C_SLOT_7_AXIS_TDEST_WIDTH-1:0]    slot_7_axis_tdest,
    input wire  [C_SLOT_7_AXIS_TUSER_WIDTH-1:0]    slot_7_axis_tuser,


    // SLOT 8 AXI MM Interface signals
    input wire  [C_SLOT_8_AXI_ID_WIDTH-1:0]        slot_8_axi_awid,
    input wire  [C_SLOT_8_AXI_ADDR_WIDTH-1:0]      slot_8_axi_awaddr,
    input wire  [C_SLOT_8_AXI_AWUSER_WIDTH-1:0]      slot_8_axi_awuser,
    input wire  [2:0]                              slot_8_axi_awprot,
    input wire  [C_SLOT_8_AXI_AXLEN_WIDTH-1:0] slot_8_axi_awlen,
    input wire  [2:0]                              slot_8_axi_awsize,
    input wire  [1:0]                              slot_8_axi_awburst,
    input wire  [3:0]                              slot_8_axi_awcache,
    input wire  [C_SLOT_8_AXI_AXLOCK_WIDTH-1:0] slot_8_axi_awlock,
    input wire                                     slot_8_axi_awvalid,
    input wire                                     slot_8_axi_awready,
    input wire  [C_SLOT_8_AXI_DATA_WIDTH-1:0]      slot_8_axi_wdata,
    input wire  [C_SLOT_8_AXI_DATA_WIDTH/8-1:0]    slot_8_axi_wstrb,
    input wire                                     slot_8_axi_wlast,
    input wire                                     slot_8_axi_wvalid,
    input wire                                     slot_8_axi_wready,
    input wire  [C_SLOT_8_AXI_WUSER_WIDTH-1:0]      slot_8_axi_wuser,
    input wire  [C_SLOT_8_AXI_ID_WIDTH-1:0]        slot_8_axi_bid,
    input wire  [1:0]                              slot_8_axi_bresp,
    input wire                                     slot_8_axi_bvalid,
    input wire                                     slot_8_axi_bready,
    input wire  [C_SLOT_8_AXI_BUSER_WIDTH-1:0]      slot_8_axi_buser,
    input wire  [C_SLOT_8_AXI_ID_WIDTH-1:0]        slot_8_axi_arid,
    input wire  [C_SLOT_8_AXI_ADDR_WIDTH-1:0]      slot_8_axi_araddr,
    input wire  [C_SLOT_8_AXI_AXLEN_WIDTH-1:0]  slot_8_axi_arlen,
    input wire  [2:0]                              slot_8_axi_arsize,
    input wire  [1:0]                              slot_8_axi_arburst,
    input wire  [3:0]                              slot_8_axi_arcache,
    input wire  [2:0]                              slot_8_axi_arprot,
    input wire  [C_SLOT_8_AXI_AXLOCK_WIDTH-1:0] slot_8_axi_arlock,
    input wire                                     slot_8_axi_arvalid,
    input wire                                     slot_8_axi_arready,
    input wire  [C_SLOT_8_AXI_ARUSER_WIDTH-1:0]      slot_8_axi_aruser,
    input wire  [C_SLOT_8_AXI_ID_WIDTH-1:0]        slot_8_axi_rid,
    input wire  [C_SLOT_8_AXI_DATA_WIDTH-1:0]      slot_8_axi_rdata,
    input wire  [1:0]                              slot_8_axi_rresp,
    input wire                                     slot_8_axi_rlast,
    input wire                                     slot_8_axi_rvalid,
    input wire                                     slot_8_axi_rready,
    input wire  [C_SLOT_8_AXI_RUSER_WIDTH-1:0]      slot_8_axi_ruser,
    input wire  [C_SLOT_8_AXI_ID_WIDTH-1:0]        slot_8_axi_wid,
    input wire  [3:0]                              slot_8_axi_awregion,
    input wire  [3:0]                              slot_8_axi_arregion,
    input wire  [3:0]                              slot_8_axi_awqos,
    input wire  [3:0]                              slot_8_axi_arqos,

    //SLOT 8 AXI Streaming Interface

    input wire                                     slot_8_axis_tvalid,
    input wire                                     slot_8_axis_tready,
    input wire  [C_SLOT_8_AXIS_TDATA_WIDTH-1:0]    slot_8_axis_tdata,
    input wire  [C_SLOT_8_AXIS_TDATA_WIDTH/8-1:0]  slot_8_axis_tstrb,
    input wire  [C_SLOT_8_AXIS_TDATA_WIDTH/8-1:0]  slot_8_axis_tkeep,
    input wire                                     slot_8_axis_tlast,
    input wire  [C_SLOT_8_AXIS_TID_WIDTH-1:0]      slot_8_axis_tid,
    input wire  [C_SLOT_8_AXIS_TDEST_WIDTH-1:0]    slot_8_axis_tdest,
    input wire  [C_SLOT_8_AXIS_TUSER_WIDTH-1:0]    slot_8_axis_tuser,


    // SLOT 9 AXI MM Interface signals
    input wire  [C_SLOT_9_AXI_ID_WIDTH-1:0]        slot_9_axi_awid,
    input wire  [C_SLOT_9_AXI_ADDR_WIDTH-1:0]      slot_9_axi_awaddr,
    input wire  [C_SLOT_9_AXI_AWUSER_WIDTH-1:0]      slot_9_axi_awuser,
    input wire  [2:0]                              slot_9_axi_awprot,
    input wire  [C_SLOT_9_AXI_AXLEN_WIDTH-1:0] slot_9_axi_awlen,
    input wire  [2:0]                              slot_9_axi_awsize,
    input wire  [1:0]                              slot_9_axi_awburst,
    input wire  [3:0]                              slot_9_axi_awcache,
    input wire  [C_SLOT_9_AXI_AXLOCK_WIDTH-1:0] slot_9_axi_awlock,
    input wire                                     slot_9_axi_awvalid,
    input wire                                     slot_9_axi_awready,
    input wire  [C_SLOT_9_AXI_DATA_WIDTH-1:0]      slot_9_axi_wdata,
    input wire  [C_SLOT_9_AXI_DATA_WIDTH/8-1:0]    slot_9_axi_wstrb,
    input wire                                     slot_9_axi_wlast,
    input wire                                     slot_9_axi_wvalid,
    input wire                                     slot_9_axi_wready,
    input wire  [C_SLOT_9_AXI_WUSER_WIDTH-1:0]      slot_9_axi_wuser,
    input wire  [C_SLOT_9_AXI_ID_WIDTH-1:0]        slot_9_axi_bid,
    input wire  [1:0]                              slot_9_axi_bresp,
    input wire                                     slot_9_axi_bvalid,
    input wire                                     slot_9_axi_bready,
    input wire  [C_SLOT_9_AXI_BUSER_WIDTH-1:0]      slot_9_axi_buser,
    input wire  [C_SLOT_9_AXI_ID_WIDTH-1:0]        slot_9_axi_arid,
    input wire  [C_SLOT_9_AXI_ADDR_WIDTH-1:0]      slot_9_axi_araddr,
    input wire  [C_SLOT_9_AXI_AXLEN_WIDTH-1:0]  slot_9_axi_arlen,
    input wire  [2:0]                              slot_9_axi_arsize,
    input wire  [1:0]                              slot_9_axi_arburst,
    input wire  [3:0]                              slot_9_axi_arcache,
    input wire  [2:0]                              slot_9_axi_arprot,
    input wire  [C_SLOT_9_AXI_AXLOCK_WIDTH-1:0] slot_9_axi_arlock,
    input wire                                     slot_9_axi_arvalid,
    input wire                                     slot_9_axi_arready,
    input wire  [C_SLOT_9_AXI_ARUSER_WIDTH-1:0]      slot_9_axi_aruser,
    input wire  [C_SLOT_9_AXI_ID_WIDTH-1:0]        slot_9_axi_rid,
    input wire  [C_SLOT_9_AXI_DATA_WIDTH-1:0]      slot_9_axi_rdata,
    input wire  [1:0]                              slot_9_axi_rresp,
    input wire                                     slot_9_axi_rlast,
    input wire                                     slot_9_axi_rvalid,
    input wire                                     slot_9_axi_rready,
    input wire  [C_SLOT_9_AXI_RUSER_WIDTH-1:0]      slot_9_axi_ruser,
    input wire  [C_SLOT_9_AXI_ID_WIDTH-1:0]        slot_9_axi_wid,
    input wire  [3:0]                              slot_9_axi_awregion,
    input wire  [3:0]                              slot_9_axi_arregion,
    input wire  [3:0]                              slot_9_axi_awqos,
    input wire  [3:0]                              slot_9_axi_arqos,

    //SLOT 9 AXI Streaming Interface

    input wire                                     slot_9_axis_tvalid,
    input wire                                     slot_9_axis_tready,
    input wire  [C_SLOT_9_AXIS_TDATA_WIDTH-1:0]    slot_9_axis_tdata,
    input wire  [C_SLOT_9_AXIS_TDATA_WIDTH/8-1:0]  slot_9_axis_tstrb,
    input wire  [C_SLOT_9_AXIS_TDATA_WIDTH/8-1:0]  slot_9_axis_tkeep,
    input wire                                     slot_9_axis_tlast,
    input wire  [C_SLOT_9_AXIS_TID_WIDTH-1:0]      slot_9_axis_tid,
    input wire  [C_SLOT_9_AXIS_TDEST_WIDTH-1:0]    slot_9_axis_tdest,
    input wire  [C_SLOT_9_AXIS_TUSER_WIDTH-1:0]    slot_9_axis_tuser,


    // SLOT 10 AXI MM Interface signals
    input wire  [C_SLOT_10_AXI_ID_WIDTH-1:0]        slot_10_axi_awid,
    input wire  [C_SLOT_10_AXI_ADDR_WIDTH-1:0]      slot_10_axi_awaddr,
    input wire  [C_SLOT_10_AXI_AWUSER_WIDTH-1:0]      slot_10_axi_awuser,
    input wire  [2:0]                              slot_10_axi_awprot,
    input wire  [C_SLOT_10_AXI_AXLEN_WIDTH-1:0] slot_10_axi_awlen,
    input wire  [2:0]                              slot_10_axi_awsize,
    input wire  [1:0]                              slot_10_axi_awburst,
    input wire  [3:0]                              slot_10_axi_awcache,
    input wire  [C_SLOT_10_AXI_AXLOCK_WIDTH-1:0] slot_10_axi_awlock,
    input wire                                     slot_10_axi_awvalid,
    input wire                                     slot_10_axi_awready,
    input wire  [C_SLOT_10_AXI_DATA_WIDTH-1:0]      slot_10_axi_wdata,
    input wire  [C_SLOT_10_AXI_DATA_WIDTH/8-1:0]    slot_10_axi_wstrb,
    input wire                                     slot_10_axi_wlast,
    input wire                                     slot_10_axi_wvalid,
    input wire                                     slot_10_axi_wready,
    input wire  [C_SLOT_10_AXI_WUSER_WIDTH-1:0]      slot_10_axi_wuser,
    input wire  [C_SLOT_10_AXI_ID_WIDTH-1:0]        slot_10_axi_bid,
    input wire  [1:0]                              slot_10_axi_bresp,
    input wire                                     slot_10_axi_bvalid,
    input wire                                     slot_10_axi_bready,
    input wire  [C_SLOT_10_AXI_BUSER_WIDTH-1:0]      slot_10_axi_buser,
    input wire  [C_SLOT_10_AXI_ID_WIDTH-1:0]        slot_10_axi_arid,
    input wire  [C_SLOT_10_AXI_ADDR_WIDTH-1:0]      slot_10_axi_araddr,
    input wire  [C_SLOT_10_AXI_AXLEN_WIDTH-1:0]  slot_10_axi_arlen,
    input wire  [2:0]                              slot_10_axi_arsize,
    input wire  [1:0]                              slot_10_axi_arburst,
    input wire  [3:0]                              slot_10_axi_arcache,
    input wire  [2:0]                              slot_10_axi_arprot,
    input wire  [C_SLOT_10_AXI_AXLOCK_WIDTH-1:0] slot_10_axi_arlock,
    input wire                                     slot_10_axi_arvalid,
    input wire                                     slot_10_axi_arready,
    input wire  [C_SLOT_10_AXI_ARUSER_WIDTH-1:0]      slot_10_axi_aruser,
    input wire  [C_SLOT_10_AXI_ID_WIDTH-1:0]        slot_10_axi_rid,
    input wire  [C_SLOT_10_AXI_DATA_WIDTH-1:0]      slot_10_axi_rdata,
    input wire  [1:0]                              slot_10_axi_rresp,
    input wire                                     slot_10_axi_rlast,
    input wire                                     slot_10_axi_rvalid,
    input wire                                     slot_10_axi_rready,
    input wire  [C_SLOT_10_AXI_RUSER_WIDTH-1:0]      slot_10_axi_ruser,
    input wire  [C_SLOT_10_AXI_ID_WIDTH-1:0]        slot_10_axi_wid,
    input wire  [3:0]                              slot_10_axi_awregion,
    input wire  [3:0]                              slot_10_axi_arregion,
    input wire  [3:0]                              slot_10_axi_awqos,
    input wire  [3:0]                              slot_10_axi_arqos,

    //SLOT 10 AXI Streaming Interface

    input wire                                     slot_10_axis_tvalid,
    input wire                                     slot_10_axis_tready,
    input wire  [C_SLOT_10_AXIS_TDATA_WIDTH-1:0]    slot_10_axis_tdata,
    input wire  [C_SLOT_10_AXIS_TDATA_WIDTH/8-1:0]  slot_10_axis_tstrb,
    input wire  [C_SLOT_10_AXIS_TDATA_WIDTH/8-1:0]  slot_10_axis_tkeep,
    input wire                                     slot_10_axis_tlast,
    input wire  [C_SLOT_10_AXIS_TID_WIDTH-1:0]      slot_10_axis_tid,
    input wire  [C_SLOT_10_AXIS_TDEST_WIDTH-1:0]    slot_10_axis_tdest,
    input wire  [C_SLOT_10_AXIS_TUSER_WIDTH-1:0]    slot_10_axis_tuser,


    // SLOT 11 AXI MM Interface signals
    input wire  [C_SLOT_11_AXI_ID_WIDTH-1:0]        slot_11_axi_awid,
    input wire  [C_SLOT_11_AXI_ADDR_WIDTH-1:0]      slot_11_axi_awaddr,
    input wire  [C_SLOT_11_AXI_AWUSER_WIDTH-1:0]      slot_11_axi_awuser,
    input wire  [2:0]                              slot_11_axi_awprot,
    input wire  [C_SLOT_11_AXI_AXLEN_WIDTH-1:0] slot_11_axi_awlen,
    input wire  [2:0]                              slot_11_axi_awsize,
    input wire  [1:0]                              slot_11_axi_awburst,
    input wire  [3:0]                              slot_11_axi_awcache,
    input wire  [C_SLOT_11_AXI_AXLOCK_WIDTH-1:0] slot_11_axi_awlock,
    input wire                                     slot_11_axi_awvalid,
    input wire                                     slot_11_axi_awready,
    input wire  [C_SLOT_11_AXI_DATA_WIDTH-1:0]      slot_11_axi_wdata,
    input wire  [C_SLOT_11_AXI_DATA_WIDTH/8-1:0]    slot_11_axi_wstrb,
    input wire                                     slot_11_axi_wlast,
    input wire                                     slot_11_axi_wvalid,
    input wire                                     slot_11_axi_wready,
    input wire  [C_SLOT_11_AXI_WUSER_WIDTH-1:0]      slot_11_axi_wuser,
    input wire  [C_SLOT_11_AXI_ID_WIDTH-1:0]        slot_11_axi_bid,
    input wire  [1:0]                              slot_11_axi_bresp,
    input wire                                     slot_11_axi_bvalid,
    input wire                                     slot_11_axi_bready,
    input wire  [C_SLOT_11_AXI_BUSER_WIDTH-1:0]      slot_11_axi_buser,
    input wire  [C_SLOT_11_AXI_ID_WIDTH-1:0]        slot_11_axi_arid,
    input wire  [C_SLOT_11_AXI_ADDR_WIDTH-1:0]      slot_11_axi_araddr,
    input wire  [C_SLOT_11_AXI_AXLEN_WIDTH-1:0]  slot_11_axi_arlen,
    input wire  [2:0]                              slot_11_axi_arsize,
    input wire  [1:0]                              slot_11_axi_arburst,
    input wire  [3:0]                              slot_11_axi_arcache,
    input wire  [2:0]                              slot_11_axi_arprot,
    input wire  [C_SLOT_11_AXI_AXLOCK_WIDTH-1:0] slot_11_axi_arlock,
    input wire                                     slot_11_axi_arvalid,
    input wire                                     slot_11_axi_arready,
    input wire  [C_SLOT_11_AXI_ARUSER_WIDTH-1:0]      slot_11_axi_aruser,
    input wire  [C_SLOT_11_AXI_ID_WIDTH-1:0]        slot_11_axi_rid,
    input wire  [C_SLOT_11_AXI_DATA_WIDTH-1:0]      slot_11_axi_rdata,
    input wire  [1:0]                              slot_11_axi_rresp,
    input wire                                     slot_11_axi_rlast,
    input wire                                     slot_11_axi_rvalid,
    input wire                                     slot_11_axi_rready,
    input wire  [C_SLOT_11_AXI_RUSER_WIDTH-1:0]      slot_11_axi_ruser,
    input wire  [C_SLOT_11_AXI_ID_WIDTH-1:0]        slot_11_axi_wid,
    input wire  [3:0]                              slot_11_axi_awregion,
    input wire  [3:0]                              slot_11_axi_arregion,
    input wire  [3:0]                              slot_11_axi_awqos,
    input wire  [3:0]                              slot_11_axi_arqos,

    //SLOT 11 AXI Streaming Interface

    input wire                                     slot_11_axis_tvalid,
    input wire                                     slot_11_axis_tready,
    input wire  [C_SLOT_11_AXIS_TDATA_WIDTH-1:0]    slot_11_axis_tdata,
    input wire  [C_SLOT_11_AXIS_TDATA_WIDTH/8-1:0]  slot_11_axis_tstrb,
    input wire  [C_SLOT_11_AXIS_TDATA_WIDTH/8-1:0]  slot_11_axis_tkeep,
    input wire                                     slot_11_axis_tlast,
    input wire  [C_SLOT_11_AXIS_TID_WIDTH-1:0]      slot_11_axis_tid,
    input wire  [C_SLOT_11_AXIS_TDEST_WIDTH-1:0]    slot_11_axis_tdest,
    input wire  [C_SLOT_11_AXIS_TUSER_WIDTH-1:0]    slot_11_axis_tuser,


    // SLOT 12 AXI MM Interface signals
    input wire  [C_SLOT_12_AXI_ID_WIDTH-1:0]        slot_12_axi_awid,
    input wire  [C_SLOT_12_AXI_ADDR_WIDTH-1:0]      slot_12_axi_awaddr,
    input wire  [C_SLOT_12_AXI_AWUSER_WIDTH-1:0]      slot_12_axi_awuser,
    input wire  [2:0]                              slot_12_axi_awprot,
    input wire  [C_SLOT_12_AXI_AXLEN_WIDTH-1:0] slot_12_axi_awlen,
    input wire  [2:0]                              slot_12_axi_awsize,
    input wire  [1:0]                              slot_12_axi_awburst,
    input wire  [3:0]                              slot_12_axi_awcache,
    input wire  [C_SLOT_12_AXI_AXLOCK_WIDTH-1:0] slot_12_axi_awlock,
    input wire                                     slot_12_axi_awvalid,
    input wire                                     slot_12_axi_awready,
    input wire  [C_SLOT_12_AXI_DATA_WIDTH-1:0]      slot_12_axi_wdata,
    input wire  [C_SLOT_12_AXI_DATA_WIDTH/8-1:0]    slot_12_axi_wstrb,
    input wire                                     slot_12_axi_wlast,
    input wire                                     slot_12_axi_wvalid,
    input wire                                     slot_12_axi_wready,
    input wire  [C_SLOT_12_AXI_WUSER_WIDTH-1:0]      slot_12_axi_wuser,
    input wire  [C_SLOT_12_AXI_ID_WIDTH-1:0]        slot_12_axi_bid,
    input wire  [1:0]                              slot_12_axi_bresp,
    input wire                                     slot_12_axi_bvalid,
    input wire                                     slot_12_axi_bready,
    input wire  [C_SLOT_12_AXI_BUSER_WIDTH-1:0]      slot_12_axi_buser,
    input wire  [C_SLOT_12_AXI_ID_WIDTH-1:0]        slot_12_axi_arid,
    input wire  [C_SLOT_12_AXI_ADDR_WIDTH-1:0]      slot_12_axi_araddr,
    input wire  [C_SLOT_12_AXI_AXLEN_WIDTH-1:0]  slot_12_axi_arlen,
    input wire  [2:0]                              slot_12_axi_arsize,
    input wire  [1:0]                              slot_12_axi_arburst,
    input wire  [3:0]                              slot_12_axi_arcache,
    input wire  [2:0]                              slot_12_axi_arprot,
    input wire  [C_SLOT_12_AXI_AXLOCK_WIDTH-1:0] slot_12_axi_arlock,
    input wire                                     slot_12_axi_arvalid,
    input wire                                     slot_12_axi_arready,
    input wire  [C_SLOT_12_AXI_ARUSER_WIDTH-1:0]      slot_12_axi_aruser,
    input wire  [C_SLOT_12_AXI_ID_WIDTH-1:0]        slot_12_axi_rid,
    input wire  [C_SLOT_12_AXI_DATA_WIDTH-1:0]      slot_12_axi_rdata,
    input wire  [1:0]                              slot_12_axi_rresp,
    input wire                                     slot_12_axi_rlast,
    input wire                                     slot_12_axi_rvalid,
    input wire                                     slot_12_axi_rready,
    input wire  [C_SLOT_12_AXI_RUSER_WIDTH-1:0]      slot_12_axi_ruser,
    input wire  [C_SLOT_12_AXI_ID_WIDTH-1:0]        slot_12_axi_wid,
    input wire  [3:0]                              slot_12_axi_awregion,
    input wire  [3:0]                              slot_12_axi_arregion,
    input wire  [3:0]                              slot_12_axi_awqos,
    input wire  [3:0]                              slot_12_axi_arqos,

    //SLOT 12 AXI Streaming Interface

    input wire                                     slot_12_axis_tvalid,
    input wire                                     slot_12_axis_tready,
    input wire  [C_SLOT_12_AXIS_TDATA_WIDTH-1:0]    slot_12_axis_tdata,
    input wire  [C_SLOT_12_AXIS_TDATA_WIDTH/8-1:0]  slot_12_axis_tstrb,
    input wire  [C_SLOT_12_AXIS_TDATA_WIDTH/8-1:0]  slot_12_axis_tkeep,
    input wire                                     slot_12_axis_tlast,
    input wire  [C_SLOT_12_AXIS_TID_WIDTH-1:0]      slot_12_axis_tid,
    input wire  [C_SLOT_12_AXIS_TDEST_WIDTH-1:0]    slot_12_axis_tdest,
    input wire  [C_SLOT_12_AXIS_TUSER_WIDTH-1:0]    slot_12_axis_tuser,


    // SLOT 13 AXI MM Interface signals
    input wire  [C_SLOT_13_AXI_ID_WIDTH-1:0]        slot_13_axi_awid,
    input wire  [C_SLOT_13_AXI_ADDR_WIDTH-1:0]      slot_13_axi_awaddr,
    input wire  [C_SLOT_13_AXI_AWUSER_WIDTH-1:0]      slot_13_axi_awuser,
    input wire  [2:0]                              slot_13_axi_awprot,
    input wire  [C_SLOT_13_AXI_AXLEN_WIDTH-1:0] slot_13_axi_awlen,
    input wire  [2:0]                              slot_13_axi_awsize,
    input wire  [1:0]                              slot_13_axi_awburst,
    input wire  [3:0]                              slot_13_axi_awcache,
    input wire  [C_SLOT_13_AXI_AXLOCK_WIDTH-1:0] slot_13_axi_awlock,
    input wire                                     slot_13_axi_awvalid,
    input wire                                     slot_13_axi_awready,
    input wire  [C_SLOT_13_AXI_DATA_WIDTH-1:0]      slot_13_axi_wdata,
    input wire  [C_SLOT_13_AXI_DATA_WIDTH/8-1:0]    slot_13_axi_wstrb,
    input wire                                     slot_13_axi_wlast,
    input wire                                     slot_13_axi_wvalid,
    input wire                                     slot_13_axi_wready,
    input wire  [C_SLOT_13_AXI_WUSER_WIDTH-1:0]      slot_13_axi_wuser,
    input wire  [C_SLOT_13_AXI_ID_WIDTH-1:0]        slot_13_axi_bid,
    input wire  [1:0]                              slot_13_axi_bresp,
    input wire                                     slot_13_axi_bvalid,
    input wire                                     slot_13_axi_bready,
    input wire  [C_SLOT_13_AXI_BUSER_WIDTH-1:0]      slot_13_axi_buser,
    input wire  [C_SLOT_13_AXI_ID_WIDTH-1:0]        slot_13_axi_arid,
    input wire  [C_SLOT_13_AXI_ADDR_WIDTH-1:0]      slot_13_axi_araddr,
    input wire  [C_SLOT_13_AXI_AXLEN_WIDTH-1:0]  slot_13_axi_arlen,
    input wire  [2:0]                              slot_13_axi_arsize,
    input wire  [1:0]                              slot_13_axi_arburst,
    input wire  [3:0]                              slot_13_axi_arcache,
    input wire  [2:0]                              slot_13_axi_arprot,
    input wire  [C_SLOT_13_AXI_AXLOCK_WIDTH-1:0] slot_13_axi_arlock,
    input wire                                     slot_13_axi_arvalid,
    input wire                                     slot_13_axi_arready,
    input wire  [C_SLOT_13_AXI_ARUSER_WIDTH-1:0]      slot_13_axi_aruser,
    input wire  [C_SLOT_13_AXI_ID_WIDTH-1:0]        slot_13_axi_rid,
    input wire  [C_SLOT_13_AXI_DATA_WIDTH-1:0]      slot_13_axi_rdata,
    input wire  [1:0]                              slot_13_axi_rresp,
    input wire                                     slot_13_axi_rlast,
    input wire                                     slot_13_axi_rvalid,
    input wire                                     slot_13_axi_rready,
    input wire  [C_SLOT_13_AXI_RUSER_WIDTH-1:0]      slot_13_axi_ruser,
    input wire  [C_SLOT_13_AXI_ID_WIDTH-1:0]        slot_13_axi_wid,
    input wire  [3:0]                              slot_13_axi_awregion,
    input wire  [3:0]                              slot_13_axi_arregion,
    input wire  [3:0]                              slot_13_axi_awqos,
    input wire  [3:0]                              slot_13_axi_arqos,

    //SLOT 13 AXI Streaming Interface

    input wire                                     slot_13_axis_tvalid,
    input wire                                     slot_13_axis_tready,
    input wire  [C_SLOT_13_AXIS_TDATA_WIDTH-1:0]    slot_13_axis_tdata,
    input wire  [C_SLOT_13_AXIS_TDATA_WIDTH/8-1:0]  slot_13_axis_tstrb,
    input wire  [C_SLOT_13_AXIS_TDATA_WIDTH/8-1:0]  slot_13_axis_tkeep,
    input wire                                     slot_13_axis_tlast,
    input wire  [C_SLOT_13_AXIS_TID_WIDTH-1:0]      slot_13_axis_tid,
    input wire  [C_SLOT_13_AXIS_TDEST_WIDTH-1:0]    slot_13_axis_tdest,
    input wire  [C_SLOT_13_AXIS_TUSER_WIDTH-1:0]    slot_13_axis_tuser,


    // SLOT 14 AXI MM Interface signals
    input wire  [C_SLOT_14_AXI_ID_WIDTH-1:0]        slot_14_axi_awid,
    input wire  [C_SLOT_14_AXI_ADDR_WIDTH-1:0]      slot_14_axi_awaddr,
    input wire  [C_SLOT_14_AXI_AWUSER_WIDTH-1:0]      slot_14_axi_awuser,
    input wire  [2:0]                              slot_14_axi_awprot,
    input wire  [C_SLOT_14_AXI_AXLEN_WIDTH-1:0] slot_14_axi_awlen,
    input wire  [2:0]                              slot_14_axi_awsize,
    input wire  [1:0]                              slot_14_axi_awburst,
    input wire  [3:0]                              slot_14_axi_awcache,
    input wire  [C_SLOT_14_AXI_AXLOCK_WIDTH-1:0] slot_14_axi_awlock,
    input wire                                     slot_14_axi_awvalid,
    input wire                                     slot_14_axi_awready,
    input wire  [C_SLOT_14_AXI_DATA_WIDTH-1:0]      slot_14_axi_wdata,
    input wire  [C_SLOT_14_AXI_DATA_WIDTH/8-1:0]    slot_14_axi_wstrb,
    input wire                                     slot_14_axi_wlast,
    input wire                                     slot_14_axi_wvalid,
    input wire                                     slot_14_axi_wready,
    input wire  [C_SLOT_14_AXI_WUSER_WIDTH-1:0]      slot_14_axi_wuser,
    input wire  [C_SLOT_14_AXI_ID_WIDTH-1:0]        slot_14_axi_bid,
    input wire  [1:0]                              slot_14_axi_bresp,
    input wire                                     slot_14_axi_bvalid,
    input wire                                     slot_14_axi_bready,
    input wire  [C_SLOT_14_AXI_BUSER_WIDTH-1:0]      slot_14_axi_buser,
    input wire  [C_SLOT_14_AXI_ID_WIDTH-1:0]        slot_14_axi_arid,
    input wire  [C_SLOT_14_AXI_ADDR_WIDTH-1:0]      slot_14_axi_araddr,
    input wire  [C_SLOT_14_AXI_AXLEN_WIDTH-1:0]  slot_14_axi_arlen,
    input wire  [2:0]                              slot_14_axi_arsize,
    input wire  [1:0]                              slot_14_axi_arburst,
    input wire  [3:0]                              slot_14_axi_arcache,
    input wire  [2:0]                              slot_14_axi_arprot,
    input wire  [C_SLOT_14_AXI_AXLOCK_WIDTH-1:0] slot_14_axi_arlock,
    input wire                                     slot_14_axi_arvalid,
    input wire                                     slot_14_axi_arready,
    input wire  [C_SLOT_14_AXI_ARUSER_WIDTH-1:0]      slot_14_axi_aruser,
    input wire  [C_SLOT_14_AXI_ID_WIDTH-1:0]        slot_14_axi_rid,
    input wire  [C_SLOT_14_AXI_DATA_WIDTH-1:0]      slot_14_axi_rdata,
    input wire  [1:0]                              slot_14_axi_rresp,
    input wire                                     slot_14_axi_rlast,
    input wire                                     slot_14_axi_rvalid,
    input wire                                     slot_14_axi_rready,
    input wire  [C_SLOT_14_AXI_RUSER_WIDTH-1:0]      slot_14_axi_ruser,
    input wire  [C_SLOT_14_AXI_ID_WIDTH-1:0]        slot_14_axi_wid,
    input wire  [3:0]                              slot_14_axi_awregion,
    input wire  [3:0]                              slot_14_axi_arregion,
    input wire  [3:0]                              slot_14_axi_awqos,
    input wire  [3:0]                              slot_14_axi_arqos,

    //SLOT 14 AXI Streaming Interface

    input wire                                     slot_14_axis_tvalid,
    input wire                                     slot_14_axis_tready,
    input wire  [C_SLOT_14_AXIS_TDATA_WIDTH-1:0]    slot_14_axis_tdata,
    input wire  [C_SLOT_14_AXIS_TDATA_WIDTH/8-1:0]  slot_14_axis_tstrb,
    input wire  [C_SLOT_14_AXIS_TDATA_WIDTH/8-1:0]  slot_14_axis_tkeep,
    input wire                                     slot_14_axis_tlast,
    input wire  [C_SLOT_14_AXIS_TID_WIDTH-1:0]      slot_14_axis_tid,
    input wire  [C_SLOT_14_AXIS_TDEST_WIDTH-1:0]    slot_14_axis_tdest,
    input wire  [C_SLOT_14_AXIS_TUSER_WIDTH-1:0]    slot_14_axis_tuser,


    // SLOT 15 AXI MM Interface signals
    input wire  [C_SLOT_15_AXI_ID_WIDTH-1:0]        slot_15_axi_awid,
    input wire  [C_SLOT_15_AXI_ADDR_WIDTH-1:0]      slot_15_axi_awaddr,
    input wire  [C_SLOT_15_AXI_AWUSER_WIDTH-1:0]      slot_15_axi_awuser,
    input wire  [2:0]                              slot_15_axi_awprot,
    input wire  [C_SLOT_15_AXI_AXLEN_WIDTH-1:0] slot_15_axi_awlen,
    input wire  [2:0]                              slot_15_axi_awsize,
    input wire  [1:0]                              slot_15_axi_awburst,
    input wire  [3:0]                              slot_15_axi_awcache,
    input wire  [C_SLOT_15_AXI_AXLOCK_WIDTH-1:0] slot_15_axi_awlock,
    input wire                                     slot_15_axi_awvalid,
    input wire                                     slot_15_axi_awready,
    input wire  [C_SLOT_15_AXI_DATA_WIDTH-1:0]      slot_15_axi_wdata,
    input wire  [C_SLOT_15_AXI_DATA_WIDTH/8-1:0]    slot_15_axi_wstrb,
    input wire                                     slot_15_axi_wlast,
    input wire                                     slot_15_axi_wvalid,
    input wire                                     slot_15_axi_wready,
    input wire  [C_SLOT_15_AXI_WUSER_WIDTH-1:0]      slot_15_axi_wuser,
    input wire  [C_SLOT_15_AXI_ID_WIDTH-1:0]        slot_15_axi_bid,
    input wire  [1:0]                              slot_15_axi_bresp,
    input wire                                     slot_15_axi_bvalid,
    input wire                                     slot_15_axi_bready,
    input wire  [C_SLOT_15_AXI_BUSER_WIDTH-1:0]      slot_15_axi_buser,
    input wire  [C_SLOT_15_AXI_ID_WIDTH-1:0]        slot_15_axi_arid,
    input wire  [C_SLOT_15_AXI_ADDR_WIDTH-1:0]      slot_15_axi_araddr,
    input wire  [C_SLOT_15_AXI_AXLEN_WIDTH-1:0]  slot_15_axi_arlen,
    input wire  [2:0]                              slot_15_axi_arsize,
    input wire  [1:0]                              slot_15_axi_arburst,
    input wire  [3:0]                              slot_15_axi_arcache,
    input wire  [2:0]                              slot_15_axi_arprot,
    input wire  [C_SLOT_15_AXI_AXLOCK_WIDTH-1:0] slot_15_axi_arlock,
    input wire                                     slot_15_axi_arvalid,
    input wire                                     slot_15_axi_arready,
    input wire  [C_SLOT_15_AXI_ARUSER_WIDTH-1:0]      slot_15_axi_aruser,
    input wire  [C_SLOT_15_AXI_ID_WIDTH-1:0]        slot_15_axi_rid,
    input wire  [C_SLOT_15_AXI_DATA_WIDTH-1:0]      slot_15_axi_rdata,
    input wire  [1:0]                              slot_15_axi_rresp,
    input wire                                     slot_15_axi_rlast,
    input wire                                     slot_15_axi_rvalid,
    input wire                                     slot_15_axi_rready,
    input wire  [C_SLOT_15_AXI_RUSER_WIDTH-1:0]      slot_15_axi_ruser,
    input wire  [C_SLOT_15_AXI_ID_WIDTH-1:0]        slot_15_axi_wid,
    input wire  [3:0]                              slot_15_axi_awregion,
    input wire  [3:0]                              slot_15_axi_arregion,
    input wire  [3:0]                              slot_15_axi_awqos,
    input wire  [3:0]                              slot_15_axi_arqos,

    //SLOT 15 AXI Streaming Interface

    input wire                                     slot_15_axis_tvalid,
    input wire                                     slot_15_axis_tready,
    input wire  [C_SLOT_15_AXIS_TDATA_WIDTH-1:0]    slot_15_axis_tdata,
    input wire  [C_SLOT_15_AXIS_TDATA_WIDTH/8-1:0]  slot_15_axis_tstrb,
    input wire  [C_SLOT_15_AXIS_TDATA_WIDTH/8-1:0]  slot_15_axis_tkeep,
    input wire                                     slot_15_axis_tlast,
    input wire  [C_SLOT_15_AXIS_TID_WIDTH-1:0]      slot_15_axis_tid,
    input wire  [C_SLOT_15_AXIS_TDEST_WIDTH-1:0]    slot_15_axis_tdest,
    input wire  [C_SLOT_15_AXIS_TUSER_WIDTH-1:0]    slot_15_axis_tuser,

    //MUX 0 AXI MM Interface signals
    output wire  [C_MUX_0_AXI_ID_WIDTH-1:0]        mux_0_axi_awid,
    output wire  [C_MUX_0_AXI_ADDR_WIDTH-1:0]      mux_0_axi_awaddr,
    output wire  [C_MUX_0_AXI_AWUSER_WIDTH-1:0]      mux_0_axi_awuser,
    output wire  [2:0]                              mux_0_axi_awprot,
    output wire  [C_MUX_0_AXI_AXLEN_WIDTH-1:0]  mux_0_axi_awlen,
    output wire  [2:0]                              mux_0_axi_awsize,
    output wire  [1:0]                              mux_0_axi_awburst,
    output wire  [3:0]                              mux_0_axi_awcache,
    output wire  [C_MUX_0_AXI_AXLOCK_WIDTH-1:0] mux_0_axi_awlock,
    output wire                                     mux_0_axi_awvalid,
    output wire                                     mux_0_axi_awready,
    output wire  [C_MUX_0_AXI_DATA_WIDTH-1:0]      mux_0_axi_wdata,
    output wire  [C_MUX_0_AXI_DATA_WIDTH/8-1:0]    mux_0_axi_wstrb,
    output wire                                     mux_0_axi_wlast,
    output wire                                     mux_0_axi_wvalid,
    output wire                                     mux_0_axi_wready,
    output wire  [C_MUX_0_AXI_WUSER_WIDTH-1:0]      mux_0_axi_wuser,
    output wire  [C_MUX_0_AXI_ID_WIDTH-1:0]        mux_0_axi_bid,
    output wire  [1:0]                              mux_0_axi_bresp,
    output wire                                     mux_0_axi_bvalid,
    output wire                                     mux_0_axi_bready,
    output wire  [C_MUX_0_AXI_BUSER_WIDTH-1:0]    mux_0_axi_buser,
    output wire  [C_MUX_0_AXI_ID_WIDTH-1:0]       mux_0_axi_arid,
    output wire  [C_MUX_0_AXI_ADDR_WIDTH-1:0]     mux_0_axi_araddr,
    output wire  [C_SLOT_0_AXI_AXLEN_WIDTH-1:0] mux_0_axi_arlen,
    output wire  [2:0]                              mux_0_axi_arsize,
    output wire  [1:0]                              mux_0_axi_arburst,
    output wire  [3:0]                              mux_0_axi_arcache,
    output wire  [2:0]                              mux_0_axi_arprot,
    output wire  [C_SLOT_0_AXI_AXLOCK_WIDTH-1:0] mux_0_axi_arlock,
    output wire                                     mux_0_axi_arvalid,
    output wire                                     mux_0_axi_arready,
    output wire  [C_MUX_0_AXI_ARUSER_WIDTH-1:0]      mux_0_axi_aruser,
    output wire  [C_MUX_0_AXI_ID_WIDTH-1:0]        mux_0_axi_rid,
    output wire  [C_MUX_0_AXI_DATA_WIDTH-1:0]      mux_0_axi_rdata,
    output wire  [1:0]                              mux_0_axi_rresp,
    output wire                                     mux_0_axi_rlast,
    output wire                                     mux_0_axi_rvalid,
    output wire                                     mux_0_axi_rready,
    output wire  [C_MUX_0_AXI_RUSER_WIDTH-1:0]      mux_0_axi_ruser,
    output wire  [C_MUX_0_AXI_ID_WIDTH-1:0]        mux_0_axi_wid,
    output wire  [3:0]                              mux_0_axi_awregion,
    output wire  [3:0]                              mux_0_axi_arregion,
    output wire  [3:0]                              mux_0_axi_awqos,
    output wire  [3:0]                              mux_0_axi_arqos,

    //MUX 0 AXI Streaming Interface

    output wire                                     mux_0_axis_tvalid,
    output wire                                     mux_0_axis_tready,
    output wire  [C_MUX_0_AXIS_TDATA_WIDTH-1:0]    mux_0_axis_tdata,
    output wire  [C_MUX_0_AXIS_TDATA_WIDTH/8-1:0]  mux_0_axis_tstrb,
    output wire  [C_MUX_0_AXIS_TDATA_WIDTH/8-1:0]  mux_0_axis_tkeep,
    output wire                                     mux_0_axis_tlast,
    output wire  [C_MUX_0_AXIS_TID_WIDTH-1:0]      mux_0_axis_tid,
    output wire  [C_MUX_0_AXIS_TDEST_WIDTH-1:0]    mux_0_axis_tdest,
    output wire  [C_MUX_0_AXIS_TUSER_WIDTH-1:0]    mux_0_axis_tuser,

    //MUX 1 AXI MM Interface signals
    output wire  [C_MUX_1_AXI_ID_WIDTH-1:0]        mux_1_axi_awid,
    output wire  [C_MUX_1_AXI_ADDR_WIDTH-1:0]      mux_1_axi_awaddr,
    output wire  [C_MUX_1_AXI_AWUSER_WIDTH-1:0]      mux_1_axi_awuser,
    output wire  [2:0]                              mux_1_axi_awprot,
    output wire  [C_MUX_1_AXI_AXLEN_WIDTH-1:0]  mux_1_axi_awlen,
    output wire  [2:0]                              mux_1_axi_awsize,
    output wire  [1:0]                              mux_1_axi_awburst,
    output wire  [3:0]                              mux_1_axi_awcache,
    output wire  [C_MUX_1_AXI_AXLOCK_WIDTH-1:0] mux_1_axi_awlock,
    output wire                                     mux_1_axi_awvalid,
    output wire                                     mux_1_axi_awready,
    output wire  [C_MUX_1_AXI_DATA_WIDTH-1:0]      mux_1_axi_wdata,
    output wire  [C_MUX_1_AXI_DATA_WIDTH/8-1:0]    mux_1_axi_wstrb,
    output wire                                     mux_1_axi_wlast,
    output wire                                     mux_1_axi_wvalid,
    output wire                                     mux_1_axi_wready,
    output wire  [C_MUX_1_AXI_WUSER_WIDTH-1:0]      mux_1_axi_wuser,
    output wire  [C_MUX_1_AXI_ID_WIDTH-1:0]        mux_1_axi_bid,
    output wire  [1:0]                              mux_1_axi_bresp,
    output wire                                     mux_1_axi_bvalid,
    output wire                                     mux_1_axi_bready,
    output wire  [C_MUX_1_AXI_BUSER_WIDTH-1:0]    mux_1_axi_buser,
    output wire  [C_MUX_1_AXI_ID_WIDTH-1:0]       mux_1_axi_arid,
    output wire  [C_MUX_1_AXI_ADDR_WIDTH-1:0]     mux_1_axi_araddr,
    output wire  [C_SLOT_1_AXI_AXLEN_WIDTH-1:0] mux_1_axi_arlen,
    output wire  [2:0]                              mux_1_axi_arsize,
    output wire  [1:0]                              mux_1_axi_arburst,
    output wire  [3:0]                              mux_1_axi_arcache,
    output wire  [2:0]                              mux_1_axi_arprot,
    output wire  [C_SLOT_1_AXI_AXLOCK_WIDTH-1:0] mux_1_axi_arlock,
    output wire                                     mux_1_axi_arvalid,
    output wire                                     mux_1_axi_arready,
    output wire  [C_MUX_1_AXI_ARUSER_WIDTH-1:0]      mux_1_axi_aruser,
    output wire  [C_MUX_1_AXI_ID_WIDTH-1:0]        mux_1_axi_rid,
    output wire  [C_MUX_1_AXI_DATA_WIDTH-1:0]      mux_1_axi_rdata,
    output wire  [1:0]                              mux_1_axi_rresp,
    output wire                                     mux_1_axi_rlast,
    output wire                                     mux_1_axi_rvalid,
    output wire                                     mux_1_axi_rready,
    output wire  [C_MUX_1_AXI_RUSER_WIDTH-1:0]      mux_1_axi_ruser,
    output wire  [C_MUX_1_AXI_ID_WIDTH-1:0]        mux_1_axi_wid,
    output wire  [3:0]                              mux_1_axi_awregion,
    output wire  [3:0]                              mux_1_axi_arregion,
    output wire  [3:0]                              mux_1_axi_awqos,
    output wire  [3:0]                              mux_1_axi_arqos,

    //MUX 1 AXI Streaming Interface

    output wire                                     mux_1_axis_tvalid,
    output wire                                     mux_1_axis_tready,
    output wire  [C_MUX_1_AXIS_TDATA_WIDTH-1:0]    mux_1_axis_tdata,
    output wire  [C_MUX_1_AXIS_TDATA_WIDTH/8-1:0]  mux_1_axis_tstrb,
    output wire  [C_MUX_1_AXIS_TDATA_WIDTH/8-1:0]  mux_1_axis_tkeep,
    output wire                                     mux_1_axis_tlast,
    output wire  [C_MUX_1_AXIS_TID_WIDTH-1:0]      mux_1_axis_tid,
    output wire  [C_MUX_1_AXIS_TDEST_WIDTH-1:0]    mux_1_axis_tdest,
    output wire  [C_MUX_1_AXIS_TUSER_WIDTH-1:0]    mux_1_axis_tuser,

    //MUX 2 AXI MM Interface signals
    output wire  [C_MUX_2_AXI_ID_WIDTH-1:0]        mux_2_axi_awid,
    output wire  [C_MUX_2_AXI_ADDR_WIDTH-1:0]      mux_2_axi_awaddr,
    output wire  [C_MUX_2_AXI_AWUSER_WIDTH-1:0]      mux_2_axi_awuser,
    output wire  [2:0]                              mux_2_axi_awprot,
    output wire  [C_MUX_2_AXI_AXLEN_WIDTH-1:0]  mux_2_axi_awlen,
    output wire  [2:0]                              mux_2_axi_awsize,
    output wire  [1:0]                              mux_2_axi_awburst,
    output wire  [3:0]                              mux_2_axi_awcache,
    output wire  [C_MUX_2_AXI_AXLOCK_WIDTH-1:0] mux_2_axi_awlock,
    output wire                                     mux_2_axi_awvalid,
    output wire                                     mux_2_axi_awready,
    output wire  [C_MUX_2_AXI_DATA_WIDTH-1:0]      mux_2_axi_wdata,
    output wire  [C_MUX_2_AXI_DATA_WIDTH/8-1:0]    mux_2_axi_wstrb,
    output wire                                     mux_2_axi_wlast,
    output wire                                     mux_2_axi_wvalid,
    output wire                                     mux_2_axi_wready,
    output wire  [C_MUX_2_AXI_WUSER_WIDTH-1:0]      mux_2_axi_wuser,
    output wire  [C_MUX_2_AXI_ID_WIDTH-1:0]        mux_2_axi_bid,
    output wire  [1:0]                              mux_2_axi_bresp,
    output wire                                     mux_2_axi_bvalid,
    output wire                                     mux_2_axi_bready,
    output wire  [C_MUX_2_AXI_BUSER_WIDTH-1:0]    mux_2_axi_buser,
    output wire  [C_MUX_2_AXI_ID_WIDTH-1:0]       mux_2_axi_arid,
    output wire  [C_MUX_2_AXI_ADDR_WIDTH-1:0]     mux_2_axi_araddr,
    output wire  [C_SLOT_2_AXI_AXLEN_WIDTH-1:0] mux_2_axi_arlen,
    output wire  [2:0]                              mux_2_axi_arsize,
    output wire  [1:0]                              mux_2_axi_arburst,
    output wire  [3:0]                              mux_2_axi_arcache,
    output wire  [2:0]                              mux_2_axi_arprot,
    output wire  [C_SLOT_2_AXI_AXLOCK_WIDTH-1:0] mux_2_axi_arlock,
    output wire                                     mux_2_axi_arvalid,
    output wire                                     mux_2_axi_arready,
    output wire  [C_MUX_2_AXI_ARUSER_WIDTH-1:0]      mux_2_axi_aruser,
    output wire  [C_MUX_2_AXI_ID_WIDTH-1:0]        mux_2_axi_rid,
    output wire  [C_MUX_2_AXI_DATA_WIDTH-1:0]      mux_2_axi_rdata,
    output wire  [1:0]                              mux_2_axi_rresp,
    output wire                                     mux_2_axi_rlast,
    output wire                                     mux_2_axi_rvalid,
    output wire                                     mux_2_axi_rready,
    output wire  [C_MUX_2_AXI_RUSER_WIDTH-1:0]      mux_2_axi_ruser,
    output wire  [C_MUX_2_AXI_ID_WIDTH-1:0]        mux_2_axi_wid,
    output wire  [3:0]                              mux_2_axi_awregion,
    output wire  [3:0]                              mux_2_axi_arregion,
    output wire  [3:0]                              mux_2_axi_awqos,
    output wire  [3:0]                              mux_2_axi_arqos,

    //MUX 2 AXI Streaming Interface

    output wire                                     mux_2_axis_tvalid,
    output wire                                     mux_2_axis_tready,
    output wire  [C_MUX_2_AXIS_TDATA_WIDTH-1:0]    mux_2_axis_tdata,
    output wire  [C_MUX_2_AXIS_TDATA_WIDTH/8-1:0]  mux_2_axis_tstrb,
    output wire  [C_MUX_2_AXIS_TDATA_WIDTH/8-1:0]  mux_2_axis_tkeep,
    output wire                                     mux_2_axis_tlast,
    output wire  [C_MUX_2_AXIS_TID_WIDTH-1:0]      mux_2_axis_tid,
    output wire  [C_MUX_2_AXIS_TDEST_WIDTH-1:0]    mux_2_axis_tdest,
    output wire  [C_MUX_2_AXIS_TUSER_WIDTH-1:0]    mux_2_axis_tuser,

    //MUX 3 AXI MM Interface signals
    output wire  [C_MUX_3_AXI_ID_WIDTH-1:0]        mux_3_axi_awid,
    output wire  [C_MUX_3_AXI_ADDR_WIDTH-1:0]      mux_3_axi_awaddr,
    output wire  [C_MUX_3_AXI_AWUSER_WIDTH-1:0]      mux_3_axi_awuser,
    output wire  [2:0]                              mux_3_axi_awprot,
    output wire  [C_MUX_3_AXI_AXLEN_WIDTH-1:0]  mux_3_axi_awlen,
    output wire  [2:0]                              mux_3_axi_awsize,
    output wire  [1:0]                              mux_3_axi_awburst,
    output wire  [3:0]                              mux_3_axi_awcache,
    output wire  [C_MUX_3_AXI_AXLOCK_WIDTH-1:0] mux_3_axi_awlock,
    output wire                                     mux_3_axi_awvalid,
    output wire                                     mux_3_axi_awready,
    output wire  [C_MUX_3_AXI_DATA_WIDTH-1:0]      mux_3_axi_wdata,
    output wire  [C_MUX_3_AXI_DATA_WIDTH/8-1:0]    mux_3_axi_wstrb,
    output wire                                     mux_3_axi_wlast,
    output wire                                     mux_3_axi_wvalid,
    output wire                                     mux_3_axi_wready,
    output wire  [C_MUX_3_AXI_WUSER_WIDTH-1:0]      mux_3_axi_wuser,
    output wire  [C_MUX_3_AXI_ID_WIDTH-1:0]        mux_3_axi_bid,
    output wire  [1:0]                              mux_3_axi_bresp,
    output wire                                     mux_3_axi_bvalid,
    output wire                                     mux_3_axi_bready,
    output wire  [C_MUX_3_AXI_BUSER_WIDTH-1:0]    mux_3_axi_buser,
    output wire  [C_MUX_3_AXI_ID_WIDTH-1:0]       mux_3_axi_arid,
    output wire  [C_MUX_3_AXI_ADDR_WIDTH-1:0]     mux_3_axi_araddr,
    output wire  [C_SLOT_3_AXI_AXLEN_WIDTH-1:0] mux_3_axi_arlen,
    output wire  [2:0]                              mux_3_axi_arsize,
    output wire  [1:0]                              mux_3_axi_arburst,
    output wire  [3:0]                              mux_3_axi_arcache,
    output wire  [2:0]                              mux_3_axi_arprot,
    output wire  [C_SLOT_3_AXI_AXLOCK_WIDTH-1:0] mux_3_axi_arlock,
    output wire                                     mux_3_axi_arvalid,
    output wire                                     mux_3_axi_arready,
    output wire  [C_MUX_3_AXI_ARUSER_WIDTH-1:0]      mux_3_axi_aruser,
    output wire  [C_MUX_3_AXI_ID_WIDTH-1:0]        mux_3_axi_rid,
    output wire  [C_MUX_3_AXI_DATA_WIDTH-1:0]      mux_3_axi_rdata,
    output wire  [1:0]                              mux_3_axi_rresp,
    output wire                                     mux_3_axi_rlast,
    output wire                                     mux_3_axi_rvalid,
    output wire                                     mux_3_axi_rready,
    output wire  [C_MUX_3_AXI_RUSER_WIDTH-1:0]      mux_3_axi_ruser,
    output wire  [C_MUX_3_AXI_ID_WIDTH-1:0]        mux_3_axi_wid,
    output wire  [3:0]                              mux_3_axi_awregion,
    output wire  [3:0]                              mux_3_axi_arregion,
    output wire  [3:0]                              mux_3_axi_awqos,
    output wire  [3:0]                              mux_3_axi_arqos,

    //MUX 3 AXI Streaming Interface

    output wire                                     mux_3_axis_tvalid,
    output wire                                     mux_3_axis_tready,
    output wire  [C_MUX_3_AXIS_TDATA_WIDTH-1:0]    mux_3_axis_tdata,
    output wire  [C_MUX_3_AXIS_TDATA_WIDTH/8-1:0]  mux_3_axis_tstrb,
    output wire  [C_MUX_3_AXIS_TDATA_WIDTH/8-1:0]  mux_3_axis_tkeep,
    output wire                                     mux_3_axis_tlast,
    output wire  [C_MUX_3_AXIS_TID_WIDTH-1:0]      mux_3_axis_tid,
    output wire  [C_MUX_3_AXIS_TDEST_WIDTH-1:0]    mux_3_axis_tdest,
    output wire  [C_MUX_3_AXIS_TUSER_WIDTH-1:0]    mux_3_axis_tuser,


    input wire [C_NUM_MONITOR_SLOTS-1 :0] sel                
    );
 
 
 
 
 


 
 
     assign m_slot_0_axi_awid = slot_0_axi_awid ;
     assign m_slot_0_axi_awaddr = slot_0_axi_awaddr ;
     assign m_slot_0_axi_awprot = slot_0_axi_awprot ;
     assign m_slot_0_axi_awlen = slot_0_axi_awlen ;
     assign m_slot_0_axi_awuser = slot_0_axi_awuser ;
     assign m_slot_0_axi_awsize = slot_0_axi_awsize ;
     assign m_slot_0_axi_awburst = slot_0_axi_awburst ;
     assign m_slot_0_axi_awcache = slot_0_axi_awcache ;
     assign m_slot_0_axi_awlock = slot_0_axi_awlock ;
     assign m_slot_0_axi_awvalid = slot_0_axi_awvalid ;
     assign m_slot_0_axi_awready = slot_0_axi_awready ;
     assign m_slot_0_axi_wdata = slot_0_axi_wdata ;
     assign m_slot_0_axi_wuser = slot_0_axi_wuser ;
     assign m_slot_0_axi_wstrb = slot_0_axi_wstrb ;
     assign m_slot_0_axi_wlast = slot_0_axi_wlast ;
     assign m_slot_0_axi_wvalid = slot_0_axi_wvalid ;
     assign m_slot_0_axi_wready = slot_0_axi_wready ;
     assign m_slot_0_axi_bid = slot_0_axi_bid ;
     assign m_slot_0_axi_bresp = slot_0_axi_bresp ;
     assign m_slot_0_axi_bvalid = slot_0_axi_bvalid ;
     assign m_slot_0_axi_buser = slot_0_axi_buser ;
     assign m_slot_0_axi_bready = slot_0_axi_bready ;
     assign m_slot_0_axi_arid = slot_0_axi_arid ;
     assign m_slot_0_axi_araddr = slot_0_axi_araddr ;
     assign m_slot_0_axi_arlen = slot_0_axi_arlen ;
     assign m_slot_0_axi_arsize = slot_0_axi_arsize ;
     assign m_slot_0_axi_arburst = slot_0_axi_arburst ;
     assign m_slot_0_axi_arcache = slot_0_axi_arcache ;
     assign m_slot_0_axi_arprot = slot_0_axi_arprot ;
     assign m_slot_0_axi_arlock = slot_0_axi_arlock ;
     assign m_slot_0_axi_arvalid = slot_0_axi_arvalid ;
     assign m_slot_0_axi_arready = slot_0_axi_arready ;
     assign m_slot_0_axi_aruser = slot_0_axi_aruser ;
     assign m_slot_0_axi_rid = slot_0_axi_rid ;
     assign m_slot_0_axi_rdata = slot_0_axi_rdata ;
     assign m_slot_0_axi_rresp = slot_0_axi_rresp ;
     assign m_slot_0_axi_rlast = slot_0_axi_rlast ;
     assign m_slot_0_axi_rvalid = slot_0_axi_rvalid ;
     assign m_slot_0_axi_rready = slot_0_axi_rready ;
     assign m_slot_0_axi_ruser = slot_0_axi_ruser ;
     assign m_slot_0_axi_awqos = slot_0_axi_awqos ;
     assign m_slot_0_axi_awregion = slot_0_axi_awregion ;
     assign m_slot_0_axi_arqos = slot_0_axi_arqos ;
     assign m_slot_0_axi_arregion = slot_0_axi_arregion ;
     assign m_slot_0_axi_wid = slot_0_axi_wid ;
     assign m_slot_1_axi_awid = slot_1_axi_awid ;
     assign m_slot_1_axi_awaddr = slot_1_axi_awaddr ;
     assign m_slot_1_axi_awprot = slot_1_axi_awprot ;
     assign m_slot_1_axi_awlen = slot_1_axi_awlen ;
     assign m_slot_1_axi_awuser = slot_1_axi_awuser ;
     assign m_slot_1_axi_awsize = slot_1_axi_awsize ;
     assign m_slot_1_axi_awburst = slot_1_axi_awburst ;
     assign m_slot_1_axi_awcache = slot_1_axi_awcache ;
     assign m_slot_1_axi_awlock = slot_1_axi_awlock ;
     assign m_slot_1_axi_awvalid = slot_1_axi_awvalid ;
     assign m_slot_1_axi_awready = slot_1_axi_awready ;
     assign m_slot_1_axi_wdata = slot_1_axi_wdata ;
     assign m_slot_1_axi_wuser = slot_1_axi_wuser ;
     assign m_slot_1_axi_wstrb = slot_1_axi_wstrb ;
     assign m_slot_1_axi_wlast = slot_1_axi_wlast ;
     assign m_slot_1_axi_wvalid = slot_1_axi_wvalid ;
     assign m_slot_1_axi_wready = slot_1_axi_wready ;
     assign m_slot_1_axi_bid = slot_1_axi_bid ;
     assign m_slot_1_axi_bresp = slot_1_axi_bresp ;
     assign m_slot_1_axi_bvalid = slot_1_axi_bvalid ;
     assign m_slot_1_axi_buser = slot_1_axi_buser ;
     assign m_slot_1_axi_bready = slot_1_axi_bready ;
     assign m_slot_1_axi_arid = slot_1_axi_arid ;
     assign m_slot_1_axi_araddr = slot_1_axi_araddr ;
     assign m_slot_1_axi_arlen = slot_1_axi_arlen ;
     assign m_slot_1_axi_arsize = slot_1_axi_arsize ;
     assign m_slot_1_axi_arburst = slot_1_axi_arburst ;
     assign m_slot_1_axi_arcache = slot_1_axi_arcache ;
     assign m_slot_1_axi_arprot = slot_1_axi_arprot ;
     assign m_slot_1_axi_arlock = slot_1_axi_arlock ;
     assign m_slot_1_axi_arvalid = slot_1_axi_arvalid ;
     assign m_slot_1_axi_arready = slot_1_axi_arready ;
     assign m_slot_1_axi_aruser = slot_1_axi_aruser ;
     assign m_slot_1_axi_rid = slot_1_axi_rid ;
     assign m_slot_1_axi_rdata = slot_1_axi_rdata ;
     assign m_slot_1_axi_rresp = slot_1_axi_rresp ;
     assign m_slot_1_axi_rlast = slot_1_axi_rlast ;
     assign m_slot_1_axi_rvalid = slot_1_axi_rvalid ;
     assign m_slot_1_axi_rready = slot_1_axi_rready ;
     assign m_slot_1_axi_ruser = slot_1_axi_ruser ;
     assign m_slot_1_axi_awqos = slot_1_axi_awqos ;
     assign m_slot_1_axi_awregion = slot_1_axi_awregion ;
     assign m_slot_1_axi_arqos = slot_1_axi_arqos ;
     assign m_slot_1_axi_arregion = slot_1_axi_arregion ;
     assign m_slot_1_axi_wid = slot_1_axi_wid ;
     assign m_slot_2_axi_awid = slot_2_axi_awid ;
     assign m_slot_2_axi_awaddr = slot_2_axi_awaddr ;
     assign m_slot_2_axi_awprot = slot_2_axi_awprot ;
     assign m_slot_2_axi_awlen = slot_2_axi_awlen ;
     assign m_slot_2_axi_awuser = slot_2_axi_awuser ;
     assign m_slot_2_axi_awsize = slot_2_axi_awsize ;
     assign m_slot_2_axi_awburst = slot_2_axi_awburst ;
     assign m_slot_2_axi_awcache = slot_2_axi_awcache ;
     assign m_slot_2_axi_awlock = slot_2_axi_awlock ;
     assign m_slot_2_axi_awvalid = slot_2_axi_awvalid ;
     assign m_slot_2_axi_awready = slot_2_axi_awready ;
     assign m_slot_2_axi_wdata = slot_2_axi_wdata ;
     assign m_slot_2_axi_wuser = slot_2_axi_wuser ;
     assign m_slot_2_axi_wstrb = slot_2_axi_wstrb ;
     assign m_slot_2_axi_wlast = slot_2_axi_wlast ;
     assign m_slot_2_axi_wvalid = slot_2_axi_wvalid ;
     assign m_slot_2_axi_wready = slot_2_axi_wready ;
     assign m_slot_2_axi_bid = slot_2_axi_bid ;
     assign m_slot_2_axi_bresp = slot_2_axi_bresp ;
     assign m_slot_2_axi_bvalid = slot_2_axi_bvalid ;
     assign m_slot_2_axi_buser = slot_2_axi_buser ;
     assign m_slot_2_axi_bready = slot_2_axi_bready ;
     assign m_slot_2_axi_arid = slot_2_axi_arid ;
     assign m_slot_2_axi_araddr = slot_2_axi_araddr ;
     assign m_slot_2_axi_arlen = slot_2_axi_arlen ;
     assign m_slot_2_axi_arsize = slot_2_axi_arsize ;
     assign m_slot_2_axi_arburst = slot_2_axi_arburst ;
     assign m_slot_2_axi_arcache = slot_2_axi_arcache ;
     assign m_slot_2_axi_arprot = slot_2_axi_arprot ;
     assign m_slot_2_axi_arlock = slot_2_axi_arlock ;
     assign m_slot_2_axi_arvalid = slot_2_axi_arvalid ;
     assign m_slot_2_axi_arready = slot_2_axi_arready ;
     assign m_slot_2_axi_aruser = slot_2_axi_aruser ;
     assign m_slot_2_axi_rid = slot_2_axi_rid ;
     assign m_slot_2_axi_rdata = slot_2_axi_rdata ;
     assign m_slot_2_axi_rresp = slot_2_axi_rresp ;
     assign m_slot_2_axi_rlast = slot_2_axi_rlast ;
     assign m_slot_2_axi_rvalid = slot_2_axi_rvalid ;
     assign m_slot_2_axi_rready = slot_2_axi_rready ;
     assign m_slot_2_axi_ruser = slot_2_axi_ruser ;
     assign m_slot_2_axi_awqos = slot_2_axi_awqos ;
     assign m_slot_2_axi_awregion = slot_2_axi_awregion ;
     assign m_slot_2_axi_arqos = slot_2_axi_arqos ;
     assign m_slot_2_axi_arregion = slot_2_axi_arregion ;
     assign m_slot_2_axi_wid = slot_2_axi_wid ;
     assign m_slot_3_axi_awid = slot_3_axi_awid ;
     assign m_slot_3_axi_awaddr = slot_3_axi_awaddr ;
     assign m_slot_3_axi_awprot = slot_3_axi_awprot ;
     assign m_slot_3_axi_awlen = slot_3_axi_awlen ;
     assign m_slot_3_axi_awuser = slot_3_axi_awuser ;
     assign m_slot_3_axi_awsize = slot_3_axi_awsize ;
     assign m_slot_3_axi_awburst = slot_3_axi_awburst ;
     assign m_slot_3_axi_awcache = slot_3_axi_awcache ;
     assign m_slot_3_axi_awlock = slot_3_axi_awlock ;
     assign m_slot_3_axi_awvalid = slot_3_axi_awvalid ;
     assign m_slot_3_axi_awready = slot_3_axi_awready ;
     assign m_slot_3_axi_wdata = slot_3_axi_wdata ;
     assign m_slot_3_axi_wuser = slot_3_axi_wuser ;
     assign m_slot_3_axi_wstrb = slot_3_axi_wstrb ;
     assign m_slot_3_axi_wlast = slot_3_axi_wlast ;
     assign m_slot_3_axi_wvalid = slot_3_axi_wvalid ;
     assign m_slot_3_axi_wready = slot_3_axi_wready ;
     assign m_slot_3_axi_bid = slot_3_axi_bid ;
     assign m_slot_3_axi_bresp = slot_3_axi_bresp ;
     assign m_slot_3_axi_bvalid = slot_3_axi_bvalid ;
     assign m_slot_3_axi_buser = slot_3_axi_buser ;
     assign m_slot_3_axi_bready = slot_3_axi_bready ;
     assign m_slot_3_axi_arid = slot_3_axi_arid ;
     assign m_slot_3_axi_araddr = slot_3_axi_araddr ;
     assign m_slot_3_axi_arlen = slot_3_axi_arlen ;
     assign m_slot_3_axi_arsize = slot_3_axi_arsize ;
     assign m_slot_3_axi_arburst = slot_3_axi_arburst ;
     assign m_slot_3_axi_arcache = slot_3_axi_arcache ;
     assign m_slot_3_axi_arprot = slot_3_axi_arprot ;
     assign m_slot_3_axi_arlock = slot_3_axi_arlock ;
     assign m_slot_3_axi_arvalid = slot_3_axi_arvalid ;
     assign m_slot_3_axi_arready = slot_3_axi_arready ;
     assign m_slot_3_axi_aruser = slot_3_axi_aruser ;
     assign m_slot_3_axi_rid = slot_3_axi_rid ;
     assign m_slot_3_axi_rdata = slot_3_axi_rdata ;
     assign m_slot_3_axi_rresp = slot_3_axi_rresp ;
     assign m_slot_3_axi_rlast = slot_3_axi_rlast ;
     assign m_slot_3_axi_rvalid = slot_3_axi_rvalid ;
     assign m_slot_3_axi_rready = slot_3_axi_rready ;
     assign m_slot_3_axi_ruser = slot_3_axi_ruser ;
     assign m_slot_3_axi_awqos = slot_3_axi_awqos ;
     assign m_slot_3_axi_awregion = slot_3_axi_awregion ;
     assign m_slot_3_axi_arqos = slot_3_axi_arqos ;
     assign m_slot_3_axi_arregion = slot_3_axi_arregion ;
     assign m_slot_3_axi_wid = slot_3_axi_wid ;
     assign m_slot_4_axi_awid = slot_4_axi_awid ;
     assign m_slot_4_axi_awaddr = slot_4_axi_awaddr ;
     assign m_slot_4_axi_awprot = slot_4_axi_awprot ;
     assign m_slot_4_axi_awlen = slot_4_axi_awlen ;
     assign m_slot_4_axi_awuser = slot_4_axi_awuser ;
     assign m_slot_4_axi_awsize = slot_4_axi_awsize ;
     assign m_slot_4_axi_awburst = slot_4_axi_awburst ;
     assign m_slot_4_axi_awcache = slot_4_axi_awcache ;
     assign m_slot_4_axi_awlock = slot_4_axi_awlock ;
     assign m_slot_4_axi_awvalid = slot_4_axi_awvalid ;
     assign m_slot_4_axi_awready = slot_4_axi_awready ;
     assign m_slot_4_axi_wdata = slot_4_axi_wdata ;
     assign m_slot_4_axi_wuser = slot_4_axi_wuser ;
     assign m_slot_4_axi_wstrb = slot_4_axi_wstrb ;
     assign m_slot_4_axi_wlast = slot_4_axi_wlast ;
     assign m_slot_4_axi_wvalid = slot_4_axi_wvalid ;
     assign m_slot_4_axi_wready = slot_4_axi_wready ;
     assign m_slot_4_axi_bid = slot_4_axi_bid ;
     assign m_slot_4_axi_bresp = slot_4_axi_bresp ;
     assign m_slot_4_axi_bvalid = slot_4_axi_bvalid ;
     assign m_slot_4_axi_buser = slot_4_axi_buser ;
     assign m_slot_4_axi_bready = slot_4_axi_bready ;
     assign m_slot_4_axi_arid = slot_4_axi_arid ;
     assign m_slot_4_axi_araddr = slot_4_axi_araddr ;
     assign m_slot_4_axi_arlen = slot_4_axi_arlen ;
     assign m_slot_4_axi_arsize = slot_4_axi_arsize ;
     assign m_slot_4_axi_arburst = slot_4_axi_arburst ;
     assign m_slot_4_axi_arcache = slot_4_axi_arcache ;
     assign m_slot_4_axi_arprot = slot_4_axi_arprot ;
     assign m_slot_4_axi_arlock = slot_4_axi_arlock ;
     assign m_slot_4_axi_arvalid = slot_4_axi_arvalid ;
     assign m_slot_4_axi_arready = slot_4_axi_arready ;
     assign m_slot_4_axi_aruser = slot_4_axi_aruser ;
     assign m_slot_4_axi_rid = slot_4_axi_rid ;
     assign m_slot_4_axi_rdata = slot_4_axi_rdata ;
     assign m_slot_4_axi_rresp = slot_4_axi_rresp ;
     assign m_slot_4_axi_rlast = slot_4_axi_rlast ;
     assign m_slot_4_axi_rvalid = slot_4_axi_rvalid ;
     assign m_slot_4_axi_rready = slot_4_axi_rready ;
     assign m_slot_4_axi_ruser = slot_4_axi_ruser ;
     assign m_slot_4_axi_awqos = slot_4_axi_awqos ;
     assign m_slot_4_axi_awregion = slot_4_axi_awregion ;
     assign m_slot_4_axi_arqos = slot_4_axi_arqos ;
     assign m_slot_4_axi_arregion = slot_4_axi_arregion ;
     assign m_slot_4_axi_wid = slot_4_axi_wid ;
     assign m_slot_5_axi_awid = slot_5_axi_awid ;
     assign m_slot_5_axi_awaddr = slot_5_axi_awaddr ;
     assign m_slot_5_axi_awprot = slot_5_axi_awprot ;
     assign m_slot_5_axi_awlen = slot_5_axi_awlen ;
     assign m_slot_5_axi_awuser = slot_5_axi_awuser ;
     assign m_slot_5_axi_awsize = slot_5_axi_awsize ;
     assign m_slot_5_axi_awburst = slot_5_axi_awburst ;
     assign m_slot_5_axi_awcache = slot_5_axi_awcache ;
     assign m_slot_5_axi_awlock = slot_5_axi_awlock ;
     assign m_slot_5_axi_awvalid = slot_5_axi_awvalid ;
     assign m_slot_5_axi_awready = slot_5_axi_awready ;
     assign m_slot_5_axi_wdata = slot_5_axi_wdata ;
     assign m_slot_5_axi_wuser = slot_5_axi_wuser ;
     assign m_slot_5_axi_wstrb = slot_5_axi_wstrb ;
     assign m_slot_5_axi_wlast = slot_5_axi_wlast ;
     assign m_slot_5_axi_wvalid = slot_5_axi_wvalid ;
     assign m_slot_5_axi_wready = slot_5_axi_wready ;
     assign m_slot_5_axi_bid = slot_5_axi_bid ;
     assign m_slot_5_axi_bresp = slot_5_axi_bresp ;
     assign m_slot_5_axi_bvalid = slot_5_axi_bvalid ;
     assign m_slot_5_axi_buser = slot_5_axi_buser ;
     assign m_slot_5_axi_bready = slot_5_axi_bready ;
     assign m_slot_5_axi_arid = slot_5_axi_arid ;
     assign m_slot_5_axi_araddr = slot_5_axi_araddr ;
     assign m_slot_5_axi_arlen = slot_5_axi_arlen ;
     assign m_slot_5_axi_arsize = slot_5_axi_arsize ;
     assign m_slot_5_axi_arburst = slot_5_axi_arburst ;
     assign m_slot_5_axi_arcache = slot_5_axi_arcache ;
     assign m_slot_5_axi_arprot = slot_5_axi_arprot ;
     assign m_slot_5_axi_arlock = slot_5_axi_arlock ;
     assign m_slot_5_axi_arvalid = slot_5_axi_arvalid ;
     assign m_slot_5_axi_arready = slot_5_axi_arready ;
     assign m_slot_5_axi_aruser = slot_5_axi_aruser ;
     assign m_slot_5_axi_rid = slot_5_axi_rid ;
     assign m_slot_5_axi_rdata = slot_5_axi_rdata ;
     assign m_slot_5_axi_rresp = slot_5_axi_rresp ;
     assign m_slot_5_axi_rlast = slot_5_axi_rlast ;
     assign m_slot_5_axi_rvalid = slot_5_axi_rvalid ;
     assign m_slot_5_axi_rready = slot_5_axi_rready ;
     assign m_slot_5_axi_ruser = slot_5_axi_ruser ;
     assign m_slot_5_axi_awqos = slot_5_axi_awqos ;
     assign m_slot_5_axi_awregion = slot_5_axi_awregion ;
     assign m_slot_5_axi_arqos = slot_5_axi_arqos ;
     assign m_slot_5_axi_arregion = slot_5_axi_arregion ;
     assign m_slot_5_axi_wid = slot_5_axi_wid ;
     assign m_slot_6_axi_awid = slot_6_axi_awid ;
     assign m_slot_6_axi_awaddr = slot_6_axi_awaddr ;
     assign m_slot_6_axi_awprot = slot_6_axi_awprot ;
     assign m_slot_6_axi_awlen = slot_6_axi_awlen ;
     assign m_slot_6_axi_awuser = slot_6_axi_awuser ;
     assign m_slot_6_axi_awsize = slot_6_axi_awsize ;
     assign m_slot_6_axi_awburst = slot_6_axi_awburst ;
     assign m_slot_6_axi_awcache = slot_6_axi_awcache ;
     assign m_slot_6_axi_awlock = slot_6_axi_awlock ;
     assign m_slot_6_axi_awvalid = slot_6_axi_awvalid ;
     assign m_slot_6_axi_awready = slot_6_axi_awready ;
     assign m_slot_6_axi_wdata = slot_6_axi_wdata ;
     assign m_slot_6_axi_wuser = slot_6_axi_wuser ;
     assign m_slot_6_axi_wstrb = slot_6_axi_wstrb ;
     assign m_slot_6_axi_wlast = slot_6_axi_wlast ;
     assign m_slot_6_axi_wvalid = slot_6_axi_wvalid ;
     assign m_slot_6_axi_wready = slot_6_axi_wready ;
     assign m_slot_6_axi_bid = slot_6_axi_bid ;
     assign m_slot_6_axi_bresp = slot_6_axi_bresp ;
     assign m_slot_6_axi_bvalid = slot_6_axi_bvalid ;
     assign m_slot_6_axi_buser = slot_6_axi_buser ;
     assign m_slot_6_axi_bready = slot_6_axi_bready ;
     assign m_slot_6_axi_arid = slot_6_axi_arid ;
     assign m_slot_6_axi_araddr = slot_6_axi_araddr ;
     assign m_slot_6_axi_arlen = slot_6_axi_arlen ;
     assign m_slot_6_axi_arsize = slot_6_axi_arsize ;
     assign m_slot_6_axi_arburst = slot_6_axi_arburst ;
     assign m_slot_6_axi_arcache = slot_6_axi_arcache ;
     assign m_slot_6_axi_arprot = slot_6_axi_arprot ;
     assign m_slot_6_axi_arlock = slot_6_axi_arlock ;
     assign m_slot_6_axi_arvalid = slot_6_axi_arvalid ;
     assign m_slot_6_axi_arready = slot_6_axi_arready ;
     assign m_slot_6_axi_aruser = slot_6_axi_aruser ;
     assign m_slot_6_axi_rid = slot_6_axi_rid ;
     assign m_slot_6_axi_rdata = slot_6_axi_rdata ;
     assign m_slot_6_axi_rresp = slot_6_axi_rresp ;
     assign m_slot_6_axi_rlast = slot_6_axi_rlast ;
     assign m_slot_6_axi_rvalid = slot_6_axi_rvalid ;
     assign m_slot_6_axi_rready = slot_6_axi_rready ;
     assign m_slot_6_axi_ruser = slot_6_axi_ruser ;
     assign m_slot_6_axi_awqos = slot_6_axi_awqos ;
     assign m_slot_6_axi_awregion = slot_6_axi_awregion ;
     assign m_slot_6_axi_arqos = slot_6_axi_arqos ;
     assign m_slot_6_axi_arregion = slot_6_axi_arregion ;
     assign m_slot_6_axi_wid = slot_6_axi_wid ;
     assign m_slot_7_axi_awid = slot_7_axi_awid ;
     assign m_slot_7_axi_awaddr = slot_7_axi_awaddr ;
     assign m_slot_7_axi_awprot = slot_7_axi_awprot ;
     assign m_slot_7_axi_awlen = slot_7_axi_awlen ;
     assign m_slot_7_axi_awuser = slot_7_axi_awuser ;
     assign m_slot_7_axi_awsize = slot_7_axi_awsize ;
     assign m_slot_7_axi_awburst = slot_7_axi_awburst ;
     assign m_slot_7_axi_awcache = slot_7_axi_awcache ;
     assign m_slot_7_axi_awlock = slot_7_axi_awlock ;
     assign m_slot_7_axi_awvalid = slot_7_axi_awvalid ;
     assign m_slot_7_axi_awready = slot_7_axi_awready ;
     assign m_slot_7_axi_wdata = slot_7_axi_wdata ;
     assign m_slot_7_axi_wuser = slot_7_axi_wuser ;
     assign m_slot_7_axi_wstrb = slot_7_axi_wstrb ;
     assign m_slot_7_axi_wlast = slot_7_axi_wlast ;
     assign m_slot_7_axi_wvalid = slot_7_axi_wvalid ;
     assign m_slot_7_axi_wready = slot_7_axi_wready ;
     assign m_slot_7_axi_bid = slot_7_axi_bid ;
     assign m_slot_7_axi_bresp = slot_7_axi_bresp ;
     assign m_slot_7_axi_bvalid = slot_7_axi_bvalid ;
     assign m_slot_7_axi_buser = slot_7_axi_buser ;
     assign m_slot_7_axi_bready = slot_7_axi_bready ;
     assign m_slot_7_axi_arid = slot_7_axi_arid ;
     assign m_slot_7_axi_araddr = slot_7_axi_araddr ;
     assign m_slot_7_axi_arlen = slot_7_axi_arlen ;
     assign m_slot_7_axi_arsize = slot_7_axi_arsize ;
     assign m_slot_7_axi_arburst = slot_7_axi_arburst ;
     assign m_slot_7_axi_arcache = slot_7_axi_arcache ;
     assign m_slot_7_axi_arprot = slot_7_axi_arprot ;
     assign m_slot_7_axi_arlock = slot_7_axi_arlock ;
     assign m_slot_7_axi_arvalid = slot_7_axi_arvalid ;
     assign m_slot_7_axi_arready = slot_7_axi_arready ;
     assign m_slot_7_axi_aruser = slot_7_axi_aruser ;
     assign m_slot_7_axi_rid = slot_7_axi_rid ;
     assign m_slot_7_axi_rdata = slot_7_axi_rdata ;
     assign m_slot_7_axi_rresp = slot_7_axi_rresp ;
     assign m_slot_7_axi_rlast = slot_7_axi_rlast ;
     assign m_slot_7_axi_rvalid = slot_7_axi_rvalid ;
     assign m_slot_7_axi_rready = slot_7_axi_rready ;
     assign m_slot_7_axi_ruser = slot_7_axi_ruser ;
     assign m_slot_7_axi_awqos = slot_7_axi_awqos ;
     assign m_slot_7_axi_awregion = slot_7_axi_awregion ;
     assign m_slot_7_axi_arqos = slot_7_axi_arqos ;
     assign m_slot_7_axi_arregion = slot_7_axi_arregion ;
     assign m_slot_7_axi_wid = slot_7_axi_wid ;
     assign m_slot_8_axi_awid = slot_8_axi_awid ;
     assign m_slot_8_axi_awaddr = slot_8_axi_awaddr ;
     assign m_slot_8_axi_awprot = slot_8_axi_awprot ;
     assign m_slot_8_axi_awlen = slot_8_axi_awlen ;
     assign m_slot_8_axi_awuser = slot_8_axi_awuser ;
     assign m_slot_8_axi_awsize = slot_8_axi_awsize ;
     assign m_slot_8_axi_awburst = slot_8_axi_awburst ;
     assign m_slot_8_axi_awcache = slot_8_axi_awcache ;
     assign m_slot_8_axi_awlock = slot_8_axi_awlock ;
     assign m_slot_8_axi_awvalid = slot_8_axi_awvalid ;
     assign m_slot_8_axi_awready = slot_8_axi_awready ;
     assign m_slot_8_axi_wdata = slot_8_axi_wdata ;
     assign m_slot_8_axi_wuser = slot_8_axi_wuser ;
     assign m_slot_8_axi_wstrb = slot_8_axi_wstrb ;
     assign m_slot_8_axi_wlast = slot_8_axi_wlast ;
     assign m_slot_8_axi_wvalid = slot_8_axi_wvalid ;
     assign m_slot_8_axi_wready = slot_8_axi_wready ;
     assign m_slot_8_axi_bid = slot_8_axi_bid ;
     assign m_slot_8_axi_bresp = slot_8_axi_bresp ;
     assign m_slot_8_axi_bvalid = slot_8_axi_bvalid ;
     assign m_slot_8_axi_buser = slot_8_axi_buser ;
     assign m_slot_8_axi_bready = slot_8_axi_bready ;
     assign m_slot_8_axi_arid = slot_8_axi_arid ;
     assign m_slot_8_axi_araddr = slot_8_axi_araddr ;
     assign m_slot_8_axi_arlen = slot_8_axi_arlen ;
     assign m_slot_8_axi_arsize = slot_8_axi_arsize ;
     assign m_slot_8_axi_arburst = slot_8_axi_arburst ;
     assign m_slot_8_axi_arcache = slot_8_axi_arcache ;
     assign m_slot_8_axi_arprot = slot_8_axi_arprot ;
     assign m_slot_8_axi_arlock = slot_8_axi_arlock ;
     assign m_slot_8_axi_arvalid = slot_8_axi_arvalid ;
     assign m_slot_8_axi_arready = slot_8_axi_arready ;
     assign m_slot_8_axi_aruser = slot_8_axi_aruser ;
     assign m_slot_8_axi_rid = slot_8_axi_rid ;
     assign m_slot_8_axi_rdata = slot_8_axi_rdata ;
     assign m_slot_8_axi_rresp = slot_8_axi_rresp ;
     assign m_slot_8_axi_rlast = slot_8_axi_rlast ;
     assign m_slot_8_axi_rvalid = slot_8_axi_rvalid ;
     assign m_slot_8_axi_rready = slot_8_axi_rready ;
     assign m_slot_8_axi_ruser = slot_8_axi_ruser ;
     assign m_slot_8_axi_awqos = slot_8_axi_awqos ;
     assign m_slot_8_axi_awregion = slot_8_axi_awregion ;
     assign m_slot_8_axi_arqos = slot_8_axi_arqos ;
     assign m_slot_8_axi_arregion = slot_8_axi_arregion ;
     assign m_slot_8_axi_wid = slot_8_axi_wid ;
     assign m_slot_9_axi_awid = slot_9_axi_awid ;
     assign m_slot_9_axi_awaddr = slot_9_axi_awaddr ;
     assign m_slot_9_axi_awprot = slot_9_axi_awprot ;
     assign m_slot_9_axi_awlen = slot_9_axi_awlen ;
     assign m_slot_9_axi_awuser = slot_9_axi_awuser ;
     assign m_slot_9_axi_awsize = slot_9_axi_awsize ;
     assign m_slot_9_axi_awburst = slot_9_axi_awburst ;
     assign m_slot_9_axi_awcache = slot_9_axi_awcache ;
     assign m_slot_9_axi_awlock = slot_9_axi_awlock ;
     assign m_slot_9_axi_awvalid = slot_9_axi_awvalid ;
     assign m_slot_9_axi_awready = slot_9_axi_awready ;
     assign m_slot_9_axi_wdata = slot_9_axi_wdata ;
     assign m_slot_9_axi_wuser = slot_9_axi_wuser ;
     assign m_slot_9_axi_wstrb = slot_9_axi_wstrb ;
     assign m_slot_9_axi_wlast = slot_9_axi_wlast ;
     assign m_slot_9_axi_wvalid = slot_9_axi_wvalid ;
     assign m_slot_9_axi_wready = slot_9_axi_wready ;
     assign m_slot_9_axi_bid = slot_9_axi_bid ;
     assign m_slot_9_axi_bresp = slot_9_axi_bresp ;
     assign m_slot_9_axi_bvalid = slot_9_axi_bvalid ;
     assign m_slot_9_axi_buser = slot_9_axi_buser ;
     assign m_slot_9_axi_bready = slot_9_axi_bready ;
     assign m_slot_9_axi_arid = slot_9_axi_arid ;
     assign m_slot_9_axi_araddr = slot_9_axi_araddr ;
     assign m_slot_9_axi_arlen = slot_9_axi_arlen ;
     assign m_slot_9_axi_arsize = slot_9_axi_arsize ;
     assign m_slot_9_axi_arburst = slot_9_axi_arburst ;
     assign m_slot_9_axi_arcache = slot_9_axi_arcache ;
     assign m_slot_9_axi_arprot = slot_9_axi_arprot ;
     assign m_slot_9_axi_arlock = slot_9_axi_arlock ;
     assign m_slot_9_axi_arvalid = slot_9_axi_arvalid ;
     assign m_slot_9_axi_arready = slot_9_axi_arready ;
     assign m_slot_9_axi_aruser = slot_9_axi_aruser ;
     assign m_slot_9_axi_rid = slot_9_axi_rid ;
     assign m_slot_9_axi_rdata = slot_9_axi_rdata ;
     assign m_slot_9_axi_rresp = slot_9_axi_rresp ;
     assign m_slot_9_axi_rlast = slot_9_axi_rlast ;
     assign m_slot_9_axi_rvalid = slot_9_axi_rvalid ;
     assign m_slot_9_axi_rready = slot_9_axi_rready ;
     assign m_slot_9_axi_ruser = slot_9_axi_ruser ;
     assign m_slot_9_axi_awqos = slot_9_axi_awqos ;
     assign m_slot_9_axi_awregion = slot_9_axi_awregion ;
     assign m_slot_9_axi_arqos = slot_9_axi_arqos ;
     assign m_slot_9_axi_arregion = slot_9_axi_arregion ;
     assign m_slot_9_axi_wid = slot_9_axi_wid ;
     assign m_slot_10_axi_awid = slot_10_axi_awid ;
     assign m_slot_10_axi_awaddr = slot_10_axi_awaddr ;
     assign m_slot_10_axi_awprot = slot_10_axi_awprot ;
     assign m_slot_10_axi_awlen = slot_10_axi_awlen ;
     assign m_slot_10_axi_awuser = slot_10_axi_awuser ;
     assign m_slot_10_axi_awsize = slot_10_axi_awsize ;
     assign m_slot_10_axi_awburst = slot_10_axi_awburst ;
     assign m_slot_10_axi_awcache = slot_10_axi_awcache ;
     assign m_slot_10_axi_awlock = slot_10_axi_awlock ;
     assign m_slot_10_axi_awvalid = slot_10_axi_awvalid ;
     assign m_slot_10_axi_awready = slot_10_axi_awready ;
     assign m_slot_10_axi_wdata = slot_10_axi_wdata ;
     assign m_slot_10_axi_wuser = slot_10_axi_wuser ;
     assign m_slot_10_axi_wstrb = slot_10_axi_wstrb ;
     assign m_slot_10_axi_wlast = slot_10_axi_wlast ;
     assign m_slot_10_axi_wvalid = slot_10_axi_wvalid ;
     assign m_slot_10_axi_wready = slot_10_axi_wready ;
     assign m_slot_10_axi_bid = slot_10_axi_bid ;
     assign m_slot_10_axi_bresp = slot_10_axi_bresp ;
     assign m_slot_10_axi_bvalid = slot_10_axi_bvalid ;
     assign m_slot_10_axi_buser = slot_10_axi_buser ;
     assign m_slot_10_axi_bready = slot_10_axi_bready ;
     assign m_slot_10_axi_arid = slot_10_axi_arid ;
     assign m_slot_10_axi_araddr = slot_10_axi_araddr ;
     assign m_slot_10_axi_arlen = slot_10_axi_arlen ;
     assign m_slot_10_axi_arsize = slot_10_axi_arsize ;
     assign m_slot_10_axi_arburst = slot_10_axi_arburst ;
     assign m_slot_10_axi_arcache = slot_10_axi_arcache ;
     assign m_slot_10_axi_arprot = slot_10_axi_arprot ;
     assign m_slot_10_axi_arlock = slot_10_axi_arlock ;
     assign m_slot_10_axi_arvalid = slot_10_axi_arvalid ;
     assign m_slot_10_axi_arready = slot_10_axi_arready ;
     assign m_slot_10_axi_aruser = slot_10_axi_aruser ;
     assign m_slot_10_axi_rid = slot_10_axi_rid ;
     assign m_slot_10_axi_rdata = slot_10_axi_rdata ;
     assign m_slot_10_axi_rresp = slot_10_axi_rresp ;
     assign m_slot_10_axi_rlast = slot_10_axi_rlast ;
     assign m_slot_10_axi_rvalid = slot_10_axi_rvalid ;
     assign m_slot_10_axi_rready = slot_10_axi_rready ;
     assign m_slot_10_axi_ruser = slot_10_axi_ruser ;
     assign m_slot_10_axi_awqos = slot_10_axi_awqos ;
     assign m_slot_10_axi_awregion = slot_10_axi_awregion ;
     assign m_slot_10_axi_arqos = slot_10_axi_arqos ;
     assign m_slot_10_axi_arregion = slot_10_axi_arregion ;
     assign m_slot_10_axi_wid = slot_10_axi_wid ;
     assign m_slot_11_axi_awid = slot_11_axi_awid ;
     assign m_slot_11_axi_awaddr = slot_11_axi_awaddr ;
     assign m_slot_11_axi_awprot = slot_11_axi_awprot ;
     assign m_slot_11_axi_awlen = slot_11_axi_awlen ;
     assign m_slot_11_axi_awuser = slot_11_axi_awuser ;
     assign m_slot_11_axi_awsize = slot_11_axi_awsize ;
     assign m_slot_11_axi_awburst = slot_11_axi_awburst ;
     assign m_slot_11_axi_awcache = slot_11_axi_awcache ;
     assign m_slot_11_axi_awlock = slot_11_axi_awlock ;
     assign m_slot_11_axi_awvalid = slot_11_axi_awvalid ;
     assign m_slot_11_axi_awready = slot_11_axi_awready ;
     assign m_slot_11_axi_wdata = slot_11_axi_wdata ;
     assign m_slot_11_axi_wuser = slot_11_axi_wuser ;
     assign m_slot_11_axi_wstrb = slot_11_axi_wstrb ;
     assign m_slot_11_axi_wlast = slot_11_axi_wlast ;
     assign m_slot_11_axi_wvalid = slot_11_axi_wvalid ;
     assign m_slot_11_axi_wready = slot_11_axi_wready ;
     assign m_slot_11_axi_bid = slot_11_axi_bid ;
     assign m_slot_11_axi_bresp = slot_11_axi_bresp ;
     assign m_slot_11_axi_bvalid = slot_11_axi_bvalid ;
     assign m_slot_11_axi_buser = slot_11_axi_buser ;
     assign m_slot_11_axi_bready = slot_11_axi_bready ;
     assign m_slot_11_axi_arid = slot_11_axi_arid ;
     assign m_slot_11_axi_araddr = slot_11_axi_araddr ;
     assign m_slot_11_axi_arlen = slot_11_axi_arlen ;
     assign m_slot_11_axi_arsize = slot_11_axi_arsize ;
     assign m_slot_11_axi_arburst = slot_11_axi_arburst ;
     assign m_slot_11_axi_arcache = slot_11_axi_arcache ;
     assign m_slot_11_axi_arprot = slot_11_axi_arprot ;
     assign m_slot_11_axi_arlock = slot_11_axi_arlock ;
     assign m_slot_11_axi_arvalid = slot_11_axi_arvalid ;
     assign m_slot_11_axi_arready = slot_11_axi_arready ;
     assign m_slot_11_axi_aruser = slot_11_axi_aruser ;
     assign m_slot_11_axi_rid = slot_11_axi_rid ;
     assign m_slot_11_axi_rdata = slot_11_axi_rdata ;
     assign m_slot_11_axi_rresp = slot_11_axi_rresp ;
     assign m_slot_11_axi_rlast = slot_11_axi_rlast ;
     assign m_slot_11_axi_rvalid = slot_11_axi_rvalid ;
     assign m_slot_11_axi_rready = slot_11_axi_rready ;
     assign m_slot_11_axi_ruser = slot_11_axi_ruser ;
     assign m_slot_11_axi_awqos = slot_11_axi_awqos ;
     assign m_slot_11_axi_awregion = slot_11_axi_awregion ;
     assign m_slot_11_axi_arqos = slot_11_axi_arqos ;
     assign m_slot_11_axi_arregion = slot_11_axi_arregion ;
     assign m_slot_11_axi_wid = slot_11_axi_wid ;


    
    
generate
if (C_NUM_MONITOR_SLOTS > 0 && C_SLOT_0_TXN_CNTR_EN == 1) begin:SLOT_0

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_0_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_0_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_0_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_0_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_0_axi_awid),
          .bid(slot_0_axi_bid),
          .arid(slot_0_axi_arid),
          .rid(slot_0_axi_rid),
          .awvalid(slot_0_axi_awvalid),
          .awready(slot_0_axi_awready),
          .bvalid(slot_0_axi_bvalid),
          .bready(slot_0_axi_bready),   
          .arvalid(slot_0_axi_arvalid),
          .arready(slot_0_axi_arready),
          .rvalid(slot_0_axi_rvalid),
          .rready(slot_0_axi_rready),
          .rlast(slot_0_axi_rlast), 
          .aw_cntr_out(m_slot_0_axi_aw_cnt),
          .ar_cntr_out(m_slot_0_axi_ar_cnt), 
          .b_cntr_out(m_slot_0_axi_b_cnt),
          .r_cntr_out(m_slot_0_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 1 && C_SLOT_1_TXN_CNTR_EN == 1) begin:SLOT_1

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_1_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_1_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_1_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_1_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_1_axi_awid),
          .bid(slot_1_axi_bid),
          .arid(slot_1_axi_arid),
          .rid(slot_1_axi_rid),
          .awvalid(slot_1_axi_awvalid),
          .awready(slot_1_axi_awready),
          .bvalid(slot_1_axi_bvalid),
          .bready(slot_1_axi_bready),   
          .arvalid(slot_1_axi_arvalid),
          .arready(slot_1_axi_arready),
          .rvalid(slot_1_axi_rvalid),
          .rready(slot_1_axi_rready),
          .rlast(slot_1_axi_rlast), 
          .aw_cntr_out(m_slot_1_axi_aw_cnt),
          .ar_cntr_out(m_slot_1_axi_ar_cnt), 
          .b_cntr_out(m_slot_1_axi_b_cnt),
          .r_cntr_out(m_slot_1_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 2 && C_SLOT_2_TXN_CNTR_EN == 1) begin:SLOT_2

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_2_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_2_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_2_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_2_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_2_axi_awid),
          .bid(slot_2_axi_bid),
          .arid(slot_2_axi_arid),
          .rid(slot_2_axi_rid),
          .awvalid(slot_2_axi_awvalid),
          .awready(slot_2_axi_awready),
          .bvalid(slot_2_axi_bvalid),
          .bready(slot_2_axi_bready),   
          .arvalid(slot_2_axi_arvalid),
          .arready(slot_2_axi_arready),
          .rvalid(slot_2_axi_rvalid),
          .rready(slot_2_axi_rready),
          .rlast(slot_2_axi_rlast), 
          .aw_cntr_out(m_slot_2_axi_aw_cnt),
          .ar_cntr_out(m_slot_2_axi_ar_cnt), 
          .b_cntr_out(m_slot_2_axi_b_cnt),
          .r_cntr_out(m_slot_2_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 3 && C_SLOT_3_TXN_CNTR_EN == 1) begin:SLOT_3

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_3_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_3_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_3_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_3_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_3_axi_awid),
          .bid(slot_3_axi_bid),
          .arid(slot_3_axi_arid),
          .rid(slot_3_axi_rid),
          .awvalid(slot_3_axi_awvalid),
          .awready(slot_3_axi_awready),
          .bvalid(slot_3_axi_bvalid),
          .bready(slot_3_axi_bready),   
          .arvalid(slot_3_axi_arvalid),
          .arready(slot_3_axi_arready),
          .rvalid(slot_3_axi_rvalid),
          .rready(slot_3_axi_rready),
          .rlast(slot_3_axi_rlast), 
          .aw_cntr_out(m_slot_3_axi_aw_cnt),
          .ar_cntr_out(m_slot_3_axi_ar_cnt), 
          .b_cntr_out(m_slot_3_axi_b_cnt),
          .r_cntr_out(m_slot_3_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 4 && C_SLOT_4_TXN_CNTR_EN == 1) begin:SLOT_4

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_4_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_4_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_4_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_4_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_4_axi_awid),
          .bid(slot_4_axi_bid),
          .arid(slot_4_axi_arid),
          .rid(slot_4_axi_rid),
          .awvalid(slot_4_axi_awvalid),
          .awready(slot_4_axi_awready),
          .bvalid(slot_4_axi_bvalid),
          .bready(slot_4_axi_bready),   
          .arvalid(slot_4_axi_arvalid),
          .arready(slot_4_axi_arready),
          .rvalid(slot_4_axi_rvalid),
          .rready(slot_4_axi_rready),
          .rlast(slot_4_axi_rlast), 
          .aw_cntr_out(m_slot_4_axi_aw_cnt),
          .ar_cntr_out(m_slot_4_axi_ar_cnt), 
          .b_cntr_out(m_slot_4_axi_b_cnt),
          .r_cntr_out(m_slot_4_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 5 && C_SLOT_5_TXN_CNTR_EN == 1) begin:SLOT_5

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_5_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_5_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_5_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_5_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_5_axi_awid),
          .bid(slot_5_axi_bid),
          .arid(slot_5_axi_arid),
          .rid(slot_5_axi_rid),
          .awvalid(slot_5_axi_awvalid),
          .awready(slot_5_axi_awready),
          .bvalid(slot_5_axi_bvalid),
          .bready(slot_5_axi_bready),   
          .arvalid(slot_5_axi_arvalid),
          .arready(slot_5_axi_arready),
          .rvalid(slot_5_axi_rvalid),
          .rready(slot_5_axi_rready),
          .rlast(slot_5_axi_rlast), 
          .aw_cntr_out(m_slot_5_axi_aw_cnt),
          .ar_cntr_out(m_slot_5_axi_ar_cnt), 
          .b_cntr_out(m_slot_5_axi_b_cnt),
          .r_cntr_out(m_slot_5_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 6 && C_SLOT_6_TXN_CNTR_EN == 1) begin:SLOT_6

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_6_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_6_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_6_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_6_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_6_axi_awid),
          .bid(slot_6_axi_bid),
          .arid(slot_6_axi_arid),
          .rid(slot_6_axi_rid),
          .awvalid(slot_6_axi_awvalid),
          .awready(slot_6_axi_awready),
          .bvalid(slot_6_axi_bvalid),
          .bready(slot_6_axi_bready),   
          .arvalid(slot_6_axi_arvalid),
          .arready(slot_6_axi_arready),
          .rvalid(slot_6_axi_rvalid),
          .rready(slot_6_axi_rready),
          .rlast(slot_6_axi_rlast), 
          .aw_cntr_out(m_slot_6_axi_aw_cnt),
          .ar_cntr_out(m_slot_6_axi_ar_cnt), 
          .b_cntr_out(m_slot_6_axi_b_cnt),
          .r_cntr_out(m_slot_6_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 7 && C_SLOT_7_TXN_CNTR_EN == 1) begin:SLOT_7

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_7_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_7_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_7_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_7_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_7_axi_awid),
          .bid(slot_7_axi_bid),
          .arid(slot_7_axi_arid),
          .rid(slot_7_axi_rid),
          .awvalid(slot_7_axi_awvalid),
          .awready(slot_7_axi_awready),
          .bvalid(slot_7_axi_bvalid),
          .bready(slot_7_axi_bready),   
          .arvalid(slot_7_axi_arvalid),
          .arready(slot_7_axi_arready),
          .rvalid(slot_7_axi_rvalid),
          .rready(slot_7_axi_rready),
          .rlast(slot_7_axi_rlast), 
          .aw_cntr_out(m_slot_7_axi_aw_cnt),
          .ar_cntr_out(m_slot_7_axi_ar_cnt), 
          .b_cntr_out(m_slot_7_axi_b_cnt),
          .r_cntr_out(m_slot_7_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 8 && C_SLOT_8_TXN_CNTR_EN == 1) begin:SLOT_8

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_8_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_8_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_8_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_8_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_8_axi_awid),
          .bid(slot_8_axi_bid),
          .arid(slot_8_axi_arid),
          .rid(slot_8_axi_rid),
          .awvalid(slot_8_axi_awvalid),
          .awready(slot_8_axi_awready),
          .bvalid(slot_8_axi_bvalid),
          .bready(slot_8_axi_bready),   
          .arvalid(slot_8_axi_arvalid),
          .arready(slot_8_axi_arready),
          .rvalid(slot_8_axi_rvalid),
          .rready(slot_8_axi_rready),
          .rlast(slot_8_axi_rlast), 
          .aw_cntr_out(m_slot_8_axi_aw_cnt),
          .ar_cntr_out(m_slot_8_axi_ar_cnt), 
          .b_cntr_out(m_slot_8_axi_b_cnt),
          .r_cntr_out(m_slot_8_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 9 && C_SLOT_9_TXN_CNTR_EN == 1) begin:SLOT_9

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_9_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_9_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_9_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_9_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_9_axi_awid),
          .bid(slot_9_axi_bid),
          .arid(slot_9_axi_arid),
          .rid(slot_9_axi_rid),
          .awvalid(slot_9_axi_awvalid),
          .awready(slot_9_axi_awready),
          .bvalid(slot_9_axi_bvalid),
          .bready(slot_9_axi_bready),   
          .arvalid(slot_9_axi_arvalid),
          .arready(slot_9_axi_arready),
          .rvalid(slot_9_axi_rvalid),
          .rready(slot_9_axi_rready),
          .rlast(slot_9_axi_rlast), 
          .aw_cntr_out(m_slot_9_axi_aw_cnt),
          .ar_cntr_out(m_slot_9_axi_ar_cnt), 
          .b_cntr_out(m_slot_9_axi_b_cnt),
          .r_cntr_out(m_slot_9_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 10 && C_SLOT_10_TXN_CNTR_EN == 1) begin:SLOT_10

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_10_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_10_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_10_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_10_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_10_axi_awid),
          .bid(slot_10_axi_bid),
          .arid(slot_10_axi_arid),
          .rid(slot_10_axi_rid),
          .awvalid(slot_10_axi_awvalid),
          .awready(slot_10_axi_awready),
          .bvalid(slot_10_axi_bvalid),
          .bready(slot_10_axi_bready),   
          .arvalid(slot_10_axi_arvalid),
          .arready(slot_10_axi_arready),
          .rvalid(slot_10_axi_rvalid),
          .rready(slot_10_axi_rready),
          .rlast(slot_10_axi_rlast), 
          .aw_cntr_out(m_slot_10_axi_aw_cnt),
          .ar_cntr_out(m_slot_10_axi_ar_cnt), 
          .b_cntr_out(m_slot_10_axi_b_cnt),
          .r_cntr_out(m_slot_10_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 11 && C_SLOT_11_TXN_CNTR_EN == 1) begin:SLOT_11

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_11_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_11_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_11_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_11_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_11_axi_awid),
          .bid(slot_11_axi_bid),
          .arid(slot_11_axi_arid),
          .rid(slot_11_axi_rid),
          .awvalid(slot_11_axi_awvalid),
          .awready(slot_11_axi_awready),
          .bvalid(slot_11_axi_bvalid),
          .bready(slot_11_axi_bready),   
          .arvalid(slot_11_axi_arvalid),
          .arready(slot_11_axi_arready),
          .rvalid(slot_11_axi_rvalid),
          .rready(slot_11_axi_rready),
          .rlast(slot_11_axi_rlast), 
          .aw_cntr_out(m_slot_11_axi_aw_cnt),
          .ar_cntr_out(m_slot_11_axi_ar_cnt), 
          .b_cntr_out(m_slot_11_axi_b_cnt),
          .r_cntr_out(m_slot_11_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 12 && C_SLOT_12_TXN_CNTR_EN == 1) begin:SLOT_12

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_12_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_12_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_12_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_12_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_12_axi_awid),
          .bid(slot_12_axi_bid),
          .arid(slot_12_axi_arid),
          .rid(slot_12_axi_rid),
          .awvalid(slot_12_axi_awvalid),
          .awready(slot_12_axi_awready),
          .bvalid(slot_12_axi_bvalid),
          .bready(slot_12_axi_bready),   
          .arvalid(slot_12_axi_arvalid),
          .arready(slot_12_axi_arready),
          .rvalid(slot_12_axi_rvalid),
          .rready(slot_12_axi_rready),
          .rlast(slot_12_axi_rlast), 
          .aw_cntr_out(m_slot_12_axi_aw_cnt),
          .ar_cntr_out(m_slot_12_axi_ar_cnt), 
          .b_cntr_out(m_slot_12_axi_b_cnt),
          .r_cntr_out(m_slot_12_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 13 && C_SLOT_13_TXN_CNTR_EN == 1) begin:SLOT_13

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_13_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_13_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_13_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_13_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_13_axi_awid),
          .bid(slot_13_axi_bid),
          .arid(slot_13_axi_arid),
          .rid(slot_13_axi_rid),
          .awvalid(slot_13_axi_awvalid),
          .awready(slot_13_axi_awready),
          .bvalid(slot_13_axi_bvalid),
          .bready(slot_13_axi_bready),   
          .arvalid(slot_13_axi_arvalid),
          .arready(slot_13_axi_arready),
          .rvalid(slot_13_axi_rvalid),
          .rready(slot_13_axi_rready),
          .rlast(slot_13_axi_rlast), 
          .aw_cntr_out(m_slot_13_axi_aw_cnt),
          .ar_cntr_out(m_slot_13_axi_ar_cnt), 
          .b_cntr_out(m_slot_13_axi_b_cnt),
          .r_cntr_out(m_slot_13_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 14 && C_SLOT_14_TXN_CNTR_EN == 1) begin:SLOT_14

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_14_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_14_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_14_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_14_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_14_axi_awid),
          .bid(slot_14_axi_bid),
          .arid(slot_14_axi_arid),
          .rid(slot_14_axi_rid),
          .awvalid(slot_14_axi_awvalid),
          .awready(slot_14_axi_awready),
          .bvalid(slot_14_axi_bvalid),
          .bready(slot_14_axi_bready),   
          .arvalid(slot_14_axi_arvalid),
          .arready(slot_14_axi_arready),
          .rvalid(slot_14_axi_rvalid),
          .rready(slot_14_axi_rready),
          .rlast(slot_14_axi_rlast), 
          .aw_cntr_out(m_slot_14_axi_aw_cnt),
          .ar_cntr_out(m_slot_14_axi_ar_cnt), 
          .b_cntr_out(m_slot_14_axi_b_cnt),
          .r_cntr_out(m_slot_14_axi_r_cnt)          
          
          );
end
endgenerate
generate
if (C_NUM_MONITOR_SLOTS > 15 && C_SLOT_15_TXN_CNTR_EN == 1) begin:SLOT_15

    
    gigantic_mux_v1_0_1_cntr # ( .PROTOCOL(C_SLOT_15_AXI_PROTOCOL),
           .C_ID_WIDTH (C_SLOT_15_AXI_ID_WIDTH),
           .C_WR_CNT_WIDTH (C_SLOT_15_MAX_WR_BURSTS),
           .C_RD_CNT_WIDTH (C_SLOT_15_MAX_RD_BURSTS)
          ) inst_slot0 (
          .clk(aclk),
          .aresetn(aresetn),
          .awid(slot_15_axi_awid),
          .bid(slot_15_axi_bid),
          .arid(slot_15_axi_arid),
          .rid(slot_15_axi_rid),
          .awvalid(slot_15_axi_awvalid),
          .awready(slot_15_axi_awready),
          .bvalid(slot_15_axi_bvalid),
          .bready(slot_15_axi_bready),   
          .arvalid(slot_15_axi_arvalid),
          .arready(slot_15_axi_arready),
          .rvalid(slot_15_axi_rvalid),
          .rready(slot_15_axi_rready),
          .rlast(slot_15_axi_rlast), 
          .aw_cntr_out(m_slot_15_axi_aw_cnt),
          .ar_cntr_out(m_slot_15_axi_ar_cnt), 
          .b_cntr_out(m_slot_15_axi_b_cnt),
          .r_cntr_out(m_slot_15_axi_r_cnt)          
          
          );
end
endgenerate

endmodule


