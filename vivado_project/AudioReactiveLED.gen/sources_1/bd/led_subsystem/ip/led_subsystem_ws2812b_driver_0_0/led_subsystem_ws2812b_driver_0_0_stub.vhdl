-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:53:00 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_ws2812b_driver_0_0/led_subsystem_ws2812b_driver_0_0_stub.vhdl
-- Design      : led_subsystem_ws2812b_driver_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity led_subsystem_ws2812b_driver_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    color_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    enable : in STD_LOGIC;
    led_data_out : out STD_LOGIC;
    frame_done : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of led_subsystem_ws2812b_driver_0_0 : entity is "led_subsystem_ws2812b_driver_0_0,ws2812b_driver,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of led_subsystem_ws2812b_driver_0_0 : entity is "led_subsystem_ws2812b_driver_0_0,ws2812b_driver,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ws2812b_driver,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of led_subsystem_ws2812b_driver_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of led_subsystem_ws2812b_driver_0_0 : entity is "module_ref";
end led_subsystem_ws2812b_driver_0_0;

architecture stub of led_subsystem_ws2812b_driver_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,reset,color_in[23:0],enable,led_data_out,frame_done";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_subsystem_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "ws2812b_driver,Vivado 2025.2";
begin
end;
