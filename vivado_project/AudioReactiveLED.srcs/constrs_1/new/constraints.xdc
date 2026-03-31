# Connect VHDL 'clk' to the physical 100MHz oscillator (Pin W5)
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

# Connect VHDL 'led_data_out' to PMOD JA, Pin 1 (Pin J1)
set_property PACKAGE_PIN J1 [get_ports led_data_out]
set_property IOSTANDARD LVCMOS33 [get_ports led_data_out]
# Diagnostic Onboard LED (LED 0)
set_property PACKAGE_PIN U16 [get_ports onboard_led]
set_property IOSTANDARD LVCMOS33 [get_ports onboard_led]