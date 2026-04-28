-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Apr 23 22:19:55 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_moving_average_0_0/led_subsystem_moving_average_0_0_sim_netlist.vhdl
-- Design      : led_subsystem_moving_average_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity led_subsystem_moving_average_0_0_moving_average is
  port (
    audio_filtered : out STD_LOGIC_VECTOR ( 11 downto 0 );
    reset : in STD_LOGIC;
    sample_valid : in STD_LOGIC;
    audio_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of led_subsystem_moving_average_0_0_moving_average : entity is "moving_average";
end led_subsystem_moving_average_0_0_moving_average;

architecture STRUCTURE of led_subsystem_moving_average_0_0_moving_average is
  signal \audio_filtered[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \audio_filtered[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \audio_filtered[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \audio_filtered[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \audio_filtered[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \audio_filtered[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \audio_filtered[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \audio_filtered[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \audio_filtered[0]_INST_0_n_0\ : STD_LOGIC;
  signal \audio_filtered[0]_INST_0_n_1\ : STD_LOGIC;
  signal \audio_filtered[0]_INST_0_n_2\ : STD_LOGIC;
  signal \audio_filtered[0]_INST_0_n_3\ : STD_LOGIC;
  signal \audio_filtered[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \audio_filtered[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \audio_filtered[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \audio_filtered[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_n_0\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_n_1\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_n_2\ : STD_LOGIC;
  signal \audio_filtered[2]_INST_0_n_3\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_n_0\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_n_1\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_n_2\ : STD_LOGIC;
  signal \audio_filtered[6]_INST_0_n_3\ : STD_LOGIC;
  signal \samples_reg[0]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \samples_reg[1]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \samples_reg[2]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \samples_reg[3]\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_audio_filtered[0]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_audio_filtered[10]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_audio_filtered[10]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \audio_filtered[10]_INST_0_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \audio_filtered[6]_INST_0_i_9\ : label is "soft_lutpair0";
begin
\audio_filtered[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \audio_filtered[0]_INST_0_n_0\,
      CO(2) => \audio_filtered[0]_INST_0_n_1\,
      CO(1) => \audio_filtered[0]_INST_0_n_2\,
      CO(0) => \audio_filtered[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \audio_filtered[0]_INST_0_i_1_n_0\,
      DI(2) => \audio_filtered[0]_INST_0_i_2_n_0\,
      DI(1) => \audio_filtered[0]_INST_0_i_3_n_0\,
      DI(0) => \samples_reg[0]\(0),
      O(3 downto 2) => audio_filtered(1 downto 0),
      O(1 downto 0) => \NLW_audio_filtered[0]_INST_0_O_UNCONNECTED\(1 downto 0),
      S(3) => \audio_filtered[0]_INST_0_i_4_n_0\,
      S(2) => \audio_filtered[0]_INST_0_i_5_n_0\,
      S(1) => \audio_filtered[0]_INST_0_i_6_n_0\,
      S(0) => \audio_filtered[0]_INST_0_i_7_n_0\
    );
\audio_filtered[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \samples_reg[0]\(2),
      I1 => \audio_filtered[0]_INST_0_i_8_n_0\,
      I2 => \samples_reg[3]\(1),
      I3 => \samples_reg[2]\(1),
      I4 => \samples_reg[1]\(1),
      O => \audio_filtered[0]_INST_0_i_1_n_0\
    );
\audio_filtered[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \samples_reg[3]\(1),
      I1 => \samples_reg[2]\(1),
      I2 => \samples_reg[1]\(1),
      I3 => \samples_reg[0]\(2),
      I4 => \audio_filtered[0]_INST_0_i_8_n_0\,
      O => \audio_filtered[0]_INST_0_i_2_n_0\
    );
\audio_filtered[0]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \samples_reg[2]\(1),
      I1 => \samples_reg[1]\(1),
      I2 => \samples_reg[3]\(1),
      I3 => \samples_reg[0]\(1),
      O => \audio_filtered[0]_INST_0_i_3_n_0\
    );
\audio_filtered[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \audio_filtered[0]_INST_0_i_1_n_0\,
      I1 => \audio_filtered[2]_INST_0_i_12_n_0\,
      I2 => \samples_reg[0]\(3),
      I3 => \samples_reg[1]\(2),
      I4 => \samples_reg[2]\(2),
      I5 => \samples_reg[3]\(2),
      O => \audio_filtered[0]_INST_0_i_4_n_0\
    );
\audio_filtered[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \audio_filtered[0]_INST_0_i_8_n_0\,
      I1 => \samples_reg[0]\(2),
      I2 => \samples_reg[3]\(1),
      I3 => \samples_reg[1]\(1),
      I4 => \samples_reg[2]\(1),
      I5 => \samples_reg[0]\(1),
      O => \audio_filtered[0]_INST_0_i_5_n_0\
    );
\audio_filtered[0]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \audio_filtered[0]_INST_0_i_3_n_0\,
      I1 => \samples_reg[3]\(0),
      I2 => \samples_reg[2]\(0),
      I3 => \samples_reg[1]\(0),
      O => \audio_filtered[0]_INST_0_i_6_n_0\
    );
\audio_filtered[0]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \samples_reg[2]\(0),
      I1 => \samples_reg[1]\(0),
      I2 => \samples_reg[3]\(0),
      I3 => \samples_reg[0]\(0),
      O => \audio_filtered[0]_INST_0_i_7_n_0\
    );
\audio_filtered[0]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \samples_reg[3]\(2),
      I1 => \samples_reg[1]\(2),
      I2 => \samples_reg[2]\(2),
      O => \audio_filtered[0]_INST_0_i_8_n_0\
    );
\audio_filtered[10]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \audio_filtered[6]_INST_0_n_0\,
      CO(3 downto 2) => \NLW_audio_filtered[10]_INST_0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => audio_filtered(11),
      CO(0) => \NLW_audio_filtered[10]_INST_0_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \audio_filtered[10]_INST_0_i_1_n_0\,
      O(3 downto 1) => \NLW_audio_filtered[10]_INST_0_O_UNCONNECTED\(3 downto 1),
      O(0) => audio_filtered(10),
      S(3 downto 1) => B"001",
      S(0) => \audio_filtered[10]_INST_0_i_2_n_0\
    );
\audio_filtered[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \samples_reg[0]\(11),
      I1 => \audio_filtered[10]_INST_0_i_3_n_0\,
      I2 => \samples_reg[3]\(10),
      I3 => \samples_reg[2]\(10),
      I4 => \samples_reg[1]\(10),
      O => \audio_filtered[10]_INST_0_i_1_n_0\
    );
\audio_filtered[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"177E7EE8"
    )
        port map (
      I0 => \audio_filtered[10]_INST_0_i_4_n_0\,
      I1 => \samples_reg[0]\(11),
      I2 => \samples_reg[3]\(11),
      I3 => \samples_reg[2]\(11),
      I4 => \samples_reg[1]\(11),
      O => \audio_filtered[10]_INST_0_i_2_n_0\
    );
\audio_filtered[10]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \samples_reg[3]\(11),
      I1 => \samples_reg[1]\(11),
      I2 => \samples_reg[2]\(11),
      O => \audio_filtered[10]_INST_0_i_3_n_0\
    );
\audio_filtered[10]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \samples_reg[1]\(10),
      I1 => \samples_reg[2]\(10),
      I2 => \samples_reg[3]\(10),
      O => \audio_filtered[10]_INST_0_i_4_n_0\
    );
\audio_filtered[2]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \audio_filtered[0]_INST_0_n_0\,
      CO(3) => \audio_filtered[2]_INST_0_n_0\,
      CO(2) => \audio_filtered[2]_INST_0_n_1\,
      CO(1) => \audio_filtered[2]_INST_0_n_2\,
      CO(0) => \audio_filtered[2]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \audio_filtered[2]_INST_0_i_1_n_0\,
      DI(2) => \audio_filtered[2]_INST_0_i_2_n_0\,
      DI(1) => \audio_filtered[2]_INST_0_i_3_n_0\,
      DI(0) => \audio_filtered[2]_INST_0_i_4_n_0\,
      O(3 downto 0) => audio_filtered(5 downto 2),
      S(3) => \audio_filtered[2]_INST_0_i_5_n_0\,
      S(2) => \audio_filtered[2]_INST_0_i_6_n_0\,
      S(1) => \audio_filtered[2]_INST_0_i_7_n_0\,
      S(0) => \audio_filtered[2]_INST_0_i_8_n_0\
    );
\audio_filtered[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \samples_reg[0]\(6),
      I1 => \audio_filtered[2]_INST_0_i_9_n_0\,
      I2 => \samples_reg[3]\(5),
      I3 => \samples_reg[2]\(5),
      I4 => \samples_reg[1]\(5),
      O => \audio_filtered[2]_INST_0_i_1_n_0\
    );
\audio_filtered[2]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \samples_reg[3]\(5),
      I1 => \samples_reg[1]\(5),
      I2 => \samples_reg[2]\(5),
      O => \audio_filtered[2]_INST_0_i_10_n_0\
    );
\audio_filtered[2]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \samples_reg[3]\(4),
      I1 => \samples_reg[1]\(4),
      I2 => \samples_reg[2]\(4),
      O => \audio_filtered[2]_INST_0_i_11_n_0\
    );
\audio_filtered[2]_INST_0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \samples_reg[3]\(3),
      I1 => \samples_reg[1]\(3),
      I2 => \samples_reg[2]\(3),
      O => \audio_filtered[2]_INST_0_i_12_n_0\
    );
\audio_filtered[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \samples_reg[0]\(5),
      I1 => \audio_filtered[2]_INST_0_i_10_n_0\,
      I2 => \samples_reg[3]\(4),
      I3 => \samples_reg[2]\(4),
      I4 => \samples_reg[1]\(4),
      O => \audio_filtered[2]_INST_0_i_2_n_0\
    );
\audio_filtered[2]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \samples_reg[0]\(4),
      I1 => \audio_filtered[2]_INST_0_i_11_n_0\,
      I2 => \samples_reg[3]\(3),
      I3 => \samples_reg[2]\(3),
      I4 => \samples_reg[1]\(3),
      O => \audio_filtered[2]_INST_0_i_3_n_0\
    );
\audio_filtered[2]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \samples_reg[0]\(3),
      I1 => \audio_filtered[2]_INST_0_i_12_n_0\,
      I2 => \samples_reg[3]\(2),
      I3 => \samples_reg[2]\(2),
      I4 => \samples_reg[1]\(2),
      O => \audio_filtered[2]_INST_0_i_4_n_0\
    );
\audio_filtered[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \audio_filtered[2]_INST_0_i_1_n_0\,
      I1 => \audio_filtered[6]_INST_0_i_12_n_0\,
      I2 => \samples_reg[0]\(7),
      I3 => \samples_reg[1]\(6),
      I4 => \samples_reg[2]\(6),
      I5 => \samples_reg[3]\(6),
      O => \audio_filtered[2]_INST_0_i_5_n_0\
    );
\audio_filtered[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \audio_filtered[2]_INST_0_i_2_n_0\,
      I1 => \audio_filtered[2]_INST_0_i_9_n_0\,
      I2 => \samples_reg[0]\(6),
      I3 => \samples_reg[1]\(5),
      I4 => \samples_reg[2]\(5),
      I5 => \samples_reg[3]\(5),
      O => \audio_filtered[2]_INST_0_i_6_n_0\
    );
\audio_filtered[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \audio_filtered[2]_INST_0_i_3_n_0\,
      I1 => \audio_filtered[2]_INST_0_i_10_n_0\,
      I2 => \samples_reg[0]\(5),
      I3 => \samples_reg[1]\(4),
      I4 => \samples_reg[2]\(4),
      I5 => \samples_reg[3]\(4),
      O => \audio_filtered[2]_INST_0_i_7_n_0\
    );
\audio_filtered[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \audio_filtered[2]_INST_0_i_4_n_0\,
      I1 => \audio_filtered[2]_INST_0_i_11_n_0\,
      I2 => \samples_reg[0]\(4),
      I3 => \samples_reg[1]\(3),
      I4 => \samples_reg[2]\(3),
      I5 => \samples_reg[3]\(3),
      O => \audio_filtered[2]_INST_0_i_8_n_0\
    );
\audio_filtered[2]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \samples_reg[3]\(6),
      I1 => \samples_reg[1]\(6),
      I2 => \samples_reg[2]\(6),
      O => \audio_filtered[2]_INST_0_i_9_n_0\
    );
