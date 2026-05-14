-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu May 14 20:36:40 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_beat_color_auto_0_0/led_subsystem_beat_color_auto_0_0_sim_netlist.vhdl
-- Design      : led_subsystem_beat_color_auto_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity led_subsystem_beat_color_auto_0_0_beat_color_auto is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \nolurcalis_reg[2]_0\ : out STD_LOGIC;
    \nolurcalis_reg[1]_0\ : out STD_LOGIC;
    \nolurcalis_reg[0]_0\ : out STD_LOGIC;
    frame_done : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    beat_detected : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of led_subsystem_beat_color_auto_0_0_beat_color_auto : entity is "beat_color_auto";
end led_subsystem_beat_color_auto_0_0_beat_color_auto;

architecture STRUCTURE of led_subsystem_beat_color_auto_0_0_beat_color_auto is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \breath_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \breath_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \breath_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \breath_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \breath_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \breath_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \breath_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \breath_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \breath_count[4]_i_6_n_0\ : STD_LOGIC;
  signal \breath_count[4]_i_7_n_0\ : STD_LOGIC;
  signal \breath_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \breath_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \breath_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \breath_count[6]_i_3_n_0\ : STD_LOGIC;
  signal \breath_count[6]_i_4_n_0\ : STD_LOGIC;
  signal \breath_count[6]_i_6_n_0\ : STD_LOGIC;
  signal \breath_count[6]_i_7_n_0\ : STD_LOGIC;
  signal \breath_count[6]_i_8_n_0\ : STD_LOGIC;
  signal \breath_count[6]_i_9_n_0\ : STD_LOGIC;
  signal \breath_count_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \breath_count_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \breath_count_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \breath_count_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \breath_count_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \breath_count_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \breath_count_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \breath_count_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \breath_count_reg[6]_i_5_n_3\ : STD_LOGIC;
  signal \breath_count_reg[6]_i_5_n_6\ : STD_LOGIC;
  signal \breath_count_reg[6]_i_5_n_7\ : STD_LOGIC;
  signal breath_dir_i_1_n_0 : STD_LOGIC;
  signal breath_dir_i_2_n_0 : STD_LOGIC;
  signal \breath_tick[0]_i_1_n_0\ : STD_LOGIC;
  signal \breath_tick[1]_i_1_n_0\ : STD_LOGIC;
  signal \breath_tick[2]_i_1_n_0\ : STD_LOGIC;
  signal \breath_tick[3]_i_1_n_0\ : STD_LOGIC;
  signal \breath_tick[3]_i_2_n_0\ : STD_LOGIC;
  signal \breath_tick_reg_n_0_[0]\ : STD_LOGIC;
  signal \breath_tick_reg_n_0_[1]\ : STD_LOGIC;
  signal \breath_tick_reg_n_0_[2]\ : STD_LOGIC;
  signal \breath_tick_reg_n_0_[3]\ : STD_LOGIC;
  signal \color_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \color_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \color_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \color_idx[3]_i_1_n_0\ : STD_LOGIC;
  signal fade_count : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \fade_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \fade_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \fade_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \fade_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \fade_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \fade_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \fade_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \fade_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \fade_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \fade_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \fade_count_reg_n_0_[4]\ : STD_LOGIC;
  signal idle_count : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \idle_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \idle_count[10]_i_3_n_0\ : STD_LOGIC;
  signal \idle_count[10]_i_4_n_0\ : STD_LOGIC;
  signal \idle_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \idle_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \idle_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \nolurcalis[0]_i_1_n_0\ : STD_LOGIC;
  signal \nolurcalis[1]_i_1_n_0\ : STD_LOGIC;
  signal \nolurcalis[1]_i_2_n_0\ : STD_LOGIC;
  signal \nolurcalis[2]_i_1_n_0\ : STD_LOGIC;
  signal \nolurcalis[2]_i_2_n_0\ : STD_LOGIC;
  signal \nolurcalis[2]_i_3_n_0\ : STD_LOGIC;
  signal \nolurcalis[2]_i_4_n_0\ : STD_LOGIC;
  signal \nolurcalis[2]_i_5_n_0\ : STD_LOGIC;
  signal \nolurcalis[2]_i_6_n_0\ : STD_LOGIC;
  signal \^nolurcalis_reg[0]_0\ : STD_LOGIC;
  signal \^nolurcalis_reg[1]_0\ : STD_LOGIC;
  signal \^nolurcalis_reg[2]_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_breath_count_reg[6]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_breath_count_reg[6]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_3\ : label is "soft_lutpair15";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "fading:001,faded_wait:010,breathing:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "fading:001,faded_wait:010,breathing:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "fading:001,faded_wait:010,breathing:100,";
  attribute SOFT_HLUTNM of \breath_count[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \breath_count[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \breath_count[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \breath_count[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \breath_count[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \breath_count[6]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \breath_count[6]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \breath_count[6]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \breath_count[6]_i_7\ : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \breath_count_reg[4]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \breath_count_reg[4]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \breath_count_reg[6]_i_5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \breath_count_reg[6]_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \breath_tick[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \breath_tick[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \breath_tick[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \breath_tick[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \color_idx[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \color_idx[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \color_idx[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \color_idx[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \fade_count[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fade_count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fade_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fade_count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fade_count[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \idle_count[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \idle_count[10]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \idle_count[10]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \idle_count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \idle_count[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \idle_count[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \idle_count[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \idle_count[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \idle_count[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \nolurcalis[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \nolurcalis[2]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \nolurcalis[2]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \nolurcalis[2]_i_6\ : label is "soft_lutpair10";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \nolurcalis_reg[0]_0\ <= \^nolurcalis_reg[0]_0\;
  \nolurcalis_reg[1]_0\ <= \^nolurcalis_reg[1]_0\;
  \nolurcalis_reg[2]_0\ <= \^nolurcalis_reg[2]_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFBF00000000"
    )
        port map (
      I0 => \FSM_onehot_state[0]_i_2_n_0\,
      I1 => frame_done,
      I2 => \^nolurcalis_reg[2]_0\,
      I3 => \FSM_onehot_state[0]_i_3_n_0\,
      I4 => \FSM_onehot_state[2]_i_3_n_0\,
      I5 => fade_count(0),
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \fade_count_reg_n_0_[1]\,
      I1 => \fade_count_reg_n_0_[0]\,
      I2 => \fade_count_reg_n_0_[2]\,
      I3 => \fade_count_reg_n_0_[3]\,
      I4 => \fade_count_reg_n_0_[4]\,
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^nolurcalis_reg[0]_0\,
      I1 => \^nolurcalis_reg[1]_0\,
      O => \FSM_onehot_state[0]_i_3_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => fade_count(0),
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_state[2]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_state[2]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^nolurcalis_reg[1]_0\,
      I1 => \^nolurcalis_reg[0]_0\,
      I2 => \^nolurcalis_reg[2]_0\,
      I3 => frame_done,
      I4 => fade_count(0),
      I5 => \FSM_onehot_state[0]_i_2_n_0\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => frame_done,
      I2 => \idle_count[10]_i_3_n_0\,
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => fade_count(0),
      S => \nolurcalis[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\breath_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => sel0(0),
      O => \breath_count[0]_i_1_n_0\
    );
\breath_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \breath_count_reg[4]_i_2_n_7\,
      O => \breath_count[1]_i_1_n_0\
    );
\breath_count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \breath_count_reg[4]_i_2_n_6\,
      O => \breath_count[2]_i_1_n_0\
    );
\breath_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \breath_count_reg[4]_i_2_n_5\,
      O => \breath_count[3]_i_1_n_0\
    );
\breath_count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \breath_count_reg[4]_i_2_n_4\,
      O => \breath_count[4]_i_1_n_0\
    );
\breath_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(1),
      O => \breath_count[4]_i_3_n_0\
    );
\breath_count[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(4),
      O => \breath_count[4]_i_4_n_0\
    );
\breath_count[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      O => \breath_count[4]_i_5_n_0\
    );
\breath_count[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      O => \breath_count[4]_i_6_n_0\
    );
\breath_count[4]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(7),
      O => \breath_count[4]_i_7_n_0\
    );
\breath_count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \breath_count_reg[6]_i_5_n_7\,
      O => \breath_count[5]_i_1_n_0\
    );
\breath_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => \breath_count[6]_i_3_n_0\,
      I1 => \breath_count[6]_i_4_n_0\,
      I2 => frame_done,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \breath_tick_reg_n_0_[2]\,
      I5 => \FSM_onehot_state[2]_i_3_n_0\,
      O => \breath_count[6]_i_1_n_0\
    );
\breath_count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \breath_count_reg[6]_i_5_n_6\,
      O => \breath_count[6]_i_2_n_0\
    );
\breath_count[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \breath_tick_reg_n_0_[0]\,
      I1 => \breath_tick_reg_n_0_[1]\,
      I2 => \breath_tick_reg_n_0_[3]\,
      O => \breath_count[6]_i_3_n_0\
    );
\breath_count[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0000000000C00"
    )
        port map (
      I0 => \breath_count[6]_i_6_n_0\,
      I1 => \breath_count[6]_i_7_n_0\,
      I2 => sel0(6),
      I3 => sel0(7),
      I4 => sel0(5),
      I5 => sel0(4),
      O => \breath_count[6]_i_4_n_0\
    );
\breath_count[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(3),
      I3 => sel0(2),
      O => \breath_count[6]_i_6_n_0\
    );
\breath_count[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(3),
      I3 => sel0(2),
      O => \breath_count[6]_i_7_n_0\
    );
\breath_count[6]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(6),
      O => \breath_count[6]_i_8_n_0\
    );
\breath_count[6]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sel0(4),
      I1 => sel0(5),
      O => \breath_count[6]_i_9_n_0\
    );
\breath_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \breath_count[6]_i_1_n_0\,
      D => \breath_count[0]_i_1_n_0\,
      Q => sel0(0),
      R => \nolurcalis[2]_i_1_n_0\
    );
\breath_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \breath_count[6]_i_1_n_0\,
      D => \breath_count[1]_i_1_n_0\,
      Q => sel0(1),
      R => \nolurcalis[2]_i_1_n_0\
    );
\breath_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \breath_count[6]_i_1_n_0\,
      D => \breath_count[2]_i_1_n_0\,
      Q => sel0(2),
      R => \nolurcalis[2]_i_1_n_0\
    );
\breath_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \breath_count[6]_i_1_n_0\,
      D => \breath_count[3]_i_1_n_0\,
      Q => sel0(3),
      R => \nolurcalis[2]_i_1_n_0\
    );
\breath_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \breath_count[6]_i_1_n_0\,
      D => \breath_count[4]_i_1_n_0\,
      Q => sel0(4),
      R => \nolurcalis[2]_i_1_n_0\
    );
\breath_count_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \breath_count_reg[4]_i_2_n_0\,
      CO(2) => \breath_count_reg[4]_i_2_n_1\,
      CO(1) => \breath_count_reg[4]_i_2_n_2\,
      CO(0) => \breath_count_reg[4]_i_2_n_3\,
      CYINIT => sel0(0),
      DI(3 downto 1) => sel0(3 downto 1),
      DI(0) => \breath_count[4]_i_3_n_0\,
      O(3) => \breath_count_reg[4]_i_2_n_4\,
      O(2) => \breath_count_reg[4]_i_2_n_5\,
      O(1) => \breath_count_reg[4]_i_2_n_6\,
      O(0) => \breath_count_reg[4]_i_2_n_7\,
      S(3) => \breath_count[4]_i_4_n_0\,
      S(2) => \breath_count[4]_i_5_n_0\,
      S(1) => \breath_count[4]_i_6_n_0\,
      S(0) => \breath_count[4]_i_7_n_0\
    );
\breath_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \breath_count[6]_i_1_n_0\,
      D => \breath_count[5]_i_1_n_0\,
      Q => sel0(5),
      R => \nolurcalis[2]_i_1_n_0\
    );
\breath_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \breath_count[6]_i_1_n_0\,
      D => \breath_count[6]_i_2_n_0\,
      Q => sel0(6),
      R => \nolurcalis[2]_i_1_n_0\
    );
\breath_count_reg[6]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \breath_count_reg[4]_i_2_n_0\,
      CO(3 downto 1) => \NLW_breath_count_reg[6]_i_5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \breath_count_reg[6]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => sel0(4),
      O(3 downto 2) => \NLW_breath_count_reg[6]_i_5_O_UNCONNECTED\(3 downto 2),
      O(1) => \breath_count_reg[6]_i_5_n_6\,
      O(0) => \breath_count_reg[6]_i_5_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \breath_count[6]_i_8_n_0\,
      S(0) => \breath_count[6]_i_9_n_0\
    );
breath_dir_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000056660222"
    )
        port map (
      I0 => sel0(7),
      I1 => \FSM_onehot_state[2]_i_3_n_0\,
      I2 => breath_dir_i_2_n_0,
      I3 => \breath_count[6]_i_4_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => \nolurcalis[2]_i_1_n_0\,
      O => breath_dir_i_1_n_0
    );
breath_dir_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \breath_tick_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => frame_done,
      I3 => \breath_tick_reg_n_0_[3]\,
      I4 => \breath_tick_reg_n_0_[1]\,
      I5 => \breath_tick_reg_n_0_[0]\,
      O => breath_dir_i_2_n_0
    );
