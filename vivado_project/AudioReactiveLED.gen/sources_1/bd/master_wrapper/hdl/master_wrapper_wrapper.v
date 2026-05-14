//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Thu May 14 20:35:22 2026
//Host        : CANKUR8A4F running 64-bit major release  (build 9200)
//Command     : generate_target master_wrapper_wrapper.bd
//Design      : master_wrapper_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module master_wrapper_wrapper
   (an_0_0,
    clk_0_0,
    led_data_out_0_0,
    led_enable_0_0,
    reset_0_0,
    seg_out_0_0,
    thres_high_sw,
    thres_low_sw,
    vauxn6_0_0,
    vauxp6_0_0);
  output [3:0]an_0_0;
  input clk_0_0;
  output led_data_out_0_0;
  input led_enable_0_0;
  input reset_0_0;
  output [6:0]seg_out_0_0;
  input [5:0]thres_high_sw;
  input [5:0]thres_low_sw;
  input vauxn6_0_0;
  input vauxp6_0_0;

  wire [3:0]an_0_0;
  wire clk_0_0;
  wire led_data_out_0_0;
  wire led_enable_0_0;
  wire reset_0_0;
  wire [6:0]seg_out_0_0;
  wire [5:0]thres_high_sw;
  wire [5:0]thres_low_sw;
  wire vauxn6_0_0;
  wire vauxp6_0_0;

  master_wrapper master_wrapper_i
       (.an_0_0(an_0_0),
        .clk_0_0(clk_0_0),
        .led_data_out_0_0(led_data_out_0_0),
        .led_enable_0_0(led_enable_0_0),
        .reset_0_0(reset_0_0),
        .seg_out_0_0(seg_out_0_0),
        .thres_high_sw(thres_high_sw),
        .thres_low_sw(thres_low_sw),
        .vauxn6_0_0(vauxn6_0_0),
        .vauxp6_0_0(vauxp6_0_0));
endmodule
