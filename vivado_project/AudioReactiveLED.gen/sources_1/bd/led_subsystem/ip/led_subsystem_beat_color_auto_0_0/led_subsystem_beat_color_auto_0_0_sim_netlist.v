// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May 14 20:36:40 2026
// Host        : CANKUR8A4F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/cankurc/Vivado_Projects/EE102-Audio-Reactive-LEDs/vivado_project/AudioReactiveLED.gen/sources_1/bd/led_subsystem/ip/led_subsystem_beat_color_auto_0_0/led_subsystem_beat_color_auto_0_0_sim_netlist.v
// Design      : led_subsystem_beat_color_auto_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "led_subsystem_beat_color_auto_0_0,beat_color_auto,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "beat_color_auto,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module led_subsystem_beat_color_auto_0_0
   (clk,
    reset,
    beat_detected,
    frame_done,
    led_enable,
    color_index,
    brightness_level,
    enable);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_subsystem_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input beat_detected;
  input frame_done;
  input led_enable;
  output [3:0]color_index;
  output [2:0]brightness_level;
  output enable;

  wire beat_detected;
  wire [2:0]brightness_level;
  wire clk;
  wire [3:0]color_index;
  wire frame_done;
  wire led_enable;
  wire reset;

  assign enable = led_enable;
  led_subsystem_beat_color_auto_0_0_beat_color_auto inst
       (.Q(color_index),
        .beat_detected(beat_detected),
        .clk(clk),
        .frame_done(frame_done),
        .\nolurcalis_reg[0]_0 (brightness_level[0]),
        .\nolurcalis_reg[1]_0 (brightness_level[1]),
        .\nolurcalis_reg[2]_0 (brightness_level[2]),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "beat_color_auto" *) 
module led_subsystem_beat_color_auto_0_0_beat_color_auto
   (Q,
    \nolurcalis_reg[2]_0 ,
    \nolurcalis_reg[1]_0 ,
    \nolurcalis_reg[0]_0 ,
    frame_done,
    clk,
    reset,
    beat_detected);
  output [3:0]Q;
  output \nolurcalis_reg[2]_0 ;
  output \nolurcalis_reg[1]_0 ;
  output \nolurcalis_reg[0]_0 ;
  input frame_done;
  input clk;
  input reset;
  input beat_detected;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [3:0]Q;
  wire beat_detected;
  wire \breath_count[0]_i_1_n_0 ;
  wire \breath_count[1]_i_1_n_0 ;
  wire \breath_count[2]_i_1_n_0 ;
  wire \breath_count[3]_i_1_n_0 ;
  wire \breath_count[4]_i_1_n_0 ;
  wire \breath_count[4]_i_3_n_0 ;
  wire \breath_count[4]_i_4_n_0 ;
  wire \breath_count[4]_i_5_n_0 ;
  wire \breath_count[4]_i_6_n_0 ;
  wire \breath_count[4]_i_7_n_0 ;
  wire \breath_count[5]_i_1_n_0 ;
  wire \breath_count[6]_i_1_n_0 ;
  wire \breath_count[6]_i_2_n_0 ;
  wire \breath_count[6]_i_3_n_0 ;
  wire \breath_count[6]_i_4_n_0 ;
  wire \breath_count[6]_i_6_n_0 ;
  wire \breath_count[6]_i_7_n_0 ;
  wire \breath_count[6]_i_8_n_0 ;
  wire \breath_count[6]_i_9_n_0 ;
  wire \breath_count_reg[4]_i_2_n_0 ;
  wire \breath_count_reg[4]_i_2_n_1 ;
  wire \breath_count_reg[4]_i_2_n_2 ;
  wire \breath_count_reg[4]_i_2_n_3 ;
  wire \breath_count_reg[4]_i_2_n_4 ;
  wire \breath_count_reg[4]_i_2_n_5 ;
  wire \breath_count_reg[4]_i_2_n_6 ;
  wire \breath_count_reg[4]_i_2_n_7 ;
  wire \breath_count_reg[6]_i_5_n_3 ;
  wire \breath_count_reg[6]_i_5_n_6 ;
  wire \breath_count_reg[6]_i_5_n_7 ;
  wire breath_dir_i_1_n_0;
  wire breath_dir_i_2_n_0;
  wire \breath_tick[0]_i_1_n_0 ;
  wire \breath_tick[1]_i_1_n_0 ;
  wire \breath_tick[2]_i_1_n_0 ;
  wire \breath_tick[3]_i_1_n_0 ;
  wire \breath_tick[3]_i_2_n_0 ;
  wire \breath_tick_reg_n_0_[0] ;
  wire \breath_tick_reg_n_0_[1] ;
  wire \breath_tick_reg_n_0_[2] ;
  wire \breath_tick_reg_n_0_[3] ;
  wire clk;
  wire \color_idx[0]_i_1_n_0 ;
  wire \color_idx[1]_i_1_n_0 ;
  wire \color_idx[2]_i_1_n_0 ;
  wire \color_idx[3]_i_1_n_0 ;
  wire [0:0]fade_count;
  wire \fade_count[0]_i_1_n_0 ;
  wire \fade_count[1]_i_1_n_0 ;
  wire \fade_count[2]_i_1_n_0 ;
  wire \fade_count[3]_i_1_n_0 ;
  wire \fade_count[4]_i_1_n_0 ;
  wire \fade_count[4]_i_2_n_0 ;
  wire \fade_count_reg_n_0_[0] ;
  wire \fade_count_reg_n_0_[1] ;
  wire \fade_count_reg_n_0_[2] ;
  wire \fade_count_reg_n_0_[3] ;
  wire \fade_count_reg_n_0_[4] ;
  wire frame_done;
  wire [10:0]idle_count;
  wire \idle_count[0]_i_1_n_0 ;
  wire \idle_count[10]_i_1_n_0 ;
  wire \idle_count[10]_i_2_n_0 ;
  wire \idle_count[10]_i_3_n_0 ;
  wire \idle_count[10]_i_4_n_0 ;
  wire \idle_count[1]_i_1_n_0 ;
  wire \idle_count[2]_i_1_n_0 ;
  wire \idle_count[3]_i_1_n_0 ;
  wire \idle_count[4]_i_1_n_0 ;
  wire \idle_count[5]_i_1_n_0 ;
  wire \idle_count[5]_i_2_n_0 ;
  wire \idle_count[6]_i_1_n_0 ;
  wire \idle_count[7]_i_1_n_0 ;
  wire \idle_count[8]_i_1_n_0 ;
  wire \idle_count[9]_i_1_n_0 ;
  wire \idle_count[9]_i_2_n_0 ;
  wire \nolurcalis[0]_i_1_n_0 ;
  wire \nolurcalis[1]_i_1_n_0 ;
  wire \nolurcalis[1]_i_2_n_0 ;
  wire \nolurcalis[2]_i_1_n_0 ;
  wire \nolurcalis[2]_i_2_n_0 ;
  wire \nolurcalis[2]_i_3_n_0 ;
  wire \nolurcalis[2]_i_4_n_0 ;
  wire \nolurcalis[2]_i_5_n_0 ;
  wire \nolurcalis[2]_i_6_n_0 ;
  wire \nolurcalis_reg[0]_0 ;
  wire \nolurcalis_reg[1]_0 ;
  wire \nolurcalis_reg[2]_0 ;
  wire reset;
  wire [7:0]sel0;
  wire [3:1]\NLW_breath_count_reg[6]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_breath_count_reg[6]_i_5_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000FFBF00000000)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(frame_done),
        .I2(\nolurcalis_reg[2]_0 ),
        .I3(\FSM_onehot_state[0]_i_3_n_0 ),
        .I4(\FSM_onehot_state[2]_i_3_n_0 ),
        .I5(fade_count),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\fade_count_reg_n_0_[1] ),
        .I1(\fade_count_reg_n_0_[0] ),
        .I2(\fade_count_reg_n_0_[2] ),
        .I3(\fade_count_reg_n_0_[3] ),
        .I4(\fade_count_reg_n_0_[4] ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(\nolurcalis_reg[0]_0 ),
        .I1(\nolurcalis_reg[1]_0 ),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(fade_count),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state[2]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state[2]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\nolurcalis_reg[1]_0 ),
        .I1(\nolurcalis_reg[0]_0 ),
        .I2(\nolurcalis_reg[2]_0 ),
        .I3(frame_done),
        .I4(fade_count),
        .I5(\FSM_onehot_state[0]_i_2_n_0 ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(frame_done),
        .I2(\idle_count[10]_i_3_n_0 ),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "fading:001,faded_wait:010,breathing:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(fade_count),
        .S(\nolurcalis[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "fading:001,faded_wait:010,breathing:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "fading:001,faded_wait:010,breathing:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \breath_count[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(sel0[0]),
        .O(\breath_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \breath_count[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\breath_count_reg[4]_i_2_n_7 ),
        .O(\breath_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \breath_count[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\breath_count_reg[4]_i_2_n_6 ),
        .O(\breath_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \breath_count[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\breath_count_reg[4]_i_2_n_5 ),
        .O(\breath_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \breath_count[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\breath_count_reg[4]_i_2_n_4 ),
        .O(\breath_count[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \breath_count[4]_i_3 
       (.I0(sel0[1]),
        .O(\breath_count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \breath_count[4]_i_4 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .O(\breath_count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \breath_count[4]_i_5 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .O(\breath_count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \breath_count[4]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .O(\breath_count[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \breath_count[4]_i_7 
       (.I0(sel0[1]),
        .I1(sel0[7]),
        .O(\breath_count[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \breath_count[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\breath_count_reg[6]_i_5_n_7 ),
        .O(\breath_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    \breath_count[6]_i_1 
       (.I0(\breath_count[6]_i_3_n_0 ),
        .I1(\breath_count[6]_i_4_n_0 ),
        .I2(frame_done),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\breath_tick_reg_n_0_[2] ),
        .I5(\FSM_onehot_state[2]_i_3_n_0 ),
        .O(\breath_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \breath_count[6]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\breath_count_reg[6]_i_5_n_6 ),
        .O(\breath_count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \breath_count[6]_i_3 
       (.I0(\breath_tick_reg_n_0_[0] ),
        .I1(\breath_tick_reg_n_0_[1] ),
        .I2(\breath_tick_reg_n_0_[3] ),
        .O(\breath_count[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A0000000000C00)) 
    \breath_count[6]_i_4 
       (.I0(\breath_count[6]_i_6_n_0 ),
        .I1(\breath_count[6]_i_7_n_0 ),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(sel0[5]),
        .I5(sel0[4]),
        .O(\breath_count[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \breath_count[6]_i_6 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(\breath_count[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \breath_count[6]_i_7 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[3]),
        .I3(sel0[2]),
        .O(\breath_count[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \breath_count[6]_i_8 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .O(\breath_count[6]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \breath_count[6]_i_9 
       (.I0(sel0[4]),
        .I1(sel0[5]),
        .O(\breath_count[6]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \breath_count_reg[0] 
       (.C(clk),
        .CE(\breath_count[6]_i_1_n_0 ),
        .D(\breath_count[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \breath_count_reg[1] 
       (.C(clk),
        .CE(\breath_count[6]_i_1_n_0 ),
        .D(\breath_count[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \breath_count_reg[2] 
       (.C(clk),
        .CE(\breath_count[6]_i_1_n_0 ),
        .D(\breath_count[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \breath_count_reg[3] 
       (.C(clk),
        .CE(\breath_count[6]_i_1_n_0 ),
        .D(\breath_count[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \breath_count_reg[4] 
       (.C(clk),
        .CE(\breath_count[6]_i_1_n_0 ),
        .D(\breath_count[4]_i_1_n_0 ),
        .Q(sel0[4]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \breath_count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\breath_count_reg[4]_i_2_n_0 ,\breath_count_reg[4]_i_2_n_1 ,\breath_count_reg[4]_i_2_n_2 ,\breath_count_reg[4]_i_2_n_3 }),
        .CYINIT(sel0[0]),
        .DI({sel0[3:1],\breath_count[4]_i_3_n_0 }),
        .O({\breath_count_reg[4]_i_2_n_4 ,\breath_count_reg[4]_i_2_n_5 ,\breath_count_reg[4]_i_2_n_6 ,\breath_count_reg[4]_i_2_n_7 }),
        .S({\breath_count[4]_i_4_n_0 ,\breath_count[4]_i_5_n_0 ,\breath_count[4]_i_6_n_0 ,\breath_count[4]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \breath_count_reg[5] 
       (.C(clk),
        .CE(\breath_count[6]_i_1_n_0 ),
        .D(\breath_count[5]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \breath_count_reg[6] 
       (.C(clk),
        .CE(\breath_count[6]_i_1_n_0 ),
        .D(\breath_count[6]_i_2_n_0 ),
        .Q(sel0[6]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \breath_count_reg[6]_i_5 
       (.CI(\breath_count_reg[4]_i_2_n_0 ),
        .CO({\NLW_breath_count_reg[6]_i_5_CO_UNCONNECTED [3:1],\breath_count_reg[6]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sel0[4]}),
        .O({\NLW_breath_count_reg[6]_i_5_O_UNCONNECTED [3:2],\breath_count_reg[6]_i_5_n_6 ,\breath_count_reg[6]_i_5_n_7 }),
        .S({1'b0,1'b0,\breath_count[6]_i_8_n_0 ,\breath_count[6]_i_9_n_0 }));
  LUT6 #(
    .INIT(64'h0000000056660222)) 
    breath_dir_i_1
       (.I0(sel0[7]),
        .I1(\FSM_onehot_state[2]_i_3_n_0 ),
        .I2(breath_dir_i_2_n_0),
        .I3(\breath_count[6]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\nolurcalis[2]_i_1_n_0 ),
        .O(breath_dir_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    breath_dir_i_2
       (.I0(\breath_tick_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(frame_done),
        .I3(\breath_tick_reg_n_0_[3] ),
        .I4(\breath_tick_reg_n_0_[1] ),
        .I5(\breath_tick_reg_n_0_[0] ),
        .O(breath_dir_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    breath_dir_reg
       (.C(clk),
        .CE(1'b1),
        .D(breath_dir_i_1_n_0),
        .Q(sel0[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \breath_tick[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\breath_tick_reg_n_0_[0] ),
        .O(\breath_tick[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h60206060)) 
    \breath_tick[1]_i_1 
       (.I0(\breath_tick_reg_n_0_[1] ),
        .I1(\breath_tick_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\breath_tick_reg_n_0_[2] ),
        .I4(\breath_tick_reg_n_0_[3] ),
        .O(\breath_tick[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \breath_tick[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\breath_tick_reg_n_0_[2] ),
        .I2(\breath_tick_reg_n_0_[0] ),
        .I3(\breath_tick_reg_n_0_[1] ),
        .O(\breath_tick[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \breath_tick[3]_i_1 
       (.I0(\FSM_onehot_state[2]_i_3_n_0 ),
        .I1(frame_done),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\breath_tick[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2A8A8000)) 
    \breath_tick[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\breath_tick_reg_n_0_[2] ),
        .I2(\breath_tick_reg_n_0_[0] ),
        .I3(\breath_tick_reg_n_0_[1] ),
        .I4(\breath_tick_reg_n_0_[3] ),
        .O(\breath_tick[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \breath_tick_reg[0] 
       (.C(clk),
        .CE(\breath_tick[3]_i_1_n_0 ),
        .D(\breath_tick[0]_i_1_n_0 ),
        .Q(\breath_tick_reg_n_0_[0] ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \breath_tick_reg[1] 
       (.C(clk),
        .CE(\breath_tick[3]_i_1_n_0 ),
        .D(\breath_tick[1]_i_1_n_0 ),
        .Q(\breath_tick_reg_n_0_[1] ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \breath_tick_reg[2] 
       (.C(clk),
        .CE(\breath_tick[3]_i_1_n_0 ),
        .D(\breath_tick[2]_i_1_n_0 ),
        .Q(\breath_tick_reg_n_0_[2] ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \breath_tick_reg[3] 
       (.C(clk),
        .CE(\breath_tick[3]_i_1_n_0 ),
        .D(\breath_tick[3]_i_2_n_0 ),
        .Q(\breath_tick_reg_n_0_[3] ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \color_idx[0]_i_1 
       (.I0(Q[0]),
        .O(\color_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \color_idx[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\color_idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \color_idx[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\color_idx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \color_idx[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\color_idx[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \color_idx_reg[0] 
       (.C(clk),
        .CE(beat_detected),
        .D(\color_idx[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \color_idx_reg[1] 
       (.C(clk),
        .CE(beat_detected),
        .D(\color_idx[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \color_idx_reg[2] 
       (.C(clk),
        .CE(beat_detected),
        .D(\color_idx[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \color_idx_reg[3] 
       (.C(clk),
        .CE(beat_detected),
        .D(\color_idx[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fade_count[0]_i_1 
       (.I0(\fade_count_reg_n_0_[0] ),
        .O(\fade_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h26666666)) 
    \fade_count[1]_i_1 
       (.I0(\fade_count_reg_n_0_[1] ),
        .I1(\fade_count_reg_n_0_[0] ),
        .I2(\fade_count_reg_n_0_[2] ),
        .I3(\fade_count_reg_n_0_[3] ),
        .I4(\fade_count_reg_n_0_[4] ),
        .O(\fade_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h38787878)) 
    \fade_count[2]_i_1 
       (.I0(\fade_count_reg_n_0_[1] ),
        .I1(\fade_count_reg_n_0_[0] ),
        .I2(\fade_count_reg_n_0_[2] ),
        .I3(\fade_count_reg_n_0_[3] ),
        .I4(\fade_count_reg_n_0_[4] ),
        .O(\fade_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3F807F80)) 
    \fade_count[3]_i_1 
       (.I0(\fade_count_reg_n_0_[1] ),
        .I1(\fade_count_reg_n_0_[0] ),
        .I2(\fade_count_reg_n_0_[2] ),
        .I3(\fade_count_reg_n_0_[3] ),
        .I4(\fade_count_reg_n_0_[4] ),
        .O(\fade_count[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fade_count[4]_i_1 
       (.I0(frame_done),
        .I1(fade_count),
        .O(\fade_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3FFF8000)) 
    \fade_count[4]_i_2 
       (.I0(\fade_count_reg_n_0_[1] ),
        .I1(\fade_count_reg_n_0_[0] ),
        .I2(\fade_count_reg_n_0_[2] ),
        .I3(\fade_count_reg_n_0_[3] ),
        .I4(\fade_count_reg_n_0_[4] ),
        .O(\fade_count[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fade_count_reg[0] 
       (.C(clk),
        .CE(\fade_count[4]_i_1_n_0 ),
        .D(\fade_count[0]_i_1_n_0 ),
        .Q(\fade_count_reg_n_0_[0] ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fade_count_reg[1] 
       (.C(clk),
        .CE(\fade_count[4]_i_1_n_0 ),
        .D(\fade_count[1]_i_1_n_0 ),
        .Q(\fade_count_reg_n_0_[1] ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fade_count_reg[2] 
       (.C(clk),
        .CE(\fade_count[4]_i_1_n_0 ),
        .D(\fade_count[2]_i_1_n_0 ),
        .Q(\fade_count_reg_n_0_[2] ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fade_count_reg[3] 
       (.C(clk),
        .CE(\fade_count[4]_i_1_n_0 ),
        .D(\fade_count[3]_i_1_n_0 ),
        .Q(\fade_count_reg_n_0_[3] ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fade_count_reg[4] 
       (.C(clk),
        .CE(\fade_count[4]_i_1_n_0 ),
        .D(\fade_count[4]_i_2_n_0 ),
        .Q(\fade_count_reg_n_0_[4] ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \idle_count[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(idle_count[0]),
        .O(\idle_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \idle_count[10]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\idle_count[10]_i_3_n_0 ),
        .I2(frame_done),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\idle_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \idle_count[10]_i_2 
       (.I0(\idle_count[10]_i_4_n_0 ),
        .I1(idle_count[9]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(idle_count[10]),
        .O(\idle_count[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \idle_count[10]_i_3 
       (.I0(idle_count[8]),
        .I1(idle_count[9]),
        .I2(idle_count[6]),
        .I3(idle_count[7]),
        .I4(idle_count[10]),
        .O(\idle_count[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \idle_count[10]_i_4 
       (.I0(idle_count[8]),
        .I1(idle_count[7]),
        .I2(idle_count[6]),
        .I3(\idle_count[9]_i_2_n_0 ),
        .O(\idle_count[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \idle_count[1]_i_1 
       (.I0(idle_count[0]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(idle_count[1]),
        .O(\idle_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \idle_count[2]_i_1 
       (.I0(idle_count[1]),
        .I1(idle_count[0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(idle_count[2]),
        .O(\idle_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \idle_count[3]_i_1 
       (.I0(idle_count[2]),
        .I1(idle_count[0]),
        .I2(idle_count[1]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(idle_count[3]),
        .O(\idle_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \idle_count[4]_i_1 
       (.I0(idle_count[3]),
        .I1(idle_count[1]),
        .I2(idle_count[0]),
        .I3(idle_count[2]),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(idle_count[4]),
        .O(\idle_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \idle_count[5]_i_1 
       (.I0(\idle_count[5]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(idle_count[5]),
        .O(\idle_count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \idle_count[5]_i_2 
       (.I0(idle_count[4]),
        .I1(idle_count[2]),
        .I2(idle_count[0]),
        .I3(idle_count[1]),
        .I4(idle_count[3]),
        .O(\idle_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \idle_count[6]_i_1 
       (.I0(\idle_count[9]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(idle_count[6]),
        .O(\idle_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hD020)) 
    \idle_count[7]_i_1 
       (.I0(idle_count[6]),
        .I1(\idle_count[9]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(idle_count[7]),
        .O(\idle_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hBF004000)) 
    \idle_count[8]_i_1 
       (.I0(\idle_count[9]_i_2_n_0 ),
        .I1(idle_count[6]),
        .I2(idle_count[7]),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(idle_count[8]),
        .O(\idle_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \idle_count[9]_i_1 
       (.I0(idle_count[8]),
        .I1(idle_count[7]),
        .I2(idle_count[6]),
        .I3(\idle_count[9]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(idle_count[9]),
        .O(\idle_count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \idle_count[9]_i_2 
       (.I0(idle_count[5]),
        .I1(idle_count[3]),
        .I2(idle_count[1]),
        .I3(idle_count[0]),
        .I4(idle_count[2]),
        .I5(idle_count[4]),
        .O(\idle_count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[0] 
       (.C(clk),
        .CE(\idle_count[10]_i_1_n_0 ),
        .D(\idle_count[0]_i_1_n_0 ),
        .Q(idle_count[0]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[10] 
       (.C(clk),
        .CE(\idle_count[10]_i_1_n_0 ),
        .D(\idle_count[10]_i_2_n_0 ),
        .Q(idle_count[10]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[1] 
       (.C(clk),
        .CE(\idle_count[10]_i_1_n_0 ),
        .D(\idle_count[1]_i_1_n_0 ),
        .Q(idle_count[1]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[2] 
       (.C(clk),
        .CE(\idle_count[10]_i_1_n_0 ),
        .D(\idle_count[2]_i_1_n_0 ),
        .Q(idle_count[2]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[3] 
       (.C(clk),
        .CE(\idle_count[10]_i_1_n_0 ),
        .D(\idle_count[3]_i_1_n_0 ),
        .Q(idle_count[3]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[4] 
       (.C(clk),
        .CE(\idle_count[10]_i_1_n_0 ),
        .D(\idle_count[4]_i_1_n_0 ),
        .Q(idle_count[4]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[5] 
       (.C(clk),
        .CE(\idle_count[10]_i_1_n_0 ),
        .D(\idle_count[5]_i_1_n_0 ),
        .Q(idle_count[5]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[6] 
       (.C(clk),
        .CE(\idle_count[10]_i_1_n_0 ),
        .D(\idle_count[6]_i_1_n_0 ),
        .Q(idle_count[6]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[7] 
       (.C(clk),
        .CE(\idle_count[10]_i_1_n_0 ),
        .D(\idle_count[7]_i_1_n_0 ),
        .Q(idle_count[7]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[8] 
       (.C(clk),
        .CE(\idle_count[10]_i_1_n_0 ),
        .D(\idle_count[8]_i_1_n_0 ),
        .Q(idle_count[8]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_count_reg[9] 
       (.C(clk),
        .CE(\idle_count[10]_i_1_n_0 ),
        .D(\idle_count[9]_i_1_n_0 ),
        .Q(idle_count[9]),
        .R(\nolurcalis[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFAAFFFFEFEE0000)) 
    \nolurcalis[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(fade_count),
        .I2(sel0[4]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\nolurcalis[2]_i_4_n_0 ),
        .I5(\nolurcalis_reg[0]_0 ),
        .O(\nolurcalis[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \nolurcalis[1]_i_1 
       (.I0(\nolurcalis[1]_i_2_n_0 ),
        .I1(\nolurcalis[2]_i_4_n_0 ),
        .I2(\nolurcalis_reg[1]_0 ),
        .O(\nolurcalis[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF48FF48FFFFFF48)) 
    \nolurcalis[1]_i_2 
       (.I0(\nolurcalis_reg[1]_0 ),
        .I1(fade_count),
        .I2(\nolurcalis_reg[0]_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(sel0[5]),
        .O(\nolurcalis[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \nolurcalis[2]_i_1 
       (.I0(reset),
        .I1(beat_detected),
        .O(\nolurcalis[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    \nolurcalis[2]_i_2 
       (.I0(\nolurcalis[2]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(sel0[6]),
        .I4(\nolurcalis[2]_i_4_n_0 ),
        .I5(\nolurcalis_reg[2]_0 ),
        .O(\nolurcalis[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \nolurcalis[2]_i_3 
       (.I0(\nolurcalis_reg[0]_0 ),
        .I1(\nolurcalis_reg[1]_0 ),
        .I2(fade_count),
        .I3(\nolurcalis_reg[2]_0 ),
        .O(\nolurcalis[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF40404000000000)) 
    \nolurcalis[2]_i_4 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(\nolurcalis[2]_i_5_n_0 ),
        .I2(fade_count),
        .I3(\nolurcalis[2]_i_6_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(frame_done),
        .O(\nolurcalis[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \nolurcalis[2]_i_5 
       (.I0(\nolurcalis_reg[1]_0 ),
        .I1(\nolurcalis_reg[0]_0 ),
        .I2(\nolurcalis_reg[2]_0 ),
        .O(\nolurcalis[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \nolurcalis[2]_i_6 
       (.I0(\breath_tick_reg_n_0_[3] ),
        .I1(\breath_tick_reg_n_0_[1] ),
        .I2(\breath_tick_reg_n_0_[0] ),
        .I3(\breath_tick_reg_n_0_[2] ),
        .O(\nolurcalis[2]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \nolurcalis_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\nolurcalis[0]_i_1_n_0 ),
        .Q(\nolurcalis_reg[0]_0 ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \nolurcalis_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\nolurcalis[1]_i_1_n_0 ),
        .Q(\nolurcalis_reg[1]_0 ),
        .R(\nolurcalis[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \nolurcalis_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\nolurcalis[2]_i_2_n_0 ),
        .Q(\nolurcalis_reg[2]_0 ),
        .R(\nolurcalis[2]_i_1_n_0 ));
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
