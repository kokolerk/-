// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Nov  6 14:58:03 2020
// Host        : DESKTOP-I9MEUQ1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/dell/choseOfMux/choseOfMux.srcs/sources_1/ip/mux8_0/mux8_0_stub.v
// Design      : mux8_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mux8,Vivado 2018.3" *)
module mux8_0(s2, s1, s0, i7, i6, i5, i4, i3, i2, i1, i0, f)
/* synthesis syn_black_box black_box_pad_pin="s2,s1,s0,i7,i6,i5,i4,i3,i2,i1,i0,f" */;
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
endmodule
