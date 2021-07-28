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

vlib vhdl_libs/altera_lnsim
vmap altera_lnsim ./vhdl_libs/altera_lnsim
vlog -sv -work altera_lnsim {/opt/altera/19.1/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv}
vcom -93 -work altera_lnsim {/opt/altera/19.1/quartus/eda/sim_lib/altera_lnsim_components.vhd}

vlib vhdl_libs/cyclonev
vmap cyclonev ./vhdl_libs/cyclonev
vlog -vlog01compat -work cyclonev {/opt/altera/19.1/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vcom -93 -work cyclonev {/opt/altera/19.1/quartus/eda/sim_lib/cyclonev_atoms.vhd}
vcom -93 -work cyclonev {/opt/altera/19.1/quartus/eda/sim_lib/cyclonev_components.vhd}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {base_control.vho}

vcom -93 -work work {/home/gabriel/Desktop/POLI/9 Semestre/PSI3451/aula10/base_control/sintese/../sim/tb_base_control.vhd}
vcom -93 -work work {/home/gabriel/Desktop/POLI/9 Semestre/PSI3451/aula10/base_control/sintese/../sim/stimuli_base_control.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L cyclonev -L gate_work -L work -voptargs="+acc"  tb_base_control

add wave *
view structure
view signals
run 2 sec
