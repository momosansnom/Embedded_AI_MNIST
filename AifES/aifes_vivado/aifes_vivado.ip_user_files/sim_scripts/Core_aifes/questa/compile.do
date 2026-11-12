vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_22
vlib questa_lib/msim/processing_system7_vip_v1_0_24
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xbip_utils_v3_0_15
vlib questa_lib/msim/axi_utils_v2_0_11
vlib questa_lib/msim/xbip_pipe_v3_0_11
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_7
vlib questa_lib/msim/mult_gen_v12_0_24
vlib questa_lib/msim/floating_point_v7_1_21
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/generic_baseblocks_v2_1_2
vlib questa_lib/msim/fifo_generator_v13_2_14
vlib questa_lib/msim/axi_data_fifo_v2_1_36
vlib questa_lib/msim/axi_register_slice_v2_1_36
vlib questa_lib/msim/axi_protocol_converter_v2_1_37

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_22 questa_lib/msim/axi_vip_v1_1_22
vmap processing_system7_vip_v1_0_24 questa_lib/msim/processing_system7_vip_v1_0_24
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xbip_utils_v3_0_15 questa_lib/msim/xbip_utils_v3_0_15
vmap axi_utils_v2_0_11 questa_lib/msim/axi_utils_v2_0_11
vmap xbip_pipe_v3_0_11 questa_lib/msim/xbip_pipe_v3_0_11
vmap xbip_dsp48_wrapper_v3_0_7 questa_lib/msim/xbip_dsp48_wrapper_v3_0_7
vmap mult_gen_v12_0_24 questa_lib/msim/mult_gen_v12_0_24
vmap floating_point_v7_1_21 questa_lib/msim/floating_point_v7_1_21
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap generic_baseblocks_v2_1_2 questa_lib/msim/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_14 questa_lib/msim/fifo_generator_v13_2_14
vmap axi_data_fifo_v2_1_36 questa_lib/msim/axi_data_fifo_v2_1_36
vmap axi_register_slice_v2_1_36 questa_lib/msim/axi_register_slice_v2_1_36
vmap axi_protocol_converter_v2_1_37 questa_lib/msim/axi_protocol_converter_v2_1_37

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_24  -incr -mfcu  -sv -L axi_vip_v1_1_22 -L processing_system7_vip_v1_0_24 -L xilinx_vip "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/Core_aifes/ip/Core_aifes_processing_system7_0_0/sim/Core_aifes_processing_system7_0_0.v" \

vcom -work xbip_utils_v3_0_15  -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_11  -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_11  -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_7  -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_24  -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_21  -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/sim/floating_point_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/Core_aifes/ipshared/08f0/hdl/mult_float32_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/Core_aifes/ipshared/08f0/hdl/mult_float32.v" \
"../../../bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/sim/Core_aifes_mult_float32_0_0.v" \

vcom -work proc_sys_reset_v5_0_17  -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/Core_aifes/ip/Core_aifes_rst_ps7_0_100M_0/sim/Core_aifes_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_14  -incr -mfcu  "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/d654/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_14  -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/d654/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_14  -incr -mfcu  "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/d654/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_36  -incr -mfcu  "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/fb46/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -incr -mfcu  "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_37  -incr -mfcu  "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/d98a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" \
"../../../bd/Core_aifes/ip/Core_aifes_axi_interconnect_0_imp_auto_pc_0/sim/Core_aifes_axi_interconnect_0_imp_auto_pc_0.v" \
"../../../bd/Core_aifes/sim/Core_aifes.v" \

vlog -work xil_defaultlib \
"glbl.v"

