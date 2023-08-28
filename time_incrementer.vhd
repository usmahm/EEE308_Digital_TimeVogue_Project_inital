library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity time_incrementer is
  port(
    clk_selector, one_hz_clk_in, two_hz_clk_in, btn_min_clk, btn_hour_clk    : in std_logic;
    t_min_unit_in, t_min_tens_in, t_hour_tens_in, t_hour_unit_in             : in std_logic_vector(3 downto 0);
    new_min_unit_out, new_min_tens_out, new_hour_tens_out, new_hour_unit_out : out std_logic_vector(3 downto 0)
  );
end entity;

architecture logic of time_incrementer is
  -- Controls incrementing hour count
  component hour_controller is
    port(
      increment_hour_in        : in std_logic;
      hr_tens_in, hr_unit_in   : in std_logic_vector(3 downto 0);
      hr_tens_out, hr_unit_out : out std_logic_vector(hr_tens_in'range)  
    );
  end component;

  -- Controls incrementing minute count
  component minute_controller is
    port(
      min_clk                    : in std_logic;
      min_tens_in, min_unit_in   : in std_logic_vector(3 downto 0);
      min_tens_out, min_unit_out : out std_logic_vector(min_tens_in'range);
      incr_hour                  : out std_logic
    );
  end component;

  signal update_count, one_hz_clk, two_hz_clk : std_logic := '0';
  
  signal hour_clk, min_clk_in, hour_clk_in : std_logic;
  
  signal minute_clk : std_logic;
  
  signal increment_hour, increment_minute, ignore : std_logic;
  signal normal_time_minute_clk, normal_hour_clk : std_logic;
begin
  hr_controller : hour_controller port map(
    increment_hour_in => hour_clk_in,
    hr_tens_in => t_hour_tens_in,
    hr_unit_in => t_hour_unit_in,
    hr_tens_out => new_hour_tens_out,
    hr_unit_out => new_hour_unit_out
  );

  min_controller : minute_controller port map(
    min_clk => min_clk_in,
    min_tens_in => t_min_tens_in,
    min_unit_in => t_min_unit_in,
    min_tens_out => new_min_tens_out,
    min_unit_out => new_min_unit_out,
    incr_hour => normal_hour_clk
  );

  process(clk_selector, one_hz_clk_in, two_hz_clk_in, btn_min_clk, btn_hour_clk)
    variable seconds : integer range 0 to 100 := 0;
  begin
    if rising_edge(one_hz_clk_in) then
      if clk_selector = '1' then
        seconds := seconds + 1;
        
        if seconds >= 60 then
          normal_time_minute_clk <= '1';
          seconds := 0;
        else
          normal_time_minute_clk <= '0';
        end if;
      elsif clk_selector = '0' then
        seconds := 0;
      end if;
    end if;

    if rising_edge(two_hz_clk_in) then
      if clk_selector = '0' then
        increment_hour <= '0';
        increment_minute <= '0';

        if btn_hour_clk = '0' and btn_min_clk = '0' then
          -- hour_unit <= (others => '0');
          -- hour_tens <= (others => '0');
          -- minute_unit <= (others => '0');
          -- minute_tens <= (others => '0');
        elsif btn_hour_clk = '0' then
          increment_hour <= '1';
        elsif btn_min_clk = '0' then
          increment_minute <= '1';
        end if;
      end if;
    end if;
  end process;

  min_clk_in <= normal_time_minute_clk when clk_selector = '1' else increment_minute;
  hour_clk_in <= normal_hour_clk when clk_selector = '1' else increment_hour;
end architecture;