-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:56:46 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_manual_color_select_0_0/led_subsystem_manual_color_select_0_0_sim_netlist.vhdl
-- Design      : led_subsystem_manual_color_select_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity led_subsystem_manual_color_select_0_0 is
  port (
    color_sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    brightness : in STD_LOGIC_VECTOR ( 2 downto 0 );
    led_enable : in STD_LOGIC;
    color_index : out STD_LOGIC_VECTOR ( 3 downto 0 );
    brightness_level : out STD_LOGIC_VECTOR ( 2 downto 0 );
    enable : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of led_subsystem_manual_color_select_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of led_subsystem_manual_color_select_0_0 : entity is "led_subsystem_manual_color_select_0_0,manual_color_select,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of led_subsystem_manual_color_select_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of led_subsystem_manual_color_select_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of led_subsystem_manual_color_select_0_0 : entity is "manual_color_select,Vivado 2025.2";
end led_subsystem_manual_color_select_0_0;

architecture STRUCTURE of led_subsystem_manual_color_select_0_0 is
  signal \^brightness\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^color_sel\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^led_enable\ : STD_LOGIC;
begin
  \^brightness\(2 downto 0) <= brightness(2 downto 0);
  \^color_sel\(3 downto 0) <= color_sel(3 downto 0);
  \^led_enable\ <= led_enable;
  brightness_level(2 downto 0) <= \^brightness\(2 downto 0);
  color_index(3 downto 0) <= \^color_sel\(3 downto 0);
  enable <= \^led_enable\;
end STRUCTURE;
