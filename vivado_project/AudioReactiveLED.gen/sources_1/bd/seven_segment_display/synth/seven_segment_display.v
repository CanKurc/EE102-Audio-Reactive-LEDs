//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Fri Apr  3 12:50:17 2026
//Host        : CANKUR8A4F running 64-bit major release  (build 9200)
//Command     : generate_target seven_segment_display.bd
//Design      : seven_segment_display
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "seven_segment_display,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=seven_segment_display,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "seven_segment_display.hwdef" *) 
module seven_segment_display
   (an_0,
    clk_0,
    reset_in_0,
    seg_out_0,
    vauxn6_0,
    vauxp6_0);
  output [3:0]an_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN seven_segment_display_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_IN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_IN_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_in_0;
  output [6:0]seg_out_0;
  input vauxn6_0;
  input vauxp6_0;

  wire [3:0]an_0;
  wire clk_0;
  wire [1:0]clock_divider_0_digit_select;
  wire [3:0]mux_4to1_0_digit_out;
  wire reset_in_0;
  wire [6:0]seg_out_0;
  wire vauxn6_0;
  wire vauxp6_0;
  wire [15:0]xadc_wiz_0_do_out;
  wire xadc_wiz_0_eoc_out;
  wire [15:0]xlconcat_0_dout;
  wire [6:0]xlconstant_0_dout;
  wire [15:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;
  wire [3:0]xlconstant_3_dout;
  wire [11:0]xlslice_0_Dout;

  seven_segment_display_anode_decoder_0_0 anode_decoder_0
       (.an(an_0),
        .digit_select(clock_divider_0_digit_select));
  seven_segment_display_binary_input_to_7_se_0_0 binary_input_to_7_se_0
       (.bcd_in(mux_4to1_0_digit_out),
        .seg_out(seg_out_0));
  seven_segment_display_clock_divider_0_0 clock_divider_0
       (.clk(clk_0),
        .digit_select(clock_divider_0_digit_select));
  seven_segment_display_mux_4to1_0_0 mux_4to1_0
       (.digit_out(mux_4to1_0_digit_out),
        .digit_select(clock_divider_0_digit_select),
        .sw(xlconcat_0_dout));
  seven_segment_display_xadc_wiz_0_0 xadc_wiz_0
       (.daddr_in(xlconstant_0_dout),
        .dclk_in(clk_0),
        .den_in(xadc_wiz_0_eoc_out),
        .di_in(xlconstant_1_dout),
        .do_out(xadc_wiz_0_do_out),
        .dwe_in(xlconstant_2_dout),
        .eoc_out(xadc_wiz_0_eoc_out),
        .reset_in(reset_in_0),
        .vauxn6(vauxn6_0),
        .vauxp6(vauxp6_0),
        .vn_in(1'b0),
        .vp_in(1'b0));
  seven_segment_display_xlconcat_0_0 xlconcat_0
       (.In0(xlconstant_3_dout),
        .In1(xlslice_0_Dout),
        .dout(xlconcat_0_dout));
  seven_segment_display_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  seven_segment_display_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  seven_segment_display_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  seven_segment_display_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  seven_segment_display_xlslice_0_0 xlslice_0
       (.Din(xadc_wiz_0_do_out),
        .Dout(xlslice_0_Dout));
endmodule
