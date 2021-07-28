library IEEE;
use IEEE.std_logic_1164.all;

entity rand_num is
port(
    clk, res: in std_logic;
    q_out: out std_logic_vector(7 downto 0)
);
end entity;

architecture arch of rand_num is

    component flsr is
        port (
            clk : in std_logic;
            res : in std_logic;
            qi  : out  std_logic_vector(11 downto 0); 
            qout : out std_logic_vector(1 downto 0)
        );
    end component;

    signal n: std_logic_vector(1 downto 0);

    begin
        flsr_2: flsr port map(clk, res, open, n);

        q_out <= "000000" & n;


end arch ; -- arch