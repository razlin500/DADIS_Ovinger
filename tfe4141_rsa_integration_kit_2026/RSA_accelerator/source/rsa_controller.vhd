library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity controller is
port (
    -- System interface
    clk             : in std_logic;
    reset_n         : in std_logic;

    -- rsa_regio interface
    rsa_status      : out std_logic_vector(31 downto 0);
    
    -- rsa_msgin interface
    msgin_valid     : in std_logic;
    msgin_ready     : out std_logic;
    msgin_last      : in std_logic;

    -- rsa_msgout interface
    msgout_valid    : out std_logic;
    msgout_ready    : in std_logic;
    msgout_last     : out std_logic;

    -- Datapath/Controller interface
    calc_done       : in std_logic;
    accept_input    : out std_logic;
    update_output   : out std_logic; --Kopiert fra våre slides. Denne er vel ikke nødvendig for outputtet kan bare være midlertidige utregninger som ikke vil bli lest av resten av systemet før msgout_valid er høy. -Kris
    );
    
end controller;

architecture rtl of controller is
    
begin

end rtl;