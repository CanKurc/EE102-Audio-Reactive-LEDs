-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Fri Apr  3 12:53:00 2026
-- Host        : CANKUR8A4F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_ws2812b_driver_0_0/led_subsystem_ws2812b_driver_0_0_sim_netlist.vhdl
-- Design      : led_subsystem_ws2812b_driver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity led_subsystem_ws2812b_driver_0_0_ws2812b_driver is
  port (
    led_data_out : out STD_LOGIC;
    frame_done : out STD_LOGIC;
    enable : in STD_LOGIC;
    color_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of led_subsystem_ws2812b_driver_0_0_ws2812b_driver : entity is "ws2812b_driver";
end led_subsystem_ws2812b_driver_0_0_ws2812b_driver;

architecture STRUCTURE of led_subsystem_ws2812b_driver_0_0_ws2812b_driver is
  signal active_color : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \active_color[0]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[10]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[11]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[12]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[13]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[14]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[15]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[16]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[17]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[18]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[19]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[1]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[20]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[21]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[22]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[23]_i_2_n_0\ : STD_LOGIC;
  signal \active_color[2]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[3]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[4]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[5]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[6]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[7]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[8]_i_1_n_0\ : STD_LOGIC;
  signal \active_color[9]_i_1_n_0\ : STD_LOGIC;
  signal \active_color_reg_n_0_[0]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[10]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[11]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[12]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[13]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[14]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[15]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[16]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[17]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[18]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[19]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[1]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[20]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[21]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[22]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[23]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[2]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[3]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[4]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[5]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[6]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[7]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[8]\ : STD_LOGIC;
  signal \active_color_reg_n_0_[9]\ : STD_LOGIC;
  signal \bit_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \bit_count[6]_i_2_n_0\ : STD_LOGIC;
  signal bit_count_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal bit_in_pixel : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bit_in_pixel[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_in_pixel[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_in_pixel[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_in_pixel[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_in_pixel[4]_i_2_n_0\ : STD_LOGIC;
  signal \bit_in_pixel[4]_i_3_n_0\ : STD_LOGIC;
  signal \bit_in_pixel[4]_i_4_n_0\ : STD_LOGIC;
  signal \bit_in_pixel[4]_i_5_n_0\ : STD_LOGIC;
  signal \bit_in_pixel[4]_i_6_n_0\ : STD_LOGIC;
  signal \bit_in_pixel[4]_i_7_n_0\ : STD_LOGIC;
  signal \bit_in_pixel[4]_i_8_n_0\ : STD_LOGIC;
  signal \bit_in_pixel_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_in_pixel_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_in_pixel_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_in_pixel_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_in_pixel_reg_n_0_[4]\ : STD_LOGIC;
  signal cycle_count0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \cycle_count0_carry__0_n_0\ : STD_LOGIC;
  signal \cycle_count0_carry__0_n_1\ : STD_LOGIC;
  signal \cycle_count0_carry__0_n_2\ : STD_LOGIC;
  signal \cycle_count0_carry__0_n_3\ : STD_LOGIC;
  signal \cycle_count0_carry__1_n_0\ : STD_LOGIC;
  signal \cycle_count0_carry__1_n_1\ : STD_LOGIC;
  signal \cycle_count0_carry__1_n_2\ : STD_LOGIC;
  signal \cycle_count0_carry__1_n_3\ : STD_LOGIC;
  signal \cycle_count0_carry__2_n_2\ : STD_LOGIC;
  signal \cycle_count0_carry__2_n_3\ : STD_LOGIC;
  signal cycle_count0_carry_n_0 : STD_LOGIC;
  signal cycle_count0_carry_n_1 : STD_LOGIC;
  signal cycle_count0_carry_n_2 : STD_LOGIC;
  signal cycle_count0_carry_n_3 : STD_LOGIC;
  signal \cycle_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \cycle_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[12]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[12]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \cycle_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \cycle_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \cycle_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \cycle_count[8]_i_5_n_0\ : STD_LOGIC;
  signal cycle_count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cycle_count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cycle_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \frame_done0_carry__0_n_2\ : STD_LOGIC;
  signal \frame_done0_carry__0_n_3\ : STD_LOGIC;
  signal \frame_done0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal frame_done0_carry_i_1_n_0 : STD_LOGIC;
  signal \frame_done0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal frame_done0_carry_i_2_n_0 : STD_LOGIC;
  signal \frame_done0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal frame_done0_carry_i_3_n_0 : STD_LOGIC;
  signal frame_done0_carry_i_4_n_0 : STD_LOGIC;
  signal frame_done0_carry_i_5_n_0 : STD_LOGIC;
  signal frame_done0_carry_i_6_n_0 : STD_LOGIC;
  signal frame_done0_carry_i_7_n_0 : STD_LOGIC;
  signal frame_done0_carry_n_0 : STD_LOGIC;
  signal frame_done0_carry_n_1 : STD_LOGIC;
  signal frame_done0_carry_n_2 : STD_LOGIC;
  signal frame_done0_carry_n_3 : STD_LOGIC;
  signal frame_done_i_1_n_0 : STD_LOGIC;
  signal internal_data_i_10_n_0 : STD_LOGIC;
  signal internal_data_i_11_n_0 : STD_LOGIC;
  signal internal_data_i_13_n_0 : STD_LOGIC;
  signal internal_data_i_14_n_0 : STD_LOGIC;
  signal internal_data_i_15_n_0 : STD_LOGIC;
  signal internal_data_i_16_n_0 : STD_LOGIC;
  signal internal_data_i_17_n_0 : STD_LOGIC;
  signal internal_data_i_18_n_0 : STD_LOGIC;
  signal internal_data_i_19_n_0 : STD_LOGIC;
  signal internal_data_i_1_n_0 : STD_LOGIC;
  signal internal_data_i_20_n_0 : STD_LOGIC;
  signal internal_data_i_21_n_0 : STD_LOGIC;
  signal internal_data_i_22_n_0 : STD_LOGIC;
  signal internal_data_i_23_n_0 : STD_LOGIC;
  signal internal_data_i_24_n_0 : STD_LOGIC;
  signal internal_data_i_25_n_0 : STD_LOGIC;
  signal internal_data_i_26_n_0 : STD_LOGIC;
  signal internal_data_i_2_n_0 : STD_LOGIC;
  signal internal_data_i_3_n_0 : STD_LOGIC;
  signal internal_data_i_5_n_0 : STD_LOGIC;
  signal internal_data_i_6_n_0 : STD_LOGIC;
  signal internal_data_i_7_n_0 : STD_LOGIC;
  signal internal_data_i_8_n_0 : STD_LOGIC;
  signal internal_data_i_9_n_0 : STD_LOGIC;
  signal internal_data_reg_i_12_n_0 : STD_LOGIC;
  signal internal_data_reg_i_12_n_1 : STD_LOGIC;
  signal internal_data_reg_i_12_n_2 : STD_LOGIC;
  signal internal_data_reg_i_12_n_3 : STD_LOGIC;
  signal internal_data_reg_i_4_n_2 : STD_LOGIC;
  signal internal_data_reg_i_4_n_3 : STD_LOGIC;
  signal \^led_data_out\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \state1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \state1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \state1_carry__0_n_1\ : STD_LOGIC;
  signal \state1_carry__0_n_2\ : STD_LOGIC;
  signal \state1_carry__0_n_3\ : STD_LOGIC;
  signal state1_carry_i_1_n_0 : STD_LOGIC;
  signal state1_carry_i_2_n_0 : STD_LOGIC;
  signal state1_carry_i_3_n_0 : STD_LOGIC;
  signal state1_carry_i_4_n_0 : STD_LOGIC;
  signal state1_carry_i_5_n_0 : STD_LOGIC;
  signal state1_carry_i_6_n_0 : STD_LOGIC;
  signal state1_carry_n_0 : STD_LOGIC;
  signal state1_carry_n_1 : STD_LOGIC;
  signal state1_carry_n_2 : STD_LOGIC;
  signal state1_carry_n_3 : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_i_2_n_0 : STD_LOGIC;
  signal state_i_3_n_0 : STD_LOGIC;
  signal state_i_4_n_0 : STD_LOGIC;
  signal state_reg_n_0 : STD_LOGIC;
  signal \NLW_cycle_count0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cycle_count0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cycle_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_frame_done0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_done0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_frame_done0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_internal_data_reg_i_12_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_internal_data_reg_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_internal_data_reg_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_state1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_state1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \active_color[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \active_color[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \active_color[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \active_color[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \active_color[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \active_color[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \active_color[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \active_color[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \active_color[17]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \active_color[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \active_color[19]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \active_color[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \active_color[20]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \active_color[21]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \active_color[22]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \active_color[23]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \active_color[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \active_color[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \active_color[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \active_color[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \active_color[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \active_color[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \active_color[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \active_color[9]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bit_count[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bit_count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bit_count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_count[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_count[6]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bit_count[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bit_count[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bit_count[9]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bit_in_pixel[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bit_in_pixel[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bit_in_pixel[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_in_pixel[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_in_pixel[4]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bit_in_pixel[4]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bit_in_pixel[4]_i_7\ : label is "soft_lutpair6";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cycle_count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \cycle_count_reg[8]_i_1\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of frame_done0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \frame_done0_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of internal_data_i_7 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of internal_data_i_8 : label is "soft_lutpair4";
  attribute COMPARATOR_THRESHOLD of internal_data_reg_i_12 : label is 11;
  attribute COMPARATOR_THRESHOLD of internal_data_reg_i_4 : label is 11;
  attribute COMPARATOR_THRESHOLD of state1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \state1_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of state_i_4 : label is "soft_lutpair5";
begin
  led_data_out <= \^led_data_out\;
\active_color[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(0),
      O => \active_color[0]_i_1_n_0\
    );
\active_color[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(10),
      O => \active_color[10]_i_1_n_0\
    );
\active_color[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(11),
      O => \active_color[11]_i_1_n_0\
    );
\active_color[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(12),
      O => \active_color[12]_i_1_n_0\
    );
\active_color[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(13),
      O => \active_color[13]_i_1_n_0\
    );
\active_color[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(14),
      O => \active_color[14]_i_1_n_0\
    );
\active_color[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(15),
      O => \active_color[15]_i_1_n_0\
    );
\active_color[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(16),
      O => \active_color[16]_i_1_n_0\
    );
\active_color[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(17),
      O => \active_color[17]_i_1_n_0\
    );
\active_color[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(18),
      O => \active_color[18]_i_1_n_0\
    );
\active_color[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(19),
      O => \active_color[19]_i_1_n_0\
    );
\active_color[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(1),
      O => \active_color[1]_i_1_n_0\
    );
\active_color[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(20),
      O => \active_color[20]_i_1_n_0\
    );
\active_color[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(21),
      O => \active_color[21]_i_1_n_0\
    );
\active_color[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(22),
      O => \active_color[22]_i_1_n_0\
    );
\active_color[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => \frame_done0_carry__0_n_2\,
      O => active_color(0)
    );
\active_color[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(23),
      O => \active_color[23]_i_2_n_0\
    );
\active_color[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(2),
      O => \active_color[2]_i_1_n_0\
    );
\active_color[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(3),
      O => \active_color[3]_i_1_n_0\
    );
\active_color[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(4),
      O => \active_color[4]_i_1_n_0\
    );
\active_color[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(5),
      O => \active_color[5]_i_1_n_0\
    );
\active_color[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(6),
      O => \active_color[6]_i_1_n_0\
    );
\active_color[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(7),
      O => \active_color[7]_i_1_n_0\
    );
\active_color[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(8),
      O => \active_color[8]_i_1_n_0\
    );
\active_color[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => color_in(9),
      O => \active_color[9]_i_1_n_0\
    );
\active_color_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[0]_i_1_n_0\,
      Q => \active_color_reg_n_0_[0]\,
      R => reset
    );
\active_color_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[10]_i_1_n_0\,
      Q => \active_color_reg_n_0_[10]\,
      R => reset
    );
\active_color_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[11]_i_1_n_0\,
      Q => \active_color_reg_n_0_[11]\,
      R => reset
    );
\active_color_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[12]_i_1_n_0\,
      Q => \active_color_reg_n_0_[12]\,
      R => reset
    );
\active_color_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[13]_i_1_n_0\,
      Q => \active_color_reg_n_0_[13]\,
      R => reset
    );
\active_color_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[14]_i_1_n_0\,
      Q => \active_color_reg_n_0_[14]\,
      R => reset
    );
\active_color_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[15]_i_1_n_0\,
      Q => \active_color_reg_n_0_[15]\,
      R => reset
    );
\active_color_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[16]_i_1_n_0\,
      Q => \active_color_reg_n_0_[16]\,
      R => reset
    );
\active_color_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[17]_i_1_n_0\,
      Q => \active_color_reg_n_0_[17]\,
      R => reset
    );
\active_color_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[18]_i_1_n_0\,
      Q => \active_color_reg_n_0_[18]\,
      R => reset
    );
\active_color_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[19]_i_1_n_0\,
      Q => \active_color_reg_n_0_[19]\,
      R => reset
    );
\active_color_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[1]_i_1_n_0\,
      Q => \active_color_reg_n_0_[1]\,
      R => reset
    );
\active_color_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[20]_i_1_n_0\,
      Q => \active_color_reg_n_0_[20]\,
      R => reset
    );
\active_color_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[21]_i_1_n_0\,
      Q => \active_color_reg_n_0_[21]\,
      R => reset
    );
\active_color_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[22]_i_1_n_0\,
      Q => \active_color_reg_n_0_[22]\,
      R => reset
    );
\active_color_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[23]_i_2_n_0\,
      Q => \active_color_reg_n_0_[23]\,
      R => reset
    );
\active_color_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[2]_i_1_n_0\,
      Q => \active_color_reg_n_0_[2]\,
      R => reset
    );
\active_color_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[3]_i_1_n_0\,
      Q => \active_color_reg_n_0_[3]\,
      R => reset
    );
\active_color_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[4]_i_1_n_0\,
      Q => \active_color_reg_n_0_[4]\,
      R => reset
    );
\active_color_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[5]_i_1_n_0\,
      Q => \active_color_reg_n_0_[5]\,
      R => reset
    );
\active_color_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[6]_i_1_n_0\,
      Q => \active_color_reg_n_0_[6]\,
      R => reset
    );
\active_color_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[7]_i_1_n_0\,
      Q => \active_color_reg_n_0_[7]\,
      R => reset
    );
\active_color_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[8]_i_1_n_0\,
      Q => \active_color_reg_n_0_[8]\,
      R => reset
    );
\active_color_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => active_color(0),
      D => \active_color[9]_i_1_n_0\,
      Q => \active_color_reg_n_0_[9]\,
      R => reset
    );
\bit_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bit_count_reg(0),
      O => p_0_in(0)
    );
\bit_count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => bit_count_reg(8),
      I1 => bit_count_reg(6),
      I2 => \bit_count[10]_i_2_n_0\,
      I3 => bit_count_reg(7),
      I4 => bit_count_reg(9),
      I5 => bit_count_reg(10),
      O => p_0_in(10)
    );
\bit_count[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => bit_count_reg(5),
      I1 => bit_count_reg(3),
      I2 => bit_count_reg(0),
      I3 => bit_count_reg(1),
      I4 => bit_count_reg(2),
      I5 => bit_count_reg(4),
      O => \bit_count[10]_i_2_n_0\
    );
\bit_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bit_count_reg(0),
      I1 => bit_count_reg(1),
      O => p_0_in(1)
    );
\bit_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bit_count_reg(1),
      I1 => bit_count_reg(0),
      I2 => bit_count_reg(2),
      O => p_0_in(2)
    );
\bit_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => bit_count_reg(0),
      I1 => bit_count_reg(1),
      I2 => bit_count_reg(2),
      I3 => bit_count_reg(3),
      O => p_0_in(3)
    );
\bit_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => bit_count_reg(2),
      I1 => bit_count_reg(1),
      I2 => bit_count_reg(0),
      I3 => bit_count_reg(3),
      I4 => bit_count_reg(4),
      O => p_0_in(4)
    );
