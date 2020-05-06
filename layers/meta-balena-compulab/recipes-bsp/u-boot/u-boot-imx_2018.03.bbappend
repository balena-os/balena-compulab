FILESEXTRAPATHS_prepend := "${THISDIR}/patches:"

PREFERRED_PROVIDER_virtual/bootloader_cl-som-imx8 = "u-boot-imx"

UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

SRC_URI_append += " \
	file://0001-Integrate-with-Balena-u-boot-environment.patch \
"

SRC_URI_append_etcher-pro += " \
	file://0002-Set-video-resolution-1920x1080.patch \
	file://0003-Set_device_tree_to_sbc-imx8-no-wp.dtb.patch \
	file://0004-remove-usb-scan-at-bootup.patch \
"
