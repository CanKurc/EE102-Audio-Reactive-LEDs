library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity manual_color_select is
Port (
    -- Physical switch inputs
    color_sel : in STD_LOGIC_VECTOR (3 downto 0);
    brightness : in STD_LOGIC_VECTOR (2 downto 0);
    led_enable : in STD_LOGIC;
    
    -- Outputs to color_lut and driver
    color_index : out STD_LOGIC_VECTOR (3 downto 0);
    brightness_level : out STD_LOGIC_VECTOR (2 downto 0);
    enable : out STD_LOGIC
);
end manual_color_select;

architecture Behavioral of manual_color_select is
begin

    color_index <= color_sel;
    brightness_level <= brightness;
    enable <= led_enable;

end Behavioral;