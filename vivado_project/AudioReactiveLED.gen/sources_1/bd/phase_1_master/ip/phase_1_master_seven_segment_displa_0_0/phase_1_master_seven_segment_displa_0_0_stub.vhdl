-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:56:08 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/phase_1_master/ip/phase_1_master_seven_segment_displa_0_0/phase_1_master_seven_segment_displa_0_0_stub.vhdl
-- Design      : phase_1_master_seven_segment_displa_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity phase_1_master_seven_segment_displa_0_0 is
  Port ( 
    an_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_0 : in STD_LOGIC;
    reset_in_0 : in STD_LOGIC;
    seg_out_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    vauxn6_0 : in STD_LOGIC;
    vauxp6_0 : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of phase_1_master_seven_segment_displa_0_0 : entity is "phase_1_master_seven_segment_displa_0_0,seven_segment_display_wrapper,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of phase_1_master_seven_segment_displa_0_0 : entity is "phase_1_master_seven_segment_displa_0_0,seven_segment_display_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=seven_segment_display_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of phase_1_master_seven_segment_displa_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of phase_1_master_seven_segment_displa_0_0 : entity is "module_ref";
end phase_1_master_seven_segment_displa_0_0;

architecture stub of phase_1_master_seven_segment_displa_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "an_0[3:0],clk_0,reset_in_0,seg_out_0[6:0],vauxn6_0,vauxp6_0";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_in_0 : signal is "xilinx.com:signal:reset:1.0 reset_in_0 RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of reset_in_0 : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_in_0 : signal is "XIL_INTERFACENAME reset_in_0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "seven_segment_display_wrapper,Vivado 2025.2";
begin
end;
