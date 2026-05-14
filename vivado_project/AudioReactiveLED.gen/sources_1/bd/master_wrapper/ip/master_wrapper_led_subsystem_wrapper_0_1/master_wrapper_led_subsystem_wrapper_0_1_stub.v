// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May 14 20:37:57 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/master_wrapper/ip/master_wrapper_led_subsystem_wrapper_0_1/master_wrapper_led_subsystem_wrapper_0_1_stub.v
// Design      : master_wrapper_led_subsystem_wrapper_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "master_wrapper_led_subsystem_wrapper_0_1,led_subsystem_wrapper,{}" *) (* CORE_GENERATION_INFO = "master_wrapper_led_subsystem_wrapper_0_1,led_subsystem_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=led_subsystem_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "led_subsystem_wrapper,Vivado 2025.2" *) 
module master_wrapper_led_subsystem_wrapper_0_1(audio_in_0, clk_0, led_data_out_0, 
  led_enable_0, reset_0, sample_valid_0, thresh_high_0, thresh_low_0)
/* synthesis syn_black_box black_box_pad_pin="audio_in_0[11:0],clk_0,led_data_out_0,led_enable_0,reset_0,sample_valid_0,thresh_high_0[11:0],thresh_low_0[11:0]" */;
  input [11:0]audio_in_0;
  input clk_0;
  output led_data_out_0;
  input led_enable_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_0 RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_0;
  input sample_valid_0;
  input [11:0]thresh_high_0;
  input [11:0]thresh_low_0;
endmodule
