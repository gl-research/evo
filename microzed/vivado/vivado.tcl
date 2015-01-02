open_project ./vivado.xpr
reset_run synth_1
launch_runs impl_1 -to_step write_bitstream
close_project

