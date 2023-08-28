library ieee;
use ieee.std_logic_1164.all;

entity time_buffer is
  port(
    CLK_FPGA_IN                                            : in std_logic;
    min_unit_in, min_tens_in, hour_unit_in, hour_tens_in   : in std_logic_vector(3 downto 0);
    min_unit_out, min_tens_out, hour_unit_out, hour_tens_out : out std_logic_vector(min_unit_in'range)
  );
end entity;

architecture controller of time_buffer is
begin
  process(CLK_FPGA_IN)
  begin
    if rising_edge(CLK_FPGA_IN) then 
      min_unit_out <= min_unit_in;
      min_tens_out <= min_tens_in;
      hour_unit_out <= hour_unit_in;
      hour_tens_out <= hour_tens_in;
    end if;
  end process;
end architecture;