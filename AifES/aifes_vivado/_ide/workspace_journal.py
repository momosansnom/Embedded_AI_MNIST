# 2026-11-13T13:37:11.605758700
import vitis

client = vitis.create_client()
client.set_workspace(path="aifes_vivado")

platform = client.get_component(name="platform_aifes")
status = platform.build()

comp = client.get_component(name="app_aifes_arm")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="app_aifes_arm")
comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["../ip_user", "..", "../aifes", "../Inc", "los"])

comp.set_app_config(key = "USER_INCLUDE_DIRECTORIES", values = ["../ip_user", "..", "../aifes", "../Inc"])