\audio_filtered[6]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \audio_filtered[2]_INST_0_n_0\,
      CO(3) => \audio_filtered[6]_INST_0_n_0\,
      CO(2) => \audio_filtered[6]_INST_0_n_1\,
      CO(1) => \audio_filtered[6]_INST_0_n_2\,
      CO(0) => \audio_filtered[6]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \audio_filtered[6]_INST_0_i_1_n_0\,
      DI(2) => \audio_filtered[6]_INST_0_i_2_n_0\,
      DI(1) => \audio_filtered[6]_INST_0_i_3_n_0\,
      DI(0) => \audio_filtered[6]_INST_0_i_4_n_0\,
      O(3 downto 0) => audio_filtered(9 downto 6),
      S(3) => \audio_filtered[6]_INST_0_i_5_n_0\,
      S(2) => \audio_filtered[6]_INST_0_i_6_n_0\,
      S(1) => \audio_filtered[6]_INST_0_i_7_n_0\,
      S(0) => \audio_filtered[6]_INST_0_i_8_n_0\
    );
\audio_filtered[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \samples_reg[0]\(10),
      I1 => \audio_filtered[6]_INST_0_i_9_n_0\,
      I2 => \samples_reg[3]\(9),
      I3 => \samples_reg[2]\(9),
      I4 => \samples_reg[1]\(9),
      O => \audio_filtered[6]_INST_0_i_1_n_0\
    );
