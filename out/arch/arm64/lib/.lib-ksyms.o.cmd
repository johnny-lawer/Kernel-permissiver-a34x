cmd_arch/arm64/lib/lib-ksyms.o := llvm-objdump -h arch/arm64/lib/lib.a | sed -ne '/___ksymtab/s/.*+\([^ ]*\).*/EXTERN(\1)/p' >arch/arm64/lib/.lib-ksyms.o.lds; rm -f arch/arm64/lib/.lib_exports.o; echo | clang -Wp,-MD,arch/arm64/lib/.lib-ksyms.o.d -nostdinc -isystem /home/xddeath69/stock/toolchain/lib/clang/18/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I../drivers/misc/mediatek/include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -Qunused-arguments -D__ASSEMBLY__ --target=aarch64-linux-gnu --prefix=aarch64-linux-gnu --gcc-toolchain=/ -Werror=unknown-warning-option -fno-PIE -DCONFIG_AS_LSE=1 -DKASAN_SHADOW_SCALE_SHIFT=3   -c -o arch/arm64/lib/.lib_exports.o -x assembler -; ld.lld -EL  -maarch64elf   -r -o arch/arm64/lib/lib-ksyms.o -T arch/arm64/lib/.lib-ksyms.o.lds arch/arm64/lib/.lib_exports.o; rm arch/arm64/lib/.lib_exports.o arch/arm64/lib/.lib-ksyms.o.lds
