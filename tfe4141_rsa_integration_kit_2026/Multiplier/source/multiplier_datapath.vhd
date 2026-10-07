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
	signal a_d : std_logic_vector(255 downto 0);
	signal a_q : std_logic_vector(255 downto 0);

	signal b_r : std_logic_vector(255 downto 0);
	signal b_d : std_logic_vector(255 downto 0);
	signal b_q : std_logic_vector(255 downto 0);

begin
	-- ### A & B ###
	-- Muxes
	process(a, a_q, a_enable, b, b_q, b_enable)
	begin
		a_d <= a when a_enable='1' else a_q;
		b_d <= b when b_enable='1' else b_q;
	end process;

	-- Registers
    process(clk, a_d, b_d)
    begin
        if(clk'event and clk='1') then
			a_r <= a_d;
			b_r <= b_d;
		end if;
	end process;

	process(a_r, b_r)
	begin
		a_q <= a_r;
		b_q <= b_r;
	end process;

	-- ### ###

	-- ### Noe mer ###
	process()
	end process;
	-- ### ###

end mulBehave;
