FILESEXTRAPATHS_prepend := "${THISDIR}/compulab:${THISDIR}/patches:"

UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

include compulab/cl-som-imx8.inc

SRC_URI_append_cl-som-imx8 = " \
	file://0001-Integrate-with-Balena-u-boot-environment.patch \
"

PACKAGE_ARCH = "${MACHINE_ARCH}"
COMPATIBLE_MACHINE = "(cl-som-imx8)"
