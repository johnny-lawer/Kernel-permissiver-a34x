/* SPDX-License-Identifier: GPL-2.0 */
/*
 * Copyright (c) 2019 MediaTek Inc.
 */

#if defined CONFIG_MACH_MT6877
#include "../../../mt6877/include/mach/mt_iommu_port.h"
#else
#ifndef __MT_IOMMU_PORT_H__
#define __MT_IOMMU_PORT_H__

/*
 * this header file is only used for mtk_iomm module
 * the definition of header file is platform dependency.
 */
//enable this option if M4U new design of multiple bank
//#define IOMMU_DESIGN_OF_BANK

struct mtk_iommu_port {
	char *name;
	unsigned m4u_id: 2;
	unsigned m4u_slave: 2;
	unsigned larb_id: 6;
	unsigned larb_port: 8;
	unsigned tf_id: 14;     /* 14 bits */
	bool enable_tf;
	mtk_iommu_fault_callback_t fault_fn;
	void *fault_data;
};
#define MTK_IOMMU_PORT_INIT(name, id, slave, larb, tf_larb, port)  {\
	name, id, slave, larb, port, (((tf_larb)<<7)|((port)<<2)), 1\
}

#define SLAVE_L0	(0)
#define SLAVE_L1	(0)
#define SLAVE_L2	(0)
#define SLAVE_L3	(0)
#define SLAVE_L4	(0)
#define SLAVE_L5	(0)
#define SLAVE_L7	(0)
#define SLAVE_L8	(0)
#define SLAVE_L9	(0)
#define SLAVE_L11	(0)
#define SLAVE_L13	(0)
#define SLAVE_L14	(0)
#define SLAVE_L16	(0)
#define SLAVE_L17	(0)
#define SLAVE_L18	(0)
#define SLAVE_L19	(0)
#define SLAVE_L20	(0)
#define SLAVE_APU	(0)
#define SLAVE_CCU0	(0)
#define SLAVE_CCU1	(0)

/* MM_IOMMU AXI_ID */
#define TF_LARB_L0	(0x0)
#define TF_LARB_L1	(0x4)
#define TF_LARB_L2	(0x10)
#define TF_LARB_L4	(0x8)
#define TF_LARB_L5	(0x9)
#define TF_LARB_L7	(0xc)
#define TF_LARB_L8	(0x5)//no use
#define TF_LARB_L9	(0x14)
#define TF_LARB_L11	(0x15)
#define TF_LARB_L13	(0x1d)
#define TF_LARB_L14	(0x19)
#define TF_LARB_L16	(0x1a)
#define TF_LARB_L17	(0x1f)
#define TF_LARB_L18	(0x1e)
#define TF_LARB_L19	(0x16)
#define TF_LARB_L20	(0x17)
#define TF_APU		(0x0)
#define TF_CCU0		(0x1c)
#define TF_CCU1		(0x18)

/* avoid build error */
#define TF_CCU_DISP	TF_CCU0
#define TF_CCU_MDP	TF_CCU1

int mtk_iommu_larb_port_count[] = {
	4, 5, 5, 0, 12,//0~4
	0, 0, 13, 0, 29, //5~9
	0, 29, 0, 12, 6, //10~14
	0, 17, 17, 17, 4, //15~19
	6, 3, 1, 1 //20~23
};

int mtk_iommu_larb_distance[] = {
	0, 4, 9, -1, 14, //0~4
	-1, -1, 26, -1, 39, //5~9
	-1, 68, -1, 97, 109, //10~14
	-1, 115, 132, 149, 166,//15~19
	170, 176, 179, 180 //20~23
};

struct mtk_iommu_port iommu_port[] = {
	/* Larb0 -- 4 */
	MTK_IOMMU_PORT_INIT("L0_DISP_POSTMASK0", 0,
		SLAVE_L0, 0, TF_LARB_L0, 0),
	MTK_IOMMU_PORT_INIT("L0_OVL_RDMA0_HDR", 0,
		SLAVE_L0, 0, TF_LARB_L0, 1),
	MTK_IOMMU_PORT_INIT("L0_OVL_RDMA0", 0,
		SLAVE_L0, 0, TF_LARB_L0, 2),
	MTK_IOMMU_PORT_INIT("L0_DISP_RDMA0", 0,
		SLAVE_L0, 0, TF_LARB_L0, 3),
	/* Larb1 -- 5(9) */
	MTK_IOMMU_PORT_INIT("L1_OVL_2L_RDMA0_HDR", 0,
		SLAVE_L1, 1, TF_LARB_L1, 0),
	MTK_IOMMU_PORT_INIT("L1_OVL_2L_RDMA0", 0,
		SLAVE_L1, 1, TF_LARB_L1, 1),
	MTK_IOMMU_PORT_INIT("L1_DISP_RDMA0", 0,
		SLAVE_L1, 1, TF_LARB_L1, 2),
	MTK_IOMMU_PORT_INIT("L1_DISP_WDMA0", 0,
		SLAVE_L1, 1, TF_LARB_L1, 3),
	MTK_IOMMU_PORT_INIT("L1_DISP_FAKE1", 0,
		SLAVE_L1, 1, TF_LARB_L1, 4),
	/* Larb2 --5(14) */
	MTK_IOMMU_PORT_INIT("L2_MDP_RDMA0", 0,
		SLAVE_L2, 2, TF_LARB_L2, 0),
	MTK_IOMMU_PORT_INIT("L2_MDP_RDMA1", 0,
		SLAVE_L2, 2, TF_LARB_L2, 1),
	MTK_IOMMU_PORT_INIT("L2_MDP_WROT0", 0,
		SLAVE_L2, 2, TF_LARB_L2, 2),
	MTK_IOMMU_PORT_INIT("L2_MDP_WROT1", 0,
		SLAVE_L2, 2, TF_LARB_L2, 3),
	MTK_IOMMU_PORT_INIT("L2_MDP_DISP_FAKE0", 0,
		SLAVE_L2, 2, TF_LARB_L2, 4),
	/* Larb4 -- 12(26) */
	MTK_IOMMU_PORT_INIT("L4_VDEC_MC_EXT", 0,
		SLAVE_L4, 4, TF_LARB_L4, 0),
	MTK_IOMMU_PORT_INIT("L4_VDEC_UFO_EXT", 0,
		SLAVE_L4, 4, TF_LARB_L4, 1),
	MTK_IOMMU_PORT_INIT("L4_VDEC_PP_EXT", 0,
		SLAVE_L4, 4, TF_LARB_L4, 2),
	MTK_IOMMU_PORT_INIT("L4_VDEC_PRED_RD_EXT", 0,
		SLAVE_L4, 4, TF_LARB_L4, 3),
	MTK_IOMMU_PORT_INIT("L4_VDEC_PRED_WR_EXT", 0,
		SLAVE_L4, 4, TF_LARB_L4, 4),
	MTK_IOMMU_PORT_INIT("L4_VDEC_PPWRAP_EXT", 0,
		SLAVE_L4, 4, TF_LARB_L4, 5),
	MTK_IOMMU_PORT_INIT("L4_VDEC_TILE_EXT", 0,
		SLAVE_L4, 4, TF_LARB_L4, 6),
	MTK_IOMMU_PORT_INIT("L4_VDEC_VLD_EXT", 0,
		SLAVE_L4, 4, TF_LARB_L4, 7),
	MTK_IOMMU_PORT_INIT("L4_VDEC_VLD2_EXT", 0,
		SLAVE_L4, 4, TF_LARB_L4, 8),
	MTK_IOMMU_PORT_INIT("L4_VDEC_AVC_MV_EXT", 0,
		SLAVE_L4, 4, TF_LARB_L4, 9),
	MTK_IOMMU_PORT_INIT("L4_VDEC_RG_CTRL_DMA_EXT", 0,
		SLAVE_L4, 4, TF_LARB_L4, 10),
	MTK_IOMMU_PORT_INIT("L4_VDEC_UFO_ENC_EXT", 0,
		SLAVE_L4, 4, TF_LARB_L4, 11),
	/* Larb7 --13(39) */
	MTK_IOMMU_PORT_INIT("L7_VENC_RCPU", 0,
		SLAVE_L7, 7, TF_LARB_L7, 0),
	MTK_IOMMU_PORT_INIT("L7_VENC_REC", 0,
		SLAVE_L7, 7, TF_LARB_L7, 1),
	MTK_IOMMU_PORT_INIT("L7_VENC_BSDMA", 0,
		SLAVE_L7, 7, TF_LARB_L7, 2),
	MTK_IOMMU_PORT_INIT("L7_VENC_SV_COMV", 0,
		SLAVE_L7, 7, TF_LARB_L7, 3),
	MTK_IOMMU_PORT_INIT("L7_VENC_RD_COMV", 0,
		SLAVE_L7, 7, TF_LARB_L7, 4),
	MTK_IOMMU_PORT_INIT("L7_VENC_CUR_LUMA", 0,
		SLAVE_L7, 7, TF_LARB_L7, 5),
	MTK_IOMMU_PORT_INIT("L7_VENC_CUR_CHROMA", 0,
		SLAVE_L7, 7, TF_LARB_L7, 6),
	MTK_IOMMU_PORT_INIT("L7_VENC_REF_LUMA", 0,
		SLAVE_L7, 7, TF_LARB_L7, 7),
	MTK_IOMMU_PORT_INIT("L7_VENC_REF_CHROMA", 0,
		SLAVE_L7, 7, TF_LARB_L7, 8),
	MTK_IOMMU_PORT_INIT("L7_JPGENC_Y_RDMA", 0,
		SLAVE_L7, 7, TF_LARB_L7, 9),
	MTK_IOMMU_PORT_INIT("L7_JPGENC_C_RDMA", 0,
		SLAVE_L7, 7, TF_LARB_L7, 10),
	MTK_IOMMU_PORT_INIT("L7_JPGENC_Q_TABLE", 0,
		SLAVE_L7, 7, TF_LARB_L7, 11),
	MTK_IOMMU_PORT_INIT("L7_JPGENC_BSDMA", 0,
		SLAVE_L7, 7, TF_LARB_L7, 12),
	/*Larb9 -- 29(68) */
	MTK_IOMMU_PORT_INIT("L9_IMG_IMGI_D1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 0),
	MTK_IOMMU_PORT_INIT("L9_IMG_IMGBI_D1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 1),
	MTK_IOMMU_PORT_INIT("L9_IMG_DMGI_D1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 2),
	MTK_IOMMU_PORT_INIT("L9_IMG_DEPI_D1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 3),
	MTK_IOMMU_PORT_INIT("L9_IMG_ICE_D1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 4),
	MTK_IOMMU_PORT_INIT("L9_IMG_SMTI_D1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 5),
	MTK_IOMMU_PORT_INIT("L9_IMG_SMTO_D2", 0,
		SLAVE_L9, 9, TF_LARB_L9, 6),
	MTK_IOMMU_PORT_INIT("L9_IMG_SMTO_D1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 7),
	MTK_IOMMU_PORT_INIT("L9_IMG_CRZO_D1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 8),
	MTK_IOMMU_PORT_INIT("L9_IMG_IMG3O_D1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 9),
	MTK_IOMMU_PORT_INIT("L9_IMG_VIPI_D1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 10),
	MTK_IOMMU_PORT_INIT("L9_IMG_SMTI_D5", 0,
		SLAVE_L9, 9, TF_LARB_L9, 11),
	MTK_IOMMU_PORT_INIT("L9_IMG_TIMGO_D1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 12),
	MTK_IOMMU_PORT_INIT("L9_IMG_UFBC_W0", 0,
		SLAVE_L9, 9, TF_LARB_L9, 13),
	MTK_IOMMU_PORT_INIT("L9_IMG_UFBC_R0", 0,
		SLAVE_L9, 9, TF_LARB_L9, 14),
	MTK_IOMMU_PORT_INIT("L9_IMG_WPE_RDMA1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 15),
	MTK_IOMMU_PORT_INIT("L9_IMG_WPE_RDMA0", 0,
		SLAVE_L9, 9, TF_LARB_L9, 16),
	MTK_IOMMU_PORT_INIT("L9_IMG_WPE_WDMA", 0,
		SLAVE_L9, 9, TF_LARB_L9, 17),
	MTK_IOMMU_PORT_INIT("L9_IMG_MFB_RDMA0", 0,
		SLAVE_L9, 9, TF_LARB_L9, 18),
	MTK_IOMMU_PORT_INIT("L9_IMG_MFB_RDMA1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 19),
	MTK_IOMMU_PORT_INIT("L9_IMG_MFB_RDMA2", 0,
		SLAVE_L9, 9, TF_LARB_L9, 20),
	MTK_IOMMU_PORT_INIT("L9_IMG_MFB_RDMA3", 0,
		SLAVE_L9, 9, TF_LARB_L9, 21),
	MTK_IOMMU_PORT_INIT("L9_IMG_MFB_RDMA4", 0,
		SLAVE_L9, 9, TF_LARB_L9, 22),
	MTK_IOMMU_PORT_INIT("L9_IMG_MFB_RDMA5", 0,
		SLAVE_L9, 9, TF_LARB_L9, 23),
	MTK_IOMMU_PORT_INIT("L9_IMG_MFB_WDMA0", 0,
		SLAVE_L9, 9, TF_LARB_L9, 24),
	MTK_IOMMU_PORT_INIT("L9_IMG_MFB_WDMA1", 0,
		SLAVE_L9, 9, TF_LARB_L9, 25),
	MTK_IOMMU_PORT_INIT("L9_IMG_RESERVE6", 0,
		SLAVE_L9, 9, TF_LARB_L9, 26),
	MTK_IOMMU_PORT_INIT("L9_IMG_RESERVE7", 0,
		SLAVE_L9, 9, TF_LARB_L9, 27),
	MTK_IOMMU_PORT_INIT("L9_IMG_RESERVE8", 0,
		SLAVE_L9, 9, TF_LARB_L9, 28),
	/*Larb11 -- 29(97) */
	MTK_IOMMU_PORT_INIT("L11_IMG_IMGI_D1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 0),
	MTK_IOMMU_PORT_INIT("L11_IMG_IMGBI_D1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 1),
	MTK_IOMMU_PORT_INIT("L11_IMG_DMGI_D1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 2),
	MTK_IOMMU_PORT_INIT("L11_IMG_DEPI_D1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 3),
	MTK_IOMMU_PORT_INIT("L11_IMG_ICE_D1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 4),
	MTK_IOMMU_PORT_INIT("L11_IMG_SMTI_D1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 5),
	MTK_IOMMU_PORT_INIT("L11_IMG_SMTO_D2", 0,
		SLAVE_L11, 11, TF_LARB_L11, 6),
	MTK_IOMMU_PORT_INIT("L11_IMG_SMTO_D1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 7),
	MTK_IOMMU_PORT_INIT("L11_IMG_CRZO_D1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 8),
	MTK_IOMMU_PORT_INIT("L11_IMG_IMG3O_D1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 9),
	MTK_IOMMU_PORT_INIT("L11_IMG_VIPI_D1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 10),
	MTK_IOMMU_PORT_INIT("L11_IMG_SMTI_D5", 0,
		SLAVE_L11, 11, TF_LARB_L11, 11),
	MTK_IOMMU_PORT_INIT("L11_IMG_TIMGO_D1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 12),
	MTK_IOMMU_PORT_INIT("L11_IMG_UFBC_W0", 0,
		SLAVE_L11, 11, TF_LARB_L11, 13),
	MTK_IOMMU_PORT_INIT("L11_IMG_UFBC_R0", 0,
		SLAVE_L11, 11, TF_LARB_L11, 14),
	MTK_IOMMU_PORT_INIT("L11_IMG_WPE_RDMA1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 15),
	MTK_IOMMU_PORT_INIT("L11_IMG_WPE_RDMA0", 0,
		SLAVE_L11, 11, TF_LARB_L11, 16),
	MTK_IOMMU_PORT_INIT("L11_IMG_WPE_WDMA", 0,
		SLAVE_L11, 11, TF_LARB_L11, 17),
	MTK_IOMMU_PORT_INIT("L11_IMG_MFB_RDMA0", 0,
		SLAVE_L11, 11, TF_LARB_L11, 18),
	MTK_IOMMU_PORT_INIT("L11_IMG_MFB_RDMA1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 19),
	MTK_IOMMU_PORT_INIT("L11_IMG_MFB_RDMA2", 0,
		SLAVE_L11, 11, TF_LARB_L11, 20),
	MTK_IOMMU_PORT_INIT("L11_IMG_MFB_RDMA3", 0,
		SLAVE_L11, 11, TF_LARB_L11, 21),
	MTK_IOMMU_PORT_INIT("L11_IMG_MFB_RDMA4", 0,
		SLAVE_L11, 11, TF_LARB_L11, 22),
	MTK_IOMMU_PORT_INIT("L11_IMG_MFB_RDMA5", 0,
		SLAVE_L11, 11, TF_LARB_L11, 23),
	MTK_IOMMU_PORT_INIT("L11_IMG_MFB_WDMA0", 0,
		SLAVE_L11, 11, TF_LARB_L11, 24),
	MTK_IOMMU_PORT_INIT("L11_IMG_MFB_WDMA1", 0,
		SLAVE_L11, 11, TF_LARB_L11, 25),
	MTK_IOMMU_PORT_INIT("L11_IMG_RESERVE6", 0,
		SLAVE_L11, 11, TF_LARB_L11, 26),
	MTK_IOMMU_PORT_INIT("L11_IMG_RESERVE7", 0,
		SLAVE_L11, 11, TF_LARB_L11, 27),
	MTK_IOMMU_PORT_INIT("L11_IMG_RESERVE8", 0,
		SLAVE_L11, 11, TF_LARB_L11, 28),
	/*Larb13 -- 12(109) */
	MTK_IOMMU_PORT_INIT("L13_CAM_MRAWI", 0,
		SLAVE_L13, 13, TF_LARB_L13, 0),
	MTK_IOMMU_PORT_INIT("L13_CAM_MRAWO0", 0,
		SLAVE_L13, 13, TF_LARB_L13, 1),
	MTK_IOMMU_PORT_INIT("L13_CAM_MRAWO1", 0,
		SLAVE_L13, 13, TF_LARB_L13, 2),
	MTK_IOMMU_PORT_INIT("L13_CAM_RESERVE1", 0,
		SLAVE_L13, 13, TF_LARB_L13, 3),
	MTK_IOMMU_PORT_INIT("L13_CAM_RESERVE2", 0,
		SLAVE_L13, 13, TF_LARB_L13, 4),
	MTK_IOMMU_PORT_INIT("L13_CAM_RESERVE3", 0,
		SLAVE_L13, 13, TF_LARB_L13, 5),
	MTK_IOMMU_PORT_INIT("L13_CAM_CAMSV4", 0,
		SLAVE_L13, 13, TF_LARB_L13, 6),
	MTK_IOMMU_PORT_INIT("L13_CAM_CAMSV5", 0,
		SLAVE_L13, 13, TF_LARB_L13, 7),
	MTK_IOMMU_PORT_INIT("L13_CAM_CAMSV6", 0,
		SLAVE_L13, 13, TF_LARB_L13, 8),
	MTK_IOMMU_PORT_INIT("L13_CAM_CCUI", 0,
		SLAVE_L13, 13, TF_LARB_L13, 9),
	MTK_IOMMU_PORT_INIT("L13_CAM_CCUO", 0,
		SLAVE_L13, 13, TF_LARB_L13, 10),
	MTK_IOMMU_PORT_INIT("L13_CAM_FAKE", 0,
		SLAVE_L13, 13, TF_LARB_L13, 11),
	/*Larb14 -- 6(115) */
	MTK_IOMMU_PORT_INIT("L14_CAM_RESERVE1", 0,
		SLAVE_L14, 14, TF_LARB_L14, 0),
	MTK_IOMMU_PORT_INIT("L14_CAM_RESERVE2", 0,
		SLAVE_L14, 14, TF_LARB_L14, 1),
	MTK_IOMMU_PORT_INIT("L14_CAM_RESERVE3", 0,
		SLAVE_L14, 14, TF_LARB_L14, 2),
	MTK_IOMMU_PORT_INIT("L14_CAM_RESERVE4", 0,
		SLAVE_L14, 14, TF_LARB_L14, 3),
	MTK_IOMMU_PORT_INIT("L14_CAM_CCUI", 0,
		SLAVE_L14, 14, TF_LARB_L14, 4),
	MTK_IOMMU_PORT_INIT("L14_CAM_CCUO", 0,
		SLAVE_L14, 14, TF_LARB_L14, 5),
	/*Larb16 -- 17(132) */
	MTK_IOMMU_PORT_INIT("L16_CAM_IMGO_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 0),
	MTK_IOMMU_PORT_INIT("L16_CAM_RRZO_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 1),
	MTK_IOMMU_PORT_INIT("L16_CAM_CQI_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 2),
	MTK_IOMMU_PORT_INIT("L16_CAM_BPCI_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 3),
	MTK_IOMMU_PORT_INIT("L16_CAM_YUVO_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 4),
	MTK_IOMMU_PORT_INIT("L16_CAM_UFDI_R2_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 5),
	MTK_IOMMU_PORT_INIT("L16_CAM_RAWI_R2_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 6),
	MTK_IOMMU_PORT_INIT("L16_CAM_RAWI_R3_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 7),
	MTK_IOMMU_PORT_INIT("L16_CAM_AAO_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 8),
	MTK_IOMMU_PORT_INIT("L16_CAM_AFO_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 9),
	MTK_IOMMU_PORT_INIT("L16_CAM_FLKO_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 10),
	MTK_IOMMU_PORT_INIT("L16_CAM_LCESO_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 11),
	MTK_IOMMU_PORT_INIT("L16_CAM_CRZO_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 12),
	MTK_IOMMU_PORT_INIT("L16_CAM_LTMSO_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 13),
	MTK_IOMMU_PORT_INIT("L16_CAM_RSSO_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 14),
	MTK_IOMMU_PORT_INIT("L16_CAM_AAHO_R1_A_", 0,
		SLAVE_L16, 16, TF_LARB_L16, 15),
	MTK_IOMMU_PORT_INIT("L16_CAM_LSCI_R1_A", 0,
		SLAVE_L16, 16, TF_LARB_L16, 16),
	/*Larb17 -- 17(149) */
	MTK_IOMMU_PORT_INIT("L17_CAM_IMGO_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 0),
	MTK_IOMMU_PORT_INIT("L17_CAM_RRZO_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 1),
	MTK_IOMMU_PORT_INIT("L17_CAM_CQI_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 2),
	MTK_IOMMU_PORT_INIT("L17_CAM_BPCI_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 3),
	MTK_IOMMU_PORT_INIT("L17_CAM_YUVO_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 4),
	MTK_IOMMU_PORT_INIT("L17_CAM_UFDI_R2_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 5),
	MTK_IOMMU_PORT_INIT("L17_CAM_RAWI_R2_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 6),
	MTK_IOMMU_PORT_INIT("L17_CAM_RAWI_R3_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 7),
	MTK_IOMMU_PORT_INIT("L17_CAM_AAO_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 8),
	MTK_IOMMU_PORT_INIT("L17_CAM_AFO_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 9),
	MTK_IOMMU_PORT_INIT("L17_CAM_FLKO_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 10),
	MTK_IOMMU_PORT_INIT("L17_CAM_LCESO_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 11),
	MTK_IOMMU_PORT_INIT("L17_CAM_CRZO_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 12),
	MTK_IOMMU_PORT_INIT("L17_CAM_LTMSO_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 13),
	MTK_IOMMU_PORT_INIT("L17_CAM_RSSO_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 14),
	MTK_IOMMU_PORT_INIT("L17_CAM_AAHO_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 15),
	MTK_IOMMU_PORT_INIT("L17_CAM_LSCI_R1_B", 0,
		SLAVE_L17, 17, TF_LARB_L17, 16),
	/*Larb18 -- 17(166) */
	MTK_IOMMU_PORT_INIT("L18_CAM_IMGO_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 0),
	MTK_IOMMU_PORT_INIT("L18_CAM_RRZO_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 1),
	MTK_IOMMU_PORT_INIT("L18_CAM_CQI_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 2),
	MTK_IOMMU_PORT_INIT("L18_CAM_BPCI_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 3),
	MTK_IOMMU_PORT_INIT("L18_CAM_YUVO_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 4),
	MTK_IOMMU_PORT_INIT("L18_CAM_UFDI_R2_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 5),
	MTK_IOMMU_PORT_INIT("L18_CAM_RAWI_R2_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 6),
	MTK_IOMMU_PORT_INIT("L18_CAM_RAWI_R3_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 7),
	MTK_IOMMU_PORT_INIT("L18_CAM_AAO_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 8),
	MTK_IOMMU_PORT_INIT("L18_CAM_AFO_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 9),
	MTK_IOMMU_PORT_INIT("L18_CAM_FLKO_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 10),
	MTK_IOMMU_PORT_INIT("L18_CAM_LCESO_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 11),
	MTK_IOMMU_PORT_INIT("L18_CAM_CRZO_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 12),
	MTK_IOMMU_PORT_INIT("L18_CAM_LTMSO_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 13),
	MTK_IOMMU_PORT_INIT("L18_CAM_RSSO_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 14),
	MTK_IOMMU_PORT_INIT("L18_CAM_AAHO_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 15),
	MTK_IOMMU_PORT_INIT("L18_CAM_LSCI_R1_C", 0,
		SLAVE_L18, 18, TF_LARB_L18, 16),
	/*Larb19 -- 4(170) */
	MTK_IOMMU_PORT_INIT("L19_IPE_DVS_RDMA", 0,
		SLAVE_L19, 19, TF_LARB_L19, 0),
	MTK_IOMMU_PORT_INIT("L19_IPE_DVS_WDMA", 0,
		SLAVE_L19, 19, TF_LARB_L19, 1),
	MTK_IOMMU_PORT_INIT("L19_IPE_DVP_RDMA", 0,
		SLAVE_L19, 19, TF_LARB_L19, 2),
	MTK_IOMMU_PORT_INIT("L19_IPE_DVP_WDMA", 0,
		SLAVE_L19, 19, TF_LARB_L19, 3),
	/*Larb20 -- 6(176) */
	MTK_IOMMU_PORT_INIT("L20_IPE_FDVT_RDA", 0,
		SLAVE_L20, 20, TF_LARB_L20, 0),
	MTK_IOMMU_PORT_INIT("L20_IPE_FDVT_RDB", 0,
		SLAVE_L20, 20, TF_LARB_L20, 1),
	MTK_IOMMU_PORT_INIT("L20_IPE_FDVT_WRA", 0,
		SLAVE_L20, 20, TF_LARB_L20, 2),
	MTK_IOMMU_PORT_INIT("L20_IPE_FDVT_WRB", 0,
		SLAVE_L20, 20, TF_LARB_L20, 3),
	MTK_IOMMU_PORT_INIT("L20_IPE_RSC_RDMA0", 0,
		SLAVE_L20, 20, TF_LARB_L20, 4),
	MTK_IOMMU_PORT_INIT("L20_IPE_RSC_WDMA", 0,
		SLAVE_L20, 20, TF_LARB_L20, 5),
	/* only atf maybe need it, but kernel can't delete it,
	 *  otherwise it affect index.
	 */
	/*Larb21 -- 3(179) */
	MTK_IOMMU_PORT_INIT("L21_APU_FAKE_CODE", 1,
		SLAVE_APU, 21, TF_APU, 0),
	MTK_IOMMU_PORT_INIT("L21_APU_FAKE_DATA", 1,
		SLAVE_APU, 21, TF_APU, 1),
	MTK_IOMMU_PORT_INIT("L21_APU_FAKE_VLM", 1,
		SLAVE_APU, 21, TF_APU, 2),
	/*Larb22 -- 1(180) */
	MTK_IOMMU_PORT_INIT("L22_CCU0", 0,
		SLAVE_CCU0, 22, TF_CCU0, 0),
	/*Larb23  -- 1(181) */
	MTK_IOMMU_PORT_INIT("L23_CCU1", 0,
		SLAVE_CCU1, 23, TF_CCU1, 0),

	/*Larb23  -- 1(182: 0~181) */
	MTK_IOMMU_PORT_INIT("UNKNOWN", 0, 0, 0, 0, 0)
};

/* APU_IOMMU AXI_ID */
#define TF_VP6_0		(0x0)
#define TF_VP6_1		(0x1)
#define TF_UP			(0x2)
#define TF_XPU			(0x3)

#define MSK_VP6_0		F_MSK(10, 7)
#define MSK_VP6_1		F_MSK(10, 7)
#define MSK_UP			F_MSK(10, 7)
#define MSK_XPU			F_MSK(10, 7)

#define IOMMU_APU_AXI_PORT_NR	(4)

static uint32_t vpu_axi_bus_id[IOMMU_APU_AXI_PORT_NR] = {
	TF_VP6_0, TF_VP6_1, TF_UP, TF_XPU};

static uint32_t vpu_axi_bus_mask[IOMMU_APU_AXI_PORT_NR] = {
	MSK_VP6_0, MSK_VP6_1, MSK_UP, MSK_XPU};

static char *vpu_axi_bus_name[IOMMU_APU_AXI_PORT_NR] = {
	"APU_VP6_0", "APU_VP6_1", "APU_UP", "APU_XPU"};

#ifndef M4U_PORT_NR
#define M4U_PORT_NR (181)
#endif
#endif
#endif
