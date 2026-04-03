# =============================================================================
# Clock (100 MHz oscillator)
# =============================================================================
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

# =============================================================================
# WS2812B Data Output (PMOD JA, Pin 1)
# =============================================================================
set_property PACKAGE_PIN J1 [get_ports led_data_out]
set_property IOSTANDARD LVCMOS33 [get_ports led_data_out]

# =============================================================================
# Diagnostic Onboard LED (LED 0)
# =============================================================================
set_property PACKAGE_PIN U16 [get_ports onboard_led]
set_property IOSTANDARD LVCMOS33 [get_ports onboard_led]

# =============================================================================
# Reset Button (BTNC - center button)
# =============================================================================
set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

# =============================================================================
# Color Selection Switches (SW0 - SW3)
# =============================================================================
set_property PACKAGE_PIN V17 [get_ports {color_sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {color_sel[0]}]

set_property PACKAGE_PIN V16 [get_ports {color_sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {color_sel[1]}]

set_property PACKAGE_PIN W16 [get_ports {color_sel[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {color_sel[2]}]

set_property PACKAGE_PIN W17 [get_ports {color_sel[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {color_sel[3]}]

# =============================================================================
# Brightness Switches (SW4 - SW6)
# =============================================================================
set_property PACKAGE_PIN W15 [get_ports {brightness[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {brightness[0]}]

set_property PACKAGE_PIN V15 [get_ports {brightness[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {brightness[1]}]

set_property PACKAGE_PIN W14 [get_ports {brightness[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {brightness[2]}]

# =============================================================================
# LED Enable / On-Off Switch (SW7)
# =============================================================================
set_property PACKAGE_PIN W13 [get_ports led_enable]
set_property IOSTANDARD LVCMOS33 [get_ports led_enable]