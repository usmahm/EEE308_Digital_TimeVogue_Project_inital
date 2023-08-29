library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stop_watch is
  port(
    clk_selector_in, normal_min_clk_in, btn_min_clk_in, btn_hour_clk_in      : in std_logic;
    t_min_unit_in, t_min_tens_in, t_hour_tens_in, t_hour_unit_in             : in std_logic_vector(3 downto 0);
    new_min_unit_out, new_min_tens_out, new_hour_tens_out, new_hour_unit_out : out std_logic_vector(3 downto 0)
  );
end entity;

architecture logic of stop_watch is
  -- Controls incrementing hour count
  component hour_controller is
    port(
      hour_clk_in               : in std_logic;
      should_decrement          : in boolean;
      hr_tens_in, hr_unit_in    : in std_logic_vector(3 downto 0);
      hr_tens_out, hr_unit_out  : out std_logic_vector(hr_tens_in'range)
    );
  end component;

  -- Controls incrementing minute count
  component minute_controller is
    port(
      min_clk_in                  : in std_logic;
      should_decrement, hr_grt_0  : in boolean;
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
    hr_grt_0 => false --Won't be used since should_decrement = 0
  );

  min_clk <= normal_min_clk_in when clk_selector_in = '1' else btn_min_clk_in;
  hour_clk <= normal_hour_clk when clk_selector_in = '1' else btn_hour_clk_in;
end architecture;