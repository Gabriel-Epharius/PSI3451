--***************************************************************
--*																*
--*	Title	   :	Duohold_fit								*
--*	Design	:	wisdom_hw								*
--*	Author	:	Matias F. Siqueira Filho			*
--*	Email	   :	matias.filho@usp.br			      *
--*																*
--***************************************************************
--*																*
--*	Description :											*
--*																*
--***************************************************************
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;


entity Duohold_fit is 
	generic
	(
	COUNT_MAX	: positive	:= 2
	);

	port
	(
	clk				: in STD_LOGIC;
	res				: in STD_LOGIC;
	start_step     : in STD_LOGIC;
	cnt_disc_rdy   : in STD_LOGIC;
	disc_addr_in	: in STD_LOGIC_VECTOR(7 downto 0);
	disc_addr_out	: out STD_LOGIC_VECTOR(7 downto 0)
	
	);
end Duohold_fit;


architecture arch of Duohold_fit is


component counter_trigger is 
	generic
	(
	COUNT_MAX	: positive	:= 5000
	);

	port
	(
	clk		: in STD_LOGIC;
	res		: in STD_LOGIC;
	trigger	: in STD_LOGIC;
	cnt_rdy	: out STD_LOGIC
	);
end component;


--***********************************
--*	INTERNAL SIGNAL DECLARATIONS	*
--***********************************

signal ctrl_s   : std_logic;

 
begin

	--*******************************
	--*	SIGNAL ASSIGNMENTS			*
	--*******************************
	
	disc_addr_out	<= 	disc_addr_in when ctrl_s = '1' else 
								"11111111";	
	
	cnt_prep: counter_trigger 
						generic map
						(
						COUNT_MAX		=> COUNT_MAX
						)
						port map
						(
						clk				=> cnt_disc_rdy,
						res				=> res,
						trigger			=> start_step,
						cnt_rdy			=> ctrl_s
						);
	


end arch;