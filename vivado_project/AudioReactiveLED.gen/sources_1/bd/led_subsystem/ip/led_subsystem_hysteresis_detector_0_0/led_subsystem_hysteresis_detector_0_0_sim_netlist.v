// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr 23 22:18:41 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_hysteresis_detector_0_0/led_subsystem_hysteresis_detector_0_0_sim_netlist.v
// Design      : led_subsystem_hysteresis_detector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "led_subsystem_hysteresis_detector_0_0,hysteresis_detector,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "hysteresis_detector,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module led_subsystem_hysteresis_detector_0_0
   (clk,
    reset,
    audio_filtered,
    thresh_high,
    thresh_low,
    beat_detected);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_subsystem_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [11:0]audio_filtered;
  input [11:0]thresh_high;
  input [11:0]thresh_low;
  output beat_detected;

  wire [11:0]audio_filtered;
  wire beat_detected;
  wire clk;
  wire reset;
  wire [11:0]thresh_high;
  wire [11:0]thresh_low;

  led_subsystem_hysteresis_detector_0_0_hysteresis_detector inst
       (.audio_filtered(audio_filtered),
        .beat_detected(beat_detected),
        .clk(clk),
        .reset(reset),
        .thresh_high(thresh_high),
        .thresh_low(thresh_low));
endmodule

(* ORIG_REF_NAME = "hysteresis_detector" *) 
module led_subsystem_hysteresis_detector_0_0_hysteresis_detector
   (beat_detected,
    reset,
    thresh_low,
    audio_filtered,
    thresh_high,
    clk);
  output beat_detected;
  input reset;
  input [11:0]thresh_low;
  input [11:0]audio_filtered;
  input [11:0]thresh_high;
  input clk;

  wire [11:0]audio_filtered;
  wire beat_detected;
  wire beat_pulse_i_1_n_0;
  wire clk;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire reset;
  wire state;
  wire state0_carry__0_i_1_n_0;
  wire state0_carry__0_i_2_n_0;
  wire state0_carry__0_i_3_n_0;
  wire state0_carry__0_i_4_n_0;
  wire state0_carry__0_n_2;
  wire state0_carry__0_n_3;
  wire state0_carry_i_1_n_0;
  wire state0_carry_i_2_n_0;
  wire state0_carry_i_3_n_0;
  wire state0_carry_i_4_n_0;
  wire state0_carry_i_5_n_0;
  wire state0_carry_i_6_n_0;
  wire state0_carry_i_7_n_0;
  wire state0_carry_i_8_n_0;
  wire state0_carry_n_0;
  wire state0_carry_n_1;
  wire state0_carry_n_2;
  wire state0_carry_n_3;
  wire \state0_inferred__0/i__carry__0_n_2 ;
  wire \state0_inferred__0/i__carry__0_n_3 ;
  wire \state0_inferred__0/i__carry_n_0 ;
  wire \state0_inferred__0/i__carry_n_1 ;
  wire \state0_inferred__0/i__carry_n_2 ;
  wire \state0_inferred__0/i__carry_n_3 ;
  wire state_i_1_n_0;
  wire [11:0]thresh_high;
  wire [11:0]thresh_low;
  wire [3:0]NLW_state0_carry_O_UNCONNECTED;
  wire [3:2]NLW_state0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_state0_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_state0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_state0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_state0_inferred__0/i__carry__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    beat_pulse_i_1
       (.I0(\state0_inferred__0/i__carry__0_n_2 ),
        .I1(state),
        .I2(reset),
        .O(beat_pulse_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    beat_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(beat_pulse_i_1_n_0),
        .Q(beat_detected),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(audio_filtered[6]),
        .I1(thresh_high[6]),
        .I2(thresh_high[7]),
        .I3(audio_filtered[7]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(audio_filtered[10]),
        .I1(thresh_high[10]),
        .I2(thresh_high[11]),
        .I3(audio_filtered[11]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(audio_filtered[4]),
        .I1(thresh_high[4]),
        .I2(thresh_high[5]),
        .I3(audio_filtered[5]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(audio_filtered[8]),
        .I1(thresh_high[8]),
        .I2(thresh_high[9]),
        .I3(audio_filtered[9]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(audio_filtered[2]),
        .I1(thresh_high[2]),
        .I2(thresh_high[3]),
        .I3(audio_filtered[3]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_3__0
       (.I0(audio_filtered[10]),
        .I1(thresh_high[10]),
        .I2(audio_filtered[11]),
        .I3(thresh_high[11]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(audio_filtered[0]),
        .I1(thresh_high[0]),
        .I2(thresh_high[1]),
        .I3(audio_filtered[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_4__0
       (.I0(audio_filtered[8]),
        .I1(thresh_high[8]),
        .I2(audio_filtered[9]),
        .I3(thresh_high[9]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(audio_filtered[6]),
        .I1(thresh_high[6]),
        .I2(audio_filtered[7]),
        .I3(thresh_high[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(audio_filtered[4]),
        .I1(thresh_high[4]),
        .I2(audio_filtered[5]),
        .I3(thresh_high[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(audio_filtered[2]),
        .I1(thresh_high[2]),
        .I2(audio_filtered[3]),
        .I3(thresh_high[3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(audio_filtered[0]),
        .I1(thresh_high[0]),
        .I2(audio_filtered[1]),
        .I3(thresh_high[1]),
        .O(i__carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state0_carry
       (.CI(1'b0),
        .CO({state0_carry_n_0,state0_carry_n_1,state0_carry_n_2,state0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({state0_carry_i_1_n_0,state0_carry_i_2_n_0,state0_carry_i_3_n_0,state0_carry_i_4_n_0}),
        .O(NLW_state0_carry_O_UNCONNECTED[3:0]),
        .S({state0_carry_i_5_n_0,state0_carry_i_6_n_0,state0_carry_i_7_n_0,state0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 state0_carry__0
       (.CI(state0_carry_n_0),
        .CO({NLW_state0_carry__0_CO_UNCONNECTED[3:2],state0_carry__0_n_2,state0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,state0_carry__0_i_1_n_0,state0_carry__0_i_2_n_0}),
        .O(NLW_state0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,state0_carry__0_i_3_n_0,state0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    state0_carry__0_i_1
       (.I0(thresh_low[10]),
        .I1(audio_filtered[10]),
        .I2(audio_filtered[11]),
        .I3(thresh_low[11]),
        .O(state0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    state0_carry__0_i_2
       (.I0(thresh_low[8]),
        .I1(audio_filtered[8]),
        .I2(audio_filtered[9]),
        .I3(thresh_low[9]),
        .O(state0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state0_carry__0_i_3
       (.I0(thresh_low[10]),
        .I1(audio_filtered[10]),
        .I2(thresh_low[11]),
        .I3(audio_filtered[11]),
        .O(state0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state0_carry__0_i_4
       (.I0(thresh_low[8]),
        .I1(audio_filtered[8]),
        .I2(thresh_low[9]),
        .I3(audio_filtered[9]),
        .O(state0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    state0_carry_i_1
       (.I0(thresh_low[6]),
        .I1(audio_filtered[6]),
        .I2(audio_filtered[7]),
        .I3(thresh_low[7]),
        .O(state0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    state0_carry_i_2
       (.I0(thresh_low[4]),
        .I1(audio_filtered[4]),
        .I2(audio_filtered[5]),
        .I3(thresh_low[5]),
        .O(state0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    state0_carry_i_3
       (.I0(thresh_low[2]),
        .I1(audio_filtered[2]),
        .I2(audio_filtered[3]),
        .I3(thresh_low[3]),
        .O(state0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    state0_carry_i_4
       (.I0(thresh_low[0]),
        .I1(audio_filtered[0]),
        .I2(audio_filtered[1]),
        .I3(thresh_low[1]),
        .O(state0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state0_carry_i_5
       (.I0(thresh_low[6]),
        .I1(audio_filtered[6]),
        .I2(thresh_low[7]),
        .I3(audio_filtered[7]),
        .O(state0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state0_carry_i_6
       (.I0(thresh_low[4]),
        .I1(audio_filtered[4]),
        .I2(thresh_low[5]),
        .I3(audio_filtered[5]),
        .O(state0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state0_carry_i_7
       (.I0(thresh_low[2]),
        .I1(audio_filtered[2]),
        .I2(thresh_low[3]),
        .I3(audio_filtered[3]),
        .O(state0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    state0_carry_i_8
       (.I0(thresh_low[0]),
        .I1(audio_filtered[0]),
        .I2(thresh_low[1]),
        .I3(audio_filtered[1]),
        .O(state0_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\state0_inferred__0/i__carry_n_0 ,\state0_inferred__0/i__carry_n_1 ,\state0_inferred__0/i__carry_n_2 ,\state0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_state0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \state0_inferred__0/i__carry__0 
       (.CI(\state0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_state0_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\state0_inferred__0/i__carry__0_n_2 ,\state0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry_i_1__0_n_0,i__carry_i_2__0_n_0}),
        .O(\NLW_state0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h002E)) 
    state_i_1
       (.I0(\state0_inferred__0/i__carry__0_n_2 ),
        .I1(state),
        .I2(state0_carry__0_n_2),
        .I3(reset),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state),
        .R(1'b0));
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
