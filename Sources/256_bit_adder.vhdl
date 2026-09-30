-- Kommer det her med?
-- Ja

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity giga_adder is
port (
    clk :       in std_logic;
    reset_n :   in std_logic;
    
    in_a :      in std_logic_vector(255 downto 0);
    in_b :      in std_logic_vector(255 downto 0);
    
    out_s : out std_logic_vector(255 downto 0);
    out_c : out std_logic
    );
    
end giga_adder;

architecture rtl of giga_adder is

    signal a_r : std_logic_vector(255 downto 0);
    signal b_r : std_logic_vector(255 downto 0);
    signal s : std_logic_vector(256 downto 0);
    signal out_s_r : std_logic_vector(255 downto 0);
    signal out_c_r : std_logic;
    
begin
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            a_r <= (others => '0');
            b_r <= (others => '0');
        
        elsif(clk'event and clk='1') then
            a_r <= in_a;
            b_r <= in_b;
        end if;
    end process;
    
    process(a_r, b_r)
    begin
        s <= std_logic_vector(
        resize(unsigned(a_r), 257) + resize(unsigned(b_r), 257)
        );
    end process;

    process(clk, s)
    begin
        if(clk'event and clk='1') then
            out_s_r <= s(255 downto 0);
            out_c_r <= s(256);
        end if;
            
    end process;

    out_s <= out_s_r;
    out_c <= out_c_r;

end rtl;