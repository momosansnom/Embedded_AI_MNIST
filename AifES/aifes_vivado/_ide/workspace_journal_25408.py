# 2026-11-06T15:39:43.475243700
import vitis

client = vitis.create_client()
client.set_workspace(path="aifes_vivado")

platform = client.get_component(name="platform_aifes")
status = platform.build()

comp = client.get_component(name="app_aifes_arm")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

