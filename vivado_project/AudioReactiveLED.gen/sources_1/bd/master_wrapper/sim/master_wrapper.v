//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Thu May 14 20:35:22 2026
//Host        : CANKUR8A4F running 64-bit major release  (build 9200)
//Command     : generate_target master_wrapper.bd
//Design      : master_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "master_wrapper,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=master_wrapper,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "master_wrapper.hwdef" *) 
module master_wrapper
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_0_0;
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
  wire [11:0]seven_segment_displa_0_audio_out;
  wire seven_segment_displa_0_sample_valid_output;
  wire [5:0]thres_high_sw;
  wire [5:0]thres_low_sw;
  wire vauxn6_0_0;
  wire vauxp6_0_0;
  wire [11:0]xlconcat_0_dout;
  wire [11:0]xlconcat_1_dout;
  wire [5:0]xlconstant_0_dout;

  master_wrapper_led_subsystem_wrapper_0_1 led_subsystem_wrapper_0
       (.audio_in_0(seven_segment_displa_0_audio_out),
        .clk_0(clk_0_0),
        .led_data_out_0(led_data_out_0_0),
        .led_enable_0(led_enable_0_0),
        .reset_0(reset_0_0),
        .sample_valid_0(seven_segment_displa_0_sample_valid_output),
        .thresh_high_0(xlconcat_0_dout),
        .thresh_low_0(xlconcat_1_dout));
  master_wrapper_seven_segment_displa_0_1 seven_segment_displa_0
       (.an_0(an_0_0),
        .audio_out(seven_segment_displa_0_audio_out),
        .clk_0(clk_0_0),
        .reset_in_0(reset_0_0),
        .sample_valid_output(seven_segment_displa_0_sample_valid_output),
        .seg_out_0(seg_out_0_0),
        .vauxn6_0(vauxn6_0_0),
        .vauxp6_0(vauxp6_0_0));
  master_wrapper_xlconcat_0_0 xlconcat_0
       (.In0(xlconstant_0_dout),
        .In1(thres_high_sw),
        .dout(xlconcat_0_dout));
  master_wrapper_xlconcat_1_0 xlconcat_1
       (.In0(xlconstant_0_dout),
        .In1(thres_low_sw),
        .dout(xlconcat_1_dout));
  master_wrapper_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
