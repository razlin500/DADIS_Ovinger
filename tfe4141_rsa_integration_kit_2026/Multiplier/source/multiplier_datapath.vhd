library ieee;
use ieee.std_logic_1164.all;

entity multiplier is
	port (
		-- System interface
		clk		: in std_logic;
		reset_n : in std_logic;

		-- Datapath / Control interface
		a_enable : in std_logic;
		b_enable : in std_logic;
		
		-- Input interface
		a		: in std_logic_vector(255 downto 0);
		b		: in std_logic_vector(255 downto 0);

		-- Output interface
		out_r	: out std_logic_vector(255 downto 0);

	);
end multiplier;


architecture mulBehave of multiplier is
	signal a_r : std_logic_vector(255 downto 0);
	signal a_p : std_logic_vector(255 downto 0);

	signal b_r : std_logic_vector(255 downto 0);
	signal b_p : std_logic_vector(255 downto 0);

begin
	-- A & B registers
    process(clk, a_enable, b_enable)
    begin
        if(clk'event and clk='1') then
			if a_enable = '1' then
				a_r <= a;

			elsif a_enable = '0' then
				a_r <= a_p;
			end  if;

			if b_enable = '1' then
				b_r <= b;
			
			elsif b_enable = '0' then
				b_r <= b_p;
			end if;
		end if;
	end process;

	-- 

end mulBehave;
