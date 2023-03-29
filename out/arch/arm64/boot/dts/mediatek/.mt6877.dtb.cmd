cmd_arch/arm64/boot/dts/mediatek/mt6877.dtb := mkdir -p arch/arm64/boot/dts/mediatek/ ; clang -E -Wp,-MD,arch/arm64/boot/dts/mediatek/.mt6877.dtb.d.pre.tmp -nostdinc -I../scripts/dtc/include-prefixes -I../arch/arm64/boot/dts -I../arch/arm64/boot/dts/include -I./include/ -Iarch/arm64/boot/dts -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/mediatek/.mt6877.dtb.dts.tmp ../arch/arm64/boot/dts/mediatek/mt6877.dts ; ./scripts/dtc/dtc -@ -O dtb -o arch/arm64/boot/dts/mediatek/mt6877.dtb -b 0 -i../arch/arm64/boot/dts/mediatek/ -i../scripts/dtc/include-prefixes -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-simple_bus_reg -Wno-unique_unit_address -Wno-pci_device_reg  -d arch/arm64/boot/dts/mediatek/.mt6877.dtb.d.dtc.tmp arch/arm64/boot/dts/mediatek/.mt6877.dtb.dts.tmp 2>arch/arm64/boot/dts/mediatek/mt6877.dtb.dtout || ( cat  arch/arm64/boot/dts/mediatek/mt6877.dtb.dtout; for err in "$$(cat  arch/arm64/boot/dts/mediatek/mt6877.dtb.dtout | grep 'Error:')"; do echo "See more detail error as below:"; cat $$(echo $$err | cut -d':' -f2) | awk '{printf("ERROR: %6d  %s\n"), NR, $$0}' | head -n $$(echo $$err | grep -Eo ':[0-9]+' | cut -d':' -f2) | tail -n 2; done; rm  arch/arm64/boot/dts/mediatek/mt6877.dtb.dtout; false; ) ; ./scripts/dtc/dtc -q -O dts -I dtb -o arch/arm64/boot/dts/mediatek/mt6877.dtb.reverse.dts arch/arm64/boot/dts/mediatek/mt6877.dtb ; cat arch/arm64/boot/dts/mediatek/.mt6877.dtb.d.pre.tmp arch/arm64/boot/dts/mediatek/.mt6877.dtb.d.dtc.tmp > arch/arm64/boot/dts/mediatek/.mt6877.dtb.d

source_arch/arm64/boot/dts/mediatek/mt6877.dtb := ../arch/arm64/boot/dts/mediatek/mt6877.dts

deps_arch/arm64/boot/dts/mediatek/mt6877.dtb := \
    $(wildcard include/config/mtk/gmo/ram/optimize.h) \
    $(wildcard include/config/mtk/met/mem/alloc.h) \
    $(wildcard include/config/fpga/early/porting.h) \
    $(wildcard include/config/mtk/tinysys/scp/logger/support.h) \
    $(wildcard include/config/battery/samsung.h) \
    $(wildcard include/config/sec/factory.h) \
    $(wildcard include/config/regulator/mt6315.h) \
    $(wildcard include/config/mtk/gauge/version.h) \
    $(wildcard include/config/mtk/sec/video/path/support.h) \
    $(wildcard include/config/mtk/iommu/v2.h) \
    $(wildcard include/config/mtk/cam/security/support.h) \
    $(wildcard include/config/sec/debug.h) \
    $(wildcard include/config/mtk/enable/geniezone.h) \
  ../scripts/dtc/include-prefixes/dt-bindings/clock/mt6877-clk.h \
  ../scripts/dtc/include-prefixes/dt-bindings/iio/mt635x-auxadc.h \
    $(wildcard include/config/mach/mt6768.h) \
    $(wildcard include/config/mach/mt6739.h) \
    $(wildcard include/config/mach/mt6781.h) \
    $(wildcard include/config/mach/mt6877.h) \
    $(wildcard include/config/mach/mt6833.h) \
    $(wildcard include/config/mach/mt6853.h) \
    $(wildcard include/config/mach/mt6873.h) \
  ../scripts/dtc/include-prefixes/dt-bindings/mfd/mt6315-irq.h \
  ../scripts/dtc/include-prefixes/dt-bindings/mfd/mt6359-irq.h \
  ../scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/arm-gic.h \
  ../scripts/dtc/include-prefixes/dt-bindings/interrupt-controller/irq.h \
  ../scripts/dtc/include-prefixes/dt-bindings/spmi/spmi.h \
  ../scripts/dtc/include-prefixes/dt-bindings/memory/mt6877-larb-port.h \
    $(wildcard include/config/mtk/iommu/pgtable/ext.h) \
    $(wildcard include/config/mtk/apusys/support.h) \
  ../scripts/dtc/include-prefixes/dt-bindings/mmc/mt6877-msdc.h \
  ../scripts/dtc/include-prefixes/dt-bindings/gce/mt6877-gce.h \
  ../scripts/dtc/include-prefixes/dt-bindings/phy/phy.h \
  ../scripts/dtc/include-prefixes/dt-bindings/pinctrl/mt6877-pinfunc.h \
  ../scripts/dtc/include-prefixes/dt-bindings/pinctrl/mt65xx.h \
  ../scripts/dtc/include-prefixes/dt-bindings/soc/mediatek,boot-mode.h \
  ../scripts/dtc/include-prefixes/dt-bindings/reset/ti-syscon.h \
  ../arch/arm64/boot/dts/mediatek/sec_debug_mt6877.dtsi \
    $(wildcard include/config/sec/debug/init/log.h) \
    $(wildcard include/config/sec/dump/sink.h) \
  ../arch/arm64/boot/dts/mediatek/v1/mt6360.dtsi \
  ../arch/arm64/boot/dts/mediatek/mt6315_s6.dtsi \
  ../arch/arm64/boot/dts/mediatek/mt6315_s3.dtsi \
  ../arch/arm64/boot/dts/mediatek/mt6359p.dtsi \
  ../arch/arm64/boot/dts/mediatek/cust_mt6877_msdc.dtsi \
  ../scripts/dtc/include-prefixes/dt-bindings/gpio/gpio.h \
  ../arch/arm64/boot/dts/mediatek/mt6877-clkitg.dtsi \
  ../arch/arm64/boot/dts/mediatek/v1/mt6360_pd.dtsi \
  ../arch/arm64/boot/dts/mediatek/rt5133.dtsi \
  ../arch/arm64/boot/dts/mediatek/trusty.dtsi \
  ../arch/arm64/boot/dts/mediatek/cust_mt6877_connfem.dtsi \
  ../arch/arm64/boot/dts/mediatek/modem-MTK-pdata.dtsi \

arch/arm64/boot/dts/mediatek/mt6877.dtb: $(deps_arch/arm64/boot/dts/mediatek/mt6877.dtb)

$(deps_arch/arm64/boot/dts/mediatek/mt6877.dtb):
