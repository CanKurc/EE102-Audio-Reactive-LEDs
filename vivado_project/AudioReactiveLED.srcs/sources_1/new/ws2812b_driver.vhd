library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- ============================================================================
-- WS2812B Physical Layer Driver
-- 
-- This module ONLY handles the single-wire NRZ protocol. It takes a 24-bit
-- GRB color input and bit-bangs it to all LEDs on the strip. It knows nothing
-- about colors, switches, brightness, or beats.
--
-- Interface:
--   color_in     : 24-bit GRB color to display on ALL LEDs
--   enable       : when '0', sends all zeros (strip dark)
--   led_data_out : physical data line to WS2812B strip
--   frame_done   : pulses '1' for one clock cycle at end of each frame
--                  (used by upstream modules to know when to update color_in)
-- ============================================================================

entity ws2812b_driver is
    Port (
        clk          : in  STD_LOGIC;
        reset        : in  STD_LOGIC;
        color_in     : in  STD_LOGIC_VECTOR(23 downto 0);
        enable       : in  STD_LOGIC;
        led_data_out : out STD_LOGIC;
        frame_done   : out STD_LOGIC
    );
end ws2812b_driver;

architecture Behavioral of ws2812b_driver is

    -- WS2812B timing constants (100 MHz clock, 10ns per tick)
    constant T0H : integer := 40;     -- 400ns high for logic 0
    constant T0L : integer := 85;     -- 850ns low  for logic 0
    constant T1H : integer := 80;     -- 800ns high for logic 1
    constant T1L : integer := 45;     -- 450ns low  for logic 1
    constant RES : integer := 50000;  -- 500us reset/latch period

    constant NUM_LEDS    : integer := 60;
    constant BITS_PER_LED: integer := 24;
    constant TOTAL_BITS  : integer := NUM_LEDS * BITS_PER_LED;

    -- FSM states
    type state_type is (RESET_STATE, SEND_STATE);
    signal state : state_type := RESET_STATE;

    -- Counters
    signal cycle_count   : integer range 0 to 65535 := 0;
    signal bit_count     : integer range 0 to TOTAL_BITS - 1 := 0;
    signal bit_in_pixel  : integer range 0 to 23 := 0;

    -- Latched color for this frame (sampled once at frame boundary)
    signal active_color  : std_logic_vector(23 downto 0) := (others => '0');
    signal current_bit   : std_logic;

    -- Internal data line
    signal internal_data : std_logic := '0';

begin

    -- Extract current bit (MSB first within each 24-bit pixel)
    current_bit <= active_color(23 - bit_in_pixel);

    -- Output assignments
    led_data_out <= internal_data;

    ---------------------------------------------------------------------------
    -- Main FSM process
    ---------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            -- Default: frame_done is low
            frame_done <= '0';

            if reset = '1' then
                state         <= RESET_STATE;
                cycle_count   <= 0;
                bit_count     <= 0;
                bit_in_pixel  <= 0;
                internal_data <= '0';
                active_color  <= (others => '0');

            else
                case state is

                    when RESET_STATE =>
                        internal_data <= '0';

                        if cycle_count < RES then
                            cycle_count <= cycle_count + 1;
                        else
                            cycle_count  <= 0;
                            bit_count    <= 0;
                            bit_in_pixel <= 0;

                            -- Latch the input color once per frame
                            if enable = '1' then
                                active_color <= color_in;
                            else
                                active_color <= (others => '0');
                            end if;

                            -- Signal upstream that a new frame is starting
                            frame_done <= '1';

                            state <= SEND_STATE;
                        end if;

                    when SEND_STATE =>
                        if current_bit = '1' then
                            if cycle_count < T1H then
                                internal_data <= '1';
                                cycle_count   <= cycle_count + 1;
                            elsif cycle_count < (T1H + T1L) then
                                internal_data <= '0';
                                cycle_count   <= cycle_count + 1;
                            else
                                cycle_count <= 0;
                                if bit_count = TOTAL_BITS - 1 then
                                    state <= RESET_STATE;
                                else
                                    bit_count <= bit_count + 1;
                                    if bit_in_pixel = 23 then
                                        bit_in_pixel <= 0;
                                    else
                                        bit_in_pixel <= bit_in_pixel + 1;
                                    end if;
                                end if;
                            end if;

                        else
                            if cycle_count < T0H then
                                internal_data <= '1';
                                cycle_count   <= cycle_count + 1;
                            elsif cycle_count < (T0H + T0L) then
                                internal_data <= '0';
                                cycle_count   <= cycle_count + 1;
                            else
                                cycle_count <= 0;
                                if bit_count = TOTAL_BITS - 1 then
                                    state <= RESET_STATE;
                                else
                                    bit_count <= bit_count + 1;
                                    if bit_in_pixel = 23 then
                                        bit_in_pixel <= 0;
                                    else
                                        bit_in_pixel <= bit_in_pixel + 1;
                                    end if;
                                end if;
                            end if;
                        end if;

                end case;
            end if;
        end if;
    end process;

end Behavioral;