// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr  3 12:58:05 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/phase_1_master/ip/phase_1_master_led_subsystem_wrapper_0_0/phase_1_master_led_subsystem_wrapper_0_0_sim_netlist.v
// Design      : phase_1_master_led_subsystem_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "phase_1_master_led_subsystem_wrapper_0_0,led_subsystem_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "led_subsystem_wrapper,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module phase_1_master_led_subsystem_wrapper_0_0
   (brightness_0,
    clk_0,
    color_sel_0,
    frame_done_0,
    led_data_out_0,
    led_enable_0,
    reset_0);
  input [2:0]brightness_0;
  input clk_0;
  input [3:0]color_sel_0;
  output frame_done_0;
  output led_data_out_0;
  input led_enable_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_0 RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_0;

  wire [2:0]brightness_0;
  wire clk_0;
  wire [3:0]color_sel_0;
  wire frame_done_0;
  wire led_data_out_0;
  wire led_enable_0;
  wire reset_0;

  phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_wrapper inst
       (.brightness_0(brightness_0),
        .clk_0(clk_0),
        .color_sel_0(color_sel_0),
        .frame_done_0(frame_done_0),
        .led_data_out_0(led_data_out_0),
        .led_enable_0(led_enable_0),
        .reset_0(reset_0));
endmodule

(* HW_HANDOFF = "led_subsystem.hwdef" *) (* ORIG_REF_NAME = "led_subsystem" *) 
module phase_1_master_led_subsystem_wrapper_0_0_led_subsystem
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

  (* CHECK_LICENSE_TYPE = "led_subsystem_color_lut_0_0,color_lut,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "color_lut,Vivado 2025.2" *) 
  phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_color_lut_0_0 color_lut_0
       (.brightness_level(manual_color_select_0_brightness_level),
        .color_index(manual_color_select_0_color_index),
        .color_out(color_lut_0_color_out));
  (* CHECK_LICENSE_TYPE = "led_subsystem_manual_color_select_0_0,manual_color_select,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "manual_color_select,Vivado 2025.2" *) 
  phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_manual_color_select_0_0 manual_color_select_0
       (.brightness(brightness_0),
        .brightness_level(manual_color_select_0_brightness_level),
        .color_index(manual_color_select_0_color_index),
        .color_sel(color_sel_0),
        .enable(manual_color_select_0_enable),
        .led_enable(led_enable_0));
  (* CHECK_LICENSE_TYPE = "led_subsystem_ws2812b_driver_0_0,ws2812b_driver,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "module_ref" *) 
  (* X_CORE_INFO = "ws2812b_driver,Vivado 2025.2" *) 
  phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_ws2812b_driver_0_0 ws2812b_driver_0
       (.clk(clk_0),
        .color_in(color_lut_0_color_out),
        .enable(manual_color_select_0_enable),
        .frame_done(frame_done_0),
        .led_data_out(led_data_out_0),
        .reset(reset_0));
endmodule

(* CHECK_LICENSE_TYPE = "led_subsystem_color_lut_0_0,color_lut,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "led_subsystem_color_lut_0_0" *) (* X_CORE_INFO = "color_lut,Vivado 2025.2" *) 
module phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_color_lut_0_0
   (color_index,
    brightness_level,
    color_out);
  input [3:0]color_index;
  input [2:0]brightness_level;
  output [23:0]color_out;


endmodule

(* CHECK_LICENSE_TYPE = "led_subsystem_manual_color_select_0_0,manual_color_select,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "led_subsystem_manual_color_select_0_0" *) (* X_CORE_INFO = "manual_color_select,Vivado 2025.2" *) 
module phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_manual_color_select_0_0
   (color_sel,
    brightness,
    led_enable,
    color_index,
    brightness_level,
    enable);
  input [3:0]color_sel;
  input [2:0]brightness;
  input led_enable;
  output [3:0]color_index;
  output [2:0]brightness_level;
  output enable;


endmodule

(* ORIG_REF_NAME = "led_subsystem_wrapper" *) 
module phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_wrapper
   (frame_done_0,
    led_data_out_0,
    brightness_0,
    clk_0,
    color_sel_0,
    led_enable_0,
    reset_0);
  output frame_done_0;
  output led_data_out_0;
  input [2:0]brightness_0;
  input clk_0;
  input [3:0]color_sel_0;
  input led_enable_0;
  input reset_0;

  wire [2:0]brightness_0;
  wire clk_0;
  wire [3:0]color_sel_0;
  wire frame_done_0;
  wire led_data_out_0;
  wire led_enable_0;
  wire reset_0;

  (* HW_HANDOFF = "led_subsystem.hwdef" *) 
  phase_1_master_led_subsystem_wrapper_0_0_led_subsystem led_subsystem_i
       (.brightness_0(brightness_0),
        .clk_0(clk_0),
        .color_sel_0(color_sel_0),
        .frame_done_0(frame_done_0),
        .led_data_out_0(led_data_out_0),
        .led_enable_0(led_enable_0),
        .reset_0(reset_0));
endmodule

(* CHECK_LICENSE_TYPE = "led_subsystem_ws2812b_driver_0_0,ws2812b_driver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* ORIG_REF_NAME = "led_subsystem_ws2812b_driver_0_0" *) (* X_CORE_INFO = "ws2812b_driver,Vivado 2025.2" *) 
module phase_1_master_led_subsystem_wrapper_0_0_led_subsystem_ws2812b_driver_0_0
   (clk,
    reset,
    color_in,
    enable,
    led_data_out,
    frame_done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_subsystem_clk_0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [23:0]color_in;
  input enable;
  output led_data_out;
  output frame_done;


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
