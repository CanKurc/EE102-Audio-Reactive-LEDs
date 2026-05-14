library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- beat_color_auto: replaces manual_color_select for Phase 2
-- gets beat pulses in, sends color+brightness+enable out
-- also does the breathing thing when no beat for a while

entity beat_color_auto is
Port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    beat_detected : in STD_LOGIC; -- from hysteresis
    frame_done : in STD_LOGIC; -- from ws2812b, 435 Hz
    led_enable : in STD_LOGIC; -- physical switch, '1' turns strip on
    color_index : out STD_LOGIC_VECTOR (3 downto 0);
    brightness_level : out STD_LOGIC_VECTOR (2 downto 0);
    enable : out STD_LOGIC
);
end beat_color_auto;

architecture Behavioral of beat_color_auto is

    type state_type is (FADING, FADED_WAIT, BREATHING);
    signal state : state_type := FADING;

    -- how many frames to sit fully dim before breathing starts
    constant IDLE_LIMIT: integer := 1088;
    -- how many frames between each dimming step
    constant FADE_RATE: integer := 30;
    -- how many frames between each breath step
    constant BREATH_RATE: integer := 10;

    -- color picker, 0 to 15
    signal color_idx : integer range 0 to 15 := 0;
    -- brightness, 0 full 7 dim
    signal nolurcalis : integer range 0 to 7 := 0;

    -- counts frames spent sitting at fully dim (used in FADED_WAIT state)
    signal idle_count : integer range 0 to IDLE_LIMIT := 0;
    -- counts frames between dimming steps, resets every FADE_RATE
    signal fade_count : integer range 0 to FADE_RATE := 0;
    -- counts frames between breath steps, resets every BREATH_RATE
    signal breath_tick : integer range 0 to BREATH_RATE := 0;

    -- the breathing counter, 0 to 127 and back down
    signal breath_count: unsigned (6 downto 0) := (others => '0');
    -- '0' breathing is up, '1' is down
    signal breath_dir : std_logic := '0';

begin

    -- outputs
    color_index <= std_logic_vector(to_unsigned(color_idx, 4));
    brightness_level <= std_logic_vector(to_unsigned(nolurcalis, 3));
    enable <= led_enable; -- wired straight to the switch

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state <= FADING;
                color_idx <= 0;
                nolurcalis <= 0;
                idle_count <= 0;
                fade_count <= 0;
                breath_tick <= 0;
                breath_count <= (others => '0');
                breath_dir <= '0';
            else
                -- beat always wins, check it first
                if beat_detected = '1' then
                    -- new color, full brightness, restart everything
                    if color_idx = 15 then
                        color_idx <= 0;
                    else
                        color_idx <= color_idx + 1;
                    end if;
                    
                    nolurcalis <= 0;
                    idle_count <= 0;
                    fade_count <= 0;
                    breath_tick <= 0;
                    breath_count <= (others => '0');
                    breath_dir <= '0';
                    state <= FADING;

                -- only update on frame ticks, not every 100 MHz cycle
                elsif frame_done = '1' then
                    case state is
                        when FADING =>
                            if fade_count = FADE_RATE - 1 then
                                fade_count <= 0;
                                if nolurcalis < 7 then
                                    nolurcalis <= nolurcalis + 1;
                                else
                                    -- fully dim, time to sit and wait before breathing
                                    idle_count <= 0;
                                    state <= FADED_WAIT;
                                end if;
                            else
                                fade_count <= fade_count + 1;
                            end if;

                        when FADED_WAIT =>
                            -- sit here at nolurcalis 7 for IDLE_LIMIT frames
                            if idle_count < IDLE_LIMIT then
                                idle_count <= idle_count + 1;
                            else
                                -- waited long enough, start breathing
                                breath_count <= (others => '0');
                                breath_dir <= '0';
                                breath_tick <= 0;
                                state <= BREATHING;
                            end if;

                        when BREATHING =>
                            if breath_tick = BREATH_RATE - 1 then
                                breath_tick <= 0;
                                -- triangle wave, goes up then down then up
                                if breath_dir = '0' then
                                    if breath_count = 127 then
                                        breath_dir <= '1'; -- flip to going down
                                    else
                                        breath_count <= breath_count + 1;
                                    end if;
                                else
                                    if breath_count = 0 then
                                        breath_dir <= '0'; -- flip to going up
                                    else
                                        breath_count <= breath_count - 1;
                                    end if;
                                end if;
                                
                                nolurcalis <= 7 - to_integer(breath_count(6 downto 4));
                            else
                                breath_tick <= breath_tick + 1;
                            end if;
                    end case;
                end if;
            end if;
        end if;
    end process;

end Behavioral;