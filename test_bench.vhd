library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

ENTITY testbench IS
END ENTITY testbench;

ARCHITECTURE testbench_behaviour OF testbench IS 
  component DigitalClock is
    port (
      KEY_0, KEY_1, SW_9, CLK_FPGA      : in std_logic;
      HEX_5, HEX_4, HEX_3, HEX_2, HEX_1 : out std_logic_vector(6 downto 0)
    );
  end component;

	SIGNAL s_clk : std_logic := '0';
	SIGNAL s_Q   : integer RANGE 3 TO 129 := 3;
  
  signal s_SW_9, s_KEY_0, s_KEY_1, s_CLK_FPGA        : std_logic;
  signal s_HEX_5, s_HEX_4, s_HEX_3, s_HEX_2, s_HEX_1 : std_logic_vector(6 downto 0);
BEGIN
	-- c1 : Counter PORT MAP(
	-- 			clk => s_clk,
	-- 			Q   => s_Q
	-- 		);
  d1 : DigitalClock port map(
    KEY_0 => s_KEY_0, KEY_1 => s_KEY_1, SW_9 => s_SW_9, CLK_FPGA => s_CLK_FPGA,
    HEX_5 => s_HEX_5, HEX_4 => s_HEX_4, HEX_3 => s_HEX_3, HEX_2 => s_HEX_2, HEX_1 => s_HEX_1 
  );

	test_bench: PROCESS
	BEGIN
    s_SW_9 <= '1';

		FOR i IN 0 TO 20 LOOP
			wait FOR 2 ns;
			s_CLK_FPGA <= NOT s_CLK_FPGA;
		END LOOP;

    wait FOR 2 ns;
    s_SW_9 <= '0';

    -- FOR i IN 0 TO 13 LOOP
    --   wait FOR 2 ns;
    --   s_CLK_FPGA <= NOT s_CLK_FPGA;
    -- END LOOP;

    wait FOR 2 ns;
    s_KEY_0 <= '0';
    wait FOR 2 ns;
    s_KEY_0 <= '1';
    wait FOR 2 ns;
    s_KEY_0 <= '0';
    wait FOR 2 ns;
    s_KEY_0 <= '1';

    wait FOR 2 ns;
    s_KEY_1 <= '0';
    wait FOR 2 ns;
    s_KEY_1 <= '1';
    wait FOR 2 ns;
    s_KEY_1 <= '0';
    wait FOR 2 ns;
    s_KEY_1 <= '1';
    wait FOR 2 ns;
    s_KEY_1 <= '0';
    wait FOR 2 ns;
    s_KEY_1 <= '1';



	END PROCESS;
END ARCHITECTURE testbench_behaviour;