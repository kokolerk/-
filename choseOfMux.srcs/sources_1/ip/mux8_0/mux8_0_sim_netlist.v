// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Nov  6 14:58:03 2020
// Host        : DESKTOP-I9MEUQ1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dell/choseOfMux/choseOfMux.srcs/sources_1/ip/mux8_0/mux8_0_sim_netlist.v
// Design      : mux8_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mux8_0,mux8,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "mux8,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mux8_0
   (s2,
    s1,
    s0,
    i7,
    i6,
    i5,
    i4,
    i3,
    i2,
    i1,
    i0,
    f);
  input s2;
  input s1;
  input s0;
  input i7;
  input i6;
  input i5;
  input i4;
  input i3;
  input i2;
  input i1;
  input i0;
  output f;

  wire f;
  wire i0;
  wire i1;
  wire i2;
  wire i3;
  wire i4;
  wire i5;
  wire i6;
  wire i7;
  wire s0;
  wire s1;
  wire s2;

  mux8_0_mux8 inst
       (.f(f),
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .i4(i4),
        .i5(i5),
        .i6(i6),
        .i7(i7),
        .s0(s0),
        .s1(s1),
        .s2(s2));
endmodule

(* ORIG_REF_NAME = "mux8" *) 
module mux8_0_mux8
   (f,
    s2,
    i3,
    i2,
    s1,
    i1,
    s0,
    i0,
    i7,
    i6,
    i5,
    i4);
  output f;
  input s2;
  input i3;
  input i2;
  input s1;
  input i1;
  input s0;
  input i0;
  input i7;
  input i6;
  input i5;
  input i4;

  wire f;
  wire f_INST_0_i_1_n_0;
  wire f_INST_0_i_2_n_0;
  wire i0;
  wire i1;
  wire i2;
  wire i3;
  wire i4;
  wire i5;
  wire i6;
  wire i7;
  wire s0;
  wire s1;
  wire s2;

  MUXF7 f_INST_0
       (.I0(f_INST_0_i_1_n_0),
        .I1(f_INST_0_i_2_n_0),
        .O(f),
        .S(s2));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    f_INST_0_i_1
       (.I0(i3),
        .I1(i2),
        .I2(s1),
        .I3(i1),
        .I4(s0),
        .I5(i0),
        .O(f_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    f_INST_0_i_2
       (.I0(i7),
        .I1(i6),
        .I2(s1),
        .I3(i5),
        .I4(s0),
        .I5(i4),
        .O(f_INST_0_i_2_n_0));
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
