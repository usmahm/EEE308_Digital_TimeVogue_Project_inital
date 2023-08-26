library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DigitalClock is
  port (
    KEY_0, KEY_1, SW_9, CLK_FPGA      : in std_logic;
    HEX_5, HEX_4, HEX_3, HEX_2, HEX_1 : out std_logic_vector(6 downto 0)
  );
end entity;

architecture logic of DigitalClock is
  component seven_seg is
    port(
      number : in std_logic_vector(3 downto 0);
      seven  : out std_logic_vector(6 downto 0)
    );
  end component seven_seg;

  signal incMinute, incHour : std_logic;
  signal min_tens, min_unit, hour_tens, hour_unit : std_logic_vector(3 downto 0);
  signal s_min_tens, s_min_unit, s_hour_tens, s_hour_unit, s_blinker : std_logic_vector(6 downto 0);
begin
  incMinute <= KEY_0;
  incHour <= KEY_1;

  hour_tens_seg : seven_seg port map(number => "0011", seven => s_hour_tens);
  hour_unit_seg : seven_seg port map(number => "0100", seven => s_hour_unit);
  min_tens_seg : seven_seg port map(number => "0000", seven => s_min_tens);
  min_unit_seg : seven_seg port map(number => "0001", seven => s_min_unit);
  -- hour_tens_seg : seven_seg port map(number => hour_tens, seven => s_hour_tens);
  -- hour_unit_seg : seven_seg port map(number => hour_unit, seven => s_hour_unit);
  -- min_tens_seg : seven_seg port map(number => min_tens, seven => s_min_tens);
  -- min_unit_seg : seven_seg port map(number => min_unit, seven => s_min_unit);

  process(CLK_FPGA, incHour, incMinute, SW_9)
    variable update_count, point : std_logic := '0';
  begin

    if point = '0' then
      s_blinker <= "0000000";
    else
      s_blinker <= "1001111";
    end if;
  end process;


  HEX_5 <= s_hour_tens;
  HEX_4 <= s_hour_unit;
  HEX_2 <= s_min_tens;
  HEX_1 <= s_min_unit;
  HEX_3 <= "1001111";
  -- HEX_3 <= s_blinker;
end architecture;