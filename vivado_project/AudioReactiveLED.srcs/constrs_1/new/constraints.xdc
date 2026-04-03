# =============================================================================
# Clock (100 MHz oscillator)
# =============================================================================
set_property PACKAGE_PIN W5 [get_ports clk_0_0]
set_property IOSTANDARD LVCMOS33 [get_ports clk_0_0]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_0_0]

# =============================================================================
# Reset Button (BTNC - center button)
# =============================================================================
set_property PACKAGE_PIN U18 [get_ports reset_0_0]
set_property IOSTANDARD LVCMOS33 [get_ports reset_0_0]

# =============================================================================
# WS2812B Data Output (PMOD JA, Pin 1)
# =============================================================================
set_property PACKAGE_PIN J1 [get_ports led_data_out_0_0]
set_property IOSTANDARD LVCMOS33 [get_ports led_data_out_0_0]

# =============================================================================
# Diagnostic Onboard LED (LED 0) -> Mapped to frame_done
# =============================================================================
set_property PACKAGE_PIN U16 [get_ports frame_done_0_0]
set_property IOSTANDARD LVCMOS33 [get_ports frame_done_0_0]

# =============================================================================
# Color Selection Switches (SW0 - SW3)
# =============================================================================
set_property PACKAGE_PIN V17 [get_ports {color_sel_0_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {color_sel_0_0[0]}]

set_property PACKAGE_PIN V16 [get_ports {color_sel_0_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {color_sel_0_0[1]}]

set_property PACKAGE_PIN W16 [get_ports {color_sel_0_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {color_sel_0_0[2]}]

set_property PACKAGE_PIN W17 [get_ports {color_sel_0_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {color_sel_0_0[3]}]

# =============================================================================
# Brightness Switches (SW4 - SW6)
# =============================================================================
set_property PACKAGE_PIN W15 [get_ports {brightness_0_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {brightness_0_0[0]}]

set_property PACKAGE_PIN V15 [get_ports {brightness_0_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {brightness_0_0[1]}]

set_property PACKAGE_PIN W14 [get_ports {brightness_0_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {brightness_0_0[2]}]

# =============================================================================
# LED Enable / On-Off Switch (SW7)
# =============================================================================
set_property PACKAGE_PIN W13 [get_ports led_enable_0_0]
set_property IOSTANDARD LVCMOS33 [get_ports led_enable_0_0]

# =============================================================================
# Seven-Segment Display Cathodes (seg_out_0_0)
# =============================================================================
set_property PACKAGE_PIN W7 [get_ports {seg_out_0_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out_0_0[0]}]

set_property PACKAGE_PIN W6 [get_ports {seg_out_0_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out_0_0[1]}]

set_property PACKAGE_PIN U8 [get_ports {seg_out_0_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out_0_0[2]}]

set_property PACKAGE_PIN V8 [get_ports {seg_out_0_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out_0_0[3]}]

set_property PACKAGE_PIN U5 [get_ports {seg_out_0_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out_0_0[4]}]

set_property PACKAGE_PIN V5 [get_ports {seg_out_0_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out_0_0[5]}]

set_property PACKAGE_PIN U7 [get_ports {seg_out_0_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg_out_0_0[6]}]

# =============================================================================
# Seven-Segment Display Anodes (an_0_0)
# =============================================================================
set_property PACKAGE_PIN U2 [get_ports {an_0_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an_0_0[0]}]

set_property PACKAGE_PIN U4 [get_ports {an_0_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an_0_0[1]}]

set_property PACKAGE_PIN V4 [get_ports {an_0_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an_0_0[2]}]

set_property PACKAGE_PIN W4 [get_ports {an_0_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an_0_0[3]}]

# =============================================================================
# XADC Analog Inputs (VAUX6)
# =============================================================================
# Note: Vivado usually infers these directly from the IP, but it is best 
# practice to explicitly constrain them to prevent placement errors.
set_property PACKAGE_PIN A14 [get_ports vauxp6_0_0]
set_property IOSTANDARD LVCMOS33 [get_ports vauxp6_0_0]

set_property PACKAGE_PIN A13 [get_ports vauxn6_0_0]
set_property IOSTANDARD LVCMOS33 [get_ports vauxn6_0_0]