\audio_filtered[6]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \samples_reg[3]\(9),
      I1 => \samples_reg[1]\(9),
      I2 => \samples_reg[2]\(9),
      O => \audio_filtered[6]_INST_0_i_10_n_0\
    );
\audio_filtered[6]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \samples_reg[3]\(8),
      I1 => \samples_reg[1]\(8),
      I2 => \samples_reg[2]\(8),
      O => \audio_filtered[6]_INST_0_i_11_n_0\
    );
\audio_filtered[6]_INST_0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \samples_reg[3]\(7),
      I1 => \samples_reg[1]\(7),
      I2 => \samples_reg[2]\(7),
      O => \audio_filtered[6]_INST_0_i_12_n_0\
    );
\audio_filtered[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \samples_reg[0]\(9),
      I1 => \audio_filtered[6]_INST_0_i_10_n_0\,
      I2 => \samples_reg[3]\(8),
      I3 => \samples_reg[2]\(8),
      I4 => \samples_reg[1]\(8),
      O => \audio_filtered[6]_INST_0_i_2_n_0\
    );
\audio_filtered[6]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \samples_reg[0]\(8),
      I1 => \audio_filtered[6]_INST_0_i_11_n_0\,
      I2 => \samples_reg[3]\(7),
      I3 => \samples_reg[2]\(7),
      I4 => \samples_reg[1]\(7),
      O => \audio_filtered[6]_INST_0_i_3_n_0\
    );
