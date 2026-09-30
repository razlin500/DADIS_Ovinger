library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity giga_adder_tb is
--  Port ( );
end giga_adder_tb;

architecture behavioral of giga_adder_tb is

  -- Constants
  constant COUNTER_WIDTH : natural := 8;
  constant CLK_PERIOD    : time := 10 ns;
  constant RESET_TIME    : time := 10 ns;

  -- Clocks and resets 
  signal clk            : std_logic := '0';
  signal reset_n        : std_logic := '0';

  -- Data input interface           
  signal in_a  : std_logic_vector(255 downto 0);
  signal in_b  : std_logic_vector(255 downto 0);
           
  -- Data output interface           
  signal out_s : std_logic_vector(255 downto 0);
  signal out_c : std_logic;

begin

  -- DUT instantiation
  dut: entity work.giga_adder 
    port map (
    
      -- Clocks and resets 
      clk            => clk, 
      reset_n        => reset_n, 
  
      -- Data input interface           
      in_a           => in_a,
      in_b           => in_b,
    
      out_s          => out_s,
      out_c          => out_c
         
    );

  -- Clock generation
  clk <= not clk after CLK_PERIOD/2;

  -- Reset generation
  reset_proc: process
  begin
    wait for RESET_TIME;
    reset_n <= '1';
    wait;
  end process;

  -- Stimuli generation
  stimuli_proc: process
  begin
  
  wait for 10*CLK_PERIOD;
  in_a <= x"F111111111111111111111111111111111111111111111111111111111111111";
  in_b <= x"1111111111111111111111111111111111111111111111111111111111111111";
  
    --wait for 5*CLK_PERIOD;
    -- Wait for results
    wait;
  end process;  


end Behavioral;
