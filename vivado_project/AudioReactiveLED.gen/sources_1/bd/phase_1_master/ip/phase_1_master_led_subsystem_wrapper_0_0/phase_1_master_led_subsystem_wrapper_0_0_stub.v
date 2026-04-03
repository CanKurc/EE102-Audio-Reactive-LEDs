// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr  3 12:58:05 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/phase_1_master/ip/phase_1_master_led_subsystem_wrapper_0_0/phase_1_master_led_subsystem_wrapper_0_0_stub.v
// Design      : phase_1_master_led_subsystem_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "phase_1_master_led_subsystem_wrapper_0_0,led_subsystem_wrapper,{}" *) (* CORE_GENERATION_INFO = "phase_1_master_led_subsystem_wrapper_0_0,led_subsystem_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=led_subsystem_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "led_subsystem_wrapper,Vivado 2025.2" *) 
module phase_1_master_led_subsystem_wrapper_0_0(brightness_0, clk_0, color_sel_0, frame_done_0, 
  led_data_out_0, led_enable_0, reset_0)
/* synthesis syn_black_box black_box_pad_pin="brightness_0[2:0],clk_0,color_sel_0[3:0],frame_done_0,led_data_out_0,led_enable_0,reset_0" */;
  input [2:0]brightness_0;
  input clk_0;
  input [3:0]color_sel_0;
  output frame_done_0;
  output led_data_out_0;
  input led_enable_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_0 RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_0;
endmodule
