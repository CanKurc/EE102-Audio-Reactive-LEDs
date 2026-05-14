-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu May 14 20:37:57 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/master_wrapper/ip/master_wrapper_led_subsystem_wrapper_0_1/master_wrapper_led_subsystem_wrapper_0_1_sim_netlist.vhdl
-- Design      : master_wrapper_led_subsystem_wrapper_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity master_wrapper_led_subsystem_wrapper_0_1_led_subsystem is
  port (
    audio_in_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_0 : in STD_LOGIC;
    led_data_out_0 : out STD_LOGIC;
    led_enable_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    sample_valid_0 : in STD_LOGIC;
    thresh_high_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    thresh_low_0 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of master_wrapper_led_subsystem_wrapper_0_1_led_subsystem : entity is "led_subsystem.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of master_wrapper_led_subsystem_wrapper_0_1_led_subsystem : entity is "led_subsystem";
end master_wrapper_led_subsystem_wrapper_0_1_led_subsystem;

architecture STRUCTURE of master_wrapper_led_subsystem_wrapper_0_1_led_subsystem is
  component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_beat_color_auto_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    beat_detected : in STD_LOGIC;
    frame_done : in STD_LOGIC;
    led_enable : in STD_LOGIC;
    color_index : out STD_LOGIC_VECTOR ( 3 downto 0 );
    brightness_level : out STD_LOGIC_VECTOR ( 2 downto 0 );
    enable : out STD_LOGIC
  );
  end component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_beat_color_auto_0_0;
  component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_color_lut_0_0 is
  port (
    color_index : in STD_LOGIC_VECTOR ( 3 downto 0 );
    brightness_level : in STD_LOGIC_VECTOR ( 2 downto 0 );
    color_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_color_lut_0_0;
  component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_hysteresis_detector_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    audio_filtered : in STD_LOGIC_VECTOR ( 11 downto 0 );
    thresh_high : in STD_LOGIC_VECTOR ( 11 downto 0 );
    thresh_low : in STD_LOGIC_VECTOR ( 11 downto 0 );
    beat_detected : out STD_LOGIC
  );
  end component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_hysteresis_detector_0_0;
  component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_moving_average_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    sample_valid : in STD_LOGIC;
    audio_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    audio_filtered : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_moving_average_0_0;
  component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_ws2812b_driver_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    color_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    enable : in STD_LOGIC;
    led_data_out : out STD_LOGIC;
    frame_done : out STD_LOGIC
  );
  end component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_ws2812b_driver_0_0;
  signal beat_color_auto_0_brightness_level : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal beat_color_auto_0_color_index : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal beat_color_auto_0_enable : STD_LOGIC;
  signal color_lut_0_color_out : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal hysteresis_detector_0_beat_detected : STD_LOGIC;
  signal moving_average_0_audio_filtered : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ws2812b_driver_0_frame_done : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of beat_color_auto_0 : label is "led_subsystem_beat_color_auto_0_0,beat_color_auto,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of beat_color_auto_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of beat_color_auto_0 : label is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of beat_color_auto_0 : label is "beat_color_auto,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of color_lut_0 : label is "led_subsystem_color_lut_0_0,color_lut,{}";
  attribute DowngradeIPIdentifiedWarnings of color_lut_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of color_lut_0 : label is "module_ref";
  attribute X_CORE_INFO of color_lut_0 : label is "color_lut,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of hysteresis_detector_0 : label is "led_subsystem_hysteresis_detector_0_0,hysteresis_detector,{}";
  attribute DowngradeIPIdentifiedWarnings of hysteresis_detector_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of hysteresis_detector_0 : label is "module_ref";
  attribute X_CORE_INFO of hysteresis_detector_0 : label is "hysteresis_detector,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of moving_average_0 : label is "led_subsystem_moving_average_0_0,moving_average,{}";
  attribute DowngradeIPIdentifiedWarnings of moving_average_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of moving_average_0 : label is "module_ref";
  attribute X_CORE_INFO of moving_average_0 : label is "moving_average,Vivado 2025.2";
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
beat_color_auto_0: component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_beat_color_auto_0_0
     port map (
      beat_detected => hysteresis_detector_0_beat_detected,
      brightness_level(2 downto 0) => beat_color_auto_0_brightness_level(2 downto 0),
      clk => clk_0,
      color_index(3 downto 0) => beat_color_auto_0_color_index(3 downto 0),
      enable => beat_color_auto_0_enable,
      frame_done => ws2812b_driver_0_frame_done,
      led_enable => led_enable_0,
      reset => reset_0
    );