\bit_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => bit_count_reg(3),
      I1 => bit_count_reg(0),
      I2 => bit_count_reg(1),
      I3 => bit_count_reg(2),
      I4 => bit_count_reg(4),
      I5 => bit_count_reg(5),
      O => p_0_in(5)
    );
\bit_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => bit_count_reg(4),
      I1 => bit_count_reg(2),
      I2 => \bit_count[6]_i_2_n_0\,
      I3 => bit_count_reg(3),
      I4 => bit_count_reg(5),
      I5 => bit_count_reg(6),
      O => p_0_in(6)
    );
\bit_count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bit_count_reg(0),
      I1 => bit_count_reg(1),
      O => \bit_count[6]_i_2_n_0\
    );
\bit_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \bit_count[10]_i_2_n_0\,
      I1 => bit_count_reg(6),
      I2 => bit_count_reg(7),
      O => p_0_in(7)
    );
\bit_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => bit_count_reg(6),
      I1 => \bit_count[10]_i_2_n_0\,
      I2 => bit_count_reg(7),
      I3 => bit_count_reg(8),
      O => p_0_in(8)
    );
\bit_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => bit_count_reg(7),
      I1 => \bit_count[10]_i_2_n_0\,
      I2 => bit_count_reg(6),
      I3 => bit_count_reg(8),
      I4 => bit_count_reg(9),
      O => p_0_in(9)
    );
\bit_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => p_0_in(0),
      Q => bit_count_reg(0),
      R => bit_in_pixel(0)
    );
\bit_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => p_0_in(10),
      Q => bit_count_reg(10),
      R => bit_in_pixel(0)
    );
\bit_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => p_0_in(1),
      Q => bit_count_reg(1),
      R => bit_in_pixel(0)
    );
\bit_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => p_0_in(2),
      Q => bit_count_reg(2),
      R => bit_in_pixel(0)
    );
\bit_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => p_0_in(3),
      Q => bit_count_reg(3),
      R => bit_in_pixel(0)
    );
\bit_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => p_0_in(4),
      Q => bit_count_reg(4),
      R => bit_in_pixel(0)
    );
\bit_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => p_0_in(5),
      Q => bit_count_reg(5),
      R => bit_in_pixel(0)
    );
\bit_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => p_0_in(6),
      Q => bit_count_reg(6),
      R => bit_in_pixel(0)
    );
\bit_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => p_0_in(7),
      Q => bit_count_reg(7),
      R => bit_in_pixel(0)
    );
\bit_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => p_0_in(8),
      Q => bit_count_reg(8),
      R => bit_in_pixel(0)
    );
\bit_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => p_0_in(9),
      Q => bit_count_reg(9),
      R => bit_in_pixel(0)
    );
\bit_in_pixel[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_in_pixel_reg_n_0_[0]\,
      O => \bit_in_pixel[0]_i_1_n_0\
    );
\bit_in_pixel[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bit_in_pixel_reg_n_0_[1]\,
      I1 => \bit_in_pixel_reg_n_0_[0]\,
      O => \bit_in_pixel[1]_i_1_n_0\
    );
\bit_in_pixel[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \bit_in_pixel_reg_n_0_[1]\,
      I1 => \bit_in_pixel_reg_n_0_[0]\,
      I2 => \bit_in_pixel_reg_n_0_[2]\,
      O => \bit_in_pixel[2]_i_1_n_0\
    );
\bit_in_pixel[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7078F0F0"
    )
        port map (
      I0 => \bit_in_pixel_reg_n_0_[1]\,
      I1 => \bit_in_pixel_reg_n_0_[0]\,
      I2 => \bit_in_pixel_reg_n_0_[3]\,
      I3 => \bit_in_pixel_reg_n_0_[4]\,
      I4 => \bit_in_pixel_reg_n_0_[2]\,
      O => \bit_in_pixel[3]_i_1_n_0\
    );
\bit_in_pixel[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => \frame_done0_carry__0_n_2\,
      I1 => state_reg_n_0,
      I2 => reset,
      O => bit_in_pixel(0)
    );
\bit_in_pixel[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \bit_in_pixel[4]_i_4_n_0\,
      I1 => internal_data_i_3_n_0,
      I2 => internal_data_i_2_n_0,
      O => \bit_in_pixel[4]_i_2_n_0\
    );
\bit_in_pixel[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF8000"
    )
        port map (
      I0 => \bit_in_pixel_reg_n_0_[3]\,
      I1 => \bit_in_pixel_reg_n_0_[1]\,
      I2 => \bit_in_pixel_reg_n_0_[0]\,
      I3 => \bit_in_pixel_reg_n_0_[2]\,
      I4 => \bit_in_pixel_reg_n_0_[4]\,
      O => \bit_in_pixel[4]_i_3_n_0\
    );
\bit_in_pixel[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
        port map (
      I0 => \bit_in_pixel[4]_i_5_n_0\,
      I1 => \bit_in_pixel[4]_i_6_n_0\,
      I2 => bit_count_reg(9),
      I3 => bit_count_reg(8),
      I4 => bit_count_reg(10),
      I5 => state_reg_n_0,
      O => \bit_in_pixel[4]_i_4_n_0\
    );
\bit_in_pixel[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFFFFF"
    )
        port map (
      I0 => bit_count_reg(0),
      I1 => bit_count_reg(2),
      I2 => \bit_in_pixel[4]_i_7_n_0\,
      I3 => \bit_in_pixel[4]_i_8_n_0\,
      I4 => bit_count_reg(1),
      O => \bit_in_pixel[4]_i_5_n_0\
    );
\bit_in_pixel[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => bit_count_reg(2),
      I1 => bit_count_reg(5),
      I2 => bit_count_reg(7),
      I3 => bit_count_reg(4),
      O => \bit_in_pixel[4]_i_6_n_0\
    );
\bit_in_pixel[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => bit_count_reg(7),
      I1 => bit_count_reg(6),
      I2 => bit_count_reg(8),
      O => \bit_in_pixel[4]_i_7_n_0\
    );
\bit_in_pixel[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bit_count_reg(4),
      I1 => bit_count_reg(3),
      I2 => bit_count_reg(5),
      O => \bit_in_pixel[4]_i_8_n_0\
    );
\bit_in_pixel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => \bit_in_pixel[0]_i_1_n_0\,
      Q => \bit_in_pixel_reg_n_0_[0]\,
      R => bit_in_pixel(0)
    );
\bit_in_pixel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => \bit_in_pixel[1]_i_1_n_0\,
      Q => \bit_in_pixel_reg_n_0_[1]\,
      R => bit_in_pixel(0)
    );
\bit_in_pixel_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => \bit_in_pixel[2]_i_1_n_0\,
      Q => \bit_in_pixel_reg_n_0_[2]\,
      R => bit_in_pixel(0)
    );
\bit_in_pixel_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => \bit_in_pixel[3]_i_1_n_0\,
      Q => \bit_in_pixel_reg_n_0_[3]\,
      R => bit_in_pixel(0)
    );
\bit_in_pixel_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \bit_in_pixel[4]_i_2_n_0\,
      D => \bit_in_pixel[4]_i_3_n_0\,
      Q => \bit_in_pixel_reg_n_0_[4]\,
      R => bit_in_pixel(0)
    );
cycle_count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cycle_count0_carry_n_0,
      CO(2) => cycle_count0_carry_n_1,
      CO(1) => cycle_count0_carry_n_2,
      CO(0) => cycle_count0_carry_n_3,
      CYINIT => cycle_count_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cycle_count0(4 downto 1),
      S(3 downto 0) => cycle_count_reg(4 downto 1)
    );
\cycle_count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cycle_count0_carry_n_0,
      CO(3) => \cycle_count0_carry__0_n_0\,
      CO(2) => \cycle_count0_carry__0_n_1\,
      CO(1) => \cycle_count0_carry__0_n_2\,
      CO(0) => \cycle_count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cycle_count0(8 downto 5),
      S(3 downto 0) => cycle_count_reg(8 downto 5)
    );
\cycle_count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count0_carry__0_n_0\,
      CO(3) => \cycle_count0_carry__1_n_0\,
      CO(2) => \cycle_count0_carry__1_n_1\,
      CO(1) => \cycle_count0_carry__1_n_2\,
      CO(0) => \cycle_count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cycle_count0(12 downto 9),
      S(3 downto 0) => cycle_count_reg(12 downto 9)
    );
\cycle_count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_cycle_count0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cycle_count0_carry__2_n_2\,
      CO(0) => \cycle_count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cycle_count0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => cycle_count0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => cycle_count_reg(15 downto 13)
    );
\cycle_count[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FE0"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => state_reg_n_0,
      I3 => cycle_count_reg(0),
      O => \cycle_count[0]_i_2_n_0\
    );
\cycle_count[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(3),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(3),
      O => \cycle_count[0]_i_3_n_0\
    );
\cycle_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(2),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(2),
      O => \cycle_count[0]_i_4_n_0\
    );
\cycle_count[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(1),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(1),
      O => \cycle_count[0]_i_5_n_0\
    );
\cycle_count[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5455"
    )
        port map (
      I0 => cycle_count_reg(0),
      I1 => internal_data_i_2_n_0,
      I2 => internal_data_i_3_n_0,
      I3 => state_reg_n_0,
      O => \cycle_count[0]_i_6_n_0\
    );
\cycle_count[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(15),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(15),
      O => \cycle_count[12]_i_2_n_0\
    );
\cycle_count[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(14),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(14),
      O => \cycle_count[12]_i_3_n_0\
    );
\cycle_count[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(13),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(13),
      O => \cycle_count[12]_i_4_n_0\
    );
\cycle_count[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(12),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(12),
      O => \cycle_count[12]_i_5_n_0\
    );
\cycle_count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(7),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(7),
      O => \cycle_count[4]_i_2_n_0\
    );
\cycle_count[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(6),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(6),
      O => \cycle_count[4]_i_3_n_0\
    );
\cycle_count[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(5),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(5),
      O => \cycle_count[4]_i_4_n_0\
    );
\cycle_count[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(4),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(4),
      O => \cycle_count[4]_i_5_n_0\
    );
\cycle_count[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(11),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(11),
      O => \cycle_count[8]_i_2_n_0\
    );
\cycle_count[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(10),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(10),
      O => \cycle_count[8]_i_3_n_0\
    );
\cycle_count[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(9),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(9),
      O => \cycle_count[8]_i_4_n_0\
    );
\cycle_count[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFE000"
    )
        port map (
      I0 => internal_data_i_3_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => cycle_count0(8),
      I3 => state_reg_n_0,
      I4 => cycle_count_reg(8),
      O => \cycle_count[8]_i_5_n_0\
    );
\cycle_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[0]_i_1_n_7\,
      Q => cycle_count_reg(0),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cycle_count_reg[0]_i_1_n_0\,
      CO(2) => \cycle_count_reg[0]_i_1_n_1\,
      CO(1) => \cycle_count_reg[0]_i_1_n_2\,
      CO(0) => \cycle_count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \cycle_count[0]_i_2_n_0\,
      O(3) => \cycle_count_reg[0]_i_1_n_4\,
      O(2) => \cycle_count_reg[0]_i_1_n_5\,
      O(1) => \cycle_count_reg[0]_i_1_n_6\,
      O(0) => \cycle_count_reg[0]_i_1_n_7\,
      S(3) => \cycle_count[0]_i_3_n_0\,
      S(2) => \cycle_count[0]_i_4_n_0\,
      S(1) => \cycle_count[0]_i_5_n_0\,
      S(0) => \cycle_count[0]_i_6_n_0\
    );
\cycle_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[8]_i_1_n_5\,
      Q => cycle_count_reg(10),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[8]_i_1_n_4\,
      Q => cycle_count_reg(11),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[12]_i_1_n_7\,
      Q => cycle_count_reg(12),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[8]_i_1_n_0\,
      CO(3) => \NLW_cycle_count_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cycle_count_reg[12]_i_1_n_1\,
      CO(1) => \cycle_count_reg[12]_i_1_n_2\,
      CO(0) => \cycle_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_count_reg[12]_i_1_n_4\,
      O(2) => \cycle_count_reg[12]_i_1_n_5\,
      O(1) => \cycle_count_reg[12]_i_1_n_6\,
      O(0) => \cycle_count_reg[12]_i_1_n_7\,
      S(3) => \cycle_count[12]_i_2_n_0\,
      S(2) => \cycle_count[12]_i_3_n_0\,
      S(1) => \cycle_count[12]_i_4_n_0\,
      S(0) => \cycle_count[12]_i_5_n_0\
    );
