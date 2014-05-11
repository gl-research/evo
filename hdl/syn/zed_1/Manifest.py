target = "xilinx"
action = "synthesis"
syn_device = "xc7z020"
syn_grade = "-1"
syn_package = "clg484"
syn_top = "zed_top"
syn_project = "zedboard"
syn_tool = "planahead"

files = [
    "../../top/zed_1/zed_top.vhd",
    "../../top/zed_1/zed_top.ucf"
]

modules = {
  "local" : [ "../../modules/system" ],
  "svn" : [ "http://svn.ohwr.org/asyncart"]
}

fetchto = "../../ip_cores"

