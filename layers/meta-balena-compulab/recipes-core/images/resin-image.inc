IMAGE_FSTYPES_append_cl-som-imx8 = " resinos-img"
KERNEL_IMAGETYPE_cl-som-imx8 = "Image.gz"

RESIN_BOOT_PARTITION_FILES_cl-som-imx8 = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/Image.gz \
    ${KERNEL_IMAGETYPE}-cl-som-imx8.dtb:/cl-som-imx8.dtb \
    ${KERNEL_IMAGETYPE}-sbc-imx8.dtb:/sbc-imx8.dtb \
    ${KERNEL_IMAGETYPE}-sbc-imx8-bluetooth.dtb:/sbc-imx8-bluetooth.dtb \
    ${KERNEL_IMAGETYPE}-sbc-imx8-lvds-dcss.dtb:/sbc-imx8-lvds-dcss.dtb \
    ${KERNEL_IMAGETYPE}-sbc-imx8-lvds-lcdif.dtb:/sbc-imx8-lvds-lcdif.dtb \
    ${KERNEL_IMAGETYPE}-sbc-imx8-dual.dtb:/sbc-imx8-dual.dtb \
    ${KERNEL_IMAGETYPE}-sbc-imx8-thermal.dtb:/sbc-imx8-thermal.dtb \
    ${KERNEL_IMAGETYPE}-sbc-imx8-m4.dtb:/sbc-imx8-m4.dtb \
"

IMAGE_INSTALL_append_cl-som-imx8 = " \
                                        imx-boot \
                                        kernel-modules \
					firmware-imx \
"

IMAGE_CMD_resinos-img_append_cl-som-imx8 () {
    dd if=${DEPLOY_DIR_IMAGE}/imx-boot-${MACHINE}-sd.bin-flash_evk of=${RESIN_RAW_IMG} conv=notrunc seek=33 bs=1K
}

