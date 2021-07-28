library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 

entity stimuli is 
    generic( 
        width : natural := 12; 
        CLK_PERIOD : time := 10 ns 
    ); 
    port( 
        clk : out std_logic; 
        res : out std_logic; 
        rand : in std_logic_vector(1 downto 0) 
    ); 
end entity;



architecture test of stimuli is 
    

    component clock_generator --gerador de clock 
    generic( 
        CLK_PERIOD : TIME := 10 ns 
    ); 
    port( 
        clk : out STD_LOGIC 
    ); 
    end component; 

    signal clk_s : std_logic; 

begin 
    clk <= clk_s; 
    clock: clock_generator port map(clk => clk_s); 

    sim : process 
        procedure reset_activate is 
            begin 
            wait until falling_edge(CLK_s); 
            res <= '1'; 
            wait for 2*CLK_PERIOD; 
            res <= '0'; 
        end procedure reset_activate; 

    begin 
        reset_activate; 
        wait for 20*CLK_PERIOD; 
    end process sim;

end architecture test; 
