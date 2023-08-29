library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity time_incrementer is
  port(
    is_stop_watch_in                                                         : in boolean;
    clk_selector_in, normal_min_clk_in, btn_min_clk_in, btn_hour_clk_in      : in std_logic;
    t_min_unit_in, t_min_tens_in, t_hour_tens_in, t_hour_unit_in             : in std_logic_vector(3 downto 0);
    new_min_unit_out, new_min_tens_out, new_hour_tens_out, new_hour_unit_out : out std_logic_vector(3 downto 0)
  );
end entity;

architecture logic of time_incrementer is
  -- Controls incrementing hour count
  component hour_controller is
    port(
      hour_clk_in                        : in std_logic;
      should_decrement, is_stop_watch    : in boolean;
      hr_tens_in, hr_unit_in             : in std_logic_vector(3 downto 0);
      hr_tens_out, hr_unit_out           : out std_logic_vector(hr_tens_in'range)
    );
  end component;

  -- Controls incrementing minute count
  component minute_controller is
    port(
      min_clk_in                  : in std_logic;
      should_decrement, hr_grt_0_in  : in boolean;
      min_tens_in, min_unit_in    : in std_logic_vector(3 downto 0);
      min_tens_out, min_unit_out  : out std_logic_vector(min_tens_in'range);
      hour_clk_out                : out std_logic
    );
  end component;

  signal min_clk, hour_clk : std_logic;  
  signal normal_hour_clk : std_logic;
begin
  hr_controller : hour_controller port map(
    hour_clk_in => hour_clk,
    should_decrement => false,
    is_stop_watch => is_stop_watch_in,
    hr_tens_in => t_hour_tens_in,
    hr_unit_in => t_hour_unit_in,
    hr_tens_out => new_hour_tens_out,
    hr_unit_out => new_hour_unit_out
  );

  min_controller : minute_controller port map(
    min_clk_in => min_clk,
    should_decrement => false,
    min_tens_in => t_min_tens_in,
    min_unit_in => t_min_unit_in,
    min_tens_out => new_min_tens_out,
    min_unit_out => new_min_unit_out,
    hour_clk_out => normal_hour_clk,
    hr_grt_0_in => false --Won't be used since should_decrement = 0
  );

  process(normal_min_clk_in, clk_selector_in, is_stop_watch_in, btn_min_clk_in, normal_hour_clk, btn_hour_clk_in)
  begin
    if is_stop_watch_in or clk_selector_in = '0' then
      min_clk <= normal_min_clk_in;
      hour_clk <= normal_hour_clk;
    else
      min_clk <= btn_min_clk_in;
      hour_clk <= btn_hour_clk_in;
    end if;
  end process;
end architecture;