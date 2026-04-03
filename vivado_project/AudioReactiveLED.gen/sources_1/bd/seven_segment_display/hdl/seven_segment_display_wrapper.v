//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Fri Apr  3 12:50:17 2026
//Host        : CANKUR8A4F running 64-bit major release  (build 9200)
//Command     : generate_target seven_segment_display_wrapper.bd
//Design      : seven_segment_display_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module seven_segment_display_wrapper
   (an_0,
    clk_0,
    reset_in_0,
    seg_out_0,
    vauxn6_0,
    vauxp6_0);
  output [3:0]an_0;
  input clk_0;
  input reset_in_0;
  output [6:0]seg_out_0;
  input vauxn6_0;
  input vauxp6_0;

  wire [3:0]an_0;
  wire clk_0;
  wire reset_in_0;
  wire [6:0]seg_out_0;
  wire vauxn6_0;
  wire vauxp6_0;

  seven_segment_display seven_segment_display_i
       (.an_0(an_0),
        .clk_0(clk_0),
        .reset_in_0(reset_in_0),
        .seg_out_0(seg_out_0),
        .vauxn6_0(vauxn6_0),
        .vauxp6_0(vauxp6_0));
endmodule
