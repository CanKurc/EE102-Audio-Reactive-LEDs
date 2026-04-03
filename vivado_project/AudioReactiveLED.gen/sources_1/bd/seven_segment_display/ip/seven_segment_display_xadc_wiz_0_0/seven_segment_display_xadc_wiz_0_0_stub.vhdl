-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:52:07 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/seven_segment_display/ip/seven_segment_display_xadc_wiz_0_0/seven_segment_display_xadc_wiz_0_0_stub.vhdl
-- Design      : seven_segment_display_xadc_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seven_segment_display_xadc_wiz_0_0 is
  Port ( 
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dclk_in : in STD_LOGIC;
    den_in : in STD_LOGIC;
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dwe_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    vauxp6 : in STD_LOGIC;
    vauxn6 : in STD_LOGIC;
    busy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drdy_out : out STD_LOGIC;
    eoc_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC
  );

  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of seven_segment_display_xadc_wiz_0_0 : entity is "seven_segment_display_xadc_wiz_0_0,xadc_wiz_v3_3_13,{component_name=seven_segment_display_xadc_wiz_0_0,enable_axi=false,enable_axi4stream=false,dclk_frequency=100,enable_busy=true,enable_convst=false,enable_convstclk=false,enable_dclk=true,enable_drp=true,enable_eoc=true,enable_eos=true,enable_vbram_alaram=false,enable_vccddro_alaram=false,enable_Vccint_Alaram=false,enable_Vccaux_alaram=false,enable_vccpaux_alaram=false,enable_vccpint_alaram=false,ot_alaram=false,user_temp_alaram=false,timing_mode=continuous,channel_averaging=None,sequencer_mode=off,startup_channel_selection=single_channel}";
end seven_segment_display_xadc_wiz_0_0;

architecture stub of seven_segment_display_xadc_wiz_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "daddr_in[6:0],dclk_in,den_in,di_in[15:0],dwe_in,reset_in,vauxp6,vauxn6,busy_out,channel_out[4:0],do_out[15:0],drdy_out,eoc_out,eos_out,alarm_out,vp_in,vn_in";
begin
end;
