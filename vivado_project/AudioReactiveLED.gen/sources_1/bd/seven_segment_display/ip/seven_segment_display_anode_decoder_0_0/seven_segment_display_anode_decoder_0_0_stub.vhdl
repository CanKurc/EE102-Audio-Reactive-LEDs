-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:51:45 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/seven_segment_display/ip/seven_segment_display_anode_decoder_0_0/seven_segment_display_anode_decoder_0_0_stub.vhdl
-- Design      : seven_segment_display_anode_decoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seven_segment_display_anode_decoder_0_0 is
  Port ( 
    digit_select : in STD_LOGIC_VECTOR ( 1 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of seven_segment_display_anode_decoder_0_0 : entity is "seven_segment_display_anode_decoder_0_0,anode_decoder,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of seven_segment_display_anode_decoder_0_0 : entity is "seven_segment_display_anode_decoder_0_0,anode_decoder,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=anode_decoder,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of seven_segment_display_anode_decoder_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of seven_segment_display_anode_decoder_0_0 : entity is "module_ref";
end seven_segment_display_anode_decoder_0_0;

architecture stub of seven_segment_display_anode_decoder_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "digit_select[1:0],an[3:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "anode_decoder,Vivado 2025.2";
begin
end;