\audio_filtered[6]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \samples_reg[0]\(7),
      I1 => \audio_filtered[6]_INST_0_i_12_n_0\,
      I2 => \samples_reg[3]\(6),
      I3 => \samples_reg[2]\(6),
      I4 => \samples_reg[1]\(6),
      O => \audio_filtered[6]_INST_0_i_4_n_0\
    );
\audio_filtered[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \audio_filtered[6]_INST_0_i_1_n_0\,
      I1 => \audio_filtered[10]_INST_0_i_3_n_0\,
      I2 => \samples_reg[0]\(11),
      I3 => \samples_reg[1]\(10),
      I4 => \samples_reg[2]\(10),
      I5 => \samples_reg[3]\(10),
      O => \audio_filtered[6]_INST_0_i_5_n_0\
    );
\audio_filtered[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \audio_filtered[6]_INST_0_i_2_n_0\,
      I1 => \audio_filtered[6]_INST_0_i_9_n_0\,
      I2 => \samples_reg[0]\(10),
      I3 => \samples_reg[1]\(9),
      I4 => \samples_reg[2]\(9),
      I5 => \samples_reg[3]\(9),
      O => \audio_filtered[6]_INST_0_i_6_n_0\
    );
\audio_filtered[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \audio_filtered[6]_INST_0_i_3_n_0\,
      I1 => \audio_filtered[6]_INST_0_i_10_n_0\,
      I2 => \samples_reg[0]\(9),
      I3 => \samples_reg[1]\(8),
      I4 => \samples_reg[2]\(8),
      I5 => \samples_reg[3]\(8),
      O => \audio_filtered[6]_INST_0_i_7_n_0\
    );
