// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Mar 14 16:13:28 2025
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/bryan/Documents/bryan_files_echo_with_dram_static/projects/static_delay_100-ui-ie-flat-dd/root.gen/sources_1/bd/dual_delay/ip/dual_delay_mux4to1_0_0/dual_delay_mux4to1_0_0_sim_netlist.v
// Design      : dual_delay_mux4to1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dual_delay_mux4to1_0_0,mux4to1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mux4to1,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module dual_delay_mux4to1_0_0
   (clk,
    reset,
    btn1,
    btn2,
    btn3,
    btn4,
    srca1,
    srca2,
    srca3,
    srca4,
    srcb1,
    srcb2,
    srcb3,
    srcb4,
    srcc1,
    srcc2,
    srcc3,
    srcc4,
    srcd1,
    srcd2,
    srcd3,
    srcd4,
    mux_out1,
    mux_out2,
    mux_out3,
    mux_out4);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50347222, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input btn1;
  input btn2;
  input btn3;
  input btn4;
  input srca1;
  input srca2;
  input srca3;
  input srca4;
  input srcb1;
  input srcb2;
  input srcb3;
  input srcb4;
  input srcc1;
  input srcc2;
  input srcc3;
  input srcc4;
  input srcd1;
  input srcd2;
  input srcd3;
  input srcd4;
  output mux_out1;
  output mux_out2;
  output mux_out3;
  output mux_out4;

  wire btn1;
  wire btn2;
  wire btn3;
  wire btn4;
  wire clk;
  wire mux_out1;
  wire mux_out2;
  wire mux_out3;
  wire mux_out4;
  wire reset;
  wire srca1;
  wire srca2;
  wire srca3;
  wire srca4;
  wire srcb1;
  wire srcb2;
  wire srcb3;
  wire srcb4;
  wire srcc1;
  wire srcc2;
  wire srcc3;
  wire srcc4;
  wire srcd1;
  wire srcd2;
  wire srcd3;
  wire srcd4;

  dual_delay_mux4to1_0_0_mux4to1 U0
       (.btn1(btn1),
        .btn2(btn2),
        .btn3(btn3),
        .btn4(btn4),
        .clk(clk),
        .mux_out1(mux_out1),
        .mux_out2(mux_out2),
        .mux_out3(mux_out3),
        .mux_out4(mux_out4),
        .reset(reset),
        .srca1(srca1),
        .srca2(srca2),
        .srca3(srca3),
        .srca4(srca4),
        .srcb1(srcb1),
        .srcb2(srcb2),
        .srcb3(srcb3),
        .srcb4(srcb4),
        .srcc1(srcc1),
        .srcc2(srcc2),
        .srcc3(srcc3),
        .srcc4(srcc4),
        .srcd1(srcd1),
        .srcd2(srcd2),
        .srcd3(srcd3),
        .srcd4(srcd4));
endmodule

