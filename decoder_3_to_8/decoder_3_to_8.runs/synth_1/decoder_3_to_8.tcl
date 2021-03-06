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
set_property webtalk.parent_dir D:/Xilinx2014/Workspace/decoder_3_to_8/decoder_3_to_8.cache/wt [current_project]
set_property parent.project_path D:/Xilinx2014/Workspace/decoder_3_to_8/decoder_3_to_8.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib D:/Xilinx2014/Workspace/decoder_3_to_8/decoder_3_to_8.srcs/sources_1/new/decoder_3_to_8.v
catch { write_hwdef -file decoder_3_to_8.hwdef }
synth_design -top decoder_3_to_8 -part xc7z020clg484-1
write_checkpoint -noxdef decoder_3_to_8.dcp
catch { report_utilization -file decoder_3_to_8_utilization_synth.rpt -pb decoder_3_to_8_utilization_synth.pb }