\audio_filtered[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \audio_filtered[6]_INST_0_i_4_n_0\,
      I1 => \audio_filtered[6]_INST_0_i_11_n_0\,
      I2 => \samples_reg[0]\(8),
      I3 => \samples_reg[1]\(7),
      I4 => \samples_reg[2]\(7),
      I5 => \samples_reg[3]\(7),
      O => \audio_filtered[6]_INST_0_i_8_n_0\
    );
\audio_filtered[6]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \samples_reg[3]\(10),
      I1 => \samples_reg[1]\(10),
      I2 => \samples_reg[2]\(10),
      O => \audio_filtered[6]_INST_0_i_9_n_0\
    );
\samples_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => audio_in(0),
      Q => \samples_reg[0]\(0),
      R => reset
    );
\samples_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => audio_in(10),
      Q => \samples_reg[0]\(10),
      R => reset
    );
\samples_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => audio_in(11),
      Q => \samples_reg[0]\(11),
      R => reset
    );
\samples_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => audio_in(1),
      Q => \samples_reg[0]\(1),
      R => reset
    );
\samples_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => audio_in(2),
      Q => \samples_reg[0]\(2),
      R => reset
    );
\samples_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => audio_in(3),
      Q => \samples_reg[0]\(3),
      R => reset
    );
\samples_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => audio_in(4),
      Q => \samples_reg[0]\(4),
      R => reset
    );
\samples_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => audio_in(5),
      Q => \samples_reg[0]\(5),
      R => reset
    );
\samples_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => audio_in(6),
      Q => \samples_reg[0]\(6),
      R => reset
    );
\samples_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => audio_in(7),
      Q => \samples_reg[0]\(7),
      R => reset
    );
\samples_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => audio_in(8),
      Q => \samples_reg[0]\(8),
      R => reset
    );
\samples_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => audio_in(9),
      Q => \samples_reg[0]\(9),
      R => reset
    );
\samples_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[0]\(0),
      Q => \samples_reg[1]\(0),
      R => reset
    );
\samples_reg[1][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[0]\(10),
      Q => \samples_reg[1]\(10),
      R => reset
    );
\samples_reg[1][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[0]\(11),
      Q => \samples_reg[1]\(11),
      R => reset
    );
\samples_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[0]\(1),
      Q => \samples_reg[1]\(1),
      R => reset
    );
\samples_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[0]\(2),
      Q => \samples_reg[1]\(2),
      R => reset
    );
\samples_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[0]\(3),
      Q => \samples_reg[1]\(3),
      R => reset
    );
