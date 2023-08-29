library ieee;
use ieee.std_logic_1164.all;

-- Not working yet
entity ledr_flash is
  port(
    clk_fpga_in, reset                                           : in std_logic;
    l_st_min_unit, l_st_min_tens, l_st_hour_tens, l_st_hour_unit : in std_logic_vector(3 downto 0);
    ledr_val_in                                                  : in std_logic_vector(9 downto 0);
    ledr_val_out                                                 : out std_logic_vector(ledr_val_in'range)
  );
end entity;

architecture logic of ledr_flash is
begin
  process(clk_fpga_in, l_st_min_unit, l_st_min_tens, l_st_hour_tens, l_st_hour_unit)
    -- changed is to prevent the led from flashing on setup when all signals are 0
    variable changed : boolean := false;
  begin
    if not changed then
      changed := (l_st_min_unit & l_st_min_tens) /= "0000" or (l_st_hour_tens & l_st_hour_unit) /= "0000";
    end if;

    if rising_edge(clk_fpga_in) then
      if reset = '1' then
        changed := false;
      end if;

      if changed then
        if (l_st_min_unit & l_st_min_tens) = "0000" and (l_st_hour_tens & l_st_hour_unit) = "0000" then
          ledr_val_out <= not ledr_val_in;
        end if;
      end if;
    end if;
  end process;
end architecture;