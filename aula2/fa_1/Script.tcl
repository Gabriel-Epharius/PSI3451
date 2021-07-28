cd {/home/gabriel/Desktop/POLI/9 Semestre/PSI3451- Projeto de Circuitos Lógicos Integrados/Aula2/fa_1}
ls
# full_adder_1.vhd
# work-obj93.cf
vlib work
vmap work work
# Model Technology ModelSim - Intel FPGA Edition vmap 2021.1 Lib Mapping Utility 2021.02 Feb  2 2021
# vmap work work 
# Copying /home/gabriel/intelFPGA_pro/21.1/modelsim_ase/linuxaloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
vcom -reportprogress 300 -work work {/home/gabriel/Desktop/POLI/9 Semestre/PSI3451- Projeto de Circuitos Lógicos Integrados/Aula2/fa_1/full_adder_1.vhd}
# Model Technology ModelSim - Intel FPGA Edition vcom 2021.1 Compiler 2021.02 Feb  2 2021
# Start time: 09:46:14 on Apr 22,2021
# vcom -reportprogress 300 -work work /home/gabriel/Desktop/POLI/9 Semestre/PSI3451- Projeto de Circuitos Lógicos Integrados/Aula2/fa_1/full_adder_1.vhd 
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Compiling entity full_adder_1
# -- Compiling architecture dataflow of full_adder_1
# End time: 09:46:15 on Apr 22,2021, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vsim work.full_adder_1
# vsim work.full_adder_1 
# Start time: 09:49:34 on Apr 22,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.full_adder_1(dataflow)
# Load canceled
add wave sim:/full_adder_1/*
force
foce a_in 0
# invalid command name "foce"
force a_in 0
force b_in 1
force c_in 0
restart
add wave sim:/full_adder_1/*
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
add dataflow \
sim:/full_adder_1/a_in 
# WARNING: No extended dataflow license exists
# No drivers or ports for a_in
force -freeze sim:/full_adder_1/a_in 1 0
force -freeze sim:/full_adder_1/b_in U0 0
# ** UI-Msg: (vsim-4026) Value "u0" does not represent a literal of the enumeration type.
# ** UI-Msg: (vsim-4011) Invalid force value: U0 0.
# 
force -freeze sim:/full_adder_1/c_in 0 0
force -freeze sim:/full_adder_1/b_in 0 0
restart
force -freeze sim:/full_adder_1/a_in 0 0
force -freeze sim:/full_adder_1/b_in 0 0
force -freeze sim:/full_adder_1/c_in 0 0
run
run
run
run
run
# Break key hit
restart
run
force -freeze sim:/full_adder_1/a_in 1 0
force -freeze sim:/full_adder_1/b_in 0 0
force -freeze sim:/full_adder_1/c_in 0 0
run
run
run
run
run
run
run
run
run
restart
force -freeze sim:/full_adder_1/a_in 0 0
force -freeze sim:/full_adder_1/b_in 0 0
force -freeze sim:/full_adder_1/c_in 1 0
run
run
run
run
run
run
run
run
run
vsim work.full_adder_1
# End time: 10:33:21 on Apr 22,2021, Elapsed time: 0:43:47
# Errors: 0, Warnings: 0
# vsim work.full_adder_1 
# Start time: 10:33:21 on Apr 22,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.full_adder_1(dataflow)
# WARNING: No extended dataflow license exists
add wave sim:/full_adder_1/*
do {/home/gabriel/Desktop/POLI/9 Semestre/PSI3451- Projeto de Circuitos Lógicos Integrados/Aula2/fa_1/Script.tcl}
# Cannot open macro file: /home/gabriel/Desktop/POLI/9 Semestre/PSI3451- Projeto de Circuitos Lógicos Integrados/Aula2/fa_1/Script.tcl
