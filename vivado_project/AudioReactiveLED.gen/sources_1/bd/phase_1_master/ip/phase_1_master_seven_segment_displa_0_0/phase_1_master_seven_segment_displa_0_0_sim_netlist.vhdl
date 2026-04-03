-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:56:08 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/phase_1_master/ip/phase_1_master_seven_segment_displa_0_0/phase_1_master_seven_segment_displa_0_0_sim_netlist.vhdl
-- Design      : phase_1_master_seven_segment_displa_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlconcat_0_0 : entity is "seven_segment_display_xlconcat_0_0,xlconcat_v2_1_7_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlconcat_0_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlconcat_0_0 : entity is "seven_segment_display_xlconcat_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlconcat_0_0 : entity is "xlconcat_v2_1_7_xlconcat,Vivado 2025.2";
end phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlconcat_0_0;

architecture STRUCTURE of phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlconcat_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^in1\ : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  \^in1\(11 downto 0) <= In1(11 downto 0);
  dout(15 downto 4) <= \^in1\(11 downto 0);
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlslice_0_0 : entity is "seven_segment_display_xlslice_0_0,xlslice_v1_0_5_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlslice_0_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlslice_0_0 : entity is "seven_segment_display_xlslice_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlslice_0_0 : entity is "xlslice_v1_0_5_xlslice,Vivado 2025.2";
end phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlslice_0_0;

