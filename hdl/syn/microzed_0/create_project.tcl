create_project vivado ./vivado -part xc7z010clg400-1
set_property board_part em.avnet.com:microzed_7010:part0:1.0 [current_project]
set_property target_language VHDL [current_project]
add_files -norecurse ../../modules/mz_soc/mz_soc.bd
add_files -norecurse ../../modules/mz_soc/hdl/mz_soc_wrapper.vhd
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
reset_run synth_1
launch_runs impl_1 -to_step write_bitstream
close_project

