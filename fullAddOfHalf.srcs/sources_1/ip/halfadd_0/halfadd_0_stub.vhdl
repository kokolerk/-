-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Nov  6 13:25:40 2020
-- Host        : DESKTOP-I9MEUQ1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/dell/fullAddOfHalf/fullAddOfHalf.srcs/sources_1/ip/halfadd_0/halfadd_0_stub.vhdl
-- Design      : halfadd_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity halfadd_0 is
  Port ( 
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    sum : out STD_LOGIC;
    cont : out STD_LOGIC
  );

end halfadd_0;

architecture stub of halfadd_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a,b,sum,cont";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "halfadd,Vivado 2018.3";
begin
end;
