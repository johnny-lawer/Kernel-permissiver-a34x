cmd_drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/mali_kbase_hwcnt_gpu.o := clang -Wp,-MD,drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/.mali_kbase_hwcnt_gpu.o.d -nostdinc -isystem /home/xddeath69/stock/toolchain/lib/clang/18/include -I../arch/arm64/include -I./arch/arm64/include/generated  -I../include -I../drivers/misc/mediatek/include -I./include -I../arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I../include/uapi -I./include/generated/uapi -include ../include/linux/kconfig.h -include ../include/linux/compiler_types.h  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard -Idrivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3 -Qunused-arguments -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Werror=return-type -Wno-format-security -std=gnu89 --target=aarch64-linux-gnu --prefix=aarch64-linux-gnu --gcc-toolchain=/ -Werror=unknown-warning-option -fno-PIE -mgeneral-regs-only -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables -Wno-psabi -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -Wno-address-of-packed-member -O2 -Wframe-larger-than=3600 -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -Wdeclaration-after-statement -Wno-pointer-sign -Wno-array-bounds -fno-strict-overflow -fno-merge-all-constants -fno-stack-check -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -fmacro-prefix-map=../= -Wno-initializer-overrides -Wno-unused-value -Wno-format -Wno-sign-compare -Wno-format-zero-length -Wno-uninitialized -Wno-pointer-to-enum-cast -w  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/include  -I../include  -I../drivers/staging/android  -I../drivers/misc/mediatek/base/power/include  -I../drivers/gpu/mediatek/gpufreq  -I../drivers/gpu/mediatek/mt-plat  -I../drivers/gpu/mediatek/ged/include  -I../drivers/gpu/mediatek/gpu_bm_k414  -I../drivers/misc/mediatek/include/mt-plat -DCONFIG_PROC_FS -DCONFIG_MALI_MIDGARD_DVFS -DCONFIG_MTK_GPU_COMMON_DVFS -DMTK_GPU_BM_2 -DGED_ENABLE_DVFS_LOADING_MODE  -I../drivers/staging/android/mtk_ion  -I../drivers/iommu  -I../drivers/misc/mediatek/include/mt-plat/mt6853/include -DSHADER_PWR_CTL_WA -DCONFIG_MTK_GPU_DEBUG -DCONFIG_MTK_GPU_DEBUG_DFD -DCONFIG_MTK_GPU_MEM_TRACK  -I../include  -I../drivers/staging/android  -I../drivers/misc/mediatek/base/power/include  -I../drivers/gpu/mediatek/gpufreq  -I../drivers/gpu/mediatek/mt-plat  -I../drivers/gpu/mediatek/ged/include  -I../drivers/gpu/mediatek/gpu_bm_k414  -I../drivers/misc/mediatek/include/mt-plat -DCONFIG_PROC_FS -DCONFIG_MALI_MIDGARD_DVFS -DCONFIG_MTK_GPU_COMMON_DVFS -DMTK_GPU_BM_2 -DGED_ENABLE_DVFS_LOADING_MODE  -I../drivers/staging/android/mtk_ion  -I../drivers/iommu  -I../drivers/misc/mediatek/include/mt-plat/mt6853/include -DSHADER_PWR_CTL_WA -DCONFIG_MTK_GPU_DEBUG -DCONFIG_MTK_GPU_DEBUG_DFD -DCONFIG_MTK_GPU_MEM_TRACK  -I../drivers/devfreq/  -I../drivers/misc/mediatek/base/power/include/swpm_v1/  -I../drivers/misc/mediatek/perf_common/  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/include  -I../drivers/misc/mediatek/trusted_mem/public/  -I../drivers/misc/mediatek/trusted_mem/public/  -I../drivers/misc/mediatek/trusted_mem/public/  -I../drivers/misc/mediatek/trusted_mem/public/  -I../drivers/staging/android/mtk_ion -DMALI_CUSTOMER_RELEASE=0 -DMALI_USE_CSF=0 -DMALI_KERNEL_TEST_API=1 -DMALI_UNIT_TEST=1 -DMALI_COVERAGE=0 -DMALI_RELEASE_NAME='"r32p1-00bet5"' -DMALI_JIT_PRESSURE_LIMIT_BASE=1 -DMALI_INCREMENTAL_RENDERING=0 -DMALI_KBASE_BUILD -DMALI_PLATFORM_DIR=mt6877 -DMALI_KBASE_PLATFORM_PATH=../../../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/platform/"mt6877"  -I../include/linux  -I../drivers/staging/android  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/platform/mt6877  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/../../../base  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/../../../../include  -I../include  -I../drivers/staging/android  -I../drivers/misc/mediatek/base/power/include  -I../drivers/gpu/mediatek/gpufreq  -I../drivers/gpu/mediatek/mt-plat  -I../drivers/gpu/mediatek/ged/include  -I../drivers/gpu/mediatek/gpu_bm_k414  -I../drivers/misc/mediatek/include/mt-plat -DCONFIG_PROC_FS -DCONFIG_MALI_MIDGARD_DVFS -DCONFIG_MTK_GPU_COMMON_DVFS -DMTK_GPU_BM_2 -DGED_ENABLE_DVFS_LOADING_MODE  -I../drivers/staging/android/mtk_ion  -I../drivers/iommu  -I../drivers/misc/mediatek/include/mt-plat/mt6853/include -DSHADER_PWR_CTL_WA -DCONFIG_MTK_GPU_DEBUG -DCONFIG_MTK_GPU_DEBUG_DFD -DCONFIG_MTK_GPU_MEM_TRACK  -I../include  -I../drivers/staging/android  -I../drivers/misc/mediatek/base/power/include  -I../drivers/gpu/mediatek/gpufreq  -I../drivers/gpu/mediatek/mt-plat  -I../drivers/gpu/mediatek/ged/include  -I../drivers/gpu/mediatek/gpu_bm_k414  -I../drivers/misc/mediatek/include/mt-plat -DCONFIG_PROC_FS -DCONFIG_MALI_MIDGARD_DVFS -DCONFIG_MTK_GPU_COMMON_DVFS -DMTK_GPU_BM_2 -DGED_ENABLE_DVFS_LOADING_MODE  -I../drivers/staging/android/mtk_ion  -I../drivers/iommu  -I../drivers/misc/mediatek/include/mt-plat/mt6853/include -DSHADER_PWR_CTL_WA -DCONFIG_MTK_GPU_DEBUG -DCONFIG_MTK_GPU_DEBUG_DFD -DCONFIG_MTK_GPU_MEM_TRACK  -I../drivers/devfreq/  -I../drivers/misc/mediatek/base/power/include/swpm_v1/  -I../drivers/misc/mediatek/perf_common/  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/include  -I../drivers/misc/mediatek/trusted_mem/public/  -I../drivers/misc/mediatek/trusted_mem/public/  -I../drivers/misc/mediatek/trusted_mem/public/  -I../drivers/misc/mediatek/trusted_mem/public/  -I../drivers/staging/android/mtk_ion -DMALI_CUSTOMER_RELEASE=0 -DMALI_USE_CSF=0 -DMALI_KERNEL_TEST_API=1 -DMALI_UNIT_TEST=1 -DMALI_COVERAGE=0 -DMALI_RELEASE_NAME='"r32p1-00bet5"' -DMALI_JIT_PRESSURE_LIMIT_BASE=1 -DMALI_INCREMENTAL_RENDERING=0 -DMALI_KBASE_BUILD -DMALI_PLATFORM_DIR=mt6877 -DMALI_KBASE_PLATFORM_PATH=../../../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/platform/"mt6877"  -I../include/linux  -I../drivers/staging/android  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/platform/mt6877  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/../../../base  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/../../../../include  -I../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/platform/mtk_platform_common/  -I../include  -I../drivers/staging/android  -I../drivers/misc/mediatek/base/power/include  -I../drivers/gpu/mediatek/gpufreq  -I../drivers/gpu/mediatek/mt-plat  -I../drivers/gpu/mediatek/ged/include  -I../drivers/gpu/mediatek/gpu_bm_k414  -I../drivers/misc/mediatek/include/mt-plat -DCONFIG_PROC_FS -DCONFIG_MALI_MIDGARD_DVFS -DCONFIG_MTK_GPU_COMMON_DVFS -DMTK_GPU_BM_2 -DGED_ENABLE_DVFS_LOADING_MODE  -I../drivers/staging/android/mtk_ion  -I../drivers/iommu  -I../drivers/misc/mediatek/include/mt-plat/mt6853/include -DSHADER_PWR_CTL_WA -DCONFIG_MTK_GPU_DEBUG -DCONFIG_MTK_GPU_DEBUG_DFD -DCONFIG_MTK_GPU_MEM_TRACK  -I../drivers/misc/mediatek/base/power/include  -I../drivers/gpu/mediatek  -I../drivers/misc/mediatek/sspm/v2/  -I../drivers/misc/mediatek/sspm/mt6877  -I../drivers/misc/mediatek/sspm/"mt6853" -DDEFAULT_PM_POWEROFF_TICK_SHADER=25    -DKBUILD_BASENAME='"mali_kbase_hwcnt_gpu"' -DKBUILD_MODNAME='"mali_kbase"' -c -o drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/.tmp_mali_kbase_hwcnt_gpu.o ../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/mali_kbase_hwcnt_gpu.c

