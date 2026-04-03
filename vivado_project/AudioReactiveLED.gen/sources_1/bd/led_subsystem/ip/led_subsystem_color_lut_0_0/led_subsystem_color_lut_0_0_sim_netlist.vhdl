-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:55:30 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_color_lut_0_0/led_subsystem_color_lut_0_0_sim_netlist.vhdl
-- Design      : led_subsystem_color_lut_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity led_subsystem_color_lut_0_0 is
  port (
    color_index : in STD_LOGIC_VECTOR ( 3 downto 0 );
    brightness_level : in STD_LOGIC_VECTOR ( 2 downto 0 );
    color_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of led_subsystem_color_lut_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of led_subsystem_color_lut_0_0 : entity is "led_subsystem_color_lut_0_0,color_lut,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of led_subsystem_color_lut_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of led_subsystem_color_lut_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of led_subsystem_color_lut_0_0 : entity is "color_lut,Vivado 2025.2";
end led_subsystem_color_lut_0_0;

architecture STRUCTURE of led_subsystem_color_lut_0_0 is
  signal ARG : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \color_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \color_out[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \color_out[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \color_out[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \color_out[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \color_out[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \color_out[0]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \color_out[12]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \color_out[14]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \color_out[14]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \color_out[16]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \color_out[21]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \color_out[5]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \color_out[9]_INST_0_i_1\ : label is "soft_lutpair0";
begin
\color_out[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEC4C0000EC4C"
    )
        port map (
      I0 => brightness_level(1),
      I1 => \color_out[0]_INST_0_i_1_n_0\,
      I2 => brightness_level(2),
      I3 => \color_out[5]_INST_0_i_1_n_0\,
      I4 => brightness_level(0),
      I5 => \color_out[1]_INST_0_i_1_n_0\,
      O => color_out(0)
    );
\color_out[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2674"
    )
        port map (
      I0 => color_index(0),
      I1 => color_index(1),
      I2 => color_index(2),
      I3 => color_index(3),
      O => \color_out[0]_INST_0_i_1_n_0\
    );
\color_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \color_out[10]_INST_0_i_1_n_0\,
      I1 => brightness_level(0),
      I2 => \color_out[10]_INST_0_i_2_n_0\,
      O => color_out(10)
    );
\color_out[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2770004477707070"
    )
        port map (
      I0 => brightness_level(1),
      I1 => brightness_level(2),
      I2 => color_index(0),
      I3 => color_index(2),
      I4 => color_index(1),
      I5 => color_index(3),
      O => \color_out[10]_INST_0_i_1_n_0\
    );
\color_out[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4770000077707070"
    )
        port map (
      I0 => brightness_level(1),
      I1 => brightness_level(2),
      I2 => color_index(0),
      I3 => color_index(2),
      I4 => color_index(1),
      I5 => color_index(3),
      O => \color_out[10]_INST_0_i_2_n_0\
    );
\color_out[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5C0CFCFC5C0C0C0"
    )
        port map (
      I0 => brightness_level(0),
      I1 => \color_out[14]_INST_0_i_2_n_0\,
      I2 => brightness_level(1),
      I3 => ARG(7),
      I4 => brightness_level(2),
      I5 => ARG(4),
      O => color_out(11)
    );
\color_out[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030C0C0B8B8F3C0"
    )
        port map (
      I0 => ARG(7),
      I1 => brightness_level(0),
      I2 => \color_out[14]_INST_0_i_2_n_0\,
      I3 => ARG(4),
      I4 => brightness_level(1),
      I5 => brightness_level(2),
      O => color_out(12)
    );
\color_out[12]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"60EA"
    )
        port map (
      I0 => color_index(0),
      I1 => color_index(2),
      I2 => color_index(1),
      I3 => color_index(3),
      O => ARG(4)
    );
\color_out[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => brightness_level(0),
      I1 => ARG(7),
      I2 => brightness_level(2),
      I3 => brightness_level(1),
      I4 => \color_out[14]_INST_0_i_2_n_0\,
      O => color_out(13)
    );
\color_out[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044F0"
    )
        port map (
      I0 => brightness_level(2),
      I1 => ARG(7),
      I2 => \color_out[14]_INST_0_i_2_n_0\,
      I3 => brightness_level(0),
      I4 => brightness_level(1),
      O => color_out(14)
    );
\color_out[14]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"63EA"
    )
        port map (
      I0 => color_index(0),
      I1 => color_index(2),
      I2 => color_index(1),
      I3 => color_index(3),
      O => ARG(7)
    );
\color_out[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F3A0"
    )
        port map (
      I0 => color_index(2),
      I1 => color_index(3),
      I2 => color_index(1),
      I3 => color_index(0),
      I4 => brightness_level(2),
      O => \color_out[14]_INST_0_i_2_n_0\
    );
\color_out[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000063EA0000"
    )
        port map (
      I0 => color_index(0),
      I1 => color_index(2),
      I2 => color_index(1),
      I3 => color_index(3),
      I4 => \color_out[23]_INST_0_i_1_n_0\,
      I5 => brightness_level(0),
      O => color_out(15)
    );
\color_out[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEC4C0000EC4C"
    )
        port map (
      I0 => brightness_level(1),
      I1 => \color_out[16]_INST_0_i_1_n_0\,
      I2 => brightness_level(2),
      I3 => \color_out[21]_INST_0_i_1_n_0\,
      I4 => brightness_level(0),
      I5 => \color_out[17]_INST_0_i_1_n_0\,
      O => color_out(16)
    );
\color_out[16]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"104F"
    )
        port map (
      I0 => color_index(3),
      I1 => color_index(2),
      I2 => color_index(1),
      I3 => color_index(0),
      O => \color_out[16]_INST_0_i_1_n_0\
    );
\color_out[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \color_out[18]_INST_0_i_1_n_0\,
      I1 => brightness_level(0),
      I2 => \color_out[17]_INST_0_i_1_n_0\,
      O => color_out(17)
    );
\color_out[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"306F102F90AF102F"
    )
        port map (
      I0 => color_index(2),
      I1 => color_index(3),
      I2 => color_index(1),
      I3 => color_index(0),
      I4 => brightness_level(2),
      I5 => brightness_level(1),
      O => \color_out[17]_INST_0_i_1_n_0\
    );
\color_out[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \color_out[19]_INST_0_i_1_n_0\,
      I1 => brightness_level(0),
      I2 => \color_out[18]_INST_0_i_1_n_0\,
      O => color_out(18)
    );
\color_out[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4007400007007777"
    )
        port map (
      I0 => brightness_level(1),
      I1 => brightness_level(2),
      I2 => color_index(3),
      I3 => color_index(2),
      I4 => color_index(1),
      I5 => color_index(0),
      O => \color_out[18]_INST_0_i_1_n_0\
    );
\color_out[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \color_out[20]_INST_0_i_1_n_0\,
      I1 => brightness_level(0),
      I2 => \color_out[19]_INST_0_i_1_n_0\,
      O => color_out(19)
    );
\color_out[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2407000027407777"
    )
        port map (
      I0 => brightness_level(1),
      I1 => brightness_level(2),
      I2 => color_index(3),
      I3 => color_index(2),
      I4 => color_index(1),
      I5 => color_index(0),
      O => \color_out[19]_INST_0_i_1_n_0\
    );
\color_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \color_out[2]_INST_0_i_1_n_0\,
      I1 => brightness_level(0),
      I2 => \color_out[1]_INST_0_i_1_n_0\,
      O => color_out(1)
    );
\color_out[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40F88FF00FFF0F00"
    )
        port map (
      I0 => brightness_level(1),
      I1 => brightness_level(2),
      I2 => color_index(0),
      I3 => color_index(1),
      I4 => color_index(2),
      I5 => color_index(3),
      O => \color_out[1]_INST_0_i_1_n_0\
    );
\color_out[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \color_out[21]_INST_0_i_2_n_0\,
      I1 => brightness_level(0),
      I2 => \color_out[20]_INST_0_i_1_n_0\,
      O => color_out(20)
    );
\color_out[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000984F104F"
    )
        port map (
      I0 => color_index(3),
      I1 => color_index(2),
      I2 => color_index(1),
      I3 => color_index(0),
      I4 => brightness_level(1),
      I5 => brightness_level(2),
      O => \color_out[20]_INST_0_i_1_n_0\
    );
\color_out[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => brightness_level(2),
      I1 => brightness_level(1),
      I2 => \color_out[21]_INST_0_i_1_n_0\,
      I3 => brightness_level(0),
      I4 => \color_out[21]_INST_0_i_2_n_0\,
      O => color_out(21)
    );
\color_out[21]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"982F"
    )
        port map (
      I0 => color_index(2),
      I1 => color_index(3),
      I2 => color_index(1),
      I3 => color_index(0),
      O => \color_out[21]_INST_0_i_1_n_0\
    );
\color_out[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000306F90AF"
    )
        port map (
      I0 => color_index(2),
      I1 => color_index(3),
      I2 => color_index(1),
      I3 => color_index(0),
      I4 => brightness_level(1),
      I5 => brightness_level(2),
      O => \color_out[21]_INST_0_i_2_n_0\
    );
\color_out[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404C8C0C080CC00C"
    )
        port map (
      I0 => brightness_level(0),
      I1 => \color_out[23]_INST_0_i_1_n_0\,
      I2 => color_index(0),
      I3 => color_index(1),
      I4 => color_index(3),
      I5 => color_index(2),
      O => color_out(22)
    );
\color_out[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000560F0000"
    )
        port map (
      I0 => color_index(3),
      I1 => color_index(2),
      I2 => color_index(0),
      I3 => color_index(1),
      I4 => \color_out[23]_INST_0_i_1_n_0\,
      I5 => brightness_level(0),
      O => color_out(23)
    );
\color_out[23]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => brightness_level(1),
      I1 => brightness_level(2),
      O => \color_out[23]_INST_0_i_1_n_0\
    );
\color_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \color_out[3]_INST_0_i_1_n_0\,
      I1 => brightness_level(0),
      I2 => \color_out[2]_INST_0_i_1_n_0\,
      O => color_out(2)
    );
