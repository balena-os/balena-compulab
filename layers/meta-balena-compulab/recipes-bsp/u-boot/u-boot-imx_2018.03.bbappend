FILESEXTRAPATHS_prepend := "${THISDIR}/patches:"

PREFERRED_PROVIDER_virtual/bootloader_cl-som-imx8 = "u-boot-imx"

UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

SRC_URI_append += " \
	file://0001-Integrate-with-Balena-u-boot-environment.patch \
	file://0002-Set_device_tree_to_sbc-imx8-bluetooth.dtb.patch \
"

# the etcher-pro machine inherits all from cl-som-imx8 so
# everything which is added specifically for cl-som-imx8 will
# be added for etcher-pro also
# remove the dtb set patch for the etcher-pro
SRC_URI_remove_etcher-pro = " \
	file://0002-Set_device_tree_to_sbc-imx8-bluetooth.dtb.patch \
"

SRC_URI_append_etcher-pro += " \
	file://0002-Set-video-resolution-1920x1080.patch \
	file://0003-Set_device_tree_to_sbc-imx8-no-wp.dtb.patch \
	file://0005-maxen-mipi-display-gpios-configuration.patch \
	file://0006-update-gpios-to-epv2_3.patch \
	file://0008-Set-GPIO5_IO22-to-low.patch \
	file://0009-Add_EEPROM_EP_versioning_based_on_board_hw_version.patch \
	file://0010-Fix-crash-when-issuing-usb-reset.patch \
	file://0011-Bootcmd-fixes.patch \
"

BALENA_UBOOT_DEVICE_TYPES = "mmc"
BALENA_UBOOT_DEVICES = "0 1"

do_compile[nostamp] = "1"
