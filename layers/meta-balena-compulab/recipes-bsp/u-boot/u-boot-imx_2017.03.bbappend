FILESEXTRAPATHS_prepend := "${THISDIR}/compulab:${THISDIR}/patches:"

UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

include compulab/cl-som-imx8.inc

SRC_URI_append_cl-som-imx8 = " \
	file://0001-Integrate-with-Balena-u-boot-environment.patch \
"

SRC_URI_append_cl-imx8-v1-1 = " \
	file://0002-Add_dts_cl-imx8-v1-1.patch \
	file://0003-Add_CONFIG_SYS_BOARD_cl-imx8-v1-1.patch \
"

PACKAGE_ARCH = "${MACHINE_ARCH}"
COMPATIBLE_MACHINE = "(cl-som-imx8|cl-imx8-v1-1)"
