-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:58:05 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/phase_1_master/ip/phase_1_master_led_subsystem_wrapper_0_0/phase_1_master_led_subsystem_wrapper_0_0_sim_netlist.vhdl
-- Design      : phase_1_master_led_subsystem_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity phase_1_master_led_subsystem_wrapper_0_0_led_subsystem is
  port (
    brightness_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_0 : in STD_LOGIC;
    color_sel_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    frame_done_0 : out STD_LOGIC;
    led_data_out_0 : out STD_LOGIC;
    led_enable_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of phase_1_master_led_subsystem_wrapper_0_0_led_subsystem : entity is "led_subsystem.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of phase_1_master_led_subsystem_wrapper_0_0_led_subsystem : entity is "led_subsystem";
end phase_1_master_led_subsystem_wrapper_0_0_led_subsystem;

architecture STRUCTURE of phase_1_master_led_subsystem_wrapper_0_0_led_subsystem is
  component phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_color_lut_0_0 is
  port (
    color_index : in STD_LOGIC_VECTOR ( 3 downto 0 );
    brightness_level : in STD_LOGIC_VECTOR ( 2 downto 0 );
    color_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_color_lut_0_0;
  component phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_manual_color_select_0_0 is
  port (
    color_sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    brightness : in STD_LOGIC_VECTOR ( 2 downto 0 );
    led_enable : in STD_LOGIC;
    color_index : out STD_LOGIC_VECTOR ( 3 downto 0 );
    brightness_level : out STD_LOGIC_VECTOR ( 2 downto 0 );
    enable : out STD_LOGIC
  );
  end component phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_manual_color_select_0_0;
  component phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_ws2812b_driver_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    color_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    enable : in STD_LOGIC;
    led_data_out : out STD_LOGIC;
    frame_done : out STD_LOGIC
  );
  end component phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_ws2812b_driver_0_0;
  signal color_lut_0_color_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal manual_color_select_0_brightness_level : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal manual_color_select_0_color_index : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal manual_color_select_0_enable : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of color_lut_0 : label is "led_subsystem_color_lut_0_0,color_lut,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of color_lut_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of color_lut_0 : label is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of color_lut_0 : label is "color_lut,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of manual_color_select_0 : label is "led_subsystem_manual_color_select_0_0,manual_color_select,{}";
  attribute DowngradeIPIdentifiedWarnings of manual_color_select_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of manual_color_select_0 : label is "module_ref";
  attribute X_CORE_INFO of manual_color_select_0 : label is "manual_color_select,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of ws2812b_driver_0 : label is "led_subsystem_ws2812b_driver_0_0,ws2812b_driver,{}";
  attribute DowngradeIPIdentifiedWarnings of ws2812b_driver_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of ws2812b_driver_0 : label is "module_ref";
  attribute X_CORE_INFO of ws2812b_driver_0 : label is "ws2812b_driver,Vivado 2025.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET reset_0, CLK_DOMAIN led_subsystem_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
color_lut_0: component phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_color_lut_0_0
     port map (
      brightness_level(2 downto 0) => manual_color_select_0_brightness_level(2 downto 0),
      color_index(3 downto 0) => manual_color_select_0_color_index(3 downto 0),
      color_out(23 downto 0) => color_lut_0_color_out(23 downto 0)
    );
manual_color_select_0: component phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_manual_color_select_0_0
     port map (
      brightness(2 downto 0) => brightness_0(2 downto 0),
      brightness_level(2 downto 0) => manual_color_select_0_brightness_level(2 downto 0),
      color_index(3 downto 0) => manual_color_select_0_color_index(3 downto 0),
      color_sel(3 downto 0) => color_sel_0(3 downto 0),
      enable => manual_color_select_0_enable,
      led_enable => led_enable_0
    );
ws2812b_driver_0: component phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_ws2812b_driver_0_0
     port map (
      clk => clk_0,
      color_in(23 downto 0) => color_lut_0_color_out(23 downto 0),
      enable => manual_color_select_0_enable,
      frame_done => frame_done_0,
      led_data_out => led_data_out_0,
      reset => reset_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_wrapper is
  port (
    frame_done_0 : out STD_LOGIC;
    led_data_out_0 : out STD_LOGIC;
    brightness_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_0 : in STD_LOGIC;
    color_sel_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led_enable_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_wrapper : entity is "led_subsystem_wrapper";
end phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_wrapper;

architecture STRUCTURE of phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_wrapper is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of led_subsystem_i : label is "led_subsystem.hwdef";
begin
led_subsystem_i: entity work.phase_1_master_led_subsystem_wrapper_0_0_led_subsystem
     port map (
      brightness_0(2 downto 0) => brightness_0(2 downto 0),
      clk_0 => clk_0,
      color_sel_0(3 downto 0) => color_sel_0(3 downto 0),
      frame_done_0 => frame_done_0,
      led_data_out_0 => led_data_out_0,
      led_enable_0 => led_enable_0,
      reset_0 => reset_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity phase_1_master_led_subsystem_wrapper_0_0 is
  port (
    brightness_0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_0 : in STD_LOGIC;
    color_sel_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    frame_done_0 : out STD_LOGIC;
    led_data_out_0 : out STD_LOGIC;
    led_enable_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of phase_1_master_led_subsystem_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of phase_1_master_led_subsystem_wrapper_0_0 : entity is "phase_1_master_led_subsystem_wrapper_0_0,led_subsystem_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of phase_1_master_led_subsystem_wrapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of phase_1_master_led_subsystem_wrapper_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of phase_1_master_led_subsystem_wrapper_0_0 : entity is "led_subsystem_wrapper,Vivado 2025.2";
end phase_1_master_led_subsystem_wrapper_0_0;

architecture STRUCTURE of phase_1_master_led_subsystem_wrapper_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 reset_0 RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of reset_0 : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME reset_0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_wrapper
     port map (
      brightness_0(2 downto 0) => brightness_0(2 downto 0),
      clk_0 => clk_0,
      color_sel_0(3 downto 0) => color_sel_0(3 downto 0),
      frame_done_0 => frame_done_0,
      led_data_out_0 => led_data_out_0,
      led_enable_0 => led_enable_0,
      reset_0 => reset_0
    );
end STRUCTURE;