(* ORIG_REF_NAME = "mux4to1" *) 
module dual_delay_mux4to1_0_0_mux4to1
   (mux_out1,
    mux_out2,
    mux_out3,
    mux_out4,
    clk,
    reset,
    srca4,
    srca3,
    srca2,
    srca1,
    btn2,
    btn1,
    srcb4,
    srcb3,
    srcb2,
    srcb1,
    btn4,
    srcd1,
    btn3,
    srcc1,
    srcd2,
    srcc2,
    srcd3,
    srcc3,
    srcd4,
    srcc4);
  output mux_out1;
  output mux_out2;
  output mux_out3;
  output mux_out4;
  input clk;
  input reset;
  input srca4;
  input srca3;
  input srca2;
  input srca1;
  input btn2;
  input btn1;
  input srcb4;
  input srcb3;
  input srcb2;
  input srcb1;
  input btn4;
  input srcd1;
  input btn3;
  input srcc1;
  input srcd2;
  input srcc2;
  input srcd3;
  input srcc3;
  input srcd4;
  input srcc4;

  wire btn1;
  wire btn2;
  wire btn3;
  wire btn4;
  wire clk;
  wire mux_out1;
  wire mux_out10;
  wire mux_out1_C_i_2_n_0;
  wire mux_out1_reg_C_n_0;
  wire mux_out1_reg_LDC_i_1_n_0;
  wire mux_out1_reg_LDC_i_2_n_0;
  wire mux_out1_reg_LDC_n_0;
  wire mux_out1_reg_P_n_0;
  wire mux_out2;
  wire mux_out20;
  wire mux_out2_C_i_2_n_0;
  wire mux_out2_reg_C_n_0;
  wire mux_out2_reg_LDC_i_1_n_0;
  wire mux_out2_reg_LDC_i_2_n_0;
  wire mux_out2_reg_LDC_n_0;
  wire mux_out2_reg_P_n_0;
  wire mux_out3;
  wire mux_out30;
  wire mux_out3_C_i_2_n_0;
  wire mux_out3_reg_C_n_0;
  wire mux_out3_reg_LDC_i_1_n_0;
  wire mux_out3_reg_LDC_i_2_n_0;
  wire mux_out3_reg_LDC_n_0;
  wire mux_out3_reg_P_n_0;
  wire mux_out4;
  wire mux_out40;
  wire mux_out4_C_i_2_n_0;
  wire mux_out4_reg_C_n_0;
  wire mux_out4_reg_LDC_i_1_n_0;
  wire mux_out4_reg_LDC_i_2_n_0;
  wire mux_out4_reg_LDC_n_0;
  wire mux_out4_reg_P_n_0;
  wire reset;
  wire srca1;
  wire srca2;
  wire srca3;
  wire srca4;
  wire srcb1;
  wire srcb2;
  wire srcb3;
  wire srcb4;
  wire srcc1;
  wire srcc2;
  wire srcc3;
  wire srcc4;
  wire srcd1;
  wire srcd2;
  wire srcd3;
  wire srcd4;

  LUT5 #(
    .INIT(32'hFEF20E02)) 
    mux_out1_C_i_1
       (.I0(mux_out1_C_i_2_n_0),
        .I1(btn2),
        .I2(btn1),
        .I3(srcb1),
        .I4(srca1),
        .O(mux_out10));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mux_out1_C_i_2
       (.I0(btn4),
        .I1(srcd1),
        .I2(srca1),
        .I3(btn3),
        .I4(srcc1),
        .O(mux_out1_C_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mux_out1_INST_0
       (.I0(mux_out1_reg_P_n_0),
        .I1(mux_out1_reg_LDC_n_0),
        .I2(mux_out1_reg_C_n_0),
        .O(mux_out1));
  FDCE mux_out1_reg_C
       (.C(clk),
        .CE(1'b1),
        .CLR(mux_out1_reg_LDC_i_2_n_0),
        .D(mux_out10),
        .Q(mux_out1_reg_C_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    mux_out1_reg_LDC
       (.CLR(mux_out1_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(mux_out1_reg_LDC_i_1_n_0),
        .GE(1'b1),
        .Q(mux_out1_reg_LDC_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mux_out1_reg_LDC_i_1
       (.I0(reset),
        .I1(srca1),
        .O(mux_out1_reg_LDC_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mux_out1_reg_LDC_i_2
       (.I0(reset),
        .I1(srca1),
        .O(mux_out1_reg_LDC_i_2_n_0));
  FDPE mux_out1_reg_P
       (.C(clk),
        .CE(1'b1),
        .D(mux_out10),
        .PRE(mux_out1_reg_LDC_i_1_n_0),
        .Q(mux_out1_reg_P_n_0));
  LUT5 #(
    .INIT(32'hFEF20E02)) 
    mux_out2_C_i_1
       (.I0(mux_out2_C_i_2_n_0),
        .I1(btn2),
        .I2(btn1),
        .I3(srcb2),
        .I4(srca2),
        .O(mux_out20));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mux_out2_C_i_2
       (.I0(btn4),
        .I1(srcd2),
        .I2(srca2),
        .I3(btn3),
        .I4(srcc2),
        .O(mux_out2_C_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mux_out2_INST_0
       (.I0(mux_out2_reg_P_n_0),
        .I1(mux_out2_reg_LDC_n_0),
        .I2(mux_out2_reg_C_n_0),
        .O(mux_out2));
  FDCE mux_out2_reg_C
       (.C(clk),
        .CE(1'b1),
        .CLR(mux_out2_reg_LDC_i_2_n_0),
        .D(mux_out20),
        .Q(mux_out2_reg_C_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    mux_out2_reg_LDC
       (.CLR(mux_out2_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(mux_out2_reg_LDC_i_1_n_0),
        .GE(1'b1),
        .Q(mux_out2_reg_LDC_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mux_out2_reg_LDC_i_1
       (.I0(reset),
        .I1(srca2),
        .O(mux_out2_reg_LDC_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mux_out2_reg_LDC_i_2
       (.I0(reset),
        .I1(srca2),
        .O(mux_out2_reg_LDC_i_2_n_0));
  FDPE mux_out2_reg_P
       (.C(clk),
        .CE(1'b1),
        .D(mux_out20),
        .PRE(mux_out2_reg_LDC_i_1_n_0),
        .Q(mux_out2_reg_P_n_0));
  LUT5 #(
    .INIT(32'hFEF20E02)) 
    mux_out3_C_i_1
       (.I0(mux_out3_C_i_2_n_0),
        .I1(btn2),
        .I2(btn1),
        .I3(srcb3),
        .I4(srca3),
        .O(mux_out30));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mux_out3_C_i_2
       (.I0(btn4),
        .I1(srcd3),
        .I2(srca3),
        .I3(btn3),
        .I4(srcc3),
        .O(mux_out3_C_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mux_out3_INST_0
       (.I0(mux_out3_reg_P_n_0),
        .I1(mux_out3_reg_LDC_n_0),
        .I2(mux_out3_reg_C_n_0),
        .O(mux_out3));
  FDCE mux_out3_reg_C
       (.C(clk),
        .CE(1'b1),
        .CLR(mux_out3_reg_LDC_i_2_n_0),
        .D(mux_out30),
        .Q(mux_out3_reg_C_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    mux_out3_reg_LDC
       (.CLR(mux_out3_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(mux_out3_reg_LDC_i_1_n_0),
        .GE(1'b1),
        .Q(mux_out3_reg_LDC_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mux_out3_reg_LDC_i_1
       (.I0(reset),
        .I1(srca3),
        .O(mux_out3_reg_LDC_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mux_out3_reg_LDC_i_2
       (.I0(reset),
        .I1(srca3),
        .O(mux_out3_reg_LDC_i_2_n_0));
  FDPE mux_out3_reg_P
       (.C(clk),
        .CE(1'b1),
        .D(mux_out30),
        .PRE(mux_out3_reg_LDC_i_1_n_0),
        .Q(mux_out3_reg_P_n_0));
  LUT5 #(
    .INIT(32'hFEF20E02)) 
    mux_out4_C_i_1
       (.I0(mux_out4_C_i_2_n_0),
        .I1(btn2),
        .I2(btn1),
        .I3(srcb4),
        .I4(srca4),
        .O(mux_out40));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    mux_out4_C_i_2
       (.I0(btn4),
        .I1(srcd4),
        .I2(srca4),
        .I3(btn3),
        .I4(srcc4),
        .O(mux_out4_C_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    mux_out4_INST_0
       (.I0(mux_out4_reg_P_n_0),
        .I1(mux_out4_reg_LDC_n_0),
        .I2(mux_out4_reg_C_n_0),
        .O(mux_out4));
  FDCE mux_out4_reg_C
       (.C(clk),
        .CE(1'b1),
        .CLR(mux_out4_reg_LDC_i_2_n_0),
        .D(mux_out40),
        .Q(mux_out4_reg_C_n_0));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    mux_out4_reg_LDC
       (.CLR(mux_out4_reg_LDC_i_2_n_0),
        .D(1'b1),
        .G(mux_out4_reg_LDC_i_1_n_0),
        .GE(1'b1),
        .Q(mux_out4_reg_LDC_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mux_out4_reg_LDC_i_1
       (.I0(reset),
        .I1(srca4),
        .O(mux_out4_reg_LDC_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mux_out4_reg_LDC_i_2
       (.I0(reset),
        .I1(srca4),
        .O(mux_out4_reg_LDC_i_2_n_0));
  FDPE mux_out4_reg_P
       (.C(clk),
        .CE(1'b1),
        .D(mux_out40),
        .PRE(mux_out4_reg_LDC_i_1_n_0),
        .Q(mux_out4_reg_P_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
