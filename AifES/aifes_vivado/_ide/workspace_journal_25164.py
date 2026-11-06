# 2026-11-06T15:52:47.738649400
import vitis

client = vitis.create_client()
client.set_workspace(path="aifes_vivado")

vitis.dispose()

