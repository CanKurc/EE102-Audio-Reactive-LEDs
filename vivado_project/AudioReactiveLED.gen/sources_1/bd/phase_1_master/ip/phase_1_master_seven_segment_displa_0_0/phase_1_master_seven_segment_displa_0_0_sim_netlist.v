// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr  3 12:56:08 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/phase_1_master/ip/phase_1_master_seven_segment_displa_0_0/phase_1_master_seven_segment_displa_0_0_sim_netlist.v
// Design      : phase_1_master_seven_segment_displa_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "phase_1_master_seven_segment_displa_0_0,seven_segment_display_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "seven_segment_display_wrapper,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module phase_1_master_seven_segment_displa_0_0
   (an_0,
    clk_0,
    reset_in_0,
    seg_out_0,
    vauxn6_0,
    vauxp6_0);
  output [3:0]an_0;
  input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_in_0 RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_in_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_in_0;
  output [6:0]seg_out_0;
  input vauxn6_0;
  input vauxp6_0;

  wire [3:0]an_0;
  wire clk_0;
  wire reset_in_0;
  wire [6:0]seg_out_0;
  wire vauxn6_0;
  wire vauxp6_0;

  phase_1_master_seven_segment_displa_0_0_seven_segment_display_wrapper inst
       (.an_0(an_0),
        .clk_0(clk_0),
        .reset_in_0(reset_in_0),
        .seg_out_0(seg_out_0),
        .vauxn6_0(vauxn6_0),
        .vauxp6_0(vauxp6_0));
endmodule

