FILESEXTRAPATHS_prepend := "${THISDIR}/patches:"

PREFERRED_PROVIDER_virtual/bootloader_cl-som-imx8 = "u-boot-imx"

UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

SRC_URI_append += " \
	file://0001-Integrate-with-Balena-u-boot-environment.patch \
	file://0002-Set-video-resolution-1024x600.patch \
"