source_drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/mali_kbase_hwcnt_gpu.o := ../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/mali_kbase_hwcnt_gpu.c

deps_drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/mali_kbase_hwcnt_gpu.o := \
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
  ../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/mali_kbase_hwcnt_gpu.h \
  ../include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  ../include/uapi/linux/types.h \
  arch/arm64/include/generated/uapi/asm/types.h \
  ../include/uapi/asm-generic/types.h \
  ../include/asm-generic/int-ll64.h \
  ../include/uapi/asm-generic/int-ll64.h \
  ../arch/arm64/include/uapi/asm/bitsperlong.h \
  ../include/asm-generic/bitsperlong.h \
  ../include/uapi/asm-generic/bitsperlong.h \
  ../include/uapi/linux/posix_types.h \
  ../include/linux/stddef.h \
  ../include/uapi/linux/stddef.h \
  ../arch/arm64/include/uapi/asm/posix_types.h \
  ../include/uapi/asm-generic/posix_types.h \
  ../drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/mali_kbase_hwcnt_types.h \
  ../include/linux/bitops.h \
  ../include/linux/bits.h \
  ../include/linux/const.h \
  ../include/vdso/const.h \
  ../include/uapi/linux/const.h \
  ../include/vdso/bits.h \
  ../arch/arm64/include/asm/bitops.h \
  ../include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/debug/entry.h) \
    $(wildcard include/config/kasan.h) \
  ../arch/arm64/include/asm/barrier.h \
  ../include/asm-generic/barrier.h \
    $(wildcard include/config/smp.h) \
  ../include/linux/kasan-checks.h \
  ../include/asm-generic/bitops/builtin-__ffs.h \
  ../include/asm-generic/bitops/builtin-ffs.h \
  ../include/asm-generic/bitops/builtin-__fls.h \
  ../include/asm-generic/bitops/builtin-fls.h \
  ../include/asm-generic/bitops/ffz.h \
  ../include/asm-generic/bitops/fls64.h \
  ../include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  ../include/asm-generic/bitops/sched.h \
  ../include/asm-generic/bitops/hweight.h \
  ../include/asm-generic/bitops/arch_hweight.h \
  ../include/asm-generic/bitops/const_hweight.h \
  ../include/asm-generic/bitops/atomic.h \
  ../include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  ../arch/arm64/include/asm/atomic.h \
    $(wildcard include/config/arm64/lse/atomics.h) \
    $(wildcard include/config/as/lse.h) \
  ../arch/arm64/include/asm/lse.h \
  ../include/linux/export.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/sec/kunit.h) \
    $(wildcard include/config/kunit.h) \
    $(wildcard include/config/unused/symbols.h) \
  ../include/linux/stringify.h \
  ../arch/arm64/include/asm/alternative.h \
    $(wildcard include/config/arm64/uao.h) \
  ../arch/arm64/include/asm/cpucaps.h \
  ../arch/arm64/include/asm/insn.h \
  ../include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  ../arch/arm64/include/asm/atomic_lse.h \
  ../arch/arm64/include/asm/cmpxchg.h \
  ../include/linux/build_bug.h \
  ../include/asm-generic/atomic-long.h \
  ../include/asm-generic/bitops/lock.h \
  ../include/asm-generic/bitops/non-atomic.h \
  ../include/asm-generic/bitops/le.h \
  ../arch/arm64/include/uapi/asm/byteorder.h \
  ../include/linux/byteorder/little_endian.h \
  ../include/uapi/linux/byteorder/little_endian.h \
  ../include/linux/swab.h \
  ../include/uapi/linux/swab.h \
  arch/arm64/include/generated/uapi/asm/swab.h \
  ../include/uapi/asm-generic/swab.h \
  ../include/linux/byteorder/generic.h \
  ../include/asm-generic/bitops/ext2-atomic-setbit.h \
  ../include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
  /home/xddeath69/stock/toolchain/lib/clang/18/include/stdarg.h \
  /home/xddeath69/stock/toolchain/lib/clang/18/include/__stdarg___gnuc_va_list.h \
  /home/xddeath69/stock/toolchain/lib/clang/18/include/__stdarg_va_list.h \
  /home/xddeath69/stock/toolchain/lib/clang/18/include/__stdarg_va_arg.h \
  /home/xddeath69/stock/toolchain/lib/clang/18/include/__stdarg___va_copy.h \
  /home/xddeath69/stock/toolchain/lib/clang/18/include/__stdarg_va_copy.h \
  ../include/linux/linkage.h \
  ../arch/arm64/include/asm/linkage.h \
  ../include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  ../include/linux/typecheck.h \
  ../include/linux/printk.h \
    $(wildcard include/config/mtk/aee/feature.h) \
    $(wildcard include/config/log/too/much/warning.h) \
    $(wildcard include/config/printk/mtk/uart/console.h) \
    $(wildcard include/config/sec/debug/auto/comment.h) \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/quiet.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  ../include/linux/kern_levels.h \
  ../include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  ../include/uapi/linux/kernel.h \
  ../include/uapi/linux/sysinfo.h \
  ../arch/arm64/include/asm/cache.h \
    $(wildcard include/config/kasan/sw/tags.h) \
  ../arch/arm64/include/asm/cputype.h \
  ../arch/arm64/include/asm/sysreg.h \
    $(wildcard include/config/broken/gas/inst.h) \
    $(wildcard include/config/arm64/pa/bits/52.h) \
    $(wildcard include/config/arm64/4k/pages.h) \
    $(wildcard include/config/arm64/16k/pages.h) \
    $(wildcard include/config/arm64/64k/pages.h) \
  ../arch/arm64/include/asm/compiler.h \
  ../include/linux/dynamic_debug.h \
    $(wildcard include/config/jump/label.h) \
  ../include/linux/limits.h \
  ../include/uapi/linux/limits.h \
  ../include/vdso/limits.h \
  ../include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  ../include/uapi/linux/string.h \
  ../arch/arm64/include/asm/string.h \
    $(wildcard include/config/arch/has/uaccess/flushcache.h) \
  ../include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug/on/data/corruption.h) \
  ../arch/arm64/include/asm/bug.h \
  ../arch/arm64/include/asm/asm-bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  ../arch/arm64/include/asm/brk-imm.h \
  ../include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  ../include/linux/err.h \
  arch/arm64/include/generated/uapi/asm/errno.h \
  ../include/uapi/asm-generic/errno.h \
  ../include/uapi/asm-generic/errno-base.h \

drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/mali_kbase_hwcnt_gpu.o: $(deps_drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/mali_kbase_hwcnt_gpu.o)

$(deps_drivers/gpu/mediatek/gpu_mali/mali_valhall/mali-r32p1/drivers/gpu/arm/midgard/mali_kbase_hwcnt_gpu.o):
