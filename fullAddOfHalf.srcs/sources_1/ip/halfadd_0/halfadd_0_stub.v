// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Nov  6 13:25:40 2020
// Host        : DESKTOP-I9MEUQ1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/dell/fullAddOfHalf/fullAddOfHalf.srcs/sources_1/ip/halfadd_0/halfadd_0_stub.v
// Design      : halfadd_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "halfadd,Vivado 2018.3" *)
module halfadd_0(a, b, sum, cont)
/* synthesis syn_black_box black_box_pad_pin="a,b,sum,cont" */;
  input a;
  input b;
  output sum;
  output cont;
endmodule
