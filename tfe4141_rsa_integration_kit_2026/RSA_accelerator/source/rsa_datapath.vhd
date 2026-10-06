library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity datapath is
port (
    -- System interface
    clk             : in std_logic;
    reset_n         : in std_logic;
    
    -- rsa_regio interface
    key_n           : in std_logic_vector(C_BLOCK_SIZE-1 downto 0);    
    key_e           : in std_logic_vector(C_BLOCK_SIZE-1 downto 0);

    -- rsa_msgin interface
    msgin_data      : in std_logic_vector(C_BLOCK_SIZE-1 downto 0);

    -- rsa_msgout interface
    msgout_data     : out std_logic_vector(C_BLOCK_SIZE-1 downto 0);
    
    -- Datapath/Controller interface
    calc_done       : out std_logic;
    accept_input    : in std_logic;
    update_output   : in std_logic; --Kopiert fra våre slides. Denne er vel ikke nødvendig for outputtet kan bare være midlertidige utregninger som ikke vil bli lest av resten av systemet før msgout_valid er høy. -Kris
    );
    
end datapath;

architecture rtl of datapath is

begin

end rtl;