-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:51:45 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/seven_segment_display/ip/seven_segment_display_anode_decoder_0_0/seven_segment_display_anode_decoder_0_0_sim_netlist.vhdl
-- Design      : seven_segment_display_anode_decoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_segment_display_anode_decoder_0_0_anode_decoder is
  port (
    an : out STD_LOGIC_VECTOR ( 1 downto 0 );
    digit_select : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of seven_segment_display_anode_decoder_0_0_anode_decoder : entity is "anode_decoder";
end seven_segment_display_anode_decoder_0_0_anode_decoder;

architecture STRUCTURE of seven_segment_display_anode_decoder_0_0_anode_decoder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \an[3]_INST_0\ : label is "soft_lutpair0";
begin
\an[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => digit_select(0),
      I1 => digit_select(1),
      O => an(0)
    );
\an[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => digit_select(0),
      I1 => digit_select(1),
      O => an(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_segment_display_anode_decoder_0_0 is
  port (
    digit_select : in STD_LOGIC_VECTOR ( 1 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of seven_segment_display_anode_decoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of seven_segment_display_anode_decoder_0_0 : entity is "seven_segment_display_anode_decoder_0_0,anode_decoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of seven_segment_display_anode_decoder_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of seven_segment_display_anode_decoder_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of seven_segment_display_anode_decoder_0_0 : entity is "anode_decoder,Vivado 2025.2";
end seven_segment_display_anode_decoder_0_0;

architecture STRUCTURE of seven_segment_display_anode_decoder_0_0 is
begin
\an[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit_select(1),
      I1 => digit_select(0),
      O => an(1)
    );
\an[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit_select(0),
      I1 => digit_select(1),
      O => an(2)
    );
inst: entity work.seven_segment_display_anode_decoder_0_0_anode_decoder
     port map (
      an(1) => an(3),
      an(0) => an(0),
      digit_select(1 downto 0) => digit_select(1 downto 0)
    );
end STRUCTURE;