color_lut_0: component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_color_lut_0_0
     port map (
      brightness_level(2 downto 0) => beat_color_auto_0_brightness_level(2 downto 0),
      color_index(3 downto 0) => beat_color_auto_0_color_index(3 downto 0),
      color_out(23 downto 0) => color_lut_0_color_out(23 downto 0)
    );
hysteresis_detector_0: component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_hysteresis_detector_0_0
     port map (
      audio_filtered(11 downto 0) => moving_average_0_audio_filtered(11 downto 0),
      beat_detected => hysteresis_detector_0_beat_detected,
      clk => clk_0,
      reset => reset_0,
      thresh_high(11 downto 0) => thresh_high_0(11 downto 0),
      thresh_low(11 downto 0) => thresh_low_0(11 downto 0)
    );
moving_average_0: component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_moving_average_0_0
     port map (
      audio_filtered(11 downto 0) => moving_average_0_audio_filtered(11 downto 0),
      audio_in(11 downto 0) => audio_in_0(11 downto 0),
      clk => clk_0,
      reset => reset_0,
      sample_valid => sample_valid_0
    );
ws2812b_driver_0: component master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_ws2812b_driver_0_0
     port map (
      clk => clk_0,
      color_in(23 downto 0) => color_lut_0_color_out(23 downto 0),
      enable => beat_color_auto_0_enable,
      frame_done => ws2812b_driver_0_frame_done,
      led_data_out => led_data_out_0,
      reset => reset_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_wrapper is
  port (
    led_data_out_0 : out STD_LOGIC;
    audio_in_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_0 : in STD_LOGIC;
    led_enable_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    sample_valid_0 : in STD_LOGIC;
    thresh_high_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    thresh_low_0 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_wrapper : entity is "led_subsystem_wrapper";
end master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_wrapper;

architecture STRUCTURE of master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_wrapper is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of led_subsystem_i : label is "led_subsystem.hwdef";
begin
led_subsystem_i: entity work.master_wrapper_led_subsystem_wrapper_0_1_led_subsystem
     port map (
      audio_in_0(11 downto 0) => audio_in_0(11 downto 0),
      clk_0 => clk_0,
      led_data_out_0 => led_data_out_0,
      led_enable_0 => led_enable_0,
      reset_0 => reset_0,
      sample_valid_0 => sample_valid_0,
      thresh_high_0(11 downto 0) => thresh_high_0(11 downto 0),
      thresh_low_0(11 downto 0) => thresh_low_0(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity master_wrapper_led_subsystem_wrapper_0_1 is
  port (
    audio_in_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_0 : in STD_LOGIC;
    led_data_out_0 : out STD_LOGIC;
    led_enable_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    sample_valid_0 : in STD_LOGIC;
    thresh_high_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    thresh_low_0 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of master_wrapper_led_subsystem_wrapper_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of master_wrapper_led_subsystem_wrapper_0_1 : entity is "master_wrapper_led_subsystem_wrapper_0_1,led_subsystem_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of master_wrapper_led_subsystem_wrapper_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of master_wrapper_led_subsystem_wrapper_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of master_wrapper_led_subsystem_wrapper_0_1 : entity is "led_subsystem_wrapper,Vivado 2025.2";
end master_wrapper_led_subsystem_wrapper_0_1;

architecture STRUCTURE of master_wrapper_led_subsystem_wrapper_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 reset_0 RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of reset_0 : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME reset_0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.master_wrapper_led_subsystem_wrapper_0_1_led_subsystem_wrapper
     port map (
      audio_in_0(11 downto 0) => audio_in_0(11 downto 0),
      clk_0 => clk_0,
      led_data_out_0 => led_data_out_0,
      led_enable_0 => led_enable_0,
      reset_0 => reset_0,
      sample_valid_0 => sample_valid_0,
      thresh_high_0(11 downto 0) => thresh_high_0(11 downto 0),
      thresh_low_0(11 downto 0) => thresh_low_0(11 downto 0)
    );
end STRUCTURE;