breath_dir_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => breath_dir_i_1_n_0,
      Q => sel0(7),
      R => '0'
    );
\breath_tick[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \breath_tick_reg_n_0_[0]\,
      O => \breath_tick[0]_i_1_n_0\
    );
\breath_tick[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60206060"
    )
        port map (
      I0 => \breath_tick_reg_n_0_[1]\,
      I1 => \breath_tick_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \breath_tick_reg_n_0_[2]\,
      I4 => \breath_tick_reg_n_0_[3]\,
      O => \breath_tick[1]_i_1_n_0\
    );
\breath_tick[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \breath_tick_reg_n_0_[2]\,
      I2 => \breath_tick_reg_n_0_[0]\,
      I3 => \breath_tick_reg_n_0_[1]\,
      O => \breath_tick[2]_i_1_n_0\
    );
\breath_tick[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_3_n_0\,
      I1 => frame_done,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \breath_tick[3]_i_1_n_0\
    );
\breath_tick[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A8A8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \breath_tick_reg_n_0_[2]\,
      I2 => \breath_tick_reg_n_0_[0]\,
      I3 => \breath_tick_reg_n_0_[1]\,
      I4 => \breath_tick_reg_n_0_[3]\,
      O => \breath_tick[3]_i_2_n_0\
    );
