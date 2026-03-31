library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity led_controller is
    Port (
        clk           : in  STD_LOGIC;
        reset         : in  STD_LOGIC;                     -- BTN reset (active high)
        color_sel     : in  STD_LOGIC_VECTOR(3 downto 0);  -- SW0-SW3: 16 colors
        brightness    : in  STD_LOGIC_VECTOR(2 downto 0);  -- SW4-SW6: 8 brightness levels
        led_enable    : in  STD_LOGIC;                     -- SW7: on/off
        led_data_out  : out STD_LOGIC;
        onboard_led   : out STD_LOGIC                      -- diagnostic mirror
    );
end led_controller;

architecture Behavioral of led_controller is

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
    signal cycle_count    : integer range 0 to 65535 := 0;
    signal bit_count      : integer range 0 to TOTAL_BITS - 1 := 0;
    signal bit_in_pixel   : integer range 0 to 23 := 0;  -- replaces mod 24

    -- Color data
    signal active_color   : std_logic_vector(23 downto 0) := (others => '0');
    signal current_bit    : std_logic;

    -- Internal data line
    signal internal_data  : std_logic := '0';

    -----------------------------------------------------------------------
    -- Color Look-Up Table (GRB order for WS2812B)
    -- Format: G[7:0] & R[7:0] & B[7:0]
    -----------------------------------------------------------------------
    type color_lut_type is array (0 to 15) of std_logic_vector(23 downto 0);
    constant COLOR_LUT : color_lut_type := (
        x"FF0000",  --  0: Green
        x"00FF00",  --  1: Red
        x"0000FF",  --  2: Blue
        x"FFFF00",  --  3: Yellow  (G+R)
        x"FF00FF",  --  4: Cyan    (G+B)
        x"00FFFF",  --  5: Magenta (R+B)
        x"FFFFFF",  --  6: White
        x"80FF00",  --  7: Orange
        x"FF8000",  --  8: Spring green
        x"0080FF",  --  9: Rose / pink
        x"8000FF",  -- 10: Teal
        x"00FF80",  -- 11: Deep orange
        x"FF0080",  -- 12: Sea green
        x"4000FF",  -- 13: Purple
        x"20FF40",  -- 14: Amber
        x"606060"   -- 15: Warm white (dim)
    );

    -----------------------------------------------------------------------
    -- Brightness scaling function (right-shift each 8-bit channel)
    -- level 0 = full (no shift), level 7 = /128 (very dim)
    -----------------------------------------------------------------------
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

    -- Extract the current bit to send (MSB first within each 24-bit pixel)
    current_bit <= active_color(23 - bit_in_pixel);

    -- Route data signal to both PMOD output and onboard LED for diagnostics
    led_data_out <= internal_data;
    onboard_led  <= internal_data;

    ---------------------------------------------------------------------------
    -- Main FSM process
    ---------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state         <= RESET_STATE;
                cycle_count   <= 0;
                bit_count     <= 0;
                bit_in_pixel  <= 0;
                internal_data <= '0';
                active_color  <= (others => '0');

            else
                case state is
                    -------------------------------------------------------
                    -- RESET_STATE: hold line low for >300us (latch frame),
                    -- then latch the switch settings for the next frame
                    -------------------------------------------------------
                    when RESET_STATE =>
                        internal_data <= '0';

                        if cycle_count < RES then
                            cycle_count <= cycle_count + 1;
                        else
                            cycle_count  <= 0;
                            bit_count    <= 0;
                            bit_in_pixel <= 0;

                            -- Sample switches once per frame
                            if led_enable = '1' then
                                active_color <= scale_brightness(
                                    COLOR_LUT(to_integer(unsigned(color_sel))),
                                    brightness
                                );
                            else
                                active_color <= (others => '0');
                            end if;

                            state <= SEND_STATE;
                        end if;

                    -------------------------------------------------------
                    -- SEND_STATE: bit-bang the WS2812B protocol
                    -------------------------------------------------------
                    when SEND_STATE =>
                        if current_bit = '1' then
                            -- Logic 1: T1H high, then T1L low
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
                                    -- Advance pixel-local counter
                                    if bit_in_pixel = 23 then
                                        bit_in_pixel <= 0;
                                    else
                                        bit_in_pixel <= bit_in_pixel + 1;
                                    end if;
                                end if;
                            end if;

                        else
                            -- Logic 0: T0H high, then T0L low
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