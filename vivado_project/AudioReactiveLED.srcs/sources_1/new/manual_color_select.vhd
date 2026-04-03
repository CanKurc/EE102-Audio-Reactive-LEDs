library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ============================================================================
-- Manual Color Select (Phase 1)
--
-- Reads the physical switches on the Basys 3 and outputs color_index,
-- brightness_level, and enable signals that feed into color_lut.
--
-- THIS IS THE PHASE 1 MODULE. In Phase 2, this gets replaced by
-- beat_color_auto.vhd, which has the SAME output interface but drives
-- color_index/brightness_level from beat detection instead of switches.
--
-- Interface (outputs match what color_lut expects):
--   color_sel   : SW0–SW3 (directly from pins)
--   brightness  : SW4–SW6 (directly from pins)
--   led_enable  : SW7     (directly from pin)
--   color_index      : 4-bit output to color_lut
--   brightness_level : 3-bit output to color_lut
--   enable           : 1-bit output to ws2812b_driver
-- ============================================================================

entity manual_color_select is
    Port (
        -- Physical switch inputs
        color_sel   : in  STD_LOGIC_VECTOR(3 downto 0);
        brightness  : in  STD_LOGIC_VECTOR(2 downto 0);
        led_enable  : in  STD_LOGIC;

        -- Outputs to color_lut and driver
        color_index      : out STD_LOGIC_VECTOR(3 downto 0);
        brightness_level : out STD_LOGIC_VECTOR(2 downto 0);
        enable           : out STD_LOGIC
    );
end manual_color_select;

architecture Behavioral of manual_color_select is
begin

    -- In Phase 1, switches pass straight through.
    -- This module exists so that Phase 2 can replace it with
    -- beat_color_auto.vhd without changing any other module.
    color_index      <= color_sel;
    brightness_level <= brightness;
    enable           <= led_enable;

end Behavioral;