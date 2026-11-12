# 2026-11-12T14:07:27.580243800
import vitis

client = vitis.create_client()
client.set_workspace(path="aifes_vivado")

platform = client.get_component(name="platform_aifes")
status = platform.build()

comp = client.get_component(name="app_aifes_arm")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../Core_aifes_wrapper.xsa")

comp = client.get_component(name="app_aifes_arm")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../ip_repo/mult_float32_1_0/drivers/mult_float32_v1_0/src", files=["mult_float32.c", "mult_float32.h", "xmult_float32_g.c"], dest_dir_in_cmp = "app_aifes_arm", is_skip_copy_sources = False)

status = comp.import_files(from_loc="$COMPONENT_LOCATION/../../ip_repo/mult_float32_1_0/drivers/mult_float32_v1_0/src", files=["mult_float32.c", "mult_float32.h"], dest_dir_in_cmp = "ip_user", is_skip_copy_sources = False)

status = platform.build()

