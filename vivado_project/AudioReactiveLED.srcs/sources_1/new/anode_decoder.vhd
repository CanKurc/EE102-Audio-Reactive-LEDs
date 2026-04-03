-- ============================================================================
-- Anode Decoder (Phase 1, Copied from LAB5)
--This module controls which of the four 7-segment screens is powered by using
--the "digit select" signal.

-- Interface (outputs match what color_lut expects):
--   digit_select   : The 2-bit clock signal
--   an    :  The 4 screen power wires
-- ============================================================================


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity anode_decoder is
    Port ( 
        digit_select : in  STD_LOGIC_VECTOR (1 downto 0); -- The 2-bit clock signal
        an           : out STD_LOGIC_VECTOR (3 downto 0)  -- The 4 screen power wires
    );
end anode_decoder;

architecture Behavioral of anode_decoder is
begin
    process(digit_select)
    begin
        case digit_select is
            when "00" => an <= "1110"; -- Turns ON Digit 0 (Rightmost)
            when "01" => an <= "1101"; -- Turns ON Digit 1
            when "10" => an <= "1011"; -- Turns ON Digit 2
            when "11" => an <= "0111"; -- Turns ON Digit 3 (Leftmost)
            when others => an <= "1111"; -- Keeps all OFF as a failsafe
        end case;
    end process;
end Behavioral;
