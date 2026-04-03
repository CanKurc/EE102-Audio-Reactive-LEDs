-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:54:14 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/seven_segment_display/ip/seven_segment_display_binary_input_to_7_se_0_0/seven_segment_display_binary_input_to_7_se_0_0_sim_netlist.vhdl
-- Design      : seven_segment_display_binary_input_to_7_se_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_segment_display_binary_input_to_7_se_0_0_binary_input_to_7_segment_display is
  port (
    seg_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    bcd_in : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of seven_segment_display_binary_input_to_7_se_0_0_binary_input_to_7_segment_display : entity is "binary_input_to_7_segment_display";
end seven_segment_display_binary_input_to_7_se_0_0_binary_input_to_7_segment_display;

architecture STRUCTURE of seven_segment_display_binary_input_to_7_se_0_0_binary_input_to_7_segment_display is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \seg_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_out[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_out[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_out[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_out[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg_out[5]_INST_0\ : label is "soft_lutpair2";
begin
\seg_out[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => bcd_in(3),
      I1 => bcd_in(2),
      I2 => bcd_in(0),
      I3 => bcd_in(1),
      O => seg_out(0)
    );
\seg_out[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => bcd_in(3),
      I1 => bcd_in(2),
      I2 => bcd_in(1),
      I3 => bcd_in(0),
      O => seg_out(1)
    );
\seg_out[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => bcd_in(3),
      I1 => bcd_in(0),
      I2 => bcd_in(1),
      I3 => bcd_in(2),
      O => seg_out(2)
    );
\seg_out[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => bcd_in(3),
      I1 => bcd_in(2),
      I2 => bcd_in(0),
      I3 => bcd_in(1),
      O => seg_out(3)
    );
\seg_out[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => bcd_in(3),
      I1 => bcd_in(1),
      I2 => bcd_in(2),
      I3 => bcd_in(0),
      O => seg_out(4)
    );
\seg_out[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => bcd_in(3),
      I1 => bcd_in(2),
      I2 => bcd_in(0),
      I3 => bcd_in(1),
      O => seg_out(5)
    );
\seg_out[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => bcd_in(3),
      I1 => bcd_in(0),
      I2 => bcd_in(2),
      I3 => bcd_in(1),
      O => seg_out(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_segment_display_binary_input_to_7_se_0_0 is
  port (
    bcd_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_out : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of seven_segment_display_binary_input_to_7_se_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of seven_segment_display_binary_input_to_7_se_0_0 : entity is "seven_segment_display_binary_input_to_7_se_0_0,binary_input_to_7_segment_display,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of seven_segment_display_binary_input_to_7_se_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of seven_segment_display_binary_input_to_7_se_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of seven_segment_display_binary_input_to_7_se_0_0 : entity is "binary_input_to_7_segment_display,Vivado 2025.2";
end seven_segment_display_binary_input_to_7_se_0_0;

architecture STRUCTURE of seven_segment_display_binary_input_to_7_se_0_0 is
begin
inst: entity work.seven_segment_display_binary_input_to_7_se_0_0_binary_input_to_7_segment_display
     port map (
      bcd_in(3 downto 0) => bcd_in(3 downto 0),
      seg_out(6 downto 0) => seg_out(6 downto 0)
    );
end STRUCTURE;
