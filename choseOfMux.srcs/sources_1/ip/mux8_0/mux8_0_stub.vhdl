-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Nov  6 14:58:03 2020
-- Host        : DESKTOP-I9MEUQ1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/dell/choseOfMux/choseOfMux.srcs/sources_1/ip/mux8_0/mux8_0_stub.vhdl
-- Design      : mux8_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8_0 is
  Port ( 
    s2 : in STD_LOGIC;
    s1 : in STD_LOGIC;
    s0 : in STD_LOGIC;
    i7 : in STD_LOGIC;
    i6 : in STD_LOGIC;
    i5 : in STD_LOGIC;
    i4 : in STD_LOGIC;
    i3 : in STD_LOGIC;
    i2 : in STD_LOGIC;
    i1 : in STD_LOGIC;
    i0 : in STD_LOGIC;
    f : out STD_LOGIC
  );

end mux8_0;

architecture stub of mux8_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s2,s1,s0,i7,i6,i5,i4,i3,i2,i1,i0,f";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mux8,Vivado 2018.3";
begin
end;
