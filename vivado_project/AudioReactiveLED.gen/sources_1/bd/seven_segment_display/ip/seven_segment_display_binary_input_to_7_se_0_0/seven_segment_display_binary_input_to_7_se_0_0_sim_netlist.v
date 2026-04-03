// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr  3 12:54:14 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/seven_segment_display/ip/seven_segment_display_binary_input_to_7_se_0_0/seven_segment_display_binary_input_to_7_se_0_0_sim_netlist.v
// Design      : seven_segment_display_binary_input_to_7_se_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "seven_segment_display_binary_input_to_7_se_0_0,binary_input_to_7_segment_display,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "binary_input_to_7_segment_display,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module seven_segment_display_binary_input_to_7_se_0_0
   (bcd_in,
    seg_out);
  input [3:0]bcd_in;
  output [6:0]seg_out;

  wire [3:0]bcd_in;
  wire [6:0]seg_out;

  seven_segment_display_binary_input_to_7_se_0_0_binary_input_to_7_segment_display inst
       (.bcd_in(bcd_in),
        .seg_out(seg_out));
endmodule

(* ORIG_REF_NAME = "binary_input_to_7_segment_display" *) 
module seven_segment_display_binary_input_to_7_se_0_0_binary_input_to_7_segment_display
   (seg_out,
    bcd_in);
  output [6:0]seg_out;
  input [3:0]bcd_in;

  wire [3:0]bcd_in;
  wire [6:0]seg_out;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_out[0]_INST_0 
       (.I0(bcd_in[3]),
        .I1(bcd_in[2]),
        .I2(bcd_in[0]),
        .I3(bcd_in[1]),
        .O(seg_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_out[1]_INST_0 
       (.I0(bcd_in[3]),
        .I1(bcd_in[2]),
        .I2(bcd_in[1]),
        .I3(bcd_in[0]),
        .O(seg_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_out[2]_INST_0 
       (.I0(bcd_in[3]),
        .I1(bcd_in[0]),
        .I2(bcd_in[1]),
        .I3(bcd_in[2]),
        .O(seg_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_out[3]_INST_0 
       (.I0(bcd_in[3]),
        .I1(bcd_in[2]),
        .I2(bcd_in[0]),
        .I3(bcd_in[1]),
        .O(seg_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_out[4]_INST_0 
       (.I0(bcd_in[3]),
        .I1(bcd_in[1]),
        .I2(bcd_in[2]),
        .I3(bcd_in[0]),
        .O(seg_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_out[5]_INST_0 
       (.I0(bcd_in[3]),
        .I1(bcd_in[2]),
        .I2(bcd_in[0]),
        .I3(bcd_in[1]),
        .O(seg_out[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_out[6]_INST_0 
       (.I0(bcd_in[3]),
        .I1(bcd_in[0]),
        .I2(bcd_in[2]),
        .I3(bcd_in[1]),
        .O(seg_out[6]));
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
