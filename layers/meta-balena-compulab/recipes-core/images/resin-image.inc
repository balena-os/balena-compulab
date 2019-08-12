IMAGE_FSTYPES_append = " resinos-img"

RESIN_BOOT_PARTITION_FILES_cl-som-imx8 = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/Image.gz \
    ${KERNEL_IMAGETYPE}-cl-som-imx8.dtb:/cl-som-imx8.dtb \
    ${KERNEL_IMAGETYPE}-cl-som-imx8-4k.dtb:/cl-som-imx8-4k.dtb \ 
    ${KERNEL_IMAGETYPE}-cl-som-imx8-csi.dtb:/cl-som-imx8-csi.dtb \
    ${KERNEL_IMAGETYPE}-cl-som-imx8-dual.dtb:/cl-som-imx8-dual.dtb \ 
    ${KERNEL_IMAGETYPE}-cl-som-imx8-lvds-dcss.dtb:/cl-som-imx8-lvds-dcss.dtb \
    ${KERNEL_IMAGETYPE}-cl-som-imx8-lvds-lcdif.dtb:/cl-som-imx8-lvds-lcdif.dtb \ 
"

RESIN_BOOT_PARTITION_FILES_cl-imx8-v1-1 = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/Image.gz \
    ${KERNEL_IMAGETYPE}-cl-imx8-v1-1.dtb:/cl-imx8-v1-1.dtb \
"

IMAGE_INSTALL_append = " \
                                        imx-boot \
                                        kernel-modules \
					firmware-imx-brcm \
					wifi-start \
					bt-start \
"

IMAGE_CMD_resinos-img_append () {
    dd if=${DEPLOY_DIR_IMAGE}/imx-boot-${MACHINE}-sd.bin-flash_evk of=${RESIN_RAW_IMG} conv=notrunc seek=33 bs=1K
}

