// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr  3 12:55:30 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_color_lut_0_0/led_subsystem_color_lut_0_0_sim_netlist.v
// Design      : led_subsystem_color_lut_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "led_subsystem_color_lut_0_0,color_lut,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "color_lut,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module led_subsystem_color_lut_0_0
   (color_index,
    brightness_level,
    color_out);
  input [3:0]color_index;
  input [2:0]brightness_level;
  output [23:0]color_out;

  wire [7:4]ARG;
  wire [2:0]brightness_level;
  wire [3:0]color_index;
  wire [23:0]color_out;
  wire \color_out[0]_INST_0_i_1_n_0 ;
  wire \color_out[10]_INST_0_i_1_n_0 ;
  wire \color_out[10]_INST_0_i_2_n_0 ;
  wire \color_out[14]_INST_0_i_2_n_0 ;
  wire \color_out[16]_INST_0_i_1_n_0 ;
  wire \color_out[17]_INST_0_i_1_n_0 ;
  wire \color_out[18]_INST_0_i_1_n_0 ;
  wire \color_out[19]_INST_0_i_1_n_0 ;
  wire \color_out[1]_INST_0_i_1_n_0 ;
  wire \color_out[20]_INST_0_i_1_n_0 ;
  wire \color_out[21]_INST_0_i_1_n_0 ;
  wire \color_out[21]_INST_0_i_2_n_0 ;
  wire \color_out[23]_INST_0_i_1_n_0 ;
  wire \color_out[2]_INST_0_i_1_n_0 ;
  wire \color_out[3]_INST_0_i_1_n_0 ;
  wire \color_out[4]_INST_0_i_1_n_0 ;
  wire \color_out[5]_INST_0_i_1_n_0 ;
  wire \color_out[5]_INST_0_i_2_n_0 ;
  wire \color_out[9]_INST_0_i_1_n_0 ;

  LUT6 #(
    .INIT(64'hFFFFEC4C0000EC4C)) 
    \color_out[0]_INST_0 
       (.I0(brightness_level[1]),
        .I1(\color_out[0]_INST_0_i_1_n_0 ),
        .I2(brightness_level[2]),
        .I3(\color_out[5]_INST_0_i_1_n_0 ),
        .I4(brightness_level[0]),
        .I5(\color_out[1]_INST_0_i_1_n_0 ),
        .O(color_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2674)) 
    \color_out[0]_INST_0_i_1 
       (.I0(color_index[0]),
        .I1(color_index[1]),
        .I2(color_index[2]),
        .I3(color_index[3]),
        .O(\color_out[0]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \color_out[10]_INST_0 
       (.I0(\color_out[10]_INST_0_i_1_n_0 ),
        .I1(brightness_level[0]),
        .I2(\color_out[10]_INST_0_i_2_n_0 ),
        .O(color_out[10]));
  LUT6 #(
    .INIT(64'h2770004477707070)) 
    \color_out[10]_INST_0_i_1 
       (.I0(brightness_level[1]),
        .I1(brightness_level[2]),
        .I2(color_index[0]),
        .I3(color_index[2]),
        .I4(color_index[1]),
        .I5(color_index[3]),
        .O(\color_out[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4770000077707070)) 
    \color_out[10]_INST_0_i_2 
       (.I0(brightness_level[1]),
        .I1(brightness_level[2]),
        .I2(color_index[0]),
        .I3(color_index[2]),
        .I4(color_index[1]),
        .I5(color_index[3]),
        .O(\color_out[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC5C0CFCFC5C0C0C0)) 
    \color_out[11]_INST_0 
       (.I0(brightness_level[0]),
        .I1(\color_out[14]_INST_0_i_2_n_0 ),
        .I2(brightness_level[1]),
        .I3(ARG[7]),
        .I4(brightness_level[2]),
        .I5(ARG[4]),
        .O(color_out[11]));
  LUT6 #(
    .INIT(64'h3030C0C0B8B8F3C0)) 
    \color_out[12]_INST_0 
       (.I0(ARG[7]),
        .I1(brightness_level[0]),
        .I2(\color_out[14]_INST_0_i_2_n_0 ),
        .I3(ARG[4]),
        .I4(brightness_level[1]),
        .I5(brightness_level[2]),
        .O(color_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h60EA)) 
    \color_out[12]_INST_0_i_1 
       (.I0(color_index[0]),
        .I1(color_index[2]),
        .I2(color_index[1]),
        .I3(color_index[3]),
        .O(ARG[4]));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \color_out[13]_INST_0 
       (.I0(brightness_level[0]),
        .I1(ARG[7]),
        .I2(brightness_level[2]),
        .I3(brightness_level[1]),
        .I4(\color_out[14]_INST_0_i_2_n_0 ),
        .O(color_out[13]));
  LUT5 #(
    .INIT(32'h000044F0)) 
    \color_out[14]_INST_0 
       (.I0(brightness_level[2]),
        .I1(ARG[7]),
        .I2(\color_out[14]_INST_0_i_2_n_0 ),
        .I3(brightness_level[0]),
        .I4(brightness_level[1]),
        .O(color_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h63EA)) 
    \color_out[14]_INST_0_i_1 
       (.I0(color_index[0]),
        .I1(color_index[2]),
        .I2(color_index[1]),
        .I3(color_index[3]),
        .O(ARG[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000F3A0)) 
    \color_out[14]_INST_0_i_2 
       (.I0(color_index[2]),
        .I1(color_index[3]),
        .I2(color_index[1]),
        .I3(color_index[0]),
        .I4(brightness_level[2]),
        .O(\color_out[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000063EA0000)) 
    \color_out[15]_INST_0 
       (.I0(color_index[0]),
        .I1(color_index[2]),
        .I2(color_index[1]),
        .I3(color_index[3]),
        .I4(\color_out[23]_INST_0_i_1_n_0 ),
        .I5(brightness_level[0]),
        .O(color_out[15]));
  LUT6 #(
    .INIT(64'hFFFFEC4C0000EC4C)) 
    \color_out[16]_INST_0 
       (.I0(brightness_level[1]),
        .I1(\color_out[16]_INST_0_i_1_n_0 ),
        .I2(brightness_level[2]),
        .I3(\color_out[21]_INST_0_i_1_n_0 ),
        .I4(brightness_level[0]),
        .I5(\color_out[17]_INST_0_i_1_n_0 ),
        .O(color_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h104F)) 
    \color_out[16]_INST_0_i_1 
       (.I0(color_index[3]),
        .I1(color_index[2]),
        .I2(color_index[1]),
        .I3(color_index[0]),
        .O(\color_out[16]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \color_out[17]_INST_0 
       (.I0(\color_out[18]_INST_0_i_1_n_0 ),
        .I1(brightness_level[0]),
        .I2(\color_out[17]_INST_0_i_1_n_0 ),
        .O(color_out[17]));
  LUT6 #(
    .INIT(64'h306F102F90AF102F)) 
    \color_out[17]_INST_0_i_1 
       (.I0(color_index[2]),
        .I1(color_index[3]),
        .I2(color_index[1]),
        .I3(color_index[0]),
        .I4(brightness_level[2]),
        .I5(brightness_level[1]),
        .O(\color_out[17]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \color_out[18]_INST_0 
       (.I0(\color_out[19]_INST_0_i_1_n_0 ),
        .I1(brightness_level[0]),
        .I2(\color_out[18]_INST_0_i_1_n_0 ),
        .O(color_out[18]));
  LUT6 #(
    .INIT(64'h4007400007007777)) 
    \color_out[18]_INST_0_i_1 
       (.I0(brightness_level[1]),
        .I1(brightness_level[2]),
        .I2(color_index[3]),
        .I3(color_index[2]),
        .I4(color_index[1]),
        .I5(color_index[0]),
        .O(\color_out[18]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \color_out[19]_INST_0 
       (.I0(\color_out[20]_INST_0_i_1_n_0 ),
        .I1(brightness_level[0]),
        .I2(\color_out[19]_INST_0_i_1_n_0 ),
        .O(color_out[19]));
  LUT6 #(
    .INIT(64'h2407000027407777)) 
    \color_out[19]_INST_0_i_1 
       (.I0(brightness_level[1]),
        .I1(brightness_level[2]),
        .I2(color_index[3]),
        .I3(color_index[2]),
        .I4(color_index[1]),
        .I5(color_index[0]),
        .O(\color_out[19]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \color_out[1]_INST_0 
       (.I0(\color_out[2]_INST_0_i_1_n_0 ),
        .I1(brightness_level[0]),
        .I2(\color_out[1]_INST_0_i_1_n_0 ),
        .O(color_out[1]));
  LUT6 #(
    .INIT(64'h40F88FF00FFF0F00)) 
    \color_out[1]_INST_0_i_1 
       (.I0(brightness_level[1]),
        .I1(brightness_level[2]),
        .I2(color_index[0]),
        .I3(color_index[1]),
        .I4(color_index[2]),
        .I5(color_index[3]),
        .O(\color_out[1]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \color_out[20]_INST_0 
       (.I0(\color_out[21]_INST_0_i_2_n_0 ),
        .I1(brightness_level[0]),
        .I2(\color_out[20]_INST_0_i_1_n_0 ),
        .O(color_out[20]));
  LUT6 #(
    .INIT(64'h00000000984F104F)) 
    \color_out[20]_INST_0_i_1 
       (.I0(color_index[3]),
        .I1(color_index[2]),
        .I2(color_index[1]),
        .I3(color_index[0]),
        .I4(brightness_level[1]),
        .I5(brightness_level[2]),
        .O(\color_out[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \color_out[21]_INST_0 
       (.I0(brightness_level[2]),
        .I1(brightness_level[1]),
        .I2(\color_out[21]_INST_0_i_1_n_0 ),
        .I3(brightness_level[0]),
        .I4(\color_out[21]_INST_0_i_2_n_0 ),
        .O(color_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h982F)) 
    \color_out[21]_INST_0_i_1 
       (.I0(color_index[2]),
        .I1(color_index[3]),
        .I2(color_index[1]),
        .I3(color_index[0]),
        .O(\color_out[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000306F90AF)) 
    \color_out[21]_INST_0_i_2 
       (.I0(color_index[2]),
        .I1(color_index[3]),
        .I2(color_index[1]),
        .I3(color_index[0]),
        .I4(brightness_level[1]),
        .I5(brightness_level[2]),
        .O(\color_out[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h404C8C0C080CC00C)) 
    \color_out[22]_INST_0 
       (.I0(brightness_level[0]),
        .I1(\color_out[23]_INST_0_i_1_n_0 ),
        .I2(color_index[0]),
        .I3(color_index[1]),
        .I4(color_index[3]),
        .I5(color_index[2]),
        .O(color_out[22]));
  LUT6 #(
    .INIT(64'h00000000560F0000)) 
    \color_out[23]_INST_0 
       (.I0(color_index[3]),
        .I1(color_index[2]),
        .I2(color_index[0]),
        .I3(color_index[1]),
        .I4(\color_out[23]_INST_0_i_1_n_0 ),
        .I5(brightness_level[0]),
        .O(color_out[23]));
  LUT2 #(
    .INIT(4'h1)) 
    \color_out[23]_INST_0_i_1 
       (.I0(brightness_level[1]),
        .I1(brightness_level[2]),
        .O(\color_out[23]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \color_out[2]_INST_0 
       (.I0(\color_out[3]_INST_0_i_1_n_0 ),
        .I1(brightness_level[0]),
        .I2(\color_out[2]_INST_0_i_1_n_0 ),
        .O(color_out[2]));
  LUT6 #(
    .INIT(64'h4470077007770700)) 
    \color_out[2]_INST_0_i_1 
       (.I0(brightness_level[1]),
        .I1(brightness_level[2]),
        .I2(color_index[0]),
        .I3(color_index[1]),
        .I4(color_index[2]),
        .I5(color_index[3]),
        .O(\color_out[2]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \color_out[3]_INST_0 
       (.I0(\color_out[4]_INST_0_i_1_n_0 ),
        .I1(brightness_level[0]),
        .I2(\color_out[3]_INST_0_i_1_n_0 ),
        .O(color_out[3]));
  LUT6 #(
    .INIT(64'h2074477007770700)) 
    \color_out[3]_INST_0_i_1 
       (.I0(brightness_level[1]),
        .I1(brightness_level[2]),
        .I2(color_index[0]),
        .I3(color_index[1]),
        .I4(color_index[2]),
        .I5(color_index[3]),
        .O(\color_out[3]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \color_out[4]_INST_0 
       (.I0(\color_out[5]_INST_0_i_2_n_0 ),
        .I1(brightness_level[0]),
        .I2(\color_out[4]_INST_0_i_1_n_0 ),
        .O(color_out[4]));
  LUT6 #(
    .INIT(64'h00000000E6742674)) 
    \color_out[4]_INST_0_i_1 
       (.I0(color_index[0]),
        .I1(color_index[1]),
        .I2(color_index[2]),
        .I3(color_index[3]),
        .I4(brightness_level[1]),
        .I5(brightness_level[2]),
        .O(\color_out[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1000)) 
    \color_out[5]_INST_0 
       (.I0(brightness_level[2]),
        .I1(brightness_level[1]),
        .I2(\color_out[5]_INST_0_i_1_n_0 ),
        .I3(brightness_level[0]),
        .I4(\color_out[5]_INST_0_i_2_n_0 ),
        .O(color_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE674)) 
    \color_out[5]_INST_0_i_1 
       (.I0(color_index[0]),
        .I1(color_index[1]),
        .I2(color_index[2]),
        .I3(color_index[3]),
        .O(\color_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003E74A674)) 
    \color_out[5]_INST_0_i_2 
       (.I0(color_index[0]),
        .I1(color_index[1]),
        .I2(color_index[2]),
        .I3(color_index[3]),
        .I4(brightness_level[1]),
        .I5(brightness_level[2]),
        .O(\color_out[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4080CCC04CCC8C00)) 
    \color_out[6]_INST_0 
       (.I0(brightness_level[0]),
        .I1(\color_out[23]_INST_0_i_1_n_0 ),
        .I2(color_index[3]),
        .I3(color_index[2]),
        .I4(color_index[1]),
        .I5(color_index[0]),
        .O(color_out[6]));
  LUT6 #(
    .INIT(64'h0000000037E40000)) 
    \color_out[7]_INST_0 
       (.I0(color_index[0]),
        .I1(color_index[1]),
        .I2(color_index[3]),
        .I3(color_index[2]),
        .I4(\color_out[23]_INST_0_i_1_n_0 ),
        .I5(brightness_level[0]),
        .O(color_out[7]));
  LUT6 #(
    .INIT(64'hDFD5FFAA8A805500)) 
    \color_out[8]_INST_0 
       (.I0(brightness_level[0]),
        .I1(ARG[7]),
        .I2(brightness_level[2]),
        .I3(ARG[4]),
        .I4(brightness_level[1]),
        .I5(\color_out[9]_INST_0_i_1_n_0 ),
        .O(color_out[8]));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \color_out[9]_INST_0 
       (.I0(brightness_level[0]),
        .I1(ARG[7]),
        .I2(brightness_level[2]),
        .I3(ARG[4]),
        .I4(brightness_level[1]),
        .I5(\color_out[9]_INST_0_i_1_n_0 ),
        .O(color_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBC00FCCC)) 
    \color_out[9]_INST_0_i_1 
       (.I0(brightness_level[2]),
        .I1(color_index[0]),
        .I2(color_index[2]),
        .I3(color_index[1]),
        .I4(color_index[3]),
        .O(\color_out[9]_INST_0_i_1_n_0 ));
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
