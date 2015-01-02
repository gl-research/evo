target = "xilinx"
action = "synthesis"
syn_device = "xc7z010"
syn_grade = "-1"
syn_package = "clg400"
syn_top = "mz_soc_wrapper"
syn_project = "microzed"
syn_tool = "vivado"

files = [
    "../../modules/mz_soc/mz_soc.bd",
    "../../modules/mz_soc/hdl/mz_soc_wrapper.vhd",
    "../../top/MicroZed_7010/1.0/ps7.tcl"
]

