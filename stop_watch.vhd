library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stop_watch is
  port(
    is_stop_watch_in                                                     : in boolean;
    clk_selector_in, normal_min_clk_in, btn_min_clk_in, btn_hour_clk_in  : in std_logic;
    st_min_unit_in, st_min_tens_in, st_hour_tens_in, st_hour_unit_in     : in std_logic_vector(3 downto 0);
    st_min_unit_out, st_min_tens_out, st_hour_tens_out, st_hour_unit_out : out std_logic_vector(3 downto 0)
  );
end entity;

architecture logic of stop_watch is
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
      min_clk_in                    : in std_logic;
      should_decrement, hr_grt_0_in : in boolean;
      min_tens_in, min_unit_in      : in std_logic_vector(3 downto 0);
      min_tens_out, min_unit_out    : out std_logic_vector(min_tens_in'range);
      hour_clk_out                  : out std_logic
    );
  end component;

  signal min_clk, hour_clk : std_logic;  
  signal normal_hour_clk : std_logic;
  signal decrement, hr_grt_0 : boolean;
begin
  hr_controller : hour_controller port map(
    hour_clk_in => hour_clk,
    should_decrement => decrement,
    is_stop_watch => is_stop_watch_in,
    hr_tens_in => st_hour_tens_in,
    hr_unit_in => st_hour_unit_in,
    hr_tens_out => st_hour_tens_out,
    hr_unit_out => st_hour_unit_out
  );

  min_controller : minute_controller port map(
    min_clk_in => min_clk,
    should_decrement => decrement,
    min_tens_in => st_min_tens_in,
    min_unit_in => st_min_unit_in,
    min_tens_out => st_min_tens_out,
    min_unit_out => st_min_unit_out,
    hour_clk_out => normal_hour_clk,
    hr_grt_0_in => hr_grt_0
  );

  process(normal_min_clk_in, clk_selector_in, is_stop_watch_in, btn_min_clk_in, normal_hour_clk, btn_hour_clk_in)
  begin
    if is_stop_watch_in and clk_selector_in = '1' then
      min_clk <= btn_min_clk_in;
      hour_clk <= btn_hour_clk_in;
    else      
      min_clk <= normal_min_clk_in;
      hour_clk <= normal_hour_clk;
    end if;
  end process;

  -- decrements only when stop watch is counting, else it should increase when setting
  decrement <= false when clk_selector_in = '1' else true;
  
  hr_grt_0 <= true when (st_hour_tens_in & st_hour_unit_in) /= "00000000" else false;
end architecture;