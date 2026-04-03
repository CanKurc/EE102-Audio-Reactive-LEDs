-- ============================================================================
-- Clock Divider For 7-seg Display (Phase 1, Copied from LAB5)
--This module uses the 100MHz clock and drives a 20-bit counter. It outputs a 2-bit
--"digit select" signal extracted from the 19th and 18th bits of this counter, which cycles through "00",
--"01", "10", and "11" at a rate of 381 Hz.

--Makes it seem like all the displays are on to the eye even though they are not

-- Interface (outputs match what color_lut expects):
--   clk   : 100MHz clock
--   digit_select  :  signal for the decoder telling which screen to light up
-- ============================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity clock_divider is
    Port ( clk : in STD_LOGIC;
           digit_select : out STD_LOGIC_VECTOR (1 downto 0));
end clock_divider;

architecture Behavioral of clock_divider is

    -- The 20-bit counter
    -- It can count from 0 up to 1,048,575
    signal refresh_counter : STD_LOGIC_VECTOR (19 downto 0) := (others => '0');

begin
    process(clk)
    begin
        if rising_edge(clk) then
            refresh_counter <= refresh_counter + 1;
        end if;
    end process;

    -- ignore the bottom 18 bits (which are flashing millions of times a second).
    -- look at the top 2 bits (bits 19 and 18).
    -- Bit 18 flips  every 262,144 clock ticks (100MHz / 262144 = 381.4 Hz).
    -- This gives a 381 Hz refresh rate
    
    digit_select <= refresh_counter(19 downto 18);


end Behavioral;
