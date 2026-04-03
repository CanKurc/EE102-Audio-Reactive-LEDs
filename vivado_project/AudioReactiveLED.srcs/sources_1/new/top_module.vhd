library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- ============================================================================
-- Top Module - Phase 1 (LED control only, XADC added later)
--
-- This wires together:
--   manual_color_select → color_lut → ws2812b_driver → LED strip
--
-- When XADC and seven-segment are ready, they get added here without
-- touching any of the existing modules.
-- ============================================================================

entity top_module is
    Port (
        clk          : in  STD_LOGIC;
        reset        : in  STD_LOGIC;

        -- Switches
        color_sel    : in  STD_LOGIC_VECTOR(3 downto 0);  -- SW0-SW3
        brightness   : in  STD_LOGIC_VECTOR(2 downto 0);  -- SW4-SW6
        led_enable   : in  STD_LOGIC;                     -- SW7

        -- LED strip output
        led_data_out : out STD_LOGIC;

        -- Diagnostic
        onboard_led  : out STD_LOGIC
    );
end top_module;

architecture Structural of top_module is

    -- Internal signals connecting the modules
    signal s_color_index      : std_logic_vector(3 downto 0);
    signal s_brightness_level : std_logic_vector(2 downto 0);
    signal s_enable           : std_logic;
    signal s_color_24bit      : std_logic_vector(23 downto 0);
    signal s_led_data         : std_logic;
    signal s_frame_done       : std_logic;

    -- Component declarations
    component manual_color_select is
        Port (
            color_sel        : in  STD_LOGIC_VECTOR(3 downto 0);
            brightness       : in  STD_LOGIC_VECTOR(2 downto 0);
            led_enable       : in  STD_LOGIC;
            color_index      : out STD_LOGIC_VECTOR(3 downto 0);
            brightness_level : out STD_LOGIC_VECTOR(2 downto 0);
            enable           : out STD_LOGIC
        );
    end component;

    component color_lut is
        Port (
            color_index      : in  STD_LOGIC_VECTOR(3 downto 0);
            brightness_level : in  STD_LOGIC_VECTOR(2 downto 0);
            color_out        : out STD_LOGIC_VECTOR(23 downto 0)
        );
    end component;

    component ws2812b_driver is
        Port (
            clk          : in  STD_LOGIC;
            reset        : in  STD_LOGIC;
            color_in     : in  STD_LOGIC_VECTOR(23 downto 0);
            enable       : in  STD_LOGIC;
            led_data_out : out STD_LOGIC;
            frame_done   : out STD_LOGIC
        );
    end component;

begin

    -- =====================================================================
    -- Module 2b: Switch reader (Phase 1)
    -- In Phase 2, replace this instantiation with beat_color_auto
    -- =====================================================================
    u_manual_select : manual_color_select
        port map (
            color_sel        => color_sel,
            brightness       => brightness,
            led_enable       => led_enable,
            color_index      => s_color_index,
            brightness_level => s_brightness_level,
            enable           => s_enable
        );

    -- =====================================================================
    -- Module 2a: Color LUT + brightness scaling
    -- =====================================================================
    u_color_lut : color_lut
        port map (
            color_index      => s_color_index,
            brightness_level => s_brightness_level,
            color_out        => s_color_24bit
        );

    -- =====================================================================
    -- Module 1: WS2812B physical layer driver
    -- =====================================================================
    u_ws2812b : ws2812b_driver
        port map (
            clk          => clk,
            reset        => reset,
            color_in     => s_color_24bit,
            enable       => s_enable,
            led_data_out => s_led_data,
            frame_done   => s_frame_done
        );

    -- Output assignments
    led_data_out <= s_led_data;
    onboard_led  <= s_led_data;

end Structural;