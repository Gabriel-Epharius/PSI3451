load_library tsmc035_typ
read -technology "tsmc035_typ"  { C:/psi3451/aula9/base_control_1/fonte/base_control.vhd C:/psi3451/aula9/base_control_1/fonte/counter_trigger.vhd C:/psi3451/aula9/base_control_1/fonte/fsm_guru.vhd C:/psi3451/aula9/base_control_1/fonte/fsm_init.vhd C:/psi3451/aula9/base_control_1/fonte/fsm_main.vhd C:/psi3451/aula9/base_control_1/fonte/wisdom_package.vhd }
read -technology "tsmc035_typ"  { C:/psi3451/aula9/base_control_1/fonte/wisdom_package.vhd C:/psi3451/aula9/base_control_1/fonte/counter_trigger.vhd C:/psi3451/aula9/base_control_1/fonte/fsm_guru.vhd C:/psi3451/aula9/base_control_1/fonte/fsm_init.vhd C:/psi3451/aula9/base_control_1/fonte/fsm_main.vhd C:/psi3451/aula9/base_control_1/fonte/base_control.vhd }
pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize 
pre_optimize -extract 
set register2register 3.333333
set input2register 3.333333
set register2output 3.333333
optimize .work.base_control.arch -target tsmc035_typ -macro -delay -effort standard -hierarchy auto 
optimize_timing .work.base_control.arch 
report_area area.txt -cell_usage -all_leafs 
report_delay delay.txt -num_paths 1 -longest_path -no_internal_terminals -no_io_terminals -clock_frequency
set novendor_constraint_file FALSE
auto_write -format VHDL base_control_gt.vhd