\breath_tick_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \breath_tick[3]_i_1_n_0\,
      D => \breath_tick[0]_i_1_n_0\,
      Q => \breath_tick_reg_n_0_[0]\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\breath_tick_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \breath_tick[3]_i_1_n_0\,
      D => \breath_tick[1]_i_1_n_0\,
      Q => \breath_tick_reg_n_0_[1]\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\breath_tick_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \breath_tick[3]_i_1_n_0\,
      D => \breath_tick[2]_i_1_n_0\,
      Q => \breath_tick_reg_n_0_[2]\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\breath_tick_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \breath_tick[3]_i_1_n_0\,
      D => \breath_tick[3]_i_2_n_0\,
      Q => \breath_tick_reg_n_0_[3]\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\color_idx[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \color_idx[0]_i_1_n_0\
    );
\color_idx[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \color_idx[1]_i_1_n_0\
    );
\color_idx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \color_idx[2]_i_1_n_0\
    );
\color_idx[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \color_idx[3]_i_1_n_0\
    );
\color_idx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => beat_detected,
      D => \color_idx[0]_i_1_n_0\,
      Q => \^q\(0),
      R => reset
    );
\color_idx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => beat_detected,
      D => \color_idx[1]_i_1_n_0\,
      Q => \^q\(1),
      R => reset
    );
\color_idx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => beat_detected,
      D => \color_idx[2]_i_1_n_0\,
      Q => \^q\(2),
      R => reset
    );
\color_idx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => beat_detected,
      D => \color_idx[3]_i_1_n_0\,
      Q => \^q\(3),
      R => reset
    );
\fade_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fade_count_reg_n_0_[0]\,
      O => \fade_count[0]_i_1_n_0\
    );
\fade_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"26666666"
    )
        port map (
      I0 => \fade_count_reg_n_0_[1]\,
      I1 => \fade_count_reg_n_0_[0]\,
      I2 => \fade_count_reg_n_0_[2]\,
      I3 => \fade_count_reg_n_0_[3]\,
      I4 => \fade_count_reg_n_0_[4]\,
      O => \fade_count[1]_i_1_n_0\
    );
\fade_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"38787878"
    )
        port map (
      I0 => \fade_count_reg_n_0_[1]\,
      I1 => \fade_count_reg_n_0_[0]\,
      I2 => \fade_count_reg_n_0_[2]\,
      I3 => \fade_count_reg_n_0_[3]\,
      I4 => \fade_count_reg_n_0_[4]\,
      O => \fade_count[2]_i_1_n_0\
    );
\fade_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F807F80"
    )
        port map (
      I0 => \fade_count_reg_n_0_[1]\,
      I1 => \fade_count_reg_n_0_[0]\,
      I2 => \fade_count_reg_n_0_[2]\,
      I3 => \fade_count_reg_n_0_[3]\,
      I4 => \fade_count_reg_n_0_[4]\,
      O => \fade_count[3]_i_1_n_0\
    );
\fade_count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => frame_done,
      I1 => fade_count(0),
      O => \fade_count[4]_i_1_n_0\
    );
\fade_count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF8000"
    )
        port map (
      I0 => \fade_count_reg_n_0_[1]\,
      I1 => \fade_count_reg_n_0_[0]\,
      I2 => \fade_count_reg_n_0_[2]\,
      I3 => \fade_count_reg_n_0_[3]\,
      I4 => \fade_count_reg_n_0_[4]\,
      O => \fade_count[4]_i_2_n_0\
    );
\fade_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fade_count[4]_i_1_n_0\,
      D => \fade_count[0]_i_1_n_0\,
      Q => \fade_count_reg_n_0_[0]\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\fade_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fade_count[4]_i_1_n_0\,
      D => \fade_count[1]_i_1_n_0\,
      Q => \fade_count_reg_n_0_[1]\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\fade_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fade_count[4]_i_1_n_0\,
      D => \fade_count[2]_i_1_n_0\,
      Q => \fade_count_reg_n_0_[2]\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\fade_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fade_count[4]_i_1_n_0\,
      D => \fade_count[3]_i_1_n_0\,
      Q => \fade_count_reg_n_0_[3]\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\fade_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \fade_count[4]_i_1_n_0\,
      D => \fade_count[4]_i_2_n_0\,
      Q => \fade_count_reg_n_0_[4]\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\idle_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => idle_count(0),
      O => \idle_count[0]_i_1_n_0\
    );
\idle_count[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \idle_count[10]_i_3_n_0\,
      I2 => frame_done,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \idle_count[10]_i_1_n_0\
    );
\idle_count[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \idle_count[10]_i_4_n_0\,
      I1 => idle_count(9),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => idle_count(10),
      O => \idle_count[10]_i_2_n_0\
    );
\idle_count[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => idle_count(8),
      I1 => idle_count(9),
      I2 => idle_count(6),
      I3 => idle_count(7),
      I4 => idle_count(10),
      O => \idle_count[10]_i_3_n_0\
    );
\idle_count[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => idle_count(8),
      I1 => idle_count(7),
      I2 => idle_count(6),
      I3 => \idle_count[9]_i_2_n_0\,
      O => \idle_count[10]_i_4_n_0\
    );
\idle_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => idle_count(0),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => idle_count(1),
      O => \idle_count[1]_i_1_n_0\
    );
\idle_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => idle_count(1),
      I1 => idle_count(0),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => idle_count(2),
      O => \idle_count[2]_i_1_n_0\
    );
\idle_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => idle_count(2),
      I1 => idle_count(0),
      I2 => idle_count(1),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => idle_count(3),
      O => \idle_count[3]_i_1_n_0\
    );
\idle_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => idle_count(3),
      I1 => idle_count(1),
      I2 => idle_count(0),
      I3 => idle_count(2),
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => idle_count(4),
      O => \idle_count[4]_i_1_n_0\
    );
\idle_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \idle_count[5]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => idle_count(5),
      O => \idle_count[5]_i_1_n_0\
    );
\idle_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => idle_count(4),
      I1 => idle_count(2),
      I2 => idle_count(0),
      I3 => idle_count(1),
      I4 => idle_count(3),
      O => \idle_count[5]_i_2_n_0\
    );
\idle_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \idle_count[9]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => idle_count(6),
      O => \idle_count[6]_i_1_n_0\
    );
\idle_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D020"
    )
        port map (
      I0 => idle_count(6),
      I1 => \idle_count[9]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => idle_count(7),
      O => \idle_count[7]_i_1_n_0\
    );
\idle_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \idle_count[9]_i_2_n_0\,
      I1 => idle_count(6),
      I2 => idle_count(7),
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => idle_count(8),
      O => \idle_count[8]_i_1_n_0\
    );
\idle_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7F000000800000"
    )
        port map (
      I0 => idle_count(8),
      I1 => idle_count(7),
      I2 => idle_count(6),
      I3 => \idle_count[9]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => idle_count(9),
      O => \idle_count[9]_i_1_n_0\
    );
\idle_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => idle_count(5),
      I1 => idle_count(3),
      I2 => idle_count(1),
      I3 => idle_count(0),
      I4 => idle_count(2),
      I5 => idle_count(4),
      O => \idle_count[9]_i_2_n_0\
    );
\idle_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idle_count[10]_i_1_n_0\,
      D => \idle_count[0]_i_1_n_0\,
      Q => idle_count(0),
      R => \nolurcalis[2]_i_1_n_0\
    );
\idle_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idle_count[10]_i_1_n_0\,
      D => \idle_count[10]_i_2_n_0\,
      Q => idle_count(10),
      R => \nolurcalis[2]_i_1_n_0\
    );
\idle_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idle_count[10]_i_1_n_0\,
      D => \idle_count[1]_i_1_n_0\,
      Q => idle_count(1),
      R => \nolurcalis[2]_i_1_n_0\
    );
\idle_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idle_count[10]_i_1_n_0\,
      D => \idle_count[2]_i_1_n_0\,
      Q => idle_count(2),
      R => \nolurcalis[2]_i_1_n_0\
    );
\idle_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idle_count[10]_i_1_n_0\,
      D => \idle_count[3]_i_1_n_0\,
      Q => idle_count(3),
      R => \nolurcalis[2]_i_1_n_0\
    );
\idle_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idle_count[10]_i_1_n_0\,
      D => \idle_count[4]_i_1_n_0\,
      Q => idle_count(4),
      R => \nolurcalis[2]_i_1_n_0\
    );
\idle_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idle_count[10]_i_1_n_0\,
      D => \idle_count[5]_i_1_n_0\,
      Q => idle_count(5),
      R => \nolurcalis[2]_i_1_n_0\
    );
\idle_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idle_count[10]_i_1_n_0\,
      D => \idle_count[6]_i_1_n_0\,
      Q => idle_count(6),
      R => \nolurcalis[2]_i_1_n_0\
    );
\idle_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idle_count[10]_i_1_n_0\,
      D => \idle_count[7]_i_1_n_0\,
      Q => idle_count(7),
      R => \nolurcalis[2]_i_1_n_0\
    );
\idle_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idle_count[10]_i_1_n_0\,
      D => \idle_count[8]_i_1_n_0\,
      Q => idle_count(8),
      R => \nolurcalis[2]_i_1_n_0\
    );
\idle_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \idle_count[10]_i_1_n_0\,
      D => \idle_count[9]_i_1_n_0\,
      Q => idle_count(9),
      R => \nolurcalis[2]_i_1_n_0\
    );
\nolurcalis[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAAFFFFEFEE0000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => fade_count(0),
      I2 => sel0(4),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \nolurcalis[2]_i_4_n_0\,
      I5 => \^nolurcalis_reg[0]_0\,
      O => \nolurcalis[0]_i_1_n_0\
    );
\nolurcalis[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \nolurcalis[1]_i_2_n_0\,
      I1 => \nolurcalis[2]_i_4_n_0\,
      I2 => \^nolurcalis_reg[1]_0\,
      O => \nolurcalis[1]_i_1_n_0\
    );
\nolurcalis[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF48FF48FFFFFF48"
    )
        port map (
      I0 => \^nolurcalis_reg[1]_0\,
      I1 => fade_count(0),
      I2 => \^nolurcalis_reg[0]_0\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => sel0(5),
      O => \nolurcalis[1]_i_2_n_0\
    );
\nolurcalis[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset,
      I1 => beat_detected,
      O => \nolurcalis[2]_i_1_n_0\
    );
\nolurcalis[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEFFFFEEFE0000"
    )
        port map (
      I0 => \nolurcalis[2]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => sel0(6),
      I4 => \nolurcalis[2]_i_4_n_0\,
      I5 => \^nolurcalis_reg[2]_0\,
      O => \nolurcalis[2]_i_2_n_0\
    );
\nolurcalis[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \^nolurcalis_reg[0]_0\,
      I1 => \^nolurcalis_reg[1]_0\,
      I2 => fade_count(0),
      I3 => \^nolurcalis_reg[2]_0\,
      O => \nolurcalis[2]_i_3_n_0\
    );
\nolurcalis[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40404000000000"
    )
        port map (
      I0 => \FSM_onehot_state[0]_i_2_n_0\,
      I1 => \nolurcalis[2]_i_5_n_0\,
      I2 => fade_count(0),
      I3 => \nolurcalis[2]_i_6_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => frame_done,
      O => \nolurcalis[2]_i_4_n_0\
    );
\nolurcalis[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^nolurcalis_reg[1]_0\,
      I1 => \^nolurcalis_reg[0]_0\,
      I2 => \^nolurcalis_reg[2]_0\,
      O => \nolurcalis[2]_i_5_n_0\
    );
\nolurcalis[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \breath_tick_reg_n_0_[3]\,
      I1 => \breath_tick_reg_n_0_[1]\,
      I2 => \breath_tick_reg_n_0_[0]\,
      I3 => \breath_tick_reg_n_0_[2]\,
      O => \nolurcalis[2]_i_6_n_0\
    );
\nolurcalis_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \nolurcalis[0]_i_1_n_0\,
      Q => \^nolurcalis_reg[0]_0\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\nolurcalis_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \nolurcalis[1]_i_1_n_0\,
      Q => \^nolurcalis_reg[1]_0\,
      R => \nolurcalis[2]_i_1_n_0\
    );
\nolurcalis_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \nolurcalis[2]_i_2_n_0\,
      Q => \^nolurcalis_reg[2]_0\,
      R => \nolurcalis[2]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity led_subsystem_beat_color_auto_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of led_subsystem_beat_color_auto_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of led_subsystem_beat_color_auto_0_0 : entity is "led_subsystem_beat_color_auto_0_0,beat_color_auto,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of led_subsystem_beat_color_auto_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of led_subsystem_beat_color_auto_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of led_subsystem_beat_color_auto_0_0 : entity is "beat_color_auto,Vivado 2025.2";
end led_subsystem_beat_color_auto_0_0;

architecture STRUCTURE of led_subsystem_beat_color_auto_0_0 is
  signal \^led_enable\ : STD_LOGIC;
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
  \^led_enable\ <= led_enable;
  enable <= \^led_enable\;
inst: entity work.led_subsystem_beat_color_auto_0_0_beat_color_auto
     port map (
      Q(3 downto 0) => color_index(3 downto 0),
      beat_detected => beat_detected,
      clk => clk,
      frame_done => frame_done,
      \nolurcalis_reg[0]_0\ => brightness_level(0),
      \nolurcalis_reg[1]_0\ => brightness_level(1),
      \nolurcalis_reg[2]_0\ => brightness_level(2),
      reset => reset
    );
end STRUCTURE;
