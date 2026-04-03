//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Fri Apr  3 12:50:20 2026
//Host        : CANKUR8A4F running 64-bit major release  (build 9200)
//Command     : generate_target phase_1_master.bd
//Design      : phase_1_master
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "phase_1_master,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=phase_1_master,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "phase_1_master.hwdef" *) 
module phase_1_master
   (an_0_0,
    brightness_0_0,
    clk_0_0,
    color_sel_0_0,
    frame_done_0_0,
    led_data_out_0_0,
    led_enable_0_0,
    reset_0_0,
    seg_out_0_0,
    vauxn6_0_0,
    vauxp6_0_0);
  output [3:0]an_0_0;
  input [2:0]brightness_0_0;
  input clk_0_0;
  input [3:0]color_sel_0_0;
  output frame_done_0_0;
  output led_data_out_0_0;
  input led_enable_0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_0_0;
  output [6:0]seg_out_0_0;
  input vauxn6_0_0;
  input vauxp6_0_0;

  wire [3:0]an_0_0;
  wire [2:0]brightness_0_0;
  wire clk_0_0;
  wire [3:0]color_sel_0_0;
  wire frame_done_0_0;
  wire led_data_out_0_0;
  wire led_enable_0_0;
  wire reset_0_0;
  wire [6:0]seg_out_0_0;
  wire vauxn6_0_0;
  wire vauxp6_0_0;

  phase_1_master_led_subsystem_wrapper_0_0 led_subsystem_wrapper_0
       (.brightness_0(brightness_0_0),
        .clk_0(clk_0_0),
        .color_sel_0(color_sel_0_0),
        .frame_done_0(frame_done_0_0),
        .led_data_out_0(led_data_out_0_0),
        .led_enable_0(led_enable_0_0),
        .reset_0(reset_0_0));
  phase_1_master_seven_segment_displa_0_0 seven_segment_displa_0
       (.an_0(an_0_0),
        .clk_0(clk_0_0),
        .reset_in_0(reset_0_0),
        .seg_out_0(seg_out_0_0),
        .vauxn6_0(vauxn6_0_0),
        .vauxp6_0(vauxp6_0_0));
endmodule
