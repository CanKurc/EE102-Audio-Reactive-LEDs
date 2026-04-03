// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Apr  3 12:54:34 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/seven_segment_display/ip/seven_segment_display_clock_divider_0_0/seven_segment_display_clock_divider_0_0_sim_netlist.v
// Design      : seven_segment_display_clock_divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "seven_segment_display_clock_divider_0_0,clock_divider,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clock_divider,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module seven_segment_display_clock_divider_0_0
   (clk,
    digit_select);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN seven_segment_display_clk_0, INSERT_VIP 0" *) input clk;
  output [1:0]digit_select;

  wire clk;
  wire [1:0]digit_select;

  seven_segment_display_clock_divider_0_0_clock_divider inst
       (.clk(clk),
        .digit_select(digit_select));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module seven_segment_display_clock_divider_0_0_clock_divider
   (digit_select,
    clk);
  output [1:0]digit_select;
  input clk;

  wire clk;
  wire [1:0]digit_select;
  wire \refresh_counter[0]_i_2_n_0 ;
  wire \refresh_counter_reg[0]_i_1_n_0 ;
  wire \refresh_counter_reg[0]_i_1_n_1 ;
  wire \refresh_counter_reg[0]_i_1_n_2 ;
  wire \refresh_counter_reg[0]_i_1_n_3 ;
  wire \refresh_counter_reg[0]_i_1_n_4 ;
  wire \refresh_counter_reg[0]_i_1_n_5 ;
  wire \refresh_counter_reg[0]_i_1_n_6 ;
  wire \refresh_counter_reg[0]_i_1_n_7 ;
  wire \refresh_counter_reg[12]_i_1_n_0 ;
  wire \refresh_counter_reg[12]_i_1_n_1 ;
  wire \refresh_counter_reg[12]_i_1_n_2 ;
  wire \refresh_counter_reg[12]_i_1_n_3 ;
  wire \refresh_counter_reg[12]_i_1_n_4 ;
  wire \refresh_counter_reg[12]_i_1_n_5 ;
  wire \refresh_counter_reg[12]_i_1_n_6 ;
  wire \refresh_counter_reg[12]_i_1_n_7 ;
  wire \refresh_counter_reg[19]_i_1_n_1 ;
  wire \refresh_counter_reg[19]_i_1_n_2 ;
  wire \refresh_counter_reg[19]_i_1_n_3 ;
  wire \refresh_counter_reg[19]_i_1_n_4 ;
  wire \refresh_counter_reg[19]_i_1_n_5 ;
  wire \refresh_counter_reg[19]_i_1_n_6 ;
  wire \refresh_counter_reg[19]_i_1_n_7 ;
  wire \refresh_counter_reg[4]_i_1_n_0 ;
  wire \refresh_counter_reg[4]_i_1_n_1 ;
  wire \refresh_counter_reg[4]_i_1_n_2 ;
  wire \refresh_counter_reg[4]_i_1_n_3 ;
  wire \refresh_counter_reg[4]_i_1_n_4 ;
  wire \refresh_counter_reg[4]_i_1_n_5 ;
  wire \refresh_counter_reg[4]_i_1_n_6 ;
  wire \refresh_counter_reg[4]_i_1_n_7 ;
  wire \refresh_counter_reg[8]_i_1_n_0 ;
  wire \refresh_counter_reg[8]_i_1_n_1 ;
  wire \refresh_counter_reg[8]_i_1_n_2 ;
  wire \refresh_counter_reg[8]_i_1_n_3 ;
  wire \refresh_counter_reg[8]_i_1_n_4 ;
  wire \refresh_counter_reg[8]_i_1_n_5 ;
  wire \refresh_counter_reg[8]_i_1_n_6 ;
  wire \refresh_counter_reg[8]_i_1_n_7 ;
  wire \refresh_counter_reg_n_0_[0] ;
  wire \refresh_counter_reg_n_0_[10] ;
  wire \refresh_counter_reg_n_0_[11] ;
  wire \refresh_counter_reg_n_0_[12] ;
  wire \refresh_counter_reg_n_0_[13] ;
  wire \refresh_counter_reg_n_0_[14] ;
  wire \refresh_counter_reg_n_0_[15] ;
  wire \refresh_counter_reg_n_0_[16] ;
  wire \refresh_counter_reg_n_0_[17] ;
  wire \refresh_counter_reg_n_0_[1] ;
  wire \refresh_counter_reg_n_0_[2] ;
  wire \refresh_counter_reg_n_0_[3] ;
  wire \refresh_counter_reg_n_0_[4] ;
  wire \refresh_counter_reg_n_0_[5] ;
  wire \refresh_counter_reg_n_0_[6] ;
  wire \refresh_counter_reg_n_0_[7] ;
  wire \refresh_counter_reg_n_0_[8] ;
  wire \refresh_counter_reg_n_0_[9] ;
  wire [3:3]\NLW_refresh_counter_reg[19]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \refresh_counter[0]_i_2 
       (.I0(\refresh_counter_reg_n_0_[0] ),
        .O(\refresh_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[0]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \refresh_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\refresh_counter_reg[0]_i_1_n_0 ,\refresh_counter_reg[0]_i_1_n_1 ,\refresh_counter_reg[0]_i_1_n_2 ,\refresh_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refresh_counter_reg[0]_i_1_n_4 ,\refresh_counter_reg[0]_i_1_n_5 ,\refresh_counter_reg[0]_i_1_n_6 ,\refresh_counter_reg[0]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[3] ,\refresh_counter_reg_n_0_[2] ,\refresh_counter_reg_n_0_[1] ,\refresh_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[8]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[8]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[12]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \refresh_counter_reg[12]_i_1 
       (.CI(\refresh_counter_reg[8]_i_1_n_0 ),
        .CO({\refresh_counter_reg[12]_i_1_n_0 ,\refresh_counter_reg[12]_i_1_n_1 ,\refresh_counter_reg[12]_i_1_n_2 ,\refresh_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[12]_i_1_n_4 ,\refresh_counter_reg[12]_i_1_n_5 ,\refresh_counter_reg[12]_i_1_n_6 ,\refresh_counter_reg[12]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[15] ,\refresh_counter_reg_n_0_[14] ,\refresh_counter_reg_n_0_[13] ,\refresh_counter_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[12]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[12]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[12]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[19]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[19]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[19]_i_1_n_5 ),
        .Q(digit_select[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[19]_i_1_n_4 ),
        .Q(digit_select[1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \refresh_counter_reg[19]_i_1 
       (.CI(\refresh_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_refresh_counter_reg[19]_i_1_CO_UNCONNECTED [3],\refresh_counter_reg[19]_i_1_n_1 ,\refresh_counter_reg[19]_i_1_n_2 ,\refresh_counter_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[19]_i_1_n_4 ,\refresh_counter_reg[19]_i_1_n_5 ,\refresh_counter_reg[19]_i_1_n_6 ,\refresh_counter_reg[19]_i_1_n_7 }),
        .S({digit_select,\refresh_counter_reg_n_0_[17] ,\refresh_counter_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[0]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[0]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[0]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[4]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \refresh_counter_reg[4]_i_1 
       (.CI(\refresh_counter_reg[0]_i_1_n_0 ),
        .CO({\refresh_counter_reg[4]_i_1_n_0 ,\refresh_counter_reg[4]_i_1_n_1 ,\refresh_counter_reg[4]_i_1_n_2 ,\refresh_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[4]_i_1_n_4 ,\refresh_counter_reg[4]_i_1_n_5 ,\refresh_counter_reg[4]_i_1_n_6 ,\refresh_counter_reg[4]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[7] ,\refresh_counter_reg_n_0_[6] ,\refresh_counter_reg_n_0_[5] ,\refresh_counter_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[4]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[4]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[4]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[8]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \refresh_counter_reg[8]_i_1 
       (.CI(\refresh_counter_reg[4]_i_1_n_0 ),
        .CO({\refresh_counter_reg[8]_i_1_n_0 ,\refresh_counter_reg[8]_i_1_n_1 ,\refresh_counter_reg[8]_i_1_n_2 ,\refresh_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[8]_i_1_n_4 ,\refresh_counter_reg[8]_i_1_n_5 ,\refresh_counter_reg[8]_i_1_n_6 ,\refresh_counter_reg[8]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[11] ,\refresh_counter_reg_n_0_[10] ,\refresh_counter_reg_n_0_[9] ,\refresh_counter_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \refresh_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\refresh_counter_reg[8]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[9] ),
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
