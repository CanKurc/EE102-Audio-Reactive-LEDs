//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Fri Apr  3 12:50:16 2026
//Host        : CANKUR8A4F running 64-bit major release  (build 9200)
//Command     : generate_target led_subsystem_wrapper.bd
//Design      : led_subsystem_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module led_subsystem_wrapper
   (brightness_0,
    clk_0,
    color_sel_0,
    frame_done_0,
    led_data_out_0,
    led_enable_0,
    reset_0);
  input [2:0]brightness_0;
  input clk_0;
  input [3:0]color_sel_0;
  output frame_done_0;
  output led_data_out_0;
  input led_enable_0;
  input reset_0;

  wire [2:0]brightness_0;
  wire clk_0;
  wire [3:0]color_sel_0;
  wire frame_done_0;
  wire led_data_out_0;
  wire led_enable_0;
  wire reset_0;

  led_subsystem led_subsystem_i
       (.brightness_0(brightness_0),
        .clk_0(clk_0),
        .color_sel_0(color_sel_0),
        .frame_done_0(frame_done_0),
        .led_data_out_0(led_data_out_0),
        .led_enable_0(led_enable_0),
        .reset_0(reset_0));
endmodule
