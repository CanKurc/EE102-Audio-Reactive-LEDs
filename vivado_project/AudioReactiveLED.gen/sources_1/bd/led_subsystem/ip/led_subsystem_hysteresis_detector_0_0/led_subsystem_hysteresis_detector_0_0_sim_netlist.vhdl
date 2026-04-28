-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Apr 23 22:18:41 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_hysteresis_detector_0_0/led_subsystem_hysteresis_detector_0_0_sim_netlist.vhdl
-- Design      : led_subsystem_hysteresis_detector_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity led_subsystem_hysteresis_detector_0_0_hysteresis_detector is
  port (
    beat_detected : out STD_LOGIC;
    reset : in STD_LOGIC;
    thresh_low : in STD_LOGIC_VECTOR ( 11 downto 0 );
    audio_filtered : in STD_LOGIC_VECTOR ( 11 downto 0 );
    thresh_high : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of led_subsystem_hysteresis_detector_0_0_hysteresis_detector : entity is "hysteresis_detector";
end led_subsystem_hysteresis_detector_0_0_hysteresis_detector;

architecture STRUCTURE of led_subsystem_hysteresis_detector_0_0_hysteresis_detector is
  signal beat_pulse_i_1_n_0 : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC;
  signal \state0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \state0_carry__0_n_2\ : STD_LOGIC;
  signal \state0_carry__0_n_3\ : STD_LOGIC;
  signal state0_carry_i_1_n_0 : STD_LOGIC;
  signal state0_carry_i_2_n_0 : STD_LOGIC;
  signal state0_carry_i_3_n_0 : STD_LOGIC;
  signal state0_carry_i_4_n_0 : STD_LOGIC;
  signal state0_carry_i_5_n_0 : STD_LOGIC;
  signal state0_carry_i_6_n_0 : STD_LOGIC;
  signal state0_carry_i_7_n_0 : STD_LOGIC;
  signal state0_carry_i_8_n_0 : STD_LOGIC;
  signal state0_carry_n_0 : STD_LOGIC;
  signal state0_carry_n_1 : STD_LOGIC;
  signal state0_carry_n_2 : STD_LOGIC;
  signal state0_carry_n_3 : STD_LOGIC;
  signal \state0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \state0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal NLW_state0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_state0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of beat_pulse_i_1 : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of state0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \state0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state0_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \state0_inferred__0/i__carry__0\ : label is 11;
  attribute SOFT_HLUTNM of state_i_1 : label is "soft_lutpair0";
begin
beat_pulse_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \state0_inferred__0/i__carry__0_n_2\,
      I1 => state,
      I2 => reset,
      O => beat_pulse_i_1_n_0
    );
beat_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => beat_pulse_i_1_n_0,
      Q => beat_detected,
      R => '0'
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => audio_filtered(6),
      I1 => thresh_high(6),
      I2 => thresh_high(7),
      I3 => audio_filtered(7),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => audio_filtered(10),
      I1 => thresh_high(10),
      I2 => thresh_high(11),
      I3 => audio_filtered(11),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => audio_filtered(4),
      I1 => thresh_high(4),
      I2 => thresh_high(5),
      I3 => audio_filtered(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => audio_filtered(8),
      I1 => thresh_high(8),
      I2 => thresh_high(9),
      I3 => audio_filtered(9),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => audio_filtered(2),
      I1 => thresh_high(2),
      I2 => thresh_high(3),
      I3 => audio_filtered(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => audio_filtered(10),
      I1 => thresh_high(10),
      I2 => audio_filtered(11),
      I3 => thresh_high(11),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => audio_filtered(0),
      I1 => thresh_high(0),
      I2 => thresh_high(1),
      I3 => audio_filtered(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => audio_filtered(8),
      I1 => thresh_high(8),
      I2 => audio_filtered(9),
      I3 => thresh_high(9),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => audio_filtered(6),
      I1 => thresh_high(6),
      I2 => audio_filtered(7),
      I3 => thresh_high(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => audio_filtered(4),
      I1 => thresh_high(4),
      I2 => audio_filtered(5),
      I3 => thresh_high(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => audio_filtered(2),
      I1 => thresh_high(2),
      I2 => audio_filtered(3),
      I3 => thresh_high(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => audio_filtered(0),
      I1 => thresh_high(0),
      I2 => audio_filtered(1),
      I3 => thresh_high(1),
      O => \i__carry_i_8_n_0\
    );
state0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state0_carry_n_0,
      CO(2) => state0_carry_n_1,
      CO(1) => state0_carry_n_2,
      CO(0) => state0_carry_n_3,
      CYINIT => '0',
      DI(3) => state0_carry_i_1_n_0,
      DI(2) => state0_carry_i_2_n_0,
      DI(1) => state0_carry_i_3_n_0,
      DI(0) => state0_carry_i_4_n_0,
      O(3 downto 0) => NLW_state0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state0_carry_i_5_n_0,
      S(2) => state0_carry_i_6_n_0,
      S(1) => state0_carry_i_7_n_0,
      S(0) => state0_carry_i_8_n_0
    );
\state0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state0_carry_n_0,
      CO(3 downto 2) => \NLW_state0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \state0_carry__0_n_2\,
      CO(0) => \state0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \state0_carry__0_i_1_n_0\,
      DI(0) => \state0_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_state0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \state0_carry__0_i_3_n_0\,
      S(0) => \state0_carry__0_i_4_n_0\
    );
\state0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh_low(10),
      I1 => audio_filtered(10),
      I2 => audio_filtered(11),
      I3 => thresh_low(11),
      O => \state0_carry__0_i_1_n_0\
    );
\state0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh_low(8),
      I1 => audio_filtered(8),
      I2 => audio_filtered(9),
      I3 => thresh_low(9),
      O => \state0_carry__0_i_2_n_0\
    );
\state0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh_low(10),
      I1 => audio_filtered(10),
      I2 => thresh_low(11),
      I3 => audio_filtered(11),
      O => \state0_carry__0_i_3_n_0\
    );
