-- Controller for the seconds blinker
library ieee;
use ieee.std_logic_1164.all;

entity second_indicator is 
  port(
    clk, is_on : in std_logic;
    blinker    : out std_logic_vector(6 downto 0)
  );
end entity;

architecture controller of second_indicator is
begin
  process(clk, is_on)
    variable point : std_logic := '0';
  begin
    if rising_edge(clk) then
      if is_on = '0' then
        point := not point;
      else
        point := '1';
      end if;
    end if;

    if point = '0' then
      blinker <= (others => '1');
    else
      blinker <= "0111111";
    end if;
  end process;
end architecture;
