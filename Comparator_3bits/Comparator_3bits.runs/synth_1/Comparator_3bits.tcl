# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000

create_project -in_memory -part xc7z020clg484-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Xilinx2014/Workspace/Comparator_3bits/Comparator_3bits.cache/wt [current_project]
set_property parent.project_path D:/Xilinx2014/Workspace/Comparator_3bits/Comparator_3bits.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib D:/Xilinx2014/Workspace/Comparator_3bits/Comparator_3bits.srcs/sources_1/new/Comparator_3bits.v
catch { write_hwdef -file Comparator_3bits.hwdef }
synth_design -top Comparator_3bits -part xc7z020clg484-1
write_checkpoint -noxdef Comparator_3bits.dcp
catch { report_utilization -file Comparator_3bits_utilization_synth.rpt -pb Comparator_3bits_utilization_synth.pb }