IMAGE_FSTYPES_append_cl-som-imx8 = " balenaos-img"
KERNEL_IMAGETYPE_cl-som-imx8 = "Image.gz"

BALENA_BOOT_PARTITION_FILES_cl-som-imx8 = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/Image.gz \
    cl-som-imx8.dtb:/cl-som-imx8.dtb \
    sbc-imx8.dtb:/sbc-imx8.dtb \
    sbc-imx8-bluetooth.dtb:/sbc-imx8-bluetooth.dtb \
    sbc-imx8-lvds-dcss.dtb:/sbc-imx8-lvds-dcss.dtb \
    sbc-imx8-lvds-lcdif.dtb:/sbc-imx8-lvds-lcdif.dtb \
    sbc-imx8-dual.dtb:/sbc-imx8-dual.dtb \
    sbc-imx8-thermal.dtb:/sbc-imx8-thermal.dtb \
    sbc-imx8-m4.dtb:/sbc-imx8-m4.dtb \
"

BALENA_BOOT_PARTITION_FILES_etcher-pro = " \
    ${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin:/Image.gz \
    sbc-imx8-no-wp.dtb:/sbc-imx8-no-wp.dtb \
    sbc-imx8-no-wp_v2.46.0+rev10.dtb:/sbc-imx8-no-wp_v2.46.0+rev10.dtb \
    sbc-imx8-no-wp_v2.51.1+rev3.dtb:/sbc-imx8-no-wp_v2.51.1+rev3.dtb \
"

IMAGE_INSTALL_append_cl-som-imx8 = " \
                                        imx-boot \
                                        kernel-modules \
					firmware-imx \
					firmware-imx-sdma \
					firmware-imx-epdc \
					linux-firmware-ibt \
"

IMAGE_CMD_balenaos-img_append_cl-som-imx8 () {
    dd if=${DEPLOY_DIR_IMAGE}/imx-boot-${MACHINE}-sd.bin-flash_evk of=${BALENA_RAW_IMG} conv=notrunc seek=33 bs=1K
}

