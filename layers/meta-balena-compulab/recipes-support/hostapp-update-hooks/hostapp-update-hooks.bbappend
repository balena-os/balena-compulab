FILESEXTRAPATHS_append := ":${THISDIR}/files"

HOSTAPP_HOOKS_append_cl-som-imx8 = " \
    99-resin-uboot \
    99-flash-bootloader-cl-som-imx8 \
"
