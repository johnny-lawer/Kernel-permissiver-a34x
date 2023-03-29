cmd_firmware/tsp_goodix/gt9895_a34x.bin.gen.o := clang -Wp,-MD,firmware/tsp_goodix/.gt9895_a34x.bin.gen.o.d -nostdinc -isystem /home/xddeath69/stock/toolchain/lib/clang/18/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I../drivers/misc/mediatek/include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -Qunused-arguments -D__ASSEMBLY__ --target=aarch64-linux-gnu --prefix=aarch64-linux-gnu --gcc-toolchain=/ -Werror=unknown-warning-option -fno-PIE -DCONFIG_AS_LSE=1 -DKASAN_SHADOW_SCALE_SHIFT=3   -c -o firmware/tsp_goodix/gt9895_a34x.bin.gen.o firmware/tsp_goodix/gt9895_a34x.bin.gen.S

source_firmware/tsp_goodix/gt9895_a34x.bin.gen.o := firmware/tsp_goodix/gt9895_a34x.bin.gen.S

deps_firmware/tsp_goodix/gt9895_a34x.bin.gen.o := \
  ../include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \

firmware/tsp_goodix/gt9895_a34x.bin.gen.o: $(deps_firmware/tsp_goodix/gt9895_a34x.bin.gen.o)

$(deps_firmware/tsp_goodix/gt9895_a34x.bin.gen.o):