\state0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh_low(8),
      I1 => audio_filtered(8),
      I2 => thresh_low(9),
      I3 => audio_filtered(9),
      O => \state0_carry__0_i_4_n_0\
    );
state0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh_low(6),
      I1 => audio_filtered(6),
      I2 => audio_filtered(7),
      I3 => thresh_low(7),
      O => state0_carry_i_1_n_0
    );
state0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh_low(4),
      I1 => audio_filtered(4),
      I2 => audio_filtered(5),
      I3 => thresh_low(5),
      O => state0_carry_i_2_n_0
    );
state0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh_low(2),
      I1 => audio_filtered(2),
      I2 => audio_filtered(3),
      I3 => thresh_low(3),
      O => state0_carry_i_3_n_0
    );
state0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => thresh_low(0),
      I1 => audio_filtered(0),
      I2 => audio_filtered(1),
      I3 => thresh_low(1),
      O => state0_carry_i_4_n_0
    );
state0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh_low(6),
      I1 => audio_filtered(6),
      I2 => thresh_low(7),
      I3 => audio_filtered(7),
      O => state0_carry_i_5_n_0
    );
state0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh_low(4),
      I1 => audio_filtered(4),
      I2 => thresh_low(5),
      I3 => audio_filtered(5),
      O => state0_carry_i_6_n_0
    );
state0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh_low(2),
      I1 => audio_filtered(2),
      I2 => thresh_low(3),
      I3 => audio_filtered(3),
      O => state0_carry_i_7_n_0
    );
state0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => thresh_low(0),
      I1 => audio_filtered(0),
      I2 => thresh_low(1),
      I3 => audio_filtered(1),
      O => state0_carry_i_8_n_0
    );
\state0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \state0_inferred__0/i__carry_n_0\,
      CO(2) => \state0_inferred__0/i__carry_n_1\,
      CO(1) => \state0_inferred__0/i__carry_n_2\,
      CO(0) => \state0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_state0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\state0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \state0_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_state0_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \state0_inferred__0/i__carry__0_n_2\,
      CO(0) => \state0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry_i_1__0_n_0\,
      DI(0) => \i__carry_i_2__0_n_0\,
      O(3 downto 0) => \NLW_state0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002E"
    )
        port map (
      I0 => \state0_inferred__0/i__carry__0_n_2\,
      I1 => state,
      I2 => \state0_carry__0_n_2\,
      I3 => reset,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => state_i_1_n_0,
      Q => state,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity led_subsystem_hysteresis_detector_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    audio_filtered : in STD_LOGIC_VECTOR ( 11 downto 0 );
    thresh_high : in STD_LOGIC_VECTOR ( 11 downto 0 );
    thresh_low : in STD_LOGIC_VECTOR ( 11 downto 0 );
    beat_detected : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of led_subsystem_hysteresis_detector_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of led_subsystem_hysteresis_detector_0_0 : entity is "led_subsystem_hysteresis_detector_0_0,hysteresis_detector,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of led_subsystem_hysteresis_detector_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of led_subsystem_hysteresis_detector_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of led_subsystem_hysteresis_detector_0_0 : entity is "hysteresis_detector,Vivado 2025.2";
end led_subsystem_hysteresis_detector_0_0;

architecture STRUCTURE of led_subsystem_hysteresis_detector_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_subsystem_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.led_subsystem_hysteresis_detector_0_0_hysteresis_detector
     port map (
      audio_filtered(11 downto 0) => audio_filtered(11 downto 0),
      beat_detected => beat_detected,
      clk => clk,
      reset => reset,
      thresh_high(11 downto 0) => thresh_high(11 downto 0),
      thresh_low(11 downto 0) => thresh_low(11 downto 0)
    );
end STRUCTURE;
