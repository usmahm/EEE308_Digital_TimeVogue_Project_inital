library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hour_controller is
  port(
    hour_clk_in                        : in std_logic;
    should_decrement, is_stop_watch    : in boolean;
    hr_tens_in, hr_unit_in             : in std_logic_vector(3 downto 0);
    hr_tens_out, hr_unit_out           : out std_logic_vector(hr_tens_in'range)
  );
end entity;

architecture controller of hour_controller is
  signal hr_unit_int, hr_tens_int : natural;
begin
  
  process(hour_clk_in)
    variable tens_check_value, unit_check_value : integer;
  begin
    if is_stop_watch then
      tens_check_value := 9;
      unit_check_value := 9;
    else
      tens_check_value := 2;
      unit_check_value := 3;
    end if;

    hr_unit_int <= to_integer(unsigned(hr_unit_in));
    hr_tens_int <= to_integer(unsigned(hr_tens_in));

    if rising_edge(hour_clk_in) then
      -- should_decrement would be low for normal time and high for stopwatch
      if not should_decrement then
        -- it's a 24 hours clock, hence if hr_tens_out is 1, we can
        -- increment hr_units up to 9(e.g 19:00) else, we can only increment up to 3(e.g 23:59)
        if hr_tens_int /= tens_check_value then
          if hr_unit_int /= 9 then
            hr_unit_out <= std_logic_vector(unsigned(hr_unit_in) + 1);
          else
            hr_unit_out <= (others => '0');
            hr_tens_out <= std_logic_vector(unsigned(hr_tens_in) + 1);
          end if;
        else
            if hr_unit_int /= unit_check_value then
              hr_unit_out <= std_logic_vector(unsigned(hr_unit_in) + 1);
            else
              hr_unit_out <= (others => '0');
              hr_tens_out <= (others => '0');
            end if;
        end if;
      
      elsif should_decrement then
        if hr_unit_int > 0 then
          hr_unit_out <= std_logic_vector(unsigned(hr_unit_in) - 1);
        else
          if hr_tens_int > 0 then
            hr_tens_out <= std_logic_vector(unsigned(hr_tens_in) - 1);
            hr_unit_out <= "1001";
          end if;
        end if;
      end if;
    end if;
  end process;
end architecture;