(* HW_HANDOFF = "seven_segment_display.hwdef" *) (* ORIG_REF_NAME = "seven_segment_display" *) 
module phase_1_master_seven_segment_displa_0_0_seven_segment_display
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
  wire [15:4]xlconcat_0_dout;
  wire [11:0]xlslice_0_Dout;
  wire NLW_xadc_wiz_0_alarm_out_UNCONNECTED;
  wire NLW_xadc_wiz_0_busy_out_UNCONNECTED;
  wire NLW_xadc_wiz_0_drdy_out_UNCONNECTED;
  wire NLW_xadc_wiz_0_eos_out_UNCONNECTED;
  wire [4:0]NLW_xadc_wiz_0_channel_out_UNCONNECTED;
  wire [3:0]NLW_xlconcat_0_dout_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "seven_segment_display_anode_decoder_0_0,anode_decoder,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "anode_decoder,Vivado 2025.2" *) 
  phase_1_master_seven_segment_displa_0_0_seven_segment_display_anode_decoder_0_0 anode_decoder_0
       (.an(an_0),
        .digit_select(clock_divider_0_digit_select));
  (* CHECK_LICENSE_TYPE = "seven_segment_display_binary_input_to_7_se_0_0,binary_input_to_7_segment_display,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "binary_input_to_7_segment_display,Vivado 2025.2" *) 
  phase_1_master_seven_segment_displa_0_0_seven_segment_display_binary_input_to_7_se_0_0 binary_input_to_7_se_0
       (.bcd_in(mux_4to1_0_digit_out),
        .seg_out(seg_out_0));
  (* CHECK_LICENSE_TYPE = "seven_segment_display_clock_divider_0_0,clock_divider,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "clock_divider,Vivado 2025.2" *) 
  phase_1_master_seven_segment_displa_0_0_seven_segment_display_clock_divider_0_0 clock_divider_0
       (.clk(clk_0),
        .digit_select(clock_divider_0_digit_select));
  (* CHECK_LICENSE_TYPE = "seven_segment_display_mux_4to1_0_0,mux_4to1,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "mux_4to1,Vivado 2025.2" *) 
  phase_1_master_seven_segment_displa_0_0_seven_segment_display_mux_4to1_0_0 mux_4to1_0
       (.digit_out(mux_4to1_0_digit_out),
        .digit_select(clock_divider_0_digit_select),
        .sw({xlconcat_0_dout,1'b0,1'b0,1'b0,1'b0}));
  phase_1_master_seven_segment_displa_0_0_seven_segment_display_xadc_wiz_0_0 xadc_wiz_0
       (.alarm_out(NLW_xadc_wiz_0_alarm_out_UNCONNECTED),
        .busy_out(NLW_xadc_wiz_0_busy_out_UNCONNECTED),
        .channel_out(NLW_xadc_wiz_0_channel_out_UNCONNECTED[4:0]),
        .daddr_in({1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0}),
        .dclk_in(clk_0),
        .den_in(xadc_wiz_0_eoc_out),
        .di_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .do_out(xadc_wiz_0_do_out),
        .drdy_out(NLW_xadc_wiz_0_drdy_out_UNCONNECTED),
        .dwe_in(1'b0),
        .eoc_out(xadc_wiz_0_eoc_out),
        .eos_out(NLW_xadc_wiz_0_eos_out_UNCONNECTED),
        .reset_in(reset_in_0),
        .vauxn6(vauxn6_0),
        .vauxp6(vauxp6_0),
        .vn_in(1'b0),
        .vp_in(1'b0));
  (* CHECK_LICENSE_TYPE = "seven_segment_display_xlconcat_0_0,xlconcat_v2_1_7_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_7_xlconcat,Vivado 2025.2" *) 
  phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlconcat_0_0 xlconcat_0
       (.In0({1'b0,1'b0,1'b0,1'b0}),
        .In1(xlslice_0_Dout),
        .dout({xlconcat_0_dout,NLW_xlconcat_0_dout_UNCONNECTED[3:0]}));
  (* CHECK_LICENSE_TYPE = "seven_segment_display_xlslice_0_0,xlslice_v1_0_5_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_5_xlslice,Vivado 2025.2" *) 
  phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlslice_0_0 xlslice_0
       (.Din({xadc_wiz_0_do_out[15:4],1'b0,1'b0,1'b0,1'b0}),
        .Dout(xlslice_0_Dout));
endmodule

(* CHECK_LICENSE_TYPE = "seven_segment_display_anode_decoder_0_0,anode_decoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "seven_segment_display_anode_decoder_0_0" *) (* X_CORE_INFO = "anode_decoder,Vivado 2025.2" *) 
module phase_1_master_seven_segment_displa_0_0_seven_segment_display_anode_decoder_0_0
   (digit_select,
    an);
  input [1:0]digit_select;
  output [3:0]an;


endmodule

(* CHECK_LICENSE_TYPE = "seven_segment_display_binary_input_to_7_se_0_0,binary_input_to_7_segment_display,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "seven_segment_display_binary_input_to_7_se_0_0" *) (* X_CORE_INFO = "binary_input_to_7_segment_display,Vivado 2025.2" *) 
module phase_1_master_seven_segment_displa_0_0_seven_segment_display_binary_input_to_7_se_0_0
   (bcd_in,
    seg_out);
  input [3:0]bcd_in;
  output [6:0]seg_out;


endmodule

(* CHECK_LICENSE_TYPE = "seven_segment_display_clock_divider_0_0,clock_divider,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "seven_segment_display_clock_divider_0_0" *) (* X_CORE_INFO = "clock_divider,Vivado 2025.2" *) 
module phase_1_master_seven_segment_displa_0_0_seven_segment_display_clock_divider_0_0
   (clk,
    digit_select);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN seven_segment_display_clk_0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  output [1:0]digit_select;


endmodule

(* CHECK_LICENSE_TYPE = "seven_segment_display_mux_4to1_0_0,mux_4to1,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "seven_segment_display_mux_4to1_0_0" *) (* X_CORE_INFO = "mux_4to1,Vivado 2025.2" *) 
module phase_1_master_seven_segment_displa_0_0_seven_segment_display_mux_4to1_0_0
   (sw,
    digit_select,
    digit_out);
  input [15:0]sw;
  input [1:0]digit_select;
  output [3:0]digit_out;


endmodule

(* ORIG_REF_NAME = "seven_segment_display_wrapper" *) 
module phase_1_master_seven_segment_displa_0_0_seven_segment_display_wrapper
   (an_0,
    seg_out_0,
    clk_0,
    reset_in_0,
    vauxn6_0,
    vauxp6_0);
  output [3:0]an_0;
  output [6:0]seg_out_0;
  input clk_0;
  input reset_in_0;
  input vauxn6_0;
  input vauxp6_0;

  wire [3:0]an_0;
  wire clk_0;
  wire reset_in_0;
  wire [6:0]seg_out_0;
  wire vauxn6_0;
  wire vauxp6_0;

  (* HW_HANDOFF = "seven_segment_display.hwdef" *) 
  phase_1_master_seven_segment_displa_0_0_seven_segment_display seven_segment_display_i
       (.an_0(an_0),
        .clk_0(clk_0),
        .reset_in_0(reset_in_0),
        .seg_out_0(seg_out_0),
        .vauxn6_0(vauxn6_0),
        .vauxp6_0(vauxp6_0));
endmodule

(* ORIG_REF_NAME = "seven_segment_display_xadc_wiz_0_0" *) 
module phase_1_master_seven_segment_displa_0_0_seven_segment_display_xadc_wiz_0_0
   (daddr_in,
    dclk_in,
    den_in,
    di_in,
    dwe_in,
    reset_in,
    vauxp6,
    vauxn6,
    busy_out,
    channel_out,
    do_out,
    drdy_out,
    eoc_out,
    eos_out,
    alarm_out,
    vp_in,
    vn_in);
  input [6:0]daddr_in;
  (* syn_isclock = "1" *) input dclk_in;
  input den_in;
  input [15:0]di_in;
  input dwe_in;
  input reset_in;
  input vauxp6;
  input vauxn6;
  output busy_out;
  output [4:0]channel_out;
  output [15:0]do_out;
  output drdy_out;
  output eoc_out;
  output eos_out;
  output alarm_out;
  input vp_in;
  input vn_in;


endmodule

(* CHECK_LICENSE_TYPE = "seven_segment_display_xlconcat_0_0,xlconcat_v2_1_7_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "seven_segment_display_xlconcat_0_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_7_xlconcat,Vivado 2025.2" *) 
module phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlconcat_0_0
   (In0,
    In1,
    dout);
  input [3:0]In0;
  input [11:0]In1;
  output [15:0]dout;

  wire \<const0> ;
  wire [11:0]In1;

  assign dout[15:4] = In1;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "seven_segment_display_xlslice_0_0,xlslice_v1_0_5_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "seven_segment_display_xlslice_0_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_5_xlslice,Vivado 2025.2" *) 
module phase_1_master_seven_segment_displa_0_0_seven_segment_display_xlslice_0_0
   (Din,
    Dout);
  input [15:0]Din;
  output [11:0]Dout;

  wire [15:0]Din;

  assign Dout[11:0] = Din[15:4];
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
