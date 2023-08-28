library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity time_incrementer is
  port(
    clk_selector, minute_clk, btn_min_clk, btn_hour_clk                      : in std_logic;
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

  signal hour_clk, min_clk_in, hour_clk_in : std_logic;
begin
  min_clk_in <= minute_clk when clk_selector = '1' else btn_min_clk;
  hour_clk_in <= hour_clk when clk_selector = '1' else btn_hour_clk;
 
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
    incr_hour => hour_clk
  );
end architecture;