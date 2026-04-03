// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr  3 12:53:00 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_ws2812b_driver_0_0/led_subsystem_ws2812b_driver_0_0_sim_netlist.v
// Design      : led_subsystem_ws2812b_driver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "led_subsystem_ws2812b_driver_0_0,ws2812b_driver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ws2812b_driver,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module led_subsystem_ws2812b_driver_0_0
   (clk,
    reset,
    color_in,
    enable,
    led_data_out,
    frame_done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_subsystem_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [23:0]color_in;
  input enable;
  output led_data_out;
  output frame_done;

  wire clk;
  wire [23:0]color_in;
  wire enable;
  wire frame_done;
  wire led_data_out;
  wire reset;

  led_subsystem_ws2812b_driver_0_0_ws2812b_driver inst
       (.clk(clk),
        .color_in(color_in),
        .enable(enable),
        .frame_done(frame_done),
        .led_data_out(led_data_out),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "ws2812b_driver" *) 
module led_subsystem_ws2812b_driver_0_0_ws2812b_driver
   (led_data_out,
    frame_done,
    enable,
    color_in,
    clk,
    reset);
  output led_data_out;
  output frame_done;
  input enable;
  input [23:0]color_in;
  input clk;
  input reset;

  wire [0:0]active_color;
  wire \active_color[0]_i_1_n_0 ;
  wire \active_color[10]_i_1_n_0 ;
  wire \active_color[11]_i_1_n_0 ;
  wire \active_color[12]_i_1_n_0 ;
  wire \active_color[13]_i_1_n_0 ;
  wire \active_color[14]_i_1_n_0 ;
  wire \active_color[15]_i_1_n_0 ;
  wire \active_color[16]_i_1_n_0 ;
  wire \active_color[17]_i_1_n_0 ;
  wire \active_color[18]_i_1_n_0 ;
  wire \active_color[19]_i_1_n_0 ;
  wire \active_color[1]_i_1_n_0 ;
  wire \active_color[20]_i_1_n_0 ;
  wire \active_color[21]_i_1_n_0 ;
  wire \active_color[22]_i_1_n_0 ;
  wire \active_color[23]_i_2_n_0 ;
  wire \active_color[2]_i_1_n_0 ;
  wire \active_color[3]_i_1_n_0 ;
  wire \active_color[4]_i_1_n_0 ;
  wire \active_color[5]_i_1_n_0 ;
  wire \active_color[6]_i_1_n_0 ;
  wire \active_color[7]_i_1_n_0 ;
  wire \active_color[8]_i_1_n_0 ;
  wire \active_color[9]_i_1_n_0 ;
  wire \active_color_reg_n_0_[0] ;
  wire \active_color_reg_n_0_[10] ;
  wire \active_color_reg_n_0_[11] ;
  wire \active_color_reg_n_0_[12] ;
  wire \active_color_reg_n_0_[13] ;
  wire \active_color_reg_n_0_[14] ;
  wire \active_color_reg_n_0_[15] ;
  wire \active_color_reg_n_0_[16] ;
  wire \active_color_reg_n_0_[17] ;
  wire \active_color_reg_n_0_[18] ;
  wire \active_color_reg_n_0_[19] ;
  wire \active_color_reg_n_0_[1] ;
  wire \active_color_reg_n_0_[20] ;
  wire \active_color_reg_n_0_[21] ;
  wire \active_color_reg_n_0_[22] ;
  wire \active_color_reg_n_0_[23] ;
  wire \active_color_reg_n_0_[2] ;
  wire \active_color_reg_n_0_[3] ;
  wire \active_color_reg_n_0_[4] ;
  wire \active_color_reg_n_0_[5] ;
  wire \active_color_reg_n_0_[6] ;
  wire \active_color_reg_n_0_[7] ;
  wire \active_color_reg_n_0_[8] ;
  wire \active_color_reg_n_0_[9] ;
  wire \bit_count[10]_i_2_n_0 ;
  wire \bit_count[6]_i_2_n_0 ;
  wire [10:0]bit_count_reg;
  wire [0:0]bit_in_pixel;
  wire \bit_in_pixel[0]_i_1_n_0 ;
  wire \bit_in_pixel[1]_i_1_n_0 ;
  wire \bit_in_pixel[2]_i_1_n_0 ;
  wire \bit_in_pixel[3]_i_1_n_0 ;
  wire \bit_in_pixel[4]_i_2_n_0 ;
  wire \bit_in_pixel[4]_i_3_n_0 ;
  wire \bit_in_pixel[4]_i_4_n_0 ;
  wire \bit_in_pixel[4]_i_5_n_0 ;
  wire \bit_in_pixel[4]_i_6_n_0 ;
  wire \bit_in_pixel[4]_i_7_n_0 ;
  wire \bit_in_pixel[4]_i_8_n_0 ;
  wire \bit_in_pixel_reg_n_0_[0] ;
  wire \bit_in_pixel_reg_n_0_[1] ;
  wire \bit_in_pixel_reg_n_0_[2] ;
  wire \bit_in_pixel_reg_n_0_[3] ;
  wire \bit_in_pixel_reg_n_0_[4] ;
  wire clk;
  wire [23:0]color_in;
  wire [15:1]cycle_count0;
  wire cycle_count0_carry__0_n_0;
  wire cycle_count0_carry__0_n_1;
  wire cycle_count0_carry__0_n_2;
  wire cycle_count0_carry__0_n_3;
  wire cycle_count0_carry__1_n_0;
  wire cycle_count0_carry__1_n_1;
  wire cycle_count0_carry__1_n_2;
  wire cycle_count0_carry__1_n_3;
  wire cycle_count0_carry__2_n_2;
  wire cycle_count0_carry__2_n_3;
  wire cycle_count0_carry_n_0;
  wire cycle_count0_carry_n_1;
  wire cycle_count0_carry_n_2;
  wire cycle_count0_carry_n_3;
  wire \cycle_count[0]_i_2_n_0 ;
  wire \cycle_count[0]_i_3_n_0 ;
  wire \cycle_count[0]_i_4_n_0 ;
  wire \cycle_count[0]_i_5_n_0 ;
  wire \cycle_count[0]_i_6_n_0 ;
  wire \cycle_count[12]_i_2_n_0 ;
  wire \cycle_count[12]_i_3_n_0 ;
  wire \cycle_count[12]_i_4_n_0 ;
  wire \cycle_count[12]_i_5_n_0 ;
  wire \cycle_count[4]_i_2_n_0 ;
  wire \cycle_count[4]_i_3_n_0 ;
  wire \cycle_count[4]_i_4_n_0 ;
  wire \cycle_count[4]_i_5_n_0 ;
  wire \cycle_count[8]_i_2_n_0 ;
  wire \cycle_count[8]_i_3_n_0 ;
  wire \cycle_count[8]_i_4_n_0 ;
  wire \cycle_count[8]_i_5_n_0 ;
  wire [15:0]cycle_count_reg;
  wire \cycle_count_reg[0]_i_1_n_0 ;
  wire \cycle_count_reg[0]_i_1_n_1 ;
  wire \cycle_count_reg[0]_i_1_n_2 ;
  wire \cycle_count_reg[0]_i_1_n_3 ;
  wire \cycle_count_reg[0]_i_1_n_4 ;
  wire \cycle_count_reg[0]_i_1_n_5 ;
  wire \cycle_count_reg[0]_i_1_n_6 ;
  wire \cycle_count_reg[0]_i_1_n_7 ;
  wire \cycle_count_reg[12]_i_1_n_1 ;
  wire \cycle_count_reg[12]_i_1_n_2 ;
  wire \cycle_count_reg[12]_i_1_n_3 ;
  wire \cycle_count_reg[12]_i_1_n_4 ;
  wire \cycle_count_reg[12]_i_1_n_5 ;
  wire \cycle_count_reg[12]_i_1_n_6 ;
  wire \cycle_count_reg[12]_i_1_n_7 ;
  wire \cycle_count_reg[4]_i_1_n_0 ;
  wire \cycle_count_reg[4]_i_1_n_1 ;
  wire \cycle_count_reg[4]_i_1_n_2 ;
  wire \cycle_count_reg[4]_i_1_n_3 ;
  wire \cycle_count_reg[4]_i_1_n_4 ;
  wire \cycle_count_reg[4]_i_1_n_5 ;
  wire \cycle_count_reg[4]_i_1_n_6 ;
  wire \cycle_count_reg[4]_i_1_n_7 ;
  wire \cycle_count_reg[8]_i_1_n_0 ;
  wire \cycle_count_reg[8]_i_1_n_1 ;
  wire \cycle_count_reg[8]_i_1_n_2 ;
  wire \cycle_count_reg[8]_i_1_n_3 ;
  wire \cycle_count_reg[8]_i_1_n_4 ;
  wire \cycle_count_reg[8]_i_1_n_5 ;
  wire \cycle_count_reg[8]_i_1_n_6 ;
  wire \cycle_count_reg[8]_i_1_n_7 ;
  wire enable;
  wire frame_done;
  wire frame_done0_carry__0_n_2;
  wire frame_done0_carry__0_n_3;
  wire frame_done0_carry_i_1__0_n_0;
  wire frame_done0_carry_i_1_n_0;
  wire frame_done0_carry_i_2__0_n_0;
  wire frame_done0_carry_i_2_n_0;
  wire frame_done0_carry_i_3__0_n_0;
  wire frame_done0_carry_i_3_n_0;
  wire frame_done0_carry_i_4_n_0;
  wire frame_done0_carry_i_5_n_0;
  wire frame_done0_carry_i_6_n_0;
  wire frame_done0_carry_i_7_n_0;
  wire frame_done0_carry_n_0;
  wire frame_done0_carry_n_1;
  wire frame_done0_carry_n_2;
  wire frame_done0_carry_n_3;
  wire frame_done_i_1_n_0;
  wire internal_data_i_10_n_0;
  wire internal_data_i_11_n_0;
  wire internal_data_i_13_n_0;
  wire internal_data_i_14_n_0;
  wire internal_data_i_15_n_0;
  wire internal_data_i_16_n_0;
  wire internal_data_i_17_n_0;
  wire internal_data_i_18_n_0;
  wire internal_data_i_19_n_0;
  wire internal_data_i_1_n_0;
  wire internal_data_i_20_n_0;
  wire internal_data_i_21_n_0;
  wire internal_data_i_22_n_0;
  wire internal_data_i_23_n_0;
  wire internal_data_i_24_n_0;
  wire internal_data_i_25_n_0;
  wire internal_data_i_26_n_0;
  wire internal_data_i_2_n_0;
  wire internal_data_i_3_n_0;
  wire internal_data_i_5_n_0;
  wire internal_data_i_6_n_0;
  wire internal_data_i_7_n_0;
  wire internal_data_i_8_n_0;
  wire internal_data_i_9_n_0;
  wire internal_data_reg_i_12_n_0;
  wire internal_data_reg_i_12_n_1;
  wire internal_data_reg_i_12_n_2;
  wire internal_data_reg_i_12_n_3;
  wire internal_data_reg_i_4_n_2;
  wire internal_data_reg_i_4_n_3;
  wire led_data_out;
  wire [10:0]p_0_in;
  wire reset;
  wire state1_carry__0_i_1_n_0;
  wire state1_carry__0_i_2_n_0;
  wire state1_carry__0_i_3_n_0;
  wire state1_carry__0_n_1;
  wire state1_carry__0_n_2;
  wire state1_carry__0_n_3;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_i_5_n_0;
  wire state1_carry_i_6_n_0;
  wire state1_carry_n_0;
  wire state1_carry_n_1;
  wire state1_carry_n_2;
  wire state1_carry_n_3;
  wire state_i_1_n_0;
  wire state_i_2_n_0;
  wire state_i_3_n_0;
  wire state_i_4_n_0;
  wire state_reg_n_0;
  wire [3:2]NLW_cycle_count0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_cycle_count0_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_cycle_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_frame_done0_carry_O_UNCONNECTED;
  wire [3:2]NLW_frame_done0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_frame_done0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_internal_data_reg_i_12_O_UNCONNECTED;
  wire [3:2]NLW_internal_data_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_internal_data_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;
  wire [3:3]NLW_state1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[0]_i_1 
       (.I0(enable),
        .I1(color_in[0]),
        .O(\active_color[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[10]_i_1 
       (.I0(enable),
        .I1(color_in[10]),
        .O(\active_color[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[11]_i_1 
       (.I0(enable),
        .I1(color_in[11]),
        .O(\active_color[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[12]_i_1 
       (.I0(enable),
        .I1(color_in[12]),
        .O(\active_color[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[13]_i_1 
       (.I0(enable),
        .I1(color_in[13]),
        .O(\active_color[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[14]_i_1 
       (.I0(enable),
        .I1(color_in[14]),
        .O(\active_color[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[15]_i_1 
       (.I0(enable),
        .I1(color_in[15]),
        .O(\active_color[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[16]_i_1 
       (.I0(enable),
        .I1(color_in[16]),
        .O(\active_color[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[17]_i_1 
       (.I0(enable),
        .I1(color_in[17]),
        .O(\active_color[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[18]_i_1 
       (.I0(enable),
        .I1(color_in[18]),
        .O(\active_color[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[19]_i_1 
       (.I0(enable),
        .I1(color_in[19]),
        .O(\active_color[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[1]_i_1 
       (.I0(enable),
        .I1(color_in[1]),
        .O(\active_color[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[20]_i_1 
       (.I0(enable),
        .I1(color_in[20]),
        .O(\active_color[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[21]_i_1 
       (.I0(enable),
        .I1(color_in[21]),
        .O(\active_color[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[22]_i_1 
       (.I0(enable),
        .I1(color_in[22]),
        .O(\active_color[22]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \active_color[23]_i_1 
       (.I0(state_reg_n_0),
        .I1(frame_done0_carry__0_n_2),
        .O(active_color));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[23]_i_2 
       (.I0(enable),
        .I1(color_in[23]),
        .O(\active_color[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[2]_i_1 
       (.I0(enable),
        .I1(color_in[2]),
        .O(\active_color[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[3]_i_1 
       (.I0(enable),
        .I1(color_in[3]),
        .O(\active_color[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[4]_i_1 
       (.I0(enable),
        .I1(color_in[4]),
        .O(\active_color[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[5]_i_1 
       (.I0(enable),
        .I1(color_in[5]),
        .O(\active_color[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[6]_i_1 
       (.I0(enable),
        .I1(color_in[6]),
        .O(\active_color[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[7]_i_1 
       (.I0(enable),
        .I1(color_in[7]),
        .O(\active_color[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[8]_i_1 
       (.I0(enable),
        .I1(color_in[8]),
        .O(\active_color[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \active_color[9]_i_1 
       (.I0(enable),
        .I1(color_in[9]),
        .O(\active_color[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[0] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[0]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[0] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[10] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[10]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[10] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[11] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[11]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[11] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[12] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[12]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[12] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[13] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[13]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[13] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[14] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[14]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[14] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[15] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[15]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[15] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[16] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[16]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[16] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[17] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[17]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[17] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[18] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[18]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[18] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[19] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[19]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[19] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[1] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[1]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[1] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[20] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[20]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[20] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[21] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[21]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[21] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[22] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[22]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[22] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[23] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[23]_i_2_n_0 ),
        .Q(\active_color_reg_n_0_[23] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[2] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[2]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[2] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[3] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[3]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[3] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[4] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[4]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[4] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[5] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[5]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[5] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[6] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[6]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[6] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[7] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[7]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[7] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[8] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[8]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[8] ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \active_color_reg[9] 
       (.C(clk),
        .CE(active_color),
        .D(\active_color[9]_i_1_n_0 ),
        .Q(\active_color_reg_n_0_[9] ),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_count[0]_i_1 
       (.I0(bit_count_reg[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bit_count[10]_i_1 
       (.I0(bit_count_reg[8]),
        .I1(bit_count_reg[6]),
        .I2(\bit_count[10]_i_2_n_0 ),
        .I3(bit_count_reg[7]),
        .I4(bit_count_reg[9]),
        .I5(bit_count_reg[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \bit_count[10]_i_2 
       (.I0(bit_count_reg[5]),
        .I1(bit_count_reg[3]),
        .I2(bit_count_reg[0]),
        .I3(bit_count_reg[1]),
        .I4(bit_count_reg[2]),
        .I5(bit_count_reg[4]),
        .O(\bit_count[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_count[1]_i_1 
       (.I0(bit_count_reg[0]),
        .I1(bit_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_count[2]_i_1 
       (.I0(bit_count_reg[1]),
        .I1(bit_count_reg[0]),
        .I2(bit_count_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bit_count[3]_i_1 
       (.I0(bit_count_reg[0]),
        .I1(bit_count_reg[1]),
        .I2(bit_count_reg[2]),
        .I3(bit_count_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bit_count[4]_i_1 
       (.I0(bit_count_reg[2]),
        .I1(bit_count_reg[1]),
        .I2(bit_count_reg[0]),
        .I3(bit_count_reg[3]),
        .I4(bit_count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bit_count[5]_i_1 
       (.I0(bit_count_reg[3]),
        .I1(bit_count_reg[0]),
        .I2(bit_count_reg[1]),
        .I3(bit_count_reg[2]),
        .I4(bit_count_reg[4]),
        .I5(bit_count_reg[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bit_count[6]_i_1 
       (.I0(bit_count_reg[4]),
        .I1(bit_count_reg[2]),
        .I2(\bit_count[6]_i_2_n_0 ),
        .I3(bit_count_reg[3]),
        .I4(bit_count_reg[5]),
        .I5(bit_count_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_count[6]_i_2 
       (.I0(bit_count_reg[0]),
        .I1(bit_count_reg[1]),
        .O(\bit_count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_count[7]_i_1 
       (.I0(\bit_count[10]_i_2_n_0 ),
        .I1(bit_count_reg[6]),
        .I2(bit_count_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bit_count[8]_i_1 
       (.I0(bit_count_reg[6]),
        .I1(\bit_count[10]_i_2_n_0 ),
        .I2(bit_count_reg[7]),
        .I3(bit_count_reg[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bit_count[9]_i_1 
       (.I0(bit_count_reg[7]),
        .I1(\bit_count[10]_i_2_n_0 ),
        .I2(bit_count_reg[6]),
        .I3(bit_count_reg[8]),
        .I4(bit_count_reg[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[0] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(bit_count_reg[0]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[10] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(bit_count_reg[10]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[1] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(bit_count_reg[1]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[2] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(bit_count_reg[2]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[3] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(bit_count_reg[3]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[4] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(bit_count_reg[4]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[5] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(bit_count_reg[5]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[6] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(bit_count_reg[6]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[7] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(bit_count_reg[7]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[8] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(bit_count_reg[8]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_count_reg[9] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(bit_count_reg[9]),
        .R(bit_in_pixel));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_in_pixel[0]_i_1 
       (.I0(\bit_in_pixel_reg_n_0_[0] ),
        .O(\bit_in_pixel[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_in_pixel[1]_i_1 
       (.I0(\bit_in_pixel_reg_n_0_[1] ),
        .I1(\bit_in_pixel_reg_n_0_[0] ),
        .O(\bit_in_pixel[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_in_pixel[2]_i_1 
       (.I0(\bit_in_pixel_reg_n_0_[1] ),
        .I1(\bit_in_pixel_reg_n_0_[0] ),
        .I2(\bit_in_pixel_reg_n_0_[2] ),
        .O(\bit_in_pixel[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7078F0F0)) 
    \bit_in_pixel[3]_i_1 
       (.I0(\bit_in_pixel_reg_n_0_[1] ),
        .I1(\bit_in_pixel_reg_n_0_[0] ),
        .I2(\bit_in_pixel_reg_n_0_[3] ),
        .I3(\bit_in_pixel_reg_n_0_[4] ),
        .I4(\bit_in_pixel_reg_n_0_[2] ),
        .O(\bit_in_pixel[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \bit_in_pixel[4]_i_1 
       (.I0(frame_done0_carry__0_n_2),
        .I1(state_reg_n_0),
        .I2(reset),
        .O(bit_in_pixel));
  LUT3 #(
    .INIT(8'h02)) 
    \bit_in_pixel[4]_i_2 
       (.I0(\bit_in_pixel[4]_i_4_n_0 ),
        .I1(internal_data_i_3_n_0),
        .I2(internal_data_i_2_n_0),
        .O(\bit_in_pixel[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3FFF8000)) 
    \bit_in_pixel[4]_i_3 
       (.I0(\bit_in_pixel_reg_n_0_[3] ),
        .I1(\bit_in_pixel_reg_n_0_[1] ),
        .I2(\bit_in_pixel_reg_n_0_[0] ),
        .I3(\bit_in_pixel_reg_n_0_[2] ),
        .I4(\bit_in_pixel_reg_n_0_[4] ),
        .O(\bit_in_pixel[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF00000000)) 
    \bit_in_pixel[4]_i_4 
       (.I0(\bit_in_pixel[4]_i_5_n_0 ),
        .I1(\bit_in_pixel[4]_i_6_n_0 ),
        .I2(bit_count_reg[9]),
        .I3(bit_count_reg[8]),
        .I4(bit_count_reg[10]),
        .I5(state_reg_n_0),
        .O(\bit_in_pixel[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF4FFFFFF)) 
    \bit_in_pixel[4]_i_5 
       (.I0(bit_count_reg[0]),
        .I1(bit_count_reg[2]),
        .I2(\bit_in_pixel[4]_i_7_n_0 ),
        .I3(\bit_in_pixel[4]_i_8_n_0 ),
        .I4(bit_count_reg[1]),
        .O(\bit_in_pixel[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \bit_in_pixel[4]_i_6 
       (.I0(bit_count_reg[2]),
        .I1(bit_count_reg[5]),
        .I2(bit_count_reg[7]),
        .I3(bit_count_reg[4]),
        .O(\bit_in_pixel[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \bit_in_pixel[4]_i_7 
       (.I0(bit_count_reg[7]),
        .I1(bit_count_reg[6]),
        .I2(bit_count_reg[8]),
        .O(\bit_in_pixel[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \bit_in_pixel[4]_i_8 
       (.I0(bit_count_reg[4]),
        .I1(bit_count_reg[3]),
        .I2(bit_count_reg[5]),
        .O(\bit_in_pixel[4]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_in_pixel_reg[0] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(\bit_in_pixel[0]_i_1_n_0 ),
        .Q(\bit_in_pixel_reg_n_0_[0] ),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_in_pixel_reg[1] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(\bit_in_pixel[1]_i_1_n_0 ),
        .Q(\bit_in_pixel_reg_n_0_[1] ),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_in_pixel_reg[2] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(\bit_in_pixel[2]_i_1_n_0 ),
        .Q(\bit_in_pixel_reg_n_0_[2] ),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_in_pixel_reg[3] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(\bit_in_pixel[3]_i_1_n_0 ),
        .Q(\bit_in_pixel_reg_n_0_[3] ),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \bit_in_pixel_reg[4] 
       (.C(clk),
        .CE(\bit_in_pixel[4]_i_2_n_0 ),
        .D(\bit_in_pixel[4]_i_3_n_0 ),
        .Q(\bit_in_pixel_reg_n_0_[4] ),
        .R(bit_in_pixel));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycle_count0_carry
       (.CI(1'b0),
        .CO({cycle_count0_carry_n_0,cycle_count0_carry_n_1,cycle_count0_carry_n_2,cycle_count0_carry_n_3}),
        .CYINIT(cycle_count_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cycle_count0[4:1]),
        .S(cycle_count_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycle_count0_carry__0
       (.CI(cycle_count0_carry_n_0),
        .CO({cycle_count0_carry__0_n_0,cycle_count0_carry__0_n_1,cycle_count0_carry__0_n_2,cycle_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cycle_count0[8:5]),
        .S(cycle_count_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycle_count0_carry__1
       (.CI(cycle_count0_carry__0_n_0),
        .CO({cycle_count0_carry__1_n_0,cycle_count0_carry__1_n_1,cycle_count0_carry__1_n_2,cycle_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cycle_count0[12:9]),
        .S(cycle_count_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cycle_count0_carry__2
       (.CI(cycle_count0_carry__1_n_0),
        .CO({NLW_cycle_count0_carry__2_CO_UNCONNECTED[3:2],cycle_count0_carry__2_n_2,cycle_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cycle_count0_carry__2_O_UNCONNECTED[3],cycle_count0[15:13]}),
        .S({1'b0,cycle_count_reg[15:13]}));
  LUT4 #(
    .INIT(16'h0FE0)) 
    \cycle_count[0]_i_2 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(state_reg_n_0),
        .I3(cycle_count_reg[0]),
        .O(\cycle_count[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[0]_i_3 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[3]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[3]),
        .O(\cycle_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[0]_i_4 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[2]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[2]),
        .O(\cycle_count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[0]_i_5 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[1]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[1]),
        .O(\cycle_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5455)) 
    \cycle_count[0]_i_6 
       (.I0(cycle_count_reg[0]),
        .I1(internal_data_i_2_n_0),
        .I2(internal_data_i_3_n_0),
        .I3(state_reg_n_0),
        .O(\cycle_count[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[12]_i_2 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[15]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[15]),
        .O(\cycle_count[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[12]_i_3 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[14]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[14]),
        .O(\cycle_count[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[12]_i_4 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[13]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[13]),
        .O(\cycle_count[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[12]_i_5 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[12]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[12]),
        .O(\cycle_count[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[4]_i_2 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[7]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[7]),
        .O(\cycle_count[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[4]_i_3 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[6]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[6]),
        .O(\cycle_count[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[4]_i_4 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[5]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[5]),
        .O(\cycle_count[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[4]_i_5 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[4]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[4]),
        .O(\cycle_count[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[8]_i_2 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[11]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[11]),
        .O(\cycle_count[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[8]_i_3 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[10]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[10]),
        .O(\cycle_count[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[8]_i_4 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[9]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[9]),
        .O(\cycle_count[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE0FFE000)) 
    \cycle_count[8]_i_5 
       (.I0(internal_data_i_3_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(cycle_count0[8]),
        .I3(state_reg_n_0),
        .I4(cycle_count_reg[8]),
        .O(\cycle_count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[0]_i_1_n_7 ),
        .Q(cycle_count_reg[0]),
        .R(bit_in_pixel));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cycle_count_reg[0]_i_1_n_0 ,\cycle_count_reg[0]_i_1_n_1 ,\cycle_count_reg[0]_i_1_n_2 ,\cycle_count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\cycle_count[0]_i_2_n_0 }),
        .O({\cycle_count_reg[0]_i_1_n_4 ,\cycle_count_reg[0]_i_1_n_5 ,\cycle_count_reg[0]_i_1_n_6 ,\cycle_count_reg[0]_i_1_n_7 }),
        .S({\cycle_count[0]_i_3_n_0 ,\cycle_count[0]_i_4_n_0 ,\cycle_count[0]_i_5_n_0 ,\cycle_count[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[8]_i_1_n_5 ),
        .Q(cycle_count_reg[10]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[8]_i_1_n_4 ),
        .Q(cycle_count_reg[11]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[12]_i_1_n_7 ),
        .Q(cycle_count_reg[12]),
        .R(bit_in_pixel));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[12]_i_1 
       (.CI(\cycle_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_cycle_count_reg[12]_i_1_CO_UNCONNECTED [3],\cycle_count_reg[12]_i_1_n_1 ,\cycle_count_reg[12]_i_1_n_2 ,\cycle_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_count_reg[12]_i_1_n_4 ,\cycle_count_reg[12]_i_1_n_5 ,\cycle_count_reg[12]_i_1_n_6 ,\cycle_count_reg[12]_i_1_n_7 }),
        .S({\cycle_count[12]_i_2_n_0 ,\cycle_count[12]_i_3_n_0 ,\cycle_count[12]_i_4_n_0 ,\cycle_count[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[12]_i_1_n_6 ),
        .Q(cycle_count_reg[13]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[12]_i_1_n_5 ),
        .Q(cycle_count_reg[14]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[12]_i_1_n_4 ),
        .Q(cycle_count_reg[15]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[0]_i_1_n_6 ),
        .Q(cycle_count_reg[1]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[0]_i_1_n_5 ),
        .Q(cycle_count_reg[2]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[0]_i_1_n_4 ),
        .Q(cycle_count_reg[3]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[4]_i_1_n_7 ),
        .Q(cycle_count_reg[4]),
        .R(bit_in_pixel));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[4]_i_1 
       (.CI(\cycle_count_reg[0]_i_1_n_0 ),
        .CO({\cycle_count_reg[4]_i_1_n_0 ,\cycle_count_reg[4]_i_1_n_1 ,\cycle_count_reg[4]_i_1_n_2 ,\cycle_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_count_reg[4]_i_1_n_4 ,\cycle_count_reg[4]_i_1_n_5 ,\cycle_count_reg[4]_i_1_n_6 ,\cycle_count_reg[4]_i_1_n_7 }),
        .S({\cycle_count[4]_i_2_n_0 ,\cycle_count[4]_i_3_n_0 ,\cycle_count[4]_i_4_n_0 ,\cycle_count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[4]_i_1_n_6 ),
        .Q(cycle_count_reg[5]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[4]_i_1_n_5 ),
        .Q(cycle_count_reg[6]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[4]_i_1_n_4 ),
        .Q(cycle_count_reg[7]),
        .R(bit_in_pixel));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[8]_i_1_n_7 ),
        .Q(cycle_count_reg[8]),
        .R(bit_in_pixel));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \cycle_count_reg[8]_i_1 
       (.CI(\cycle_count_reg[4]_i_1_n_0 ),
        .CO({\cycle_count_reg[8]_i_1_n_0 ,\cycle_count_reg[8]_i_1_n_1 ,\cycle_count_reg[8]_i_1_n_2 ,\cycle_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cycle_count_reg[8]_i_1_n_4 ,\cycle_count_reg[8]_i_1_n_5 ,\cycle_count_reg[8]_i_1_n_6 ,\cycle_count_reg[8]_i_1_n_7 }),
        .S({\cycle_count[8]_i_2_n_0 ,\cycle_count[8]_i_3_n_0 ,\cycle_count[8]_i_4_n_0 ,\cycle_count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cycle_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\cycle_count_reg[8]_i_1_n_6 ),
        .Q(cycle_count_reg[9]),
        .R(bit_in_pixel));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 frame_done0_carry
       (.CI(1'b0),
        .CO({frame_done0_carry_n_0,frame_done0_carry_n_1,frame_done0_carry_n_2,frame_done0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,frame_done0_carry_i_1_n_0,frame_done0_carry_i_2__0_n_0,frame_done0_carry_i_3__0_n_0}),
        .O(NLW_frame_done0_carry_O_UNCONNECTED[3:0]),
        .S({frame_done0_carry_i_4_n_0,frame_done0_carry_i_5_n_0,frame_done0_carry_i_6_n_0,frame_done0_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 frame_done0_carry__0
       (.CI(frame_done0_carry_n_0),
        .CO({NLW_frame_done0_carry__0_CO_UNCONNECTED[3:2],frame_done0_carry__0_n_2,frame_done0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,frame_done0_carry_i_1__0_n_0,1'b0}),
        .O(NLW_frame_done0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,frame_done0_carry_i_2_n_0,frame_done0_carry_i_3_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    frame_done0_carry_i_1
       (.I0(cycle_count_reg[9]),
        .I1(cycle_count_reg[8]),
        .O(frame_done0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    frame_done0_carry_i_1__0
       (.I0(cycle_count_reg[15]),
        .I1(cycle_count_reg[14]),
        .O(frame_done0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    frame_done0_carry_i_2
       (.I0(cycle_count_reg[14]),
        .I1(cycle_count_reg[15]),
        .O(frame_done0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    frame_done0_carry_i_2__0
       (.I0(cycle_count_reg[7]),
        .I1(cycle_count_reg[6]),
        .O(frame_done0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    frame_done0_carry_i_3
       (.I0(cycle_count_reg[13]),
        .I1(cycle_count_reg[12]),
        .O(frame_done0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    frame_done0_carry_i_3__0
       (.I0(cycle_count_reg[4]),
        .I1(cycle_count_reg[5]),
        .O(frame_done0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    frame_done0_carry_i_4
       (.I0(cycle_count_reg[11]),
        .I1(cycle_count_reg[10]),
        .O(frame_done0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    frame_done0_carry_i_5
       (.I0(cycle_count_reg[8]),
        .I1(cycle_count_reg[9]),
        .O(frame_done0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    frame_done0_carry_i_6
       (.I0(cycle_count_reg[6]),
        .I1(cycle_count_reg[7]),
        .O(frame_done0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    frame_done0_carry_i_7
       (.I0(cycle_count_reg[4]),
        .I1(cycle_count_reg[5]),
        .O(frame_done0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    frame_done_i_1
       (.I0(reset),
        .I1(frame_done0_carry__0_n_2),
        .I2(state_reg_n_0),
        .O(frame_done_i_1_n_0));
  FDRE frame_done_reg
       (.C(clk),
        .CE(1'b1),
        .D(frame_done_i_1_n_0),
        .Q(frame_done),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h008A0088)) 
    internal_data_i_1
       (.I0(state_reg_n_0),
        .I1(internal_data_i_2_n_0),
        .I2(internal_data_i_3_n_0),
        .I3(reset),
        .I4(led_data_out),
        .O(internal_data_i_1_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    internal_data_i_10
       (.I0(cycle_count_reg[0]),
        .I1(cycle_count_reg[1]),
        .I2(cycle_count_reg[2]),
        .O(internal_data_i_10_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    internal_data_i_11
       (.I0(cycle_count_reg[6]),
        .I1(cycle_count_reg[5]),
        .I2(cycle_count_reg[4]),
        .I3(cycle_count_reg[3]),
        .O(internal_data_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    internal_data_i_13
       (.I0(cycle_count_reg[15]),
        .I1(cycle_count_reg[14]),
        .O(internal_data_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    internal_data_i_14
       (.I0(cycle_count_reg[13]),
        .I1(cycle_count_reg[12]),
        .O(internal_data_i_14_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    internal_data_i_15
       (.I0(\active_color_reg_n_0_[2] ),
        .I1(\active_color_reg_n_0_[0] ),
        .I2(\bit_in_pixel_reg_n_0_[0] ),
        .I3(\bit_in_pixel_reg_n_0_[1] ),
        .I4(\active_color_reg_n_0_[3] ),
        .I5(\active_color_reg_n_0_[1] ),
        .O(internal_data_i_15_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    internal_data_i_16
       (.I0(\active_color_reg_n_0_[10] ),
        .I1(\active_color_reg_n_0_[8] ),
        .I2(\bit_in_pixel_reg_n_0_[0] ),
        .I3(\bit_in_pixel_reg_n_0_[1] ),
        .I4(\active_color_reg_n_0_[11] ),
        .I5(\active_color_reg_n_0_[9] ),
        .O(internal_data_i_16_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    internal_data_i_17
       (.I0(\active_color_reg_n_0_[6] ),
        .I1(\active_color_reg_n_0_[4] ),
        .I2(\bit_in_pixel_reg_n_0_[0] ),
        .I3(\bit_in_pixel_reg_n_0_[1] ),
        .I4(\active_color_reg_n_0_[7] ),
        .I5(\active_color_reg_n_0_[5] ),
        .O(internal_data_i_17_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    internal_data_i_18
       (.I0(\active_color_reg_n_0_[14] ),
        .I1(\active_color_reg_n_0_[12] ),
        .I2(\bit_in_pixel_reg_n_0_[0] ),
        .I3(\bit_in_pixel_reg_n_0_[1] ),
        .I4(\active_color_reg_n_0_[15] ),
        .I5(\active_color_reg_n_0_[13] ),
        .O(internal_data_i_18_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    internal_data_i_19
       (.I0(\active_color_reg_n_0_[22] ),
        .I1(\active_color_reg_n_0_[20] ),
        .I2(\bit_in_pixel_reg_n_0_[0] ),
        .I3(\bit_in_pixel_reg_n_0_[1] ),
        .I4(\active_color_reg_n_0_[23] ),
        .I5(\active_color_reg_n_0_[21] ),
        .O(internal_data_i_19_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    internal_data_i_2
       (.I0(internal_data_reg_i_4_n_2),
        .I1(internal_data_i_5_n_0),
        .I2(internal_data_i_6_n_0),
        .I3(internal_data_i_7_n_0),
        .I4(internal_data_i_8_n_0),
        .I5(state1_carry__0_n_1),
        .O(internal_data_i_2_n_0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    internal_data_i_20
       (.I0(\active_color_reg_n_0_[18] ),
        .I1(\active_color_reg_n_0_[16] ),
        .I2(\bit_in_pixel_reg_n_0_[0] ),
        .I3(\bit_in_pixel_reg_n_0_[1] ),
        .I4(\active_color_reg_n_0_[19] ),
        .I5(\active_color_reg_n_0_[17] ),
        .O(internal_data_i_20_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    internal_data_i_21
       (.I0(cycle_count_reg[7]),
        .I1(cycle_count_reg[6]),
        .O(internal_data_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    internal_data_i_22
       (.I0(cycle_count_reg[4]),
        .I1(cycle_count_reg[5]),
        .O(internal_data_i_22_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    internal_data_i_23
       (.I0(cycle_count_reg[11]),
        .I1(cycle_count_reg[10]),
        .O(internal_data_i_23_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    internal_data_i_24
       (.I0(cycle_count_reg[9]),
        .I1(cycle_count_reg[8]),
        .O(internal_data_i_24_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_data_i_25
       (.I0(cycle_count_reg[6]),
        .I1(cycle_count_reg[7]),
        .O(internal_data_i_25_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    internal_data_i_26
       (.I0(cycle_count_reg[4]),
        .I1(cycle_count_reg[5]),
        .O(internal_data_i_26_n_0));
  LUT6 #(
    .INIT(64'h0100010001000000)) 
    internal_data_i_3
       (.I0(cycle_count_reg[9]),
        .I1(cycle_count_reg[8]),
        .I2(cycle_count_reg[7]),
        .I3(internal_data_i_9_n_0),
        .I4(internal_data_i_10_n_0),
        .I5(internal_data_i_11_n_0),
        .O(internal_data_i_3_n_0));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    internal_data_i_5
       (.I0(internal_data_i_15_n_0),
        .I1(internal_data_i_16_n_0),
        .I2(\bit_in_pixel_reg_n_0_[3] ),
        .I3(\bit_in_pixel_reg_n_0_[2] ),
        .I4(internal_data_i_17_n_0),
        .I5(internal_data_i_18_n_0),
        .O(internal_data_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    internal_data_i_6
       (.I0(\bit_in_pixel_reg_n_0_[4] ),
        .I1(\bit_in_pixel_reg_n_0_[3] ),
        .O(internal_data_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4100)) 
    internal_data_i_7
       (.I0(\bit_in_pixel_reg_n_0_[2] ),
        .I1(\bit_in_pixel_reg_n_0_[4] ),
        .I2(\bit_in_pixel_reg_n_0_[3] ),
        .I3(internal_data_i_19_n_0),
        .O(internal_data_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8200)) 
    internal_data_i_8
       (.I0(\bit_in_pixel_reg_n_0_[2] ),
        .I1(\bit_in_pixel_reg_n_0_[4] ),
        .I2(\bit_in_pixel_reg_n_0_[3] ),
        .I3(internal_data_i_20_n_0),
        .O(internal_data_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    internal_data_i_9
       (.I0(cycle_count_reg[10]),
        .I1(cycle_count_reg[11]),
        .I2(cycle_count_reg[12]),
        .I3(cycle_count_reg[13]),
        .I4(cycle_count_reg[15]),
        .I5(cycle_count_reg[14]),
        .O(internal_data_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    internal_data_reg
       (.C(clk),
        .CE(1'b1),
        .D(internal_data_i_1_n_0),
        .Q(led_data_out),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 internal_data_reg_i_12
       (.CI(1'b0),
        .CO({internal_data_reg_i_12_n_0,internal_data_reg_i_12_n_1,internal_data_reg_i_12_n_2,internal_data_reg_i_12_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,internal_data_i_21_n_0,internal_data_i_22_n_0}),
        .O(NLW_internal_data_reg_i_12_O_UNCONNECTED[3:0]),
        .S({internal_data_i_23_n_0,internal_data_i_24_n_0,internal_data_i_25_n_0,internal_data_i_26_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 internal_data_reg_i_4
       (.CI(internal_data_reg_i_12_n_0),
        .CO({NLW_internal_data_reg_i_4_CO_UNCONNECTED[3:2],internal_data_reg_i_4_n_2,internal_data_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_internal_data_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,internal_data_i_13_n_0,internal_data_i_14_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,state1_carry_n_1,state1_carry_n_2,state1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,state1_carry_i_1_n_0,state1_carry_i_2_n_0}),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S({state1_carry_i_3_n_0,state1_carry_i_4_n_0,state1_carry_i_5_n_0,state1_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({NLW_state1_carry__0_CO_UNCONNECTED[3],state1_carry__0_n_1,state1_carry__0_n_2,state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,state1_carry__0_i_1_n_0,state1_carry__0_i_2_n_0,state1_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_1
       (.I0(cycle_count_reg[15]),
        .I1(cycle_count_reg[14]),
        .O(state1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_2
       (.I0(cycle_count_reg[13]),
        .I1(cycle_count_reg[12]),
        .O(state1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry__0_i_3
       (.I0(cycle_count_reg[11]),
        .I1(cycle_count_reg[10]),
        .O(state1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1_carry_i_1
       (.I0(cycle_count_reg[5]),
        .O(state1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    state1_carry_i_2
       (.I0(cycle_count_reg[3]),
        .O(state1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_3
       (.I0(cycle_count_reg[9]),
        .I1(cycle_count_reg[8]),
        .O(state1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_4
       (.I0(cycle_count_reg[7]),
        .I1(cycle_count_reg[6]),
        .O(state1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    state1_carry_i_5
       (.I0(cycle_count_reg[5]),
        .I1(cycle_count_reg[4]),
        .O(state1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    state1_carry_i_6
       (.I0(cycle_count_reg[3]),
        .I1(cycle_count_reg[2]),
        .O(state1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h00000000AAA2FFF7)) 
    state_i_1
       (.I0(state_reg_n_0),
        .I1(state_i_2_n_0),
        .I2(internal_data_i_3_n_0),
        .I3(internal_data_i_2_n_0),
        .I4(frame_done0_carry__0_n_2),
        .I5(reset),
        .O(state_i_1_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    state_i_2
       (.I0(state_i_3_n_0),
        .I1(state_i_4_n_0),
        .I2(bit_count_reg[9]),
        .I3(bit_count_reg[10]),
        .I4(bit_count_reg[8]),
        .I5(bit_count_reg[7]),
        .O(state_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000F800F8F8)) 
    state_i_3
       (.I0(bit_count_reg[4]),
        .I1(bit_count_reg[3]),
        .I2(bit_count_reg[5]),
        .I3(\bit_count[6]_i_2_n_0 ),
        .I4(bit_count_reg[2]),
        .I5(\bit_in_pixel[4]_i_7_n_0 ),
        .O(state_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    state_i_4
       (.I0(bit_count_reg[2]),
        .I1(bit_count_reg[1]),
        .I2(bit_count_reg[5]),
        .I3(bit_count_reg[4]),
        .O(state_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_n_0),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
