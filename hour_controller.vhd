library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hour_controller is
  port(
    increment_hour_in         : in std_logic;
    hr_tens_in, hr_unit_in    : in std_logic_vector(3 downto 0);
    hr_tens_out, hr_unit_out  : out std_logic_vector(hr_tens_in'range)
  );
end entity;

architecture controller of hour_controller is
begin
  process(increment_hour_in, hr_tens_in, hr_unit_in)
  begin
    if rising_edge(increment_hour_in) then
      -- it's a 24 hours clock, hence if hr_tens_out is 1, we can
      -- increment hr_units up to 9(e.g 19:00) else, we can only increment up to 3(e.g 23:59)
      if hr_tens_in /= "0010" then
        if hr_unit_in /= "1001" then
          hr_unit_out <= std_logic_vector(unsigned(hr_unit_in) + 1);
        else
          hr_unit_out <= (others => '0');
          hr_tens_out <= std_logic_vector(unsigned(hr_tens_in) + 1);
        end if;
      else
          if hr_unit_in /= "0011" then
            hr_unit_out <= std_logic_vector(unsigned(hr_unit_in) + 1);
          else
            hr_unit_out <= (others => '0');
            hr_tens_out <= (others => '0');
          end if;
      end if;
    end if;
  end process;
end architecture;
