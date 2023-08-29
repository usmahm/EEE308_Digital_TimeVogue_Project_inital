library ieee;
use ieee.std_logic_1164.all;

entity mux_select is
  port(
    CLK_FPGA_IN, selector                                    : in std_logic;
    min_unit_1_in, min_tens_1_in, hr_unit_1_in, hr_tens_1_in : in std_logic_vector(3 downto 0);
    min_unit_2_in, min_tens_2_in, hr_unit_2_in, hr_tens_2_in : in std_logic_vector(3 downto 0);
    hr_unit_out, hr_tens_out, min_unit_out, min_tens_out     : out std_logic_vector(hr_tens_1_in'range)
  );
end entity;

architecture selector of mux_select is
begin
  process(CLK_FPGA_IN, selector)
  begin
    if rising_edge(CLK_FPGA_IN) then
      if selector = '0' then 
        hr_unit_out <= hr_unit_1_in;
        hr_tens_out <= hr_tens_1_in;
        min_unit_out <= min_unit_1_in;
        min_tens_out <= min_tens_1_in;
      else
        hr_unit_out <= hr_unit_2_in;
        hr_tens_out <= hr_tens_2_in;
        min_unit_out <= min_unit_2_in;
        min_tens_out <= min_tens_2_in;
      end if;
    end if;
  end process;
end architecture;