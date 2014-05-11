create_project project_demo /home/javi/project_demo -part xc7z020clg484-1
set_property board zedBoard [current_project]
set_property target_language VHDL [current_project]
set_property ng.output_hdl_format VHDL [get_filesets sim_1]
add_files -norecurse /home/javi/Escritorio/Xilinx/ZedBoard_Linux_Design/hw/xps_proj/system.xmp
add_files -norecurse /home/javi/Escritorio/Xilinx/top/system_stub.vhd
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
add_files -norecurse /home/javi/Escritorio/Xilinx/synthesis_zedboard_async/asyncart_reg.vhd
update_compile_order -fileset sources_1
set_property top system_stub

