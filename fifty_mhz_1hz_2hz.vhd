library ieee;
use ieee.std_Logic_1164.all;

entity fifty_mhz_1hz_2hz is
  port(
    CLK_FPGA_IN                                    : in std_logic;
    one_hz_clk_out, two_hz_clk_out, ten_hz_clk_out : out std_logic
  );
end entity;

architecture converter of fifty_mhz_1hz_2hz is
begin
  process(CLK_FPGA_IN)
    variable fpga_cycle_count, fpga_cycle_count_2, fpga_cycle_count_3 : integer range 0 to 100e6 := 0;
  begin
    if rising_edge(CLK_FPGA_IN) then
      -- 50Mhz to 1Hz converter - goes to high every 50e6 cycles
      if fpga_cycle_count >= 50e6 then
        fpga_cycle_count := 0;
        one_hz_clk_out <= '1';
      else
        fpga_cycle_count := fpga_cycle_count + 1;
        one_hz_clk_out <= '0';
      end if;

      -- 50Mhz to 2Hz converter - goes to high every 25e6 cycles
      if fpga_cycle_count_2 >= 25e6 then
        fpga_cycle_count_2 := 0;
        two_hz_clk_out <= '1';
      else
        fpga_cycle_count_2 := fpga_cycle_count_2 + 1;
        two_hz_clk_out <= '0';
      end if;

      -- 50Mhz to 10Hz converter - goes to high every 25e6 cycles
      if fpga_cycle_count_3 >= 25e5 then
        fpga_cycle_count_3 := 0;
        ten_hz_clk_out <= '1';
      else
        fpga_cycle_count_3 := fpga_cycle_count_3 + 1;
        ten_hz_clk_out <= '0';
      end if;
    end if;
  end process;
end architecture;
