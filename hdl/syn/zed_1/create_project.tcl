create_project project_zed ./project_zed -part xc7z020clg484-1
set_property board zedBoard [current_project]
set_property target_language VHDL [current_project]
set_property ng.output_hdl_format VHDL [get_filesets sim_1]
add_files -norecurse ../../modules/system/system.xmp
add_files -norecurse ../../top/zed_1/zed_top.vhd
add_files -norecurse ../../top/zed_1/zed_top.ucf
add_files -norecurse ../../ip_cores/asyncart/hdl/asyncart_reg.vhd
add_files -norecurse ../../ip_cores/asyncart/hdl/asyncart_sink.vhd
add_files -norecurse ../../ip_cores/asyncart/hdl/asyncart_source.vhd
add_files -norecurse ../../ip_cores/asyncart/hdl/asyncart_demo.vhd
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
set_property top zed_top [get_property srcset [current_run]]
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
exit

