library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_package.all;

entity stimuli_step_counter_2 is
	generic
	(
	CLK_PERIOD		: TIME	:=  10 ns
	);

	port
	(
	clk		: out STD_LOGIC;
	rst		: out STD_LOGIC;
	speed_sync	: out SPEED;
	en_disc      	: out  STD_LOGIC;
	en_cnt      	: out  STD_LOGIC;	
	cnt_guru_rdy	: in STD_LOGIC;    --from counter: indicates max count
	go	: out STD_LOGIC   --to counter: authorizes new counting 
	);

end stimuli_step_counter_2 ;

architecture test of stimuli_step_counter_2 is
	signal clk_s : STD_LOGIC;

	component clock_generator
		generic (
		CLK_PERIOD		: TIME	:= 10 ns
		);

		port (	
		clk		: out STD_LOGIC
		);

end component ;

begin


	clk <=clk_s;

	clock: clock_generator
		port map
		(
		clk		=> clk_s
		);


	sim : process
		
procedure check_counter(go_value	: in STD_LOGIC)	is
	begin
	-- Assign values to estimuli_module´s outputs.
	go <= go_value; 

	wait until rising_edge (clk_s);
	-- Events at the rising edge of next clock cycle
end procedure check_counter;

procedure reset_activate is    -- reset activation procedure
	begin
		wait until falling_edge(CLK_s);
		rst <= '1';
		wait for CLK_PERIOD;
		rst <= '0';
end procedure reset_activate;
		
procedure assign_input_words(constant a: in SPEED) is
		begin
		-- Assign values to speed.
		speed_sync <= a;
		wait for CLK_PERIOD;
		
end procedure assign_input_words;
		
procedure assign_flags(en_disc_value, en_cnt_value: in STD_LOGIC) is
	begin
	-- Assign values to speed.
	en_disc <= en_disc_value;
	en_cnt <= en_cnt_value;

	wait for CLK_PERIOD;
end procedure assign_flags;


	begin
		-- Apply test vectors
		
		check_counter('0');    -- initialize

		reset_activate;   -- counter will start
		
		assign_input_words (SPEED'VAL(2));     -- É equvivalente a "assign_input_words (x4)" - Por que?
							 -- R: Menor contagem possível para fazer a inicialização,
							 -- ONE_X contaria 8x, TWO_X contaria 6x, EIGHT_X contaria 7x ou 5x.
		assign_flags ('1', '1'); 
		
		while (True)
			loop
			
			wait for 1*CLK_PERIOD;
			
			check_counter('0');    --resetting go

			while (cnt_guru_rdy /= '1') 
				loop
					wait for 1*CLK_PERIOD;
				end loop;
		
	
			wait for 50*CLK_PERIOD; --dá um periodo de 50 clocks para ñ intereferir na próxima contagem.

			assign_input_words (SPEED'VAL(0));    -- É equvivalente a "assign_input_words (x1)" - Por que?
								--R: Inicia a contagem para 8 ciclos.

			check_counter('1');     -- forcing go='1' and new count starts		

		end loop;

	end process sim;

end architecture test;
