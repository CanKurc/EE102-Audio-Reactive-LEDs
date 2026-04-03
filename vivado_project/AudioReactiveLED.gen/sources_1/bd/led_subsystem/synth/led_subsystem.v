//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Fri Apr  3 12:50:16 2026
//Host        : CANKUR8A4F running 64-bit major release  (build 9200)
//Command     : generate_target led_subsystem.bd
//Design      : led_subsystem
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "led_subsystem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=led_subsystem,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "led_subsystem.hwdef" *) 
module led_subsystem
   (brightness_0,
    clk_0,
    color_sel_0,
    frame_done_0,
    led_data_out_0,
    led_enable_0,
    reset_0);
  input [2:0]brightness_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET reset_0, CLK_DOMAIN led_subsystem_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  input [3:0]color_sel_0;
  output frame_done_0;
  output led_data_out_0;
  input led_enable_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_0;

  wire [2:0]brightness_0;
  wire clk_0;
  wire [23:0]color_lut_0_color_out;
  wire [3:0]color_sel_0;
  wire frame_done_0;
  wire led_data_out_0;
  wire led_enable_0;
  wire [2:0]manual_color_select_0_brightness_level;
  wire [3:0]manual_color_select_0_color_index;
  wire manual_color_select_0_enable;
  wire reset_0;

  led_subsystem_color_lut_0_0 color_lut_0
       (.brightness_level(manual_color_select_0_brightness_level),
        .color_index(manual_color_select_0_color_index),
        .color_out(color_lut_0_color_out));
  led_subsystem_manual_color_select_0_0 manual_color_select_0
       (.brightness(brightness_0),
        .brightness_level(manual_color_select_0_brightness_level),
        .color_index(manual_color_select_0_color_index),
        .color_sel(color_sel_0),
        .enable(manual_color_select_0_enable),
        .led_enable(led_enable_0));
  led_subsystem_ws2812b_driver_0_0 ws2812b_driver_0
       (.clk(clk_0),
        .color_in(color_lut_0_color_out),
        .enable(manual_color_select_0_enable),
        .frame_done(frame_done_0),
        .led_data_out(led_data_out_0),
        .reset(reset_0));
endmodule
