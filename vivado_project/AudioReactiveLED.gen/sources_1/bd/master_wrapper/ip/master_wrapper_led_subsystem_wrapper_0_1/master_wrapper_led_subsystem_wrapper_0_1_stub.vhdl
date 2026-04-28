-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Apr 23 23:39:02 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/master_wrapper/ip/master_wrapper_led_subsystem_wrapper_0_1/master_wrapper_led_subsystem_wrapper_0_1_stub.vhdl
-- Design      : master_wrapper_led_subsystem_wrapper_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity master_wrapper_led_subsystem_wrapper_0_1 is
  Port ( 
    audio_in_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk_0 : in STD_LOGIC;
    led_data_out_0 : out STD_LOGIC;
    led_enable_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    sample_valid_0 : in STD_LOGIC;
    thresh_high_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    thresh_low_0 : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of master_wrapper_led_subsystem_wrapper_0_1 : entity is "master_wrapper_led_subsystem_wrapper_0_1,led_subsystem_wrapper,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of master_wrapper_led_subsystem_wrapper_0_1 : entity is "master_wrapper_led_subsystem_wrapper_0_1,led_subsystem_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=led_subsystem_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of master_wrapper_led_subsystem_wrapper_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of master_wrapper_led_subsystem_wrapper_0_1 : entity is "module_ref";
end master_wrapper_led_subsystem_wrapper_0_1;

architecture stub of master_wrapper_led_subsystem_wrapper_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "audio_in_0[11:0],clk_0,led_data_out_0,led_enable_0,reset_0,sample_valid_0,thresh_high_0[11:0],thresh_low_0[11:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 reset_0 RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of reset_0 : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME reset_0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "led_subsystem_wrapper,Vivado 2025.2";
begin
end;
