-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:53:20 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/seven_segment_display/ip/seven_segment_display_mux_4to1_0_0/seven_segment_display_mux_4to1_0_0_sim_netlist.vhdl
-- Design      : seven_segment_display_mux_4to1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_segment_display_mux_4to1_0_0_mux_4to1 is
  port (
    digit_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    digit_select : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of seven_segment_display_mux_4to1_0_0_mux_4to1 : entity is "mux_4to1";
end seven_segment_display_mux_4to1_0_0_mux_4to1;

architecture STRUCTURE of seven_segment_display_mux_4to1_0_0_mux_4to1 is
begin
\digit_out[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => sw(4),
      I1 => sw(0),
      I2 => sw(12),
      I3 => digit_select(1),
      I4 => digit_select(0),
      I5 => sw(8),
      O => digit_out(0)
    );
\digit_out[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => sw(5),
      I1 => sw(1),
      I2 => sw(13),
      I3 => digit_select(1),
      I4 => digit_select(0),
      I5 => sw(9),
      O => digit_out(1)
    );
\digit_out[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => sw(6),
      I1 => sw(2),
      I2 => sw(14),
      I3 => digit_select(1),
      I4 => digit_select(0),
      I5 => sw(10),
      O => digit_out(2)
    );
\digit_out[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => sw(7),
      I1 => sw(3),
      I2 => sw(15),
      I3 => digit_select(1),
      I4 => digit_select(0),
      I5 => sw(11),
      O => digit_out(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_segment_display_mux_4to1_0_0 is
  port (
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    digit_select : in STD_LOGIC_VECTOR ( 1 downto 0 );
    digit_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of seven_segment_display_mux_4to1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of seven_segment_display_mux_4to1_0_0 : entity is "seven_segment_display_mux_4to1_0_0,mux_4to1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of seven_segment_display_mux_4to1_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of seven_segment_display_mux_4to1_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of seven_segment_display_mux_4to1_0_0 : entity is "mux_4to1,Vivado 2025.2";
end seven_segment_display_mux_4to1_0_0;

architecture STRUCTURE of seven_segment_display_mux_4to1_0_0 is
begin
inst: entity work.seven_segment_display_mux_4to1_0_0_mux_4to1
     port map (
      digit_out(3 downto 0) => digit_out(3 downto 0),
      digit_select(1 downto 0) => digit_select(1 downto 0),
      sw(15 downto 0) => sw(15 downto 0)
    );
end STRUCTURE;