\samples_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[0]\(4),
      Q => \samples_reg[1]\(4),
      R => reset
    );
\samples_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[0]\(5),
      Q => \samples_reg[1]\(5),
      R => reset
    );
\samples_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[0]\(6),
      Q => \samples_reg[1]\(6),
      R => reset
    );
\samples_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[0]\(7),
      Q => \samples_reg[1]\(7),
      R => reset
    );
\samples_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[0]\(8),
      Q => \samples_reg[1]\(8),
      R => reset
    );
\samples_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[0]\(9),
      Q => \samples_reg[1]\(9),
      R => reset
    );
\samples_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[1]\(0),
      Q => \samples_reg[2]\(0),
      R => reset
    );
\samples_reg[2][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[1]\(10),
      Q => \samples_reg[2]\(10),
      R => reset
    );
\samples_reg[2][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[1]\(11),
      Q => \samples_reg[2]\(11),
      R => reset
    );
\samples_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[1]\(1),
      Q => \samples_reg[2]\(1),
      R => reset
    );
\samples_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[1]\(2),
      Q => \samples_reg[2]\(2),
      R => reset
    );
\samples_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[1]\(3),
      Q => \samples_reg[2]\(3),
      R => reset
    );
\samples_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[1]\(4),
      Q => \samples_reg[2]\(4),
      R => reset
    );
\samples_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[1]\(5),
      Q => \samples_reg[2]\(5),
      R => reset
    );
\samples_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[1]\(6),
      Q => \samples_reg[2]\(6),
      R => reset
    );
\samples_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[1]\(7),
      Q => \samples_reg[2]\(7),
      R => reset
    );
\samples_reg[2][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[1]\(8),
      Q => \samples_reg[2]\(8),
      R => reset
    );
\samples_reg[2][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[1]\(9),
      Q => \samples_reg[2]\(9),
      R => reset
    );
\samples_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[2]\(0),
      Q => \samples_reg[3]\(0),
      R => reset
    );
\samples_reg[3][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[2]\(10),
      Q => \samples_reg[3]\(10),
      R => reset
    );
\samples_reg[3][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[2]\(11),
      Q => \samples_reg[3]\(11),
      R => reset
    );
\samples_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[2]\(1),
      Q => \samples_reg[3]\(1),
      R => reset
    );
\samples_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[2]\(2),
      Q => \samples_reg[3]\(2),
      R => reset
    );
\samples_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[2]\(3),
      Q => \samples_reg[3]\(3),
      R => reset
    );
\samples_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[2]\(4),
      Q => \samples_reg[3]\(4),
      R => reset
    );
\samples_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[2]\(5),
      Q => \samples_reg[3]\(5),
      R => reset
    );
\samples_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[2]\(6),
      Q => \samples_reg[3]\(6),
      R => reset
    );
\samples_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[2]\(7),
      Q => \samples_reg[3]\(7),
      R => reset
    );
\samples_reg[3][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[2]\(8),
      Q => \samples_reg[3]\(8),
      R => reset
    );
\samples_reg[3][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sample_valid,
      D => \samples_reg[2]\(9),
      Q => \samples_reg[3]\(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity led_subsystem_moving_average_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    sample_valid : in STD_LOGIC;
    audio_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    audio_filtered : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of led_subsystem_moving_average_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of led_subsystem_moving_average_0_0 : entity is "led_subsystem_moving_average_0_0,moving_average,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of led_subsystem_moving_average_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of led_subsystem_moving_average_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of led_subsystem_moving_average_0_0 : entity is "moving_average,Vivado 2025.2";
end led_subsystem_moving_average_0_0;

architecture STRUCTURE of led_subsystem_moving_average_0_0 is
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
inst: entity work.led_subsystem_moving_average_0_0_moving_average
     port map (
      audio_filtered(11 downto 0) => audio_filtered(11 downto 0),
      audio_in(11 downto 0) => audio_in(11 downto 0),
      clk => clk,
      reset => reset,
      sample_valid => sample_valid
    );
end STRUCTURE;
