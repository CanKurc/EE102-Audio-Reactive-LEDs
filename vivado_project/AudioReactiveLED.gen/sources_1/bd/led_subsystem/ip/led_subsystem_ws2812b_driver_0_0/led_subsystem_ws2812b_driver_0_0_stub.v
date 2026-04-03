// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr  3 12:53:00 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_ws2812b_driver_0_0/led_subsystem_ws2812b_driver_0_0_stub.v
// Design      : led_subsystem_ws2812b_driver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "led_subsystem_ws2812b_driver_0_0,ws2812b_driver,{}" *) (* CORE_GENERATION_INFO = "led_subsystem_ws2812b_driver_0_0,ws2812b_driver,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ws2812b_driver,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "ws2812b_driver,Vivado 2025.2" *) 
module led_subsystem_ws2812b_driver_0_0(clk, reset, color_in, enable, led_data_out, 
  frame_done)
/* synthesis syn_black_box black_box_pad_pin="reset,color_in[23:0],enable,led_data_out,frame_done" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_subsystem_clk_0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [23:0]color_in;
  input enable;
  output led_data_out;
  output frame_done;
endmodule
