# 2026-11-06T14:35:44.348808200
import vitis

client = vitis.create_client()
client.set_workspace(path="aifes_vivado")

platform = client.create_platform_component(name = "platform_aifes",hw_design = "$COMPONENT_LOCATION/../Core_aifes_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

client.delete_component(name="platform_aifes")

client.delete_component(name="platform_aifes")

platform = client.create_platform_component(name = "platform_aifes",hw_design = "$COMPONENT_LOCATION/../Core_aifes_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0",compiler = "gcc")

comp = client.create_app_component(name="app_aifes_arm",platform = "$COMPONENT_LOCATION/../platform_aifes/export/platform_aifes/platform_aifes.xpfm",domain = "standalone_ps7_cortexa9_0")

comp = client.get_component(name="app_aifes_arm")
status = comp.import_files(from_loc="", files=["C:\Users\azert\Documents\Embedded_AI_MNIST\AifES\Projet_aifes_stm32\Core\aifes", "C:\Users\azert\Documents\Embedded_AI_MNIST\AifES\Projet_aifes_stm32\Core\Inc", "C:\Users\azert\Documents\Embedded_AI_MNIST\AifES\Projet_aifes_stm32\Core\Src"], is_skip_copy_sources = False)

