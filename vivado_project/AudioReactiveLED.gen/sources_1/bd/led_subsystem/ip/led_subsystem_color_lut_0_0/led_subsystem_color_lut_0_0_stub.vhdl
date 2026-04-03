-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:55:30 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_color_lut_0_0/led_subsystem_color_lut_0_0_stub.vhdl
-- Design      : led_subsystem_color_lut_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity led_subsystem_color_lut_0_0 is
  Port ( 
    color_index : in STD_LOGIC_VECTOR ( 3 downto 0 );
    brightness_level : in STD_LOGIC_VECTOR ( 2 downto 0 );
    color_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of led_subsystem_color_lut_0_0 : entity is "led_subsystem_color_lut_0_0,color_lut,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of led_subsystem_color_lut_0_0 : entity is "led_subsystem_color_lut_0_0,color_lut,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=color_lut,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of led_subsystem_color_lut_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of led_subsystem_color_lut_0_0 : entity is "module_ref";
end led_subsystem_color_lut_0_0;

architecture stub of led_subsystem_color_lut_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "color_index[3:0],brightness_level[2:0],color_out[23:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "color_lut,Vivado 2025.2";
begin
end;
