-- ============================================================================
-- BCD to 7-Segment Decoder (Phase 1, Copied from LAB5)
--This module takes the 4-bit output of the multiplexer and
--decodes it into a 7-bit active low signal that can be used by the display. Binary 4-bit input is decoded
--into hexadecimal characters 0-9 and A-F.

--Look Up Table for the display written in case structure

-- Interface (outputs match what color_lut expects):
--   bcd_in   : 4-bit mux signal
--   seg_out  :  7 bit active low signal for the display
-- ============================================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity binary_input_to_7_segment_display is
    Port ( bcd_in : in STD_LOGIC_VECTOR (3 downto 0);
           seg_out : out STD_LOGIC_VECTOR (6 downto 0));
end binary_input_to_7_segment_display;

architecture Behavioral of binary_input_to_7_segment_display is

begin
process(bcd_in)
    begin
        case bcd_in is
            when "0000" => seg_out <= "1000000"; -- '0' 
            when "0001" => seg_out <= "1111001"; -- '1' 
            when "0010" => seg_out <= "0100100"; -- '2' 
            when "0011" => seg_out <= "0110000"; -- '3' 
            when "0100" => seg_out <= "0011001"; -- '4' 
            when "0101" => seg_out <= "0010010"; -- '5' 
            when "0110" => seg_out <= "0000010"; -- '6' 
            when "0111" => seg_out <= "1111000"; -- '7' 
            when "1000" => seg_out <= "0000000"; -- '8' 
            when "1001" => seg_out <= "0010000"; -- '9' 
            
            -- Hex letters for inputs 10 to 15
            when "1010" => seg_out <= "0001000"; -- 'A'
            when "1011" => seg_out <= "0000011"; -- 'b'
            when "1100" => seg_out <= "1000110"; -- 'C'
            when "1101" => seg_out <= "0100001"; -- 'd'
            when "1110" => seg_out <= "0000110"; -- 'E'
            when "1111" => seg_out <= "0001110"; -- 'F'
            
            when others => seg_out <= "1111111"; -- Keep all off as a failsafe
        end case;
    end process;

end Behavioral;
