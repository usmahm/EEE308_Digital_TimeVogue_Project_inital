library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity time_incrementer is
  port(
    minute_clk                                             : in std_logic;
    new_min_unit, new_min_tens, new_hour_tens, new_hour_unit : inout std_logic_vector(3 downto 0)
  );
end entity;

architecture logic of time_incrementer is
  -- Controls incrementing hour count
  component hour_controller is
    port(
      increment_hour_in : in std_logic;
      hr_tens, hr_unit : inout std_logic_vector(3 downto 0)
    );
  end component;

  -- Controls incrementing minute count
  component minute_controller is
    port(
      min_clk     : in std_logic;
      min_tens, min_unit   : inout std_logic_vector(3 downto 0);
      incr_hour       : out std_logic
    );
  end component;

  signal increment_hour, increment_minute : std_logic;
begin
  hr_controller : hour_controller port map(
    increment_hour_in => increment_hour,
    hr_tens => new_hour_tens,
    hr_unit => new_hour_unit
  );

  min_controller : minute_controller port map(
    min_clk => minute_clk,
    min_tens => new_min_tens,
    min_unit => new_min_unit,
    incr_hour => increment_hour
  );
end architecture;