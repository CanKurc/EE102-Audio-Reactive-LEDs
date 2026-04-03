library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- ============================================================================
-- Color Look-Up Table with Brightness Scaling
--
-- Pure combinational module (no clock). Given a 4-bit color index and a
-- 3-bit brightness level, it outputs a 24-bit GRB color value with
-- brightness applied.
--
-- This module is shared by Phase 1 (manual switch control) and Phase 2
-- (beat-driven automation). Neither the LUT contents nor the brightness
-- logic ever needs to change between phases.
--
-- Interface:
--   color_index      : 4-bit selector (0–15) into the 16-color LUT
--   brightness_level : 3-bit shift amount (0 = full, 7 = very dim)
--   color_out        : 24-bit GRB result with brightness applied
-- ============================================================================

entity color_lut is
    Port (
        color_index      : in  STD_LOGIC_VECTOR(3 downto 0);
        brightness_level : in  STD_LOGIC_VECTOR(2 downto 0);
        color_out        : out STD_LOGIC_VECTOR(23 downto 0)
    );
end color_lut;

architecture Behavioral of color_lut is

    -- 16-entry color table (GRB order for WS2812B)
    type color_lut_type is array (0 to 15) of std_logic_vector(23 downto 0);
    constant COLORS : color_lut_type := (
        x"FF0000",  --  0: Green
        x"00FF00",  --  1: Red
        x"0000FF",  --  2: Blue
        x"FFFF00",  --  3: Yellow  (G+R)
        x"FF00FF",  --  4: Cyan    (G+B)
        x"00FFFF",  --  5: Magenta (R+B)
        x"FFFFFF",  --  6: White
        x"80FF00",  --  7: Orange (needs nore red)
        x"FF8000",  --  8: Spring green (too less difference with the normal green)
        x"0080FF",  --  9: Rose / pink (this is purple)
        x"8000FF",  -- 10: Teal (this is cyan)
        x"00FF80",  -- 11: Deep orange (this is pink)
        x"FF0080",  -- 12: Sea green (cyan)
        x"4000FF",  -- 13: Purple (blue)
        x"20FF40",  -- 14: Amber
        x"606060"   -- 15: Warm white (dim) (just white)
    );

    -- Brightness scaling: right-shift each channel by the level amount
    function scale_brightness(
        color : std_logic_vector(23 downto 0);
        level : std_logic_vector(2 downto 0)
    ) return std_logic_vector is
        variable g, r, b : unsigned(7 downto 0);
        variable shift   : integer range 0 to 7;
    begin
        g := unsigned(color(23 downto 16));
        r := unsigned(color(15 downto 8));
        b := unsigned(color(7  downto 0));
        shift := to_integer(unsigned(level));

        g := shift_right(g, shift);
        r := shift_right(r, shift);
        b := shift_right(b, shift);

        return std_logic_vector(g) & std_logic_vector(r) & std_logic_vector(b);
    end function;

begin

    -- Pure combinational: index into LUT, apply brightness, output result
    color_out <= scale_brightness(
        COLORS(to_integer(unsigned(color_index))),
        brightness_level
    );

end Behavioral;