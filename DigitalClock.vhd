library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DigitalClock is
  port (
    KEY_0, KEY_1, SW_9, SW_8, CLK_FPGA : in std_logic;
    HEX_5, HEX_4, HEX_3, HEX_2, HEX_1  : out std_logic_vector(6 downto 0);
    LEDR                               : out std_logic_vector(9 downto 0)
  );
end entity;

architecture logic of DigitalClock is
    -- Converts FPGA 50MHz clock to 1Hz and 2Hz internal clock(seconds)
  component fifty_mhz_1hz_2hz is
    port(
      CLK_FPGA_IN                                    : in std_logic;
      one_hz_clk_out, two_hz_clk_out, ten_hz_clk_out : out std_logic
    );
  end component;

  -- Controller for blinking seconds indicator every 25e6 cycles which corresponds to 0.5 seconds
  component second_indicator is 
    port(
      clk, is_on : in std_logic;
      blinker    : out std_logic_vector(6 downto 0)
    );
  end component;

  -- binary representation of number to seven segment controller
  component seven_seg is
    port(
      number : in std_logic_vector(3 downto 0);
      seven  : out std_logic_vector(6 downto 0)
    );
  end component seven_seg;

  component ledr_flash is
    port(
      clk_fpga_in, reset                                           : in std_logic;
      l_st_min_unit, l_st_min_tens, l_st_hour_tens, l_st_hour_unit : in std_logic_vector(3 downto 0);
      ledr_val_in                                                  : in std_logic_vector(9 downto 0);
      ledr_val_out                                                 : out std_logic_vector(ledr_val_in'range)
    );
  end component;

  -- Selects what to pass to the output(7 segment display)
  component mux_select is
    port(
      CLK_FPGA_IN, selector                                    : in std_logic;
      min_unit_1_in, min_tens_1_in, hr_unit_1_in, hr_tens_1_in : in std_logic_vector(3 downto 0);
      min_unit_2_in, min_tens_2_in, hr_unit_2_in, hr_tens_2_in : in std_logic_vector(3 downto 0);
      hr_unit_out, hr_tens_out, min_unit_out, min_tens_out     : out std_logic_vector(hr_tens_1_in'range)
    );
  end component;

  -- Controller for incrementing time HH:MM
  component time_incrementer is
    port(
      is_stop_watch_in                                                         : in boolean;
      clk_selector_in, normal_min_clk_in, btn_min_clk_in, btn_hour_clk_in      : in std_logic;
      t_min_unit_in, t_min_tens_in, t_hour_tens_in, t_hour_unit_in             : in std_logic_vector(3 downto 0);
      new_min_unit_out, new_min_tens_out, new_hour_tens_out, new_hour_unit_out : out std_logic_vector(3 downto 0)
    );
  end component;

  component stop_watch is
    port(
      is_stop_watch_in                                                     : in boolean;
      clk_selector_in, normal_min_clk_in, btn_min_clk_in, btn_hour_clk_in  : in std_logic;
      st_min_unit_in, st_min_tens_in, st_hour_tens_in, st_hour_unit_in     : in std_logic_vector(3 downto 0);
      st_min_unit_out, st_min_tens_out, st_hour_tens_out, st_hour_unit_out : out std_logic_vector(3 downto 0)
    );
  end component;

  signal incr_min, incr_hr, clk_selector : std_logic;
  signal is_stop_watch : boolean;
  signal one_hz_clk, two_hz_clk, ten_hz_clk, normal_min_clk, btn_min_clk, btn_hour_clk : std_logic := '0';
  signal minute_tens, minute_unit, hour_tens, hour_unit : std_logic_vector(3 downto 0);

  signal t_incr_min_tens, t_incr_min_unit, t_incr_hour_tens, t_incr_hour_unit : std_logic_vector(3 downto 0);
  signal st_min_tens, st_min_unit, st_hour_tens, st_hour_unit : std_logic_vector(3 downto 0);

  signal s_min_tens, s_min_unit, s_hour_tens, s_hour_unit, s_blinker : std_logic_vector(6 downto 0);
  signal ledr_val : std_logic_vector(LEDR'range) := "0000000000";
  -- signal blinker_on 
begin
  incr_min <= KEY_0;
  incr_hr <= KEY_1;
  clk_selector <= SW_9;

  hour_tens_seg : seven_seg port map(number => hour_tens, seven => s_hour_tens);
  hour_unit_seg : seven_seg port map(number => hour_unit, seven => s_hour_unit);
  min_tens_seg : seven_seg port map(number => minute_tens, seven => s_min_tens);
  min_unit_seg : seven_seg port map(number => minute_unit, seven => s_min_unit);

  one_hz : fifty_mhz_1hz_2hz port map(
    CLK_FPGA_IN => CLK_FPGA,
    one_hz_clk_out => one_hz_clk,
    two_hz_clk_out => two_hz_clk,
    ten_hz_clk_out => ten_hz_clk
  );

  s_ind : second_indicator port map(
    clk => two_hz_clk,
    is_on => SW_9,
    blinker => s_blinker
  );

  t_incrementer : time_incrementer port map(
    clk_selector_in => clk_selector,
    normal_min_clk_in => normal_min_clk,
    btn_min_clk_in => btn_min_clk,
    btn_hour_clk_in => btn_hour_clk,
    t_min_unit_in => t_incr_min_unit,
    t_min_tens_in => t_incr_min_tens, 
    t_hour_unit_in => t_incr_hour_unit,
    t_hour_tens_in => t_incr_hour_tens, 
    is_stop_watch_in => is_stop_watch,

    new_min_unit_out => t_incr_min_unit,
    new_min_tens_out => t_incr_min_tens,
    new_hour_unit_out => t_incr_hour_unit,
    new_hour_tens_out => t_incr_hour_tens
  );

  st_watch : stop_watch port map(
    clk_selector_in => clk_selector,
    normal_min_clk_in => normal_min_clk,
    btn_min_clk_in => btn_min_clk,
    btn_hour_clk_in => btn_hour_clk,
    st_min_unit_in => st_min_unit,
    st_min_tens_in => st_min_tens, 
    st_hour_unit_in => st_hour_unit,
    st_hour_tens_in => st_hour_tens, 
    is_stop_watch_in => is_stop_watch,
    
    st_min_unit_out => st_min_unit,
    st_min_tens_out => st_min_tens,
    st_hour_unit_out => st_hour_unit,
    st_hour_tens_out => st_hour_tens
  );

  mux_selector : mux_select port map(
    CLK_FPGA_IN => CLK_FPGA,
    selector => SW_8,
    min_unit_1_in => t_incr_min_unit,
    min_tens_1_in => t_incr_min_tens,
    hr_unit_1_in => t_incr_hour_unit,
    hr_tens_1_in =>t_incr_hour_tens ,
    min_unit_2_in => st_min_unit,
    min_tens_2_in => st_min_tens,
    hr_unit_2_in => st_hour_unit,
    hr_tens_2_in => st_hour_tens,
    hr_unit_out => hour_unit,
    hr_tens_out => hour_tens,
    min_unit_out =>minute_unit ,
    min_tens_out => minute_tens
  );

  ledr_fl : ledr_flash port map(
    clk_fpga_in => CLK_FPGA,
    reset => KEY_0,
    l_st_min_unit => st_min_unit,
    l_st_min_tens => st_min_tens,
    l_st_hour_tens => st_hour_tens,
    l_st_hour_unit => st_hour_unit,
    ledr_val_in => ledr_val,
    ledr_val_out => ledr_val
  );

  process(clk_selector, one_hz_clk, two_hz_clk, incr_min, incr_hr)
    variable seconds : integer range 0 to 100 := 0;
  begin
    if rising_edge(one_hz_clk) then
      if clk_selector = '0' then
        seconds := seconds + 1;
        
        if seconds >= 60 then
          normal_min_clk <= '1';
          seconds := 0;
        else
          normal_min_clk <= '0';
        end if;
      elsif clk_selector = '1' then
        seconds := 0;
      end if;
    end if;

    if rising_edge(ten_hz_clk) then
      if clk_selector = '1' then
        btn_hour_clk <= '0';
        btn_min_clk <= '0';

        if incr_hr = '0' and incr_min = '0' then
          -- hour_unit <= (others => '0');
          -- hour_tens <= (others => '0');
          -- minute_unit <= (others => '0');
          -- minute_tens <= (others => '0');
        elsif incr_hr = '0' then
          btn_hour_clk <= '1';
        elsif incr_min = '0' then
          btn_min_clk <= '1';
        end if;
      end if;
    end if;
  end process;

  is_stop_watch <= true when SW_8 = '1' else false;

  HEX_5 <= s_hour_tens;
  HEX_4 <= s_hour_unit;
  HEX_2 <= s_min_tens;
  HEX_1 <= s_min_unit;
  HEX_3 <= s_blinker;
  LEDR <= ledr_val;
end architecture;