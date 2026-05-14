library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hysteresis_detector is
Port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    audio_filtered : in STD_LOGIC_VECTOR (11 downto 0); -- from moving_average
    thresh_high : in STD_LOGIC_VECTOR (11 downto 0); -- upper threshold
    thresh_low : in STD_LOGIC_VECTOR (11 downto 0); -- lower threshold
    beat_detected : out STD_LOGIC -- single-cycle pulse
);
end hysteresis_detector;

architecture Behavioral of hysteresis_detector is

    -- FSM state type
    type state_type is (ARMED, FIRED);
    signal state : state_type := ARMED;

    -- Internal beat pulse signal
    signal beat_pulse : std_logic := '0';

begin

    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                state <= ARMED;
                beat_pulse <= '0';
            else
                -- DEFAULT: beat_pulse is low every cycle unless explicitly set.
                -- This is what makes beat_pulse a single-cycle pulse instead of a latching signal.
                beat_pulse <= '0';
                
                case state is
                    when ARMED =>
                        -- Waiting for a beat. Check if signal crossed above THRESH_HIGH.
                        if unsigned(audio_filtered) > unsigned(thresh_high) then
                            beat_pulse <= '1'; -- fire the pulse THIS cycle
                            state <= FIRED; -- lock out further beats
                        end if;
                        
                    when FIRED =>
                        -- Beat already fired. Wait for signal to drop below THRESH_LOW.
                        if unsigned(audio_filtered) < unsigned(thresh_low) then
                            state <= ARMED; -- re-arm the detector
                        end if;
                end case;
            end if;
        end if;
    end process;

    beat_detected <= beat_pulse;

end Behavioral;