architecture STRUCTURE of phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlslice_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  Dout(11 downto 0) <= \^din\(15 downto 4);
  \^din\(15 downto 4) <= Din(15 downto 4);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity phase_1_master_seven_segment_displa_0_0_seven_segment_display is
  port (
    an_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_0 : in STD_LOGIC;
    reset_in_0 : in STD_LOGIC;
    seg_out_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    vauxn6_0 : in STD_LOGIC;
    vauxp6_0 : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of phase_1_master_seven_segment_displa_0_0_seven_segment_display : entity is "seven_segment_display.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of phase_1_master_seven_segment_displa_0_0_seven_segment_display : entity is "seven_segment_display";
end phase_1_master_seven_segment_displa_0_0_seven_segment_display;

architecture STRUCTURE of phase_1_master_seven_segment_displa_0_0_seven_segment_display is
  component phase_1_master_seven_segment_displa_0_0_seven_segment_display_anode_decoder_0_0 is
  port (
    digit_select : in STD_LOGIC_VECTOR ( 1 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component phase_1_master_seven_segment_displa_0_0_seven_segment_display_anode_decoder_0_0;
  component phase_1_master_seven_segment_displa_0_0_seven_segment_display_binary_input_to_7_se_0_0 is
  port (
    bcd_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_out : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component phase_1_master_seven_segment_displa_0_0_seven_segment_display_binary_input_to_7_se_0_0;
  component phase_1_master_seven_segment_displa_0_0_seven_segment_display_clock_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    digit_select : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component phase_1_master_seven_segment_displa_0_0_seven_segment_display_clock_divider_0_0;
  component phase_1_master_seven_segment_displa_0_0_seven_segment_display_mux_4to1_0_0 is
  port (
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    digit_select : in STD_LOGIC_VECTOR ( 1 downto 0 );
    digit_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component phase_1_master_seven_segment_displa_0_0_seven_segment_display_mux_4to1_0_0;
  component phase_1_master_seven_segment_displa_0_0_seven_segment_display_xadc_wiz_0_0 is
  port (
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
  end component phase_1_master_seven_segment_displa_0_0_seven_segment_display_xadc_wiz_0_0;
  signal clock_divider_0_digit_select : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mux_4to1_0_digit_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xadc_wiz_0_do_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xadc_wiz_0_eoc_out : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_drdy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_xlconcat_0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of anode_decoder_0 : label is "seven_segment_display_anode_decoder_0_0,anode_decoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of anode_decoder_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of anode_decoder_0 : label is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of anode_decoder_0 : label is "anode_decoder,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of binary_input_to_7_se_0 : label is "seven_segment_display_binary_input_to_7_se_0_0,binary_input_to_7_segment_display,{}";
  attribute DowngradeIPIdentifiedWarnings of binary_input_to_7_se_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of binary_input_to_7_se_0 : label is "module_ref";
  attribute X_CORE_INFO of binary_input_to_7_se_0 : label is "binary_input_to_7_segment_display,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of clock_divider_0 : label is "seven_segment_display_clock_divider_0_0,clock_divider,{}";
  attribute DowngradeIPIdentifiedWarnings of clock_divider_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of clock_divider_0 : label is "module_ref";
  attribute X_CORE_INFO of clock_divider_0 : label is "clock_divider,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of mux_4to1_0 : label is "seven_segment_display_mux_4to1_0_0,mux_4to1,{}";
  attribute DowngradeIPIdentifiedWarnings of mux_4to1_0 : label is "yes";
  attribute IP_DEFINITION_SOURCE of mux_4to1_0 : label is "module_ref";
  attribute X_CORE_INFO of mux_4to1_0 : label is "mux_4to1,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of xlconcat_0 : label is "seven_segment_display_xlconcat_0_0,xlconcat_v2_1_7_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings of xlconcat_0 : label is "yes";
  attribute X_CORE_INFO of xlconcat_0 : label is "xlconcat_v2_1_7_xlconcat,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of xlslice_0 : label is "seven_segment_display_xlslice_0_0,xlslice_v1_0_5_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of xlslice_0 : label is "yes";
  attribute X_CORE_INFO of xlslice_0 : label is "xlslice_v1_0_5_xlslice,Vivado 2025.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN seven_segment_display_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset_in_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_IN_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_in_0 : signal is "XIL_INTERFACENAME RST.RESET_IN_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
anode_decoder_0: component phase_1_master_seven_segment_displa_0_0_seven_segment_display_anode_decoder_0_0
     port map (
      an(3 downto 0) => an_0(3 downto 0),
      digit_select(1 downto 0) => clock_divider_0_digit_select(1 downto 0)
    );
binary_input_to_7_se_0: component phase_1_master_seven_segment_displa_0_0_seven_segment_display_binary_input_to_7_se_0_0
     port map (
      bcd_in(3 downto 0) => mux_4to1_0_digit_out(3 downto 0),
      seg_out(6 downto 0) => seg_out_0(6 downto 0)
    );
clock_divider_0: component phase_1_master_seven_segment_displa_0_0_seven_segment_display_clock_divider_0_0
     port map (
      clk => clk_0,
      digit_select(1 downto 0) => clock_divider_0_digit_select(1 downto 0)
    );
mux_4to1_0: component phase_1_master_seven_segment_displa_0_0_seven_segment_display_mux_4to1_0_0
     port map (
      digit_out(3 downto 0) => mux_4to1_0_digit_out(3 downto 0),
      digit_select(1 downto 0) => clock_divider_0_digit_select(1 downto 0),
      sw(15 downto 4) => xlconcat_0_dout(15 downto 4),
      sw(3 downto 0) => B"0000"
    );
xadc_wiz_0: component phase_1_master_seven_segment_displa_0_0_seven_segment_display_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      daddr_in(6 downto 0) => B"0010110",
      dclk_in => clk_0,
      den_in => xadc_wiz_0_eoc_out,
      di_in(15 downto 0) => B"0000000000000000",
      do_out(15 downto 0) => xadc_wiz_0_do_out(15 downto 0),
      drdy_out => NLW_xadc_wiz_0_drdy_out_UNCONNECTED,
      dwe_in => '0',
      eoc_out => xadc_wiz_0_eoc_out,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      reset_in => reset_in_0,
      vauxn6 => vauxn6_0,
      vauxp6 => vauxp6_0,
      vn_in => '0',
      vp_in => '0'
    );
xlconcat_0: entity work.phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlconcat_0_0
     port map (
      In0(3 downto 0) => B"0000",
      In1(11 downto 0) => xlslice_0_Dout(11 downto 0),
      dout(15 downto 4) => xlconcat_0_dout(15 downto 4),
      dout(3 downto 0) => NLW_xlconcat_0_dout_UNCONNECTED(3 downto 0)
    );
xlslice_0: entity work.phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlslice_0_0
     port map (
      Din(15 downto 4) => xadc_wiz_0_do_out(15 downto 4),
      Din(3 downto 0) => B"0000",
      Dout(11 downto 0) => xlslice_0_Dout(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity phase_1_master_seven_segment_displa_0_0_seven_segment_display_wrapper is
  port (
    an_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_out_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_0 : in STD_LOGIC;
    reset_in_0 : in STD_LOGIC;
    vauxn6_0 : in STD_LOGIC;
    vauxp6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of phase_1_master_seven_segment_displa_0_0_seven_segment_display_wrapper : entity is "seven_segment_display_wrapper";
end phase_1_master_seven_segment_displa_0_0_seven_segment_display_wrapper;

architecture STRUCTURE of phase_1_master_seven_segment_displa_0_0_seven_segment_display_wrapper is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of seven_segment_display_i : label is "seven_segment_display.hwdef";
begin
seven_segment_display_i: entity work.phase_1_master_seven_segment_displa_0_0_seven_segment_display
     port map (
      an_0(3 downto 0) => an_0(3 downto 0),
      clk_0 => clk_0,
      reset_in_0 => reset_in_0,
      seg_out_0(6 downto 0) => seg_out_0(6 downto 0),
      vauxn6_0 => vauxn6_0,
      vauxp6_0 => vauxp6_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity phase_1_master_seven_segment_displa_0_0 is
  port (
    an_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_0 : in STD_LOGIC;
    reset_in_0 : in STD_LOGIC;
    seg_out_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    vauxn6_0 : in STD_LOGIC;
    vauxp6_0 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of phase_1_master_seven_segment_displa_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of phase_1_master_seven_segment_displa_0_0 : entity is "phase_1_master_seven_segment_displa_0_0,seven_segment_display_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of phase_1_master_seven_segment_displa_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of phase_1_master_seven_segment_displa_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of phase_1_master_seven_segment_displa_0_0 : entity is "seven_segment_display_wrapper,Vivado 2025.2";
end phase_1_master_seven_segment_displa_0_0;

architecture STRUCTURE of phase_1_master_seven_segment_displa_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_in_0 : signal is "xilinx.com:signal:reset:1.0 reset_in_0 RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of reset_in_0 : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_in_0 : signal is "XIL_INTERFACENAME reset_in_0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.phase_1_master_seven_segment_displa_0_0_seven_segment_display_wrapper
     port map (
      an_0(3 downto 0) => an_0(3 downto 0),
      clk_0 => clk_0,
      reset_in_0 => reset_in_0,
      seg_out_0(6 downto 0) => seg_out_0(6 downto 0),
      vauxn6_0 => vauxn6_0,
      vauxp6_0 => vauxp6_0
    );
end STRUCTURE;
