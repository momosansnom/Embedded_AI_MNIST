transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_22
vlib activehdl/processing_system7_vip_v1_0_24
vlib activehdl/xil_defaultlib
vlib activehdl/xbip_utils_v3_0_15
vlib activehdl/axi_utils_v2_0_11
vlib activehdl/xbip_pipe_v3_0_11
vlib activehdl/xbip_dsp48_wrapper_v3_0_7
vlib activehdl/mult_gen_v12_0_24
vlib activehdl/floating_point_v7_1_21
vlib activehdl/proc_sys_reset_v5_0_17
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/fifo_generator_v13_2_14
vlib activehdl/axi_data_fifo_v2_1_36
vlib activehdl/axi_register_slice_v2_1_36
vlib activehdl/axi_protocol_converter_v2_1_37

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_22 activehdl/axi_vip_v1_1_22
vmap processing_system7_vip_v1_0_24 activehdl/processing_system7_vip_v1_0_24
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xbip_utils_v3_0_15 activehdl/xbip_utils_v3_0_15
vmap axi_utils_v2_0_11 activehdl/axi_utils_v2_0_11
vmap xbip_pipe_v3_0_11 activehdl/xbip_pipe_v3_0_11
vmap xbip_dsp48_wrapper_v3_0_7 activehdl/xbip_dsp48_wrapper_v3_0_7
vmap mult_gen_v12_0_24 activehdl/mult_gen_v12_0_24
vmap floating_point_v7_1_21 activehdl/floating_point_v7_1_21
vmap proc_sys_reset_v5_0_17 activehdl/proc_sys_reset_v5_0_17
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_14 activehdl/fifo_generator_v13_2_14
vmap axi_data_fifo_v2_1_36 activehdl/axi_data_fifo_v2_1_36
vmap axi_register_slice_v2_1_36 activehdl/axi_register_slice_v2_1_36
vmap axi_protocol_converter_v2_1_37 activehdl/axi_protocol_converter_v2_1_37

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_22  -sv2k12 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/b16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_24  -sv2k12 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"../../../bd/Core_aifes/ip/Core_aifes_processing_system7_0_0/sim/Core_aifes_processing_system7_0_0.v" \

vcom -work xbip_utils_v3_0_15 -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_11 -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_11 -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_7 -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_24 -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_21 -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/src/floating_point_0/sim/floating_point_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"../../../bd/Core_aifes/ipshared/08f0/hdl/mult_float32_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/Core_aifes/ipshared/08f0/hdl/mult_float32.v" \
"../../../bd/Core_aifes/ip/Core_aifes_mult_float32_0_0/sim/Core_aifes_mult_float32_0_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/Core_aifes/ip/Core_aifes_rst_ps7_0_100M_0/sim/Core_aifes_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_14  -v2k5 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/d654/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_14 -93  \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/d654/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_14  -v2k5 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/d654/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_36  -v2k5 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/fb46/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_36  -v2k5 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/bc4b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_37  -v2k5 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/d98a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/ec67/hdl" "+incdir+../../../../aifes_vivado.gen/sources_1/bd/Core_aifes/ipshared/9a25/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" "+incdir+C:/AMDDesignTools/2025.2/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_22 -l processing_system7_vip_v1_0_24 -l xil_defaultlib -l xbip_utils_v3_0_15 -l axi_utils_v2_0_11 -l xbip_pipe_v3_0_11 -l xbip_dsp48_wrapper_v3_0_7 -l mult_gen_v12_0_24 -l floating_point_v7_1_21 -l proc_sys_reset_v5_0_17 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_14 -l axi_data_fifo_v2_1_36 -l axi_register_slice_v2_1_36 -l axi_protocol_converter_v2_1_37 \
"../../../bd/Core_aifes/ip/Core_aifes_axi_interconnect_0_imp_auto_pc_0/sim/Core_aifes_axi_interconnect_0_imp_auto_pc_0.v" \
"../../../bd/Core_aifes/sim/Core_aifes.v" \

vlog -work xil_defaultlib \
"glbl.v"

