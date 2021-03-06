transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {/opt/altera/19.1/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {/opt/altera/19.1/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {/opt/altera/19.1/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {/opt/altera/19.1/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {/opt/altera/19.1/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {/opt/altera/19.1/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/lpm
vmap lpm ./vhdl_libs/lpm
vcom -93 -work lpm {/opt/altera/19.1/quartus/eda/sim_lib/220pack.vhd}
vcom -93 -work lpm {/opt/altera/19.1/quartus/eda/sim_lib/220model.vhd}

vlib vhdl_libs/sgate
vmap sgate ./vhdl_libs/sgate
vcom -93 -work sgate {/opt/altera/19.1/quartus/eda/sim_lib/sgate_pack.vhd}
vcom -93 -work sgate {/opt/altera/19.1/quartus/eda/sim_lib/sgate.vhd}

vlib vhdl_libs/altera_mf
vmap altera_mf ./vhdl_libs/altera_mf
vcom -93 -work altera_mf {/opt/altera/19.1/quartus/eda/sim_lib/altera_mf_components.vhd}
vcom -93 -work altera_mf {/opt/altera/19.1/quartus/eda/sim_lib/altera_mf.vhd}

vlib vhdl_libs/altera_lnsim
vmap altera_lnsim ./vhdl_libs/altera_lnsim
vlog -sv -work altera_lnsim {/opt/altera/19.1/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv}
vcom -93 -work altera_lnsim {/opt/altera/19.1/quartus/eda/sim_lib/altera_lnsim_components.vhd}

vlib vhdl_libs/cyclonev
vmap cyclonev ./vhdl_libs/cyclonev
vlog -vlog01compat -work cyclonev {/opt/altera/19.1/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vcom -93 -work cyclonev {/opt/altera/19.1/quartus/eda/sim_lib/cyclonev_atoms.vhd}
vcom -93 -work cyclonev {/opt/altera/19.1/quartus/eda/sim_lib/cyclonev_components.vhd}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/d_reg.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/flsr.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/xor2.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/wisdom_package.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/reg.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/referee.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/rc_adder_1.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/new_alu.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/mem_2port.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/holder.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/full_adder_1.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/counter_trigger.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/wisdom_circuit_with_referee.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/wisdom_circuit.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/step_counter.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/reg_bank -template.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/num_gen_rand.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/num_gen_disc_rand.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/num_gen_disc.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/num_gen.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/fsm_main.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/fsm_init.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/fsm_guru.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/disciple_control.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/disciple_circuit.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/disc_datapath.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/coll_ovf.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/code_gen.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/circuit_wisdom_aula_11.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/button_handler.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/base_datapath.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/base_control.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/base_circuit.vhd}

vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/tb_global/clock_generator.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/tb_global/address_counter.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/tb_global/map_monitor.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/tb_global/stimuli_wisdom.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/tb_global/tb_wisdom.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_wisdom

do /home/gabriel/Desktop/POLI/9Semestre/PSI3451/Prova/Final/VHDL/tb_global/run_sim.txt
