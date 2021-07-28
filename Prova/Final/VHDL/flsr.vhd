library IEEE;
use IEEE.std_logic_1164.all;

entity flsr is
port (
    clk : in std_logic;
    res : in std_logic;
    qi  : out  std_logic_vector(11 downto 0); 
    qout : out std_logic_vector(1 downto 0)
);
end entity;

architecture arch of flsr is

    component d_reg is 
	generic (t_ff: time := 2 ns);
	port
	(
	clk  : in  STD_LOGIC;
	load : in  STD_LOGIC;			
	d    : in  STD_LOGIC;
	q	 : out STD_LOGIC
	);
end component;

    COMPONENT or2 IS
    GENERIC(t_or : time := 4 ns);
    PORT( x, y: IN STD_LOGIC;
            z: OUT STD_LOGIC);
    END COMPONENT;

    component xor2 is
        GENERIC(t_xor : time := 4 ns);
        PORT( x, y: IN STD_LOGIC;
                z: OUT STD_LOGIC);
    END COMPONENT;

signal LOAD_ON: std_logic := '1';
signal d_s, q_s, aux: std_logic_vector(11 downto 0);

begin

    g1 : for i in 0 to 11 generate
        g2: if i = 0 generate 
            --d_s(i)<= q_s(11) or res;
            --ou : or2 port map(q_s(11),res,d_s(i));
            d_s(i) <= q_s(11) or res;
        end generate;
        g3: if (i = 3) or (i=4) or (i = 6) or (i = 9) or (i = 10) generate
            xor3 : xor2 port map(q_s(i-1),q_s(11),aux(i));
            d_s(i) <= aux(i) or res;
            --or10 : or2 port map(aux(i),res,d_s(i));
        end generate;
        g4: if  (i=1) or (i = 2) or (i = 5) or (i = 7) or (i = 8) or (i = 11) generate
            d_s(i) <= q_s(i-1) or res;
            --or10: or2 port map(q_s(i-1), res, d_s(i));
        end generate;
        FF : d_reg port map(clk,'1',d_s(i),q_s(i));
    end generate;
    qout <= q_s(1 downto 0);
    qi <= q_s;
    


end architecture;