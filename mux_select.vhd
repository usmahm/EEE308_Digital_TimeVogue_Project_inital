library ieee;
use ieee.std_logic_1164.all;

entity mux_select is
  port(
    CLK_FPGA_IN, selector                      : in std_logic;
    tens_1_in, unit_1_in, tens_2_in, unit_2_in : in std_logic_vector(3 downto 0);
    tens_out, unit_out                         : out std_logic_vector(tens_1_in'range)
  );
end entity;

architecture selector of mux_select is
begin
  process(CLK_FPGA_IN, selector)
  begin
    if rising_edge(CLK_FPGA_IN) then
      if selector = '1' then 
        tens_out <= tens_1_in;
        unit_out <= unit_1_in;
      else
        tens_out <= tens_2_in;
        unit_out <= unit_2_in;
      end if;
    end if;
  end process;
end architecture;