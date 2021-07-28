library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_alu is

GENERIC (WIDTH: natural :=8);

end entity;

architecture test of tb_alu is

component stimuli_module 
	generic
	(
	WIDTH	: natural := 8
	);
	port
	(
		one_op, rb_op	: 	out STD_LOGIC_VECTOR(WIDTH-1 downto 0);
		alu_ctrl			:	out STD_LOGIC
	);
end component ;

component alu
	generic
	(
	WIDTH : integer := 8
	);
	port
	(
		one_op		     : in STD_LOGIC_VECTOR(WIDTH-1 downto 0); -- uma constante (00000001).
		rb_op			     : in STD_LOGIC_VECTOR(WIDTH-1 downto 0); -- operandos Rb_op s�o oriundos de Reg Bank (sa�das de REG_GURU ou REG_INIT).
		alu_ctrl         : in STD_LOGIC;                          -- controle a saida da ula: 
		alu_result		  : out STD_LOGIC_VECTOR(WIDTH-1 downto 0) -- resultado_soma(proxima posicao do GURU) ou posicao atual do GURU
	);
end component ;
	signal one_op_s, rb_op_s, alu_result_s : STD_LOGIC_VECTOR(WIDTH-1 downto 0); 
	signal alu_ctrl_s : STD_LOGIC;
begin
-- Instantiate DUT
	dut : alu
		generic map(WIDTH => WIDTH)
		port map(one_op	 		=> one_op_s, 
				 rb_op			=> rb_op_s,
				 alu_ctrl 		=> alu_ctrl_s,
				 alu_result 		=> alu_result_s);
-- Instantiate test module
	test : stimuli_module
		generic map(WIDTH => WIDTH)
		port map(	one_op		=>  one_op_s, 
				rb_op 		=>  rb_op_s,
				alu_ctrl	=> alu_ctrl_s);
end architecture test;
