library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- hour_clk_out should be used to increment hour in parent component if you want the minute controller to
-- handle incrementing hour. Else, just map to an ignored signal;
entity minute_controller is
  port(
    min_clk_in                  : in std_logic;
    should_decrement, hr_grt_0_in  : in boolean;
    min_tens_in, min_unit_in    : in std_logic_vector(3 downto 0);
    min_tens_out, min_unit_out  : out std_logic_vector(min_tens_in'range);
    hour_clk_out                : out std_logic
  );
end entity;

architecture controller of minute_controller is
  signal min_unit_int, min_tens_int : natural;
begin
  process(min_clk_in, min_tens_in, min_unit_in)
  begin
    min_unit_int <= to_integer(unsigned(min_unit_in));
    min_tens_int <= to_integer(unsigned(min_tens_in));
  
    if rising_edge(min_clk_in) then
      -- should_decrement would be false for normal time and true for stopwatch
      if not should_decrement then
        hour_clk_out <= '0';
        
        -- if minute units is less than 9, increment, else go to 0
        if min_unit_in /= "1001" then
          min_unit_out <= std_logic_vector(unsigned(min_unit_in) + 1);
        else
          min_unit_out <= (others => '0');
    
          -- keep incrementing minute tens so far it's less than 5, else set to 0
          if min_tens_in /= "0101" then
            min_tens_out <= std_logic_vector(unsigned(min_tens_in) + 1);
          else
            min_tens_out <= (others => '0');
  
            hour_clk_out <= '1';
          end if;
        end if;
      elsif should_decrement then
        if min_unit_int > 0 then
          min_unit_out <= std_logic_vector(unsigned(min_unit_in) - 1);

          if min_tens_int = 0 and min_unit_int = 1 and hr_grt_0_in then
            min_tens_out <= "0101";
            min_unit_out <= "1001";

            hour_clk_out <= '1';
          end if;
        elsif min_tens_int > 0 then
          min_tens_out <= std_logic_vector(unsigned(min_tens_in) - 1);
          min_unit_out <= "1001";
        end if;
      end if;
    end if;
  end process;
end architecture;
