library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DigitalClock is
  port (
    KEY_0, KEY_1, SW_9, CLK_FPGA      : in std_logic;
    HEX_5, HEX_4, HEX_3, HEX_2, HEX_1 : out std_logic_vector(6 downto 0)
  );
end entity;

architecture logic of DigitalClock is
    -- Converts FPGA 50MHz clock to 1Hz and 2Hz internal clock(seconds)
  component fifty_mhz_1hz_2hz is
    port(
      CLK_FPGA_IN                    : in std_logic;
      one_hz_clk_out, two_hz_clk_out : out std_logic
    );
  end component;

  -- Controller for blinking seconds indicator every 25e6 cycles which corresponds to 0.5 seconds
  component second_indicator is 
    port(
      clk, is_on : in std_logic;
      blinker    : out std_logic_vector(6 downto 0)
    );
  end component;

  -- binary representation of number to seven segment controller
  component seven_seg is
    port(
      number : in std_logic_vector(3 downto 0);
      seven  : out std_logic_vector(6 downto 0)
    );
  end component seven_seg;

  -- Controller for incrementing time HH:MM
  component time_incrementer is
    port(
      clk_selector, minute_clk, btn_min_clk, btn_hour_clk                      : in std_logic;
      t_min_unit_in, t_min_tens_in, t_hour_tens_in, t_hour_unit_in             : in std_logic_vector(3 downto 0);
      new_min_unit_out, new_min_tens_out, new_hour_tens_out, new_hour_unit_out : out std_logic_vector(3 downto 0)
    );
  end component time_incrementer;

  component time_buffer is
    port(
      CLK_FPGA_IN                                            : in std_logic;
      min_unit_in, min_tens_in, hour_unit_in, hour_tens_in   : in std_logic_vector(3 downto 0);
      min_unit_out, min_tens_out, hour_unit_out, hour_tens_out : out std_logic_vector(hour_tens_in'range)
    );
  end component;
  

  signal incr_min, incr_hr : std_logic;
  signal update_count, one_hz_clk, two_hz_clk : std_logic := '0';
  signal minute_tens, minute_unit, hour_tens, hour_unit : std_logic_vector(3 downto 0);

  signal t_incr_min_tens, t_incr_min_unit, t_incr_hour_tens, t_incr_hour_unit : std_logic_vector(3 downto 0);

  signal s_min_tens, s_min_unit, s_hour_tens, s_hour_unit, s_blinker : std_logic_vector(6 downto 0);

  signal increment_hour, increment_minute, ignore : std_logic;
begin
  incr_min <= KEY_0;
  incr_hr <= KEY_1;


  hour_tens_seg : seven_seg port map(number => hour_tens, seven => s_hour_tens);
  hour_unit_seg : seven_seg port map(number => hour_unit, seven => s_hour_unit);
  min_tens_seg : seven_seg port map(number => minute_tens, seven => s_min_tens);
  min_unit_seg : seven_seg port map(number => minute_unit, seven => s_min_unit);

  one_hz : fifty_mhz_1hz_2hz port map(
    CLK_FPGA_IN => CLK_FPGA,
    one_hz_clk_out => one_hz_clk,
    two_hz_clk_out => two_hz_clk
  );

  s_ind : second_indicator port map(
    clk => two_hz_clk,
    is_on => SW_9,
    blinker => s_blinker
  );

  t_incrementer : time_incrementer port map(
    clk_selector => SW_9,
    btn_min_clk => increment_minute,
    btn_hour_clk => increment_hour,
    minute_clk => update_count,
    t_min_unit_in => minute_unit,
    t_min_tens_in => minute_tens, 
    t_hour_unit_in => hour_unit,
    t_hour_tens_in => hour_tens, 
    new_min_unit_out => t_incr_min_unit,
    new_min_tens_out => t_incr_min_tens,
    new_hour_unit_out => t_incr_hour_unit,
    new_hour_tens_out => t_incr_hour_tens
  );

  t_buffer : time_buffer port map(
    CLK_FPGA_IN => CLK_FPGA,
    min_unit_in => t_incr_min_unit ,
    min_tens_in => t_incr_min_tens,
    hour_unit_in => t_incr_hour_unit,
    hour_tens_in => t_incr_hour_tens,
    min_unit_out => minute_unit,
    min_tens_out => minute_tens,
    hour_unit_out => hour_unit,
    hour_tens_out => hour_tens
  );

  process(one_hz_clk, SW_9, incr_hr, incr_min)
    variable seconds : integer range 0 to 100 := 0;
  begin
    if rising_edge(one_hz_clk) then
      if SW_9 = '1' then
        seconds := seconds + 1;
        
        if seconds >= 60 then
          update_count <= '1';
          seconds := 0;
        else
          update_count <= '0';
        end if;
      elsif SW_9 = '0' then
        seconds := 0;
      end if;
    end if;

    if rising_edge(two_hz_clk) then
      if SW_9 = '0' then
        increment_hour <= '0';
        increment_minute <= '0';

        if incr_hr = '0' and incr_min = '0' then
          -- hour_unit <= (others => '0');
          -- hour_tens <= (others => '0');
          -- minute_unit <= (others => '0');
          -- minute_tens <= (others => '0');
        elsif incr_hr = '0' then
          increment_hour <= '1';
        elsif incr_min = '0' then
          increment_minute <= '1';
        end if;
      end if;
    end if;
  end process;

  HEX_5 <= s_hour_tens;
  HEX_4 <= s_hour_unit;
  HEX_2 <= s_min_tens;
  HEX_1 <= s_min_unit;
  HEX_3 <= s_blinker;
end architecture;