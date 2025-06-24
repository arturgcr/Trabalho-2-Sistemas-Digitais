
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name calculadora_fpga -dir "/home/ise/VirtualBox/Trabalho-2-Sistemas-Digitais/calculadora_fpga/planAhead_run_5" -part xc3s700anfgg484-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "teclado_teste.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {src/teclado_ps2.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {teclado_teste.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top teclado_teste $srcset
add_files [list {teclado_teste.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s700anfgg484-5
