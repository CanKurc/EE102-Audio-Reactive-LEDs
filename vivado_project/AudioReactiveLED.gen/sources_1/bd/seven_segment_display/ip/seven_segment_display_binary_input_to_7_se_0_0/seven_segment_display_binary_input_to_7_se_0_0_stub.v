// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr  3 12:54:14 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/seven_segment_display/ip/seven_segment_display_binary_input_to_7_se_0_0/seven_segment_display_binary_input_to_7_se_0_0_stub.v
// Design      : seven_segment_display_binary_input_to_7_se_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "seven_segment_display_binary_input_to_7_se_0_0,binary_input_to_7_segment_display,{}" *) (* CORE_GENERATION_INFO = "seven_segment_display_binary_input_to_7_se_0_0,binary_input_to_7_segment_display,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=binary_input_to_7_segment_display,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "binary_input_to_7_segment_display,Vivado 2025.2" *) 
module seven_segment_display_binary_input_to_7_se_0_0(bcd_in, seg_out)
/* synthesis syn_black_box black_box_pad_pin="bcd_in[3:0],seg_out[6:0]" */;
  input [3:0]bcd_in;
  output [6:0]seg_out;
endmodule
