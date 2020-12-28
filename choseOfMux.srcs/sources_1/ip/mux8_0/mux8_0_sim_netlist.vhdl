-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Nov  6 14:58:03 2020
-- Host        : DESKTOP-I9MEUQ1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/dell/choseOfMux/choseOfMux.srcs/sources_1/ip/mux8_0/mux8_0_sim_netlist.vhdl
-- Design      : mux8_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux8_0_mux8 is
  port (
    f : out STD_LOGIC;
    s2 : in STD_LOGIC;
    i3 : in STD_LOGIC;
    i2 : in STD_LOGIC;
    s1 : in STD_LOGIC;
    i1 : in STD_LOGIC;
    s0 : in STD_LOGIC;
    i0 : in STD_LOGIC;
    i7 : in STD_LOGIC;
    i6 : in STD_LOGIC;
    i5 : in STD_LOGIC;
    i4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mux8_0_mux8 : entity is "mux8";
end mux8_0_mux8;

architecture STRUCTURE of mux8_0_mux8 is
  signal f_INST_0_i_1_n_0 : STD_LOGIC;
  signal f_INST_0_i_2_n_0 : STD_LOGIC;
begin
f_INST_0: unisim.vcomponents.MUXF7
     port map (
      I0 => f_INST_0_i_1_n_0,
      I1 => f_INST_0_i_2_n_0,
      O => f,
      S => s2
    );
f_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i3,
      I1 => i2,
      I2 => s1,
      I3 => i1,
      I4 => s0,
      I5 => i0,
      O => f_INST_0_i_1_n_0
    );
f_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => i7,
      I1 => i6,
      I2 => s1,
      I3 => i5,
      I4 => s0,
      I5 => i4,
      O => f_INST_0_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mux8_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mux8_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mux8_0 : entity is "mux8_0,mux8,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mux8_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of mux8_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mux8_0 : entity is "mux8,Vivado 2018.3";
end mux8_0;

architecture STRUCTURE of mux8_0 is
begin
inst: entity work.mux8_0_mux8
     port map (
      f => f,
      i0 => i0,
      i1 => i1,
      i2 => i2,
      i3 => i3,
      i4 => i4,
      i5 => i5,
      i6 => i6,
      i7 => i7,
      s0 => s0,
      s1 => s1,
      s2 => s2
    );
end STRUCTURE;