\color_out[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4470077007770700"
    )
        port map (
      I0 => brightness_level(1),
      I1 => brightness_level(2),
      I2 => color_index(0),
      I3 => color_index(1),
      I4 => color_index(2),
      I5 => color_index(3),
      O => \color_out[2]_INST_0_i_1_n_0\
    );
\color_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \color_out[4]_INST_0_i_1_n_0\,
      I1 => brightness_level(0),
      I2 => \color_out[3]_INST_0_i_1_n_0\,
      O => color_out(3)
    );
\color_out[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2074477007770700"
    )
        port map (
      I0 => brightness_level(1),
      I1 => brightness_level(2),
      I2 => color_index(0),
      I3 => color_index(1),
      I4 => color_index(2),
      I5 => color_index(3),
      O => \color_out[3]_INST_0_i_1_n_0\
    );
\color_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \color_out[5]_INST_0_i_2_n_0\,
      I1 => brightness_level(0),
      I2 => \color_out[4]_INST_0_i_1_n_0\,
      O => color_out(4)
    );
\color_out[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E6742674"
    )
        port map (
      I0 => color_index(0),
      I1 => color_index(1),
      I2 => color_index(2),
      I3 => color_index(3),
      I4 => brightness_level(1),
      I5 => brightness_level(2),
      O => \color_out[4]_INST_0_i_1_n_0\
    );
\color_out[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => brightness_level(2),
      I1 => brightness_level(1),
      I2 => \color_out[5]_INST_0_i_1_n_0\,
      I3 => brightness_level(0),
      I4 => \color_out[5]_INST_0_i_2_n_0\,
      O => color_out(5)
    );
\color_out[5]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E674"
    )
        port map (
      I0 => color_index(0),
      I1 => color_index(1),
      I2 => color_index(2),
      I3 => color_index(3),
      O => \color_out[5]_INST_0_i_1_n_0\
    );
\color_out[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003E74A674"
    )
        port map (
      I0 => color_index(0),
      I1 => color_index(1),
      I2 => color_index(2),
      I3 => color_index(3),
      I4 => brightness_level(1),
      I5 => brightness_level(2),
      O => \color_out[5]_INST_0_i_2_n_0\
    );
\color_out[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4080CCC04CCC8C00"
    )
        port map (
      I0 => brightness_level(0),
      I1 => \color_out[23]_INST_0_i_1_n_0\,
      I2 => color_index(3),
      I3 => color_index(2),
      I4 => color_index(1),
      I5 => color_index(0),
      O => color_out(6)
    );
\color_out[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000037E40000"
    )
        port map (
      I0 => color_index(0),
      I1 => color_index(1),
      I2 => color_index(3),
      I3 => color_index(2),
      I4 => \color_out[23]_INST_0_i_1_n_0\,
      I5 => brightness_level(0),
      O => color_out(7)
    );
\color_out[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFD5FFAA8A805500"
    )
        port map (
      I0 => brightness_level(0),
      I1 => ARG(7),
      I2 => brightness_level(2),
      I3 => ARG(4),
      I4 => brightness_level(1),
      I5 => \color_out[9]_INST_0_i_1_n_0\,
      O => color_out(8)
    );
\color_out[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F40FFFF4F400000"
    )
        port map (
      I0 => brightness_level(0),
      I1 => ARG(7),
      I2 => brightness_level(2),
      I3 => ARG(4),
      I4 => brightness_level(1),
      I5 => \color_out[9]_INST_0_i_1_n_0\,
      O => color_out(9)
    );
\color_out[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC00FCCC"
    )
        port map (
      I0 => brightness_level(2),
      I1 => color_index(0),
      I2 => color_index(2),
      I3 => color_index(1),
      I4 => color_index(3),
      O => \color_out[9]_INST_0_i_1_n_0\
    );
end STRUCTURE;
