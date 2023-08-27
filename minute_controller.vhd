library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- incr_hour should be used to increment hour in parent component if you want the minute controller to
-- handle incrementing hour. Else, just map to an ignored signal;
entity minute_controller is
  port(
    min_clk                    : in std_logic;
    min_tens_in, min_unit_in   : in std_logic_vector(3 downto 0);
    min_tens_out, min_unit_out : out std_logic_vector(min_tens_in'range);
    incr_hour                  : out std_logic
  );
end entity;

architecture controller of minute_controller is
begin
  process(min_clk, min_tens_in, min_unit_in)
  begin
    if rising_edge(min_clk) then
      incr_hour <= '0';
      
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

          incr_hour <= '1';
        end if;
      end if;
    end if;
  end process;
end architecture;
