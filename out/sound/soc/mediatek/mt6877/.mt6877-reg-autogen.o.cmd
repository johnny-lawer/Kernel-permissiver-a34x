cmd_sound/soc/mediatek/mt6877/mt6877-reg-autogen.o := clang -Wp,-MD,sound/soc/mediatek/mt6877/.mt6877-reg-autogen.o.d -nostdinc -isystem /home/xddeath69/stock/toolchain/lib/clang/18/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I../drivers/misc/mediatek/include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h -include ../include/linux/compiler_types.h  -I../sound/soc/mediatek/mt6877 -Isound/soc/mediatek/mt6877 -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -Qunused-arguments -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Werror=return-type -Wno-format-security -std=gnu89 --target=aarch64-linux-gnu --prefix=aarch64-linux-gnu --gcc-toolchain=/ -Werror=unknown-warning-option -fno-PIE -mgeneral-regs-only -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables -Wno-psabi -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -O2 -Wframe-larger-than=3600 -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -Wdeclaration-after-statement -Wno-pointer-sign -Wno-array-bounds -fno-strict-overflow -fno-merge-all-constants -fno-stack-check -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -fmacro-prefix-map=../= -Wno-initializer-overrides -Wno-unused-value -Wno-format -Wno-sign-compare -Wno-format-zero-length -Wno-uninitialized -Wno-pointer-to-enum-cast -w -Werror -Wno-unused-but-set-variable -Werror  -I../drivers/misc/mediatek/include/mt-plat  -I../drivers/misc/mediatek/adsp/mt6853/  -I../drivers/misc/mediatek/audio_ipi/common_v2/framework/  -I../drivers/misc/mediatek/audio_ipi/common_v2/tasks/call/  -I../sound/soc/mediatek/audio_dsp  -I../drivers/misc/mediatek/audio_ipi/common_v2/tasks/audplayback/  -I../drivers/misc/mediatek/include  -I../drivers/misc/mediatek/adsp/mt6853  -I../drivers/misc/mediatek/adsp/common_v2  -I../drivers/misc/mediatek/base/power/include  -I../drivers/misc/mediatek/include/mt-plat/mt6853/include    -DKBUILD_BASENAME='"mt6877_reg_autogen"' -DKBUILD_MODNAME='"snd_soc_mt6877_afe"' -c -o sound/soc/mediatek/mt6877/.tmp_mt6877-reg-autogen.o ../sound/soc/mediatek/mt6877/mt6877-reg-autogen.c

source_sound/soc/mediatek/mt6877/mt6877-reg-autogen.o := ../sound/soc/mediatek/mt6877/mt6877-reg-autogen.c

deps_sound/soc/mediatek/mt6877/mt6877-reg-autogen.o := \
  ../include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  ../include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  ../include/linux/compiler-clang.h \
    $(wildcard include/config/lto/clang.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \

sound/soc/mediatek/mt6877/mt6877-reg-autogen.o: $(deps_sound/soc/mediatek/mt6877/mt6877-reg-autogen.o)

$(deps_sound/soc/mediatek/mt6877/mt6877-reg-autogen.o):