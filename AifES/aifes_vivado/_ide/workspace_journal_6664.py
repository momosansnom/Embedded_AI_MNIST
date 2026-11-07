# 2026-11-06T16:10:01.251876600
import vitis

client = vitis.create_client()
client.set_workspace(path="aifes_vivado")

platform = client.get_component(name="platform_aifes")
status = platform.build()

comp = client.get_component(name="app_aifes_arm")
comp.build()

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="app_aifes_arm")
comp.set_app_config(key = "USER_COMPILE_SOURCES", values = ["../aifes/aifes_config.c", "../aifes/basic/avr_pgm/ailayer/ailayer_dense_avr_pgm.c", "../aifes/basic/avr_pgm/ailayer/ailayer_elu_avr_pgm.c", "../aifes/basic/avr_pgm/ailayer/ailayer_leaky_relu_avr_pgm.c", "../aifes/basic/avr_pgm/ailayer/ailayer_relu_avr_pgm.c", "../aifes/basic/avr_pgm/ailayer/ailayer_sigmoid_avr_pgm.c", "../aifes/basic/avr_pgm/ailayer/ailayer_softmax_avr_pgm.c", "../aifes/basic/avr_pgm/ailayer/ailayer_softsign_avr_pgm.c", "../aifes/basic/avr_pgm/ailayer/ailayer_tanh_avr_pgm.c", "../aifes/basic/avr_pgm/aimath/aimath_f32_avr_pgm.c", "../aifes/basic/avr_pgm/aimath/aimath_q7_avr_pgm.c", "../aifes/basic/base/aialgo/aialgo_sequential_inference.c", "../aifes/basic/base/aialgo/aialgo_sequential_training.c", "../aifes/basic/base/ailayer/ailayer_dense.c", "../aifes/basic/base/ailayer/ailayer_elu.c", "../aifes/basic/base/ailayer/ailayer_input.c", "../aifes/basic/base/ailayer/ailayer_leaky_relu.c", "../aifes/basic/base/ailayer/ailayer_relu.c", "../aifes/basic/base/ailayer/ailayer_sigmoid.c", "../aifes/basic/base/ailayer/ailayer_softmax.c", "../aifes/basic/base/ailayer/ailayer_softsign.c", "../aifes/basic/base/ailayer/ailayer_tanh.c", "../aifes/basic/base/ailayer/ailayer_template.c", "../aifes/basic/base/ailoss/ailoss_crossentropy.c", "../aifes/basic/base/ailoss/ailoss_mse.c", "../aifes/basic/base/aimath/aimath_basic.c", "../aifes/basic/base/aimath/aimath_f32.c", "../aifes/basic/base/aimath/aimath_q31.c", "../aifes/basic/base/aimath/aimath_q7.c", "../aifes/basic/base/aimath/aimath_u8.c", "../aifes/basic/base/aiopti/aiopti_adam.c", "../aifes/basic/base/aiopti/aiopti_sgd.c", "../aifes/basic/cmsis/ailayer/ailayer_dense_cmsis.c", "../aifes/basic/cmsis/aimath/aimath_f32_cmsis.c", "../aifes/basic/cmsis/aimath/aimath_q31_cmsis.c", "../aifes/basic/cmsis/aimath/aimath_q7_cmsis.c", "../aifes/basic/default/ailayer/ailayer_dense_default.c", "../aifes/basic/default/ailayer/ailayer_elu_default.c", "../aifes/basic/default/ailayer/ailayer_input_default.c", "../aifes/basic/default/ailayer/ailayer_leaky_relu_default.c", "../aifes/basic/default/ailayer/ailayer_relu_default.c", "../aifes/basic/default/ailayer/ailayer_sigmoid_default.c", "../aifes/basic/default/ailayer/ailayer_softmax_default.c", "../aifes/basic/default/ailayer/ailayer_softsign_default.c", "../aifes/basic/default/ailayer/ailayer_tanh_default.c", "../aifes/basic/default/ailoss/ailoss_crossentropy_default.c", "../aifes/basic/default/ailoss/ailoss_mse_default.c", "../aifes/basic/default/aimath/aimath_f32_default.c", "../aifes/basic/default/aimath/aimath_q31_default.c", "../aifes/basic/default/aimath/aimath_q7_default.c", "../aifes/basic/default/aiopti/aiopti_adam_default.c", "../aifes/basic/default/aiopti/aiopti_sgd_default.c", "../aifes/basic/express/aifes_express_f32_fnn.c", "../aifes/basic/express/aifes_express_q7_fnn.c", "../aifes/cnn/base/ailayer/ailayer_batch_normalization.c", "../aifes/cnn/base/ailayer/ailayer_conv2d.c", "../aifes/cnn/base/ailayer/ailayer_maxpool2d.c", "../aifes/cnn/base/ailayer/ailayer_reshape.c", "../aifes/cnn/default/ailayer/ailayer_batch_normalization_default.c", "../aifes/cnn/default/ailayer/ailayer_conv2d_default.c", "../aifes/cnn/default/ailayer/ailayer_maxpool2d_default.c", "../aifes/cnn/default/ailayer/ailayer_reshape_default.c", "../aifes/cnn/default/aimath/aimath_cnn_f32_default.c", "main.c"])

status = platform.build()

comp = client.get_component(name="app_aifes_arm")
comp.build()

comp = client.get_component(name="app_aifes_arm")
comp.set_app_config(key = "USER_LINK_LIBRARIES", values = ["m"])

status = platform.build()

comp = client.get_component(name="app_aifes_arm")
comp.build()

vitis.dispose()

