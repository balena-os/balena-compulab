FILESEXTRAPATHS_prepend := "${THISDIR}/patches:"

PREFERRED_PROVIDER_virtual/bootloader_cl-som-imx8 = "u-boot-imx"

UBOOT_KCONFIG_SUPPORT = "1"
inherit resin-u-boot

SRC_URI_remove = "file://resin-specific-env-integration-kconfig.patch"


SRC_URI_append += " \
	file://redone-resin-specific-env-integration-kconfig.patch \
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
	file://0002-Set-device-tree-to-sbc-imx8-no-wp.dtb-for-EP.patch \
	file://0003-Set-video-resolution.patch \
	file://0004-MIPI-MAXEN-display-GPIO-configuration.patch \
	file://0005-Update-gpios-pins-to-reflect-etcher-pro-hardwa.patch \
	file://0006-Add-EEPROM-EtcherPro-versioning-based-on-board-hw-ve.patch \
"

BALENA_UBOOT_DEVICES = "0 1"

do_compile[nostamp] = "1"