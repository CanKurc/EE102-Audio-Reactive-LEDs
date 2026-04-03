// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr  3 12:53:20 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/seven_segment_display/ip/seven_segment_display_mux_4to1_0_0/seven_segment_display_mux_4to1_0_0_stub.v
// Design      : seven_segment_display_mux_4to1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "seven_segment_display_mux_4to1_0_0,mux_4to1,{}" *) (* CORE_GENERATION_INFO = "seven_segment_display_mux_4to1_0_0,mux_4to1,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mux_4to1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "mux_4to1,Vivado 2025.2" *) 
module seven_segment_display_mux_4to1_0_0(sw, digit_select, digit_out)
/* synthesis syn_black_box black_box_pad_pin="sw[15:0],digit_select[1:0],digit_out[3:0]" */;
  input [15:0]sw;
  input [1:0]digit_select;
  output [3:0]digit_out;
endmodule