\cycle_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[12]_i_1_n_6\,
      Q => cycle_count_reg(13),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[12]_i_1_n_5\,
      Q => cycle_count_reg(14),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[12]_i_1_n_4\,
      Q => cycle_count_reg(15),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[0]_i_1_n_6\,
      Q => cycle_count_reg(1),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[0]_i_1_n_5\,
      Q => cycle_count_reg(2),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[0]_i_1_n_4\,
      Q => cycle_count_reg(3),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[4]_i_1_n_7\,
      Q => cycle_count_reg(4),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[0]_i_1_n_0\,
      CO(3) => \cycle_count_reg[4]_i_1_n_0\,
      CO(2) => \cycle_count_reg[4]_i_1_n_1\,
      CO(1) => \cycle_count_reg[4]_i_1_n_2\,
      CO(0) => \cycle_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_count_reg[4]_i_1_n_4\,
      O(2) => \cycle_count_reg[4]_i_1_n_5\,
      O(1) => \cycle_count_reg[4]_i_1_n_6\,
      O(0) => \cycle_count_reg[4]_i_1_n_7\,
      S(3) => \cycle_count[4]_i_2_n_0\,
      S(2) => \cycle_count[4]_i_3_n_0\,
      S(1) => \cycle_count[4]_i_4_n_0\,
      S(0) => \cycle_count[4]_i_5_n_0\
    );
\cycle_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[4]_i_1_n_6\,
      Q => cycle_count_reg(5),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[4]_i_1_n_5\,
      Q => cycle_count_reg(6),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[4]_i_1_n_4\,
      Q => cycle_count_reg(7),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[8]_i_1_n_7\,
      Q => cycle_count_reg(8),
      R => bit_in_pixel(0)
    );
\cycle_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycle_count_reg[4]_i_1_n_0\,
      CO(3) => \cycle_count_reg[8]_i_1_n_0\,
      CO(2) => \cycle_count_reg[8]_i_1_n_1\,
      CO(1) => \cycle_count_reg[8]_i_1_n_2\,
      CO(0) => \cycle_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycle_count_reg[8]_i_1_n_4\,
      O(2) => \cycle_count_reg[8]_i_1_n_5\,
      O(1) => \cycle_count_reg[8]_i_1_n_6\,
      O(0) => \cycle_count_reg[8]_i_1_n_7\,
      S(3) => \cycle_count[8]_i_2_n_0\,
      S(2) => \cycle_count[8]_i_3_n_0\,
      S(1) => \cycle_count[8]_i_4_n_0\,
      S(0) => \cycle_count[8]_i_5_n_0\
    );
\cycle_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cycle_count_reg[8]_i_1_n_6\,
      Q => cycle_count_reg(9),
      R => bit_in_pixel(0)
    );
frame_done0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => frame_done0_carry_n_0,
      CO(2) => frame_done0_carry_n_1,
      CO(1) => frame_done0_carry_n_2,
      CO(0) => frame_done0_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => frame_done0_carry_i_1_n_0,
      DI(1) => \frame_done0_carry_i_2__0_n_0\,
      DI(0) => \frame_done0_carry_i_3__0_n_0\,
      O(3 downto 0) => NLW_frame_done0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => frame_done0_carry_i_4_n_0,
      S(2) => frame_done0_carry_i_5_n_0,
      S(1) => frame_done0_carry_i_6_n_0,
      S(0) => frame_done0_carry_i_7_n_0
    );
\frame_done0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => frame_done0_carry_n_0,
      CO(3 downto 2) => \NLW_frame_done0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \frame_done0_carry__0_n_2\,
      CO(0) => \frame_done0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \frame_done0_carry_i_1__0_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_frame_done0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => frame_done0_carry_i_2_n_0,
      S(0) => frame_done0_carry_i_3_n_0
    );
frame_done0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cycle_count_reg(9),
      I1 => cycle_count_reg(8),
      O => frame_done0_carry_i_1_n_0
    );
\frame_done0_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cycle_count_reg(15),
      I1 => cycle_count_reg(14),
      O => \frame_done0_carry_i_1__0_n_0\
    );
frame_done0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_count_reg(14),
      I1 => cycle_count_reg(15),
      O => frame_done0_carry_i_2_n_0
    );
\frame_done0_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(7),
      I1 => cycle_count_reg(6),
      O => \frame_done0_carry_i_2__0_n_0\
    );
frame_done0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(13),
      I1 => cycle_count_reg(12),
      O => frame_done0_carry_i_3_n_0
    );
\frame_done0_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(4),
      I1 => cycle_count_reg(5),
      O => \frame_done0_carry_i_3__0_n_0\
    );
frame_done0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(11),
      I1 => cycle_count_reg(10),
      O => frame_done0_carry_i_4_n_0
    );
frame_done0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cycle_count_reg(8),
      I1 => cycle_count_reg(9),
      O => frame_done0_carry_i_5_n_0
    );
frame_done0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_count_reg(6),
      I1 => cycle_count_reg(7),
      O => frame_done0_carry_i_6_n_0
    );
frame_done0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_count_reg(4),
      I1 => cycle_count_reg(5),
      O => frame_done0_carry_i_7_n_0
    );
frame_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => reset,
      I1 => \frame_done0_carry__0_n_2\,
      I2 => state_reg_n_0,
      O => frame_done_i_1_n_0
    );
frame_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => frame_done_i_1_n_0,
      Q => frame_done,
      R => '0'
    );
internal_data_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008A0088"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => internal_data_i_2_n_0,
      I2 => internal_data_i_3_n_0,
      I3 => reset,
      I4 => \^led_data_out\,
      O => internal_data_i_1_n_0
    );
internal_data_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => cycle_count_reg(0),
      I1 => cycle_count_reg(1),
      I2 => cycle_count_reg(2),
      O => internal_data_i_10_n_0
    );
internal_data_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cycle_count_reg(6),
      I1 => cycle_count_reg(5),
      I2 => cycle_count_reg(4),
      I3 => cycle_count_reg(3),
      O => internal_data_i_11_n_0
    );
internal_data_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(15),
      I1 => cycle_count_reg(14),
      O => internal_data_i_13_n_0
    );
internal_data_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(13),
      I1 => cycle_count_reg(12),
      O => internal_data_i_14_n_0
    );
internal_data_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \active_color_reg_n_0_[2]\,
      I1 => \active_color_reg_n_0_[0]\,
      I2 => \bit_in_pixel_reg_n_0_[0]\,
      I3 => \bit_in_pixel_reg_n_0_[1]\,
      I4 => \active_color_reg_n_0_[3]\,
      I5 => \active_color_reg_n_0_[1]\,
      O => internal_data_i_15_n_0
    );
internal_data_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \active_color_reg_n_0_[10]\,
      I1 => \active_color_reg_n_0_[8]\,
      I2 => \bit_in_pixel_reg_n_0_[0]\,
      I3 => \bit_in_pixel_reg_n_0_[1]\,
      I4 => \active_color_reg_n_0_[11]\,
      I5 => \active_color_reg_n_0_[9]\,
      O => internal_data_i_16_n_0
    );
internal_data_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \active_color_reg_n_0_[6]\,
      I1 => \active_color_reg_n_0_[4]\,
      I2 => \bit_in_pixel_reg_n_0_[0]\,
      I3 => \bit_in_pixel_reg_n_0_[1]\,
      I4 => \active_color_reg_n_0_[7]\,
      I5 => \active_color_reg_n_0_[5]\,
      O => internal_data_i_17_n_0
    );
internal_data_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \active_color_reg_n_0_[14]\,
      I1 => \active_color_reg_n_0_[12]\,
      I2 => \bit_in_pixel_reg_n_0_[0]\,
      I3 => \bit_in_pixel_reg_n_0_[1]\,
      I4 => \active_color_reg_n_0_[15]\,
      I5 => \active_color_reg_n_0_[13]\,
      O => internal_data_i_18_n_0
    );
internal_data_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \active_color_reg_n_0_[22]\,
      I1 => \active_color_reg_n_0_[20]\,
      I2 => \bit_in_pixel_reg_n_0_[0]\,
      I3 => \bit_in_pixel_reg_n_0_[1]\,
      I4 => \active_color_reg_n_0_[23]\,
      I5 => \active_color_reg_n_0_[21]\,
      O => internal_data_i_19_n_0
    );
internal_data_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFBAAAAAA08"
    )
        port map (
      I0 => internal_data_reg_i_4_n_2,
      I1 => internal_data_i_5_n_0,
      I2 => internal_data_i_6_n_0,
      I3 => internal_data_i_7_n_0,
      I4 => internal_data_i_8_n_0,
      I5 => \state1_carry__0_n_1\,
      O => internal_data_i_2_n_0
    );
internal_data_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => \active_color_reg_n_0_[18]\,
      I1 => \active_color_reg_n_0_[16]\,
      I2 => \bit_in_pixel_reg_n_0_[0]\,
      I3 => \bit_in_pixel_reg_n_0_[1]\,
      I4 => \active_color_reg_n_0_[19]\,
      I5 => \active_color_reg_n_0_[17]\,
      O => internal_data_i_20_n_0
    );
internal_data_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(7),
      I1 => cycle_count_reg(6),
      O => internal_data_i_21_n_0
    );
internal_data_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(4),
      I1 => cycle_count_reg(5),
      O => internal_data_i_22_n_0
    );
internal_data_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(11),
      I1 => cycle_count_reg(10),
      O => internal_data_i_23_n_0
    );
internal_data_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(9),
      I1 => cycle_count_reg(8),
      O => internal_data_i_24_n_0
    );
internal_data_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_count_reg(6),
      I1 => cycle_count_reg(7),
      O => internal_data_i_25_n_0
    );
internal_data_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_count_reg(4),
      I1 => cycle_count_reg(5),
      O => internal_data_i_26_n_0
    );
internal_data_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010001000000"
    )
        port map (
      I0 => cycle_count_reg(9),
      I1 => cycle_count_reg(8),
      I2 => cycle_count_reg(7),
      I3 => internal_data_i_9_n_0,
      I4 => internal_data_i_10_n_0,
      I5 => internal_data_i_11_n_0,
      O => internal_data_i_3_n_0
    );
internal_data_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => internal_data_i_15_n_0,
      I1 => internal_data_i_16_n_0,
      I2 => \bit_in_pixel_reg_n_0_[3]\,
      I3 => \bit_in_pixel_reg_n_0_[2]\,
      I4 => internal_data_i_17_n_0,
      I5 => internal_data_i_18_n_0,
      O => internal_data_i_5_n_0
    );
internal_data_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bit_in_pixel_reg_n_0_[4]\,
      I1 => \bit_in_pixel_reg_n_0_[3]\,
      O => internal_data_i_6_n_0
    );
internal_data_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4100"
    )
        port map (
      I0 => \bit_in_pixel_reg_n_0_[2]\,
      I1 => \bit_in_pixel_reg_n_0_[4]\,
      I2 => \bit_in_pixel_reg_n_0_[3]\,
      I3 => internal_data_i_19_n_0,
      O => internal_data_i_7_n_0
    );
internal_data_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8200"
    )
        port map (
      I0 => \bit_in_pixel_reg_n_0_[2]\,
      I1 => \bit_in_pixel_reg_n_0_[4]\,
      I2 => \bit_in_pixel_reg_n_0_[3]\,
      I3 => internal_data_i_20_n_0,
      O => internal_data_i_8_n_0
    );
internal_data_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cycle_count_reg(10),
      I1 => cycle_count_reg(11),
      I2 => cycle_count_reg(12),
      I3 => cycle_count_reg(13),
      I4 => cycle_count_reg(15),
      I5 => cycle_count_reg(14),
      O => internal_data_i_9_n_0
    );
internal_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => internal_data_i_1_n_0,
      Q => \^led_data_out\,
      R => '0'
    );
internal_data_reg_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => internal_data_reg_i_12_n_0,
      CO(2) => internal_data_reg_i_12_n_1,
      CO(1) => internal_data_reg_i_12_n_2,
      CO(0) => internal_data_reg_i_12_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => internal_data_i_21_n_0,
      DI(0) => internal_data_i_22_n_0,
      O(3 downto 0) => NLW_internal_data_reg_i_12_O_UNCONNECTED(3 downto 0),
      S(3) => internal_data_i_23_n_0,
      S(2) => internal_data_i_24_n_0,
      S(1) => internal_data_i_25_n_0,
      S(0) => internal_data_i_26_n_0
    );
internal_data_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => internal_data_reg_i_12_n_0,
      CO(3 downto 2) => NLW_internal_data_reg_i_4_CO_UNCONNECTED(3 downto 2),
      CO(1) => internal_data_reg_i_4_n_2,
      CO(0) => internal_data_reg_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_internal_data_reg_i_4_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => internal_data_i_13_n_0,
      S(0) => internal_data_i_14_n_0
    );
state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => state1_carry_n_0,
      CO(2) => state1_carry_n_1,
      CO(1) => state1_carry_n_2,
      CO(0) => state1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => state1_carry_i_1_n_0,
      DI(0) => state1_carry_i_2_n_0,
      O(3 downto 0) => NLW_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => state1_carry_i_3_n_0,
      S(2) => state1_carry_i_4_n_0,
      S(1) => state1_carry_i_5_n_0,
      S(0) => state1_carry_i_6_n_0
    );
\state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => state1_carry_n_0,
      CO(3) => \NLW_state1_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \state1_carry__0_n_1\,
      CO(1) => \state1_carry__0_n_2\,
      CO(0) => \state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_state1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \state1_carry__0_i_1_n_0\,
      S(1) => \state1_carry__0_i_2_n_0\,
      S(0) => \state1_carry__0_i_3_n_0\
    );
\state1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(15),
      I1 => cycle_count_reg(14),
      O => \state1_carry__0_i_1_n_0\
    );
\state1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(13),
      I1 => cycle_count_reg(12),
      O => \state1_carry__0_i_2_n_0\
    );
\state1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(11),
      I1 => cycle_count_reg(10),
      O => \state1_carry__0_i_3_n_0\
    );
state1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(5),
      O => state1_carry_i_1_n_0
    );
state1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(3),
      O => state1_carry_i_2_n_0
    );
state1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(9),
      I1 => cycle_count_reg(8),
      O => state1_carry_i_3_n_0
    );
state1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycle_count_reg(7),
      I1 => cycle_count_reg(6),
      O => state1_carry_i_4_n_0
    );
state1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_count_reg(5),
      I1 => cycle_count_reg(4),
      O => state1_carry_i_5_n_0
    );
state1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cycle_count_reg(3),
      I1 => cycle_count_reg(2),
      O => state1_carry_i_6_n_0
    );
state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA2FFF7"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => state_i_2_n_0,
      I2 => internal_data_i_3_n_0,
      I3 => internal_data_i_2_n_0,
      I4 => \frame_done0_carry__0_n_2\,
      I5 => reset,
      O => state_i_1_n_0
    );
state_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => state_i_3_n_0,
      I1 => state_i_4_n_0,
      I2 => bit_count_reg(9),
      I3 => bit_count_reg(10),
      I4 => bit_count_reg(8),
      I5 => bit_count_reg(7),
      O => state_i_2_n_0
    );
state_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F800F8F8"
    )
        port map (
      I0 => bit_count_reg(4),
      I1 => bit_count_reg(3),
      I2 => bit_count_reg(5),
      I3 => \bit_count[6]_i_2_n_0\,
      I4 => bit_count_reg(2),
      I5 => \bit_in_pixel[4]_i_7_n_0\,
      O => state_i_3_n_0
    );
state_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => bit_count_reg(2),
      I1 => bit_count_reg(1),
      I2 => bit_count_reg(5),
      I3 => bit_count_reg(4),
      O => state_i_4_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => state_i_1_n_0,
      Q => state_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity led_subsystem_ws2812b_driver_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    color_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    enable : in STD_LOGIC;
    led_data_out : out STD_LOGIC;
    frame_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of led_subsystem_ws2812b_driver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of led_subsystem_ws2812b_driver_0_0 : entity is "led_subsystem_ws2812b_driver_0_0,ws2812b_driver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of led_subsystem_ws2812b_driver_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of led_subsystem_ws2812b_driver_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of led_subsystem_ws2812b_driver_0_0 : entity is "ws2812b_driver,Vivado 2025.2";
end led_subsystem_ws2812b_driver_0_0;

architecture STRUCTURE of led_subsystem_ws2812b_driver_0_0 is
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
inst: entity work.led_subsystem_ws2812b_driver_0_0_ws2812b_driver
     port map (
      clk => clk,
      color_in(23 downto 0) => color_in(23 downto 0),
      enable => enable,
      frame_done => frame_done,
      led_data_out => led_data_out,
      reset => reset
    );
end STRUCTURE;
