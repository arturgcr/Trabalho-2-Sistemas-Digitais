
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name calculadora_fpga -dir "/home/ise/VirtualBox/Trabalho-2-Sistemas-Digitais/calculadora_fpga/planAhead_run_3" -part xc3s700anfgg484-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ise/VirtualBox/Trabalho-2-Sistemas-Digitais/calculadora_fpga/top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/VirtualBox/Trabalho-2-Sistemas-Digitais/calculadora_fpga} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "top.ucf" [current_fileset -constrset]
add_files [list {top.ucf}] -fileset [get_property constrset [current_run]]
link_design
