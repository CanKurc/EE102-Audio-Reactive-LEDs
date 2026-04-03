-- ============================================================================
-- Clock Divider For 7-seg Display (Phase 1, Copied from LAB5)
--his module chooses which 4 bits to use out of 16 by using the 2-bit
--"digit select" signal.

-- Interface (outputs match what color_lut expects):
--   sw            : All 16 bits we want to send to the display
--   digit_select  : Two bit clock signal
--   digit_out     : Chosen 4 bits to show at one display
-- ============================================================================

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1 is
    Port ( 
        sw           : in  STD_LOGIC_VECTOR (15 downto 0); -- All 16 bits
        digit_select : in  STD_LOGIC_VECTOR (1 downto 0);  -- The 2-bit clock signal
        digit_out    : out STD_LOGIC_VECTOR (3 downto 0)   -- The chosen 4 switches
    );
end mux_4to1;

architecture Behavioral of mux_4to1 is
begin
    process(digit_select, sw)
    begin
        case digit_select is
            when "00" => digit_out <= sw(3 downto 0);   -- Group 1
            when "01" => digit_out <= sw(7 downto 4);   -- Group 2
            when "10" => digit_out <= sw(11 downto 8);  -- Group 3
            when "11" => digit_out <= sw(15 downto 12); -- Group 4
            when others => digit_out <= "0000";         -- Failsafe
        end case;
    end process;
end Behavioral;
