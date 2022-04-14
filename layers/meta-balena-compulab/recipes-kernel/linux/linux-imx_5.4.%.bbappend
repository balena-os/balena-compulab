FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

inherit kernel-resin

KERNEL_IMAGETYPE_cl-som-imx8 = "Image.gz"

# Disable commit SHA in kernel version string
SCMVERSION="n"

RDEPENDS_kernel-image_remove="kernel-image-image.gz"
RDEPENDS_kernel-image_remove="kernel-image-image"

SRC_URI_append = " \
	file://USB3-stability-fix.patch \
	file://0001-Add-support-for-NXP-PCA9956B-LED-controller.patch \
"
SRC_URI_append_etcher-pro = " \
	file://0001-linux-imx-Enable-I2C4-in-cl-som-imx8-dtb.patch \
	file://0002-Enable-the-two-PCA9956B-LED-drivers-in-dtb.patch \
	file://0003-Set-fec1-to-fixed-link-mode.patch \
	file://0004-Enable-pwm1-interface.patch  \
	file://0005-Enable-the-GT911-touchpanel-in-the-device-tree.patch \
	file://0006-Rotate-the-GT911-touch-panel-180-degrees.patch \
	file://0007-Change-i2c4-clock-frequency-to-400kHz.patch \
	file://0008-Remove-reset-gpio-for-pcie0.patch \
	file://0009-Don-t-use-gpio-119-as-reset-pin-for-GT911.patch \
	file://0010-Enable-PWM2-and-PWM4.patch \
	file://0011-Disable-internal-imx-RTC-and-external-i2c-RTC.patch \
	file://0012-Fixes-for-backporting-errors.patch \
	file://0013-Add-ESD-Electrostatic-Discharge-protection-mechanism.patch \
	file://0014-Add-RST-touchpanel-pin-GPIO4_IO24.patch \
	file://0015-Update-device-tree-to-use-thermal-cooling-with-PWM-F.patch \
	file://0016-Add-KSZ9893-switch-support.patch \
	file://0017-Add-KS9893-RGMII-setup-for-EtcherPro.patch \
	file://0018-Enable-maxen-display-in-dt.patch \
	file://0019-drm-panel-raydium-rm67191-Adjust-for-Maxen-display.patch \
	file://0020-Add-KSZ9893-switch-type-in-compatible.patch \
	file://sbc-imx8-no-wp_v2.46.0+rev10.dtb \
	file://sbc-imx8-no-wp_v2.51.1+rev3.dtb \
"

BALENA_CONFIGS_append = " 80211 iwlwifi overlayfs debug_preempt_disable schedutil"
BALENA_CONFIGS[80211] = " \
    CONFIG_CFG80211=y \
"

BALENA_CONFIGS[overlayfs] = " \
    CONFIG_OVERLAY_FS=y \
"

BALENA_CONFIGS[iwlwifi] = " \
    CONFIG_IWLWIFI=m \
"

BALENA_CONFIGS[debug_preempt_disable] = " \
    CONFIG_DEBUG_PREEMPT=n \
"

BALENA_CONFIGS[schedutil] = " \
    CONFIG_CPU_FREQ_DEFAULT_GOV_SCHEDUTIL=y \
    CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y \
"

BALENA_CONFIGS_append_etcher-pro = " pca9956b"
BALENA_CONFIGS[pca9956b] = " \
    CONFIG_LEDS_PCA9956B=y \
"

BALENA_CONFIGS_append_etcher-pro = " dsa"
BALENA_CONFIGS[dsa] = " \
    CONFIG_NET_DSA=y \
    CONFIG_NET_DSA_TAG_KSZ=y \
    CONFIG_NET_DSA_MICROCHIP_KSZ_COMMON=y \
    CONFIG_NET_DSA_MICROCHIP_KSZ9477=y \
    CONFIG_NET_DSA_MICROCHIP_KSZ9477_I2C=y \
"

BALENA_CONFIGS_append_etcher-pro = " maxen_display"
BALENA_CONFIGS[maxen_display] = " \
    CONFIG_DRM_PANEL_RAYDIUM_RM67191=y \
"

BALENA_CONFIGS_append_etcher-pro = " rtc_configs"
BALENA_CONFIGS[rtc_configs] = " \
    CONFIG_RTC_HCTOSYS=n \
    CONFIG_RTC_SYSTOHC=n \
"

BALENA_CONFIGS_append_etcher-pro = " pwm_fan"
BALENA_CONFIGS[pwm_fan] = " \
    CONFIG_SENSORS_PWM_FAN=m \
"

BALENA_CONFIGS_append_etcher-pro = " tp_goodix"
BALENA_CONFIGS[tp_goodix] = " \
    CONFIG_TOUCHSCREEN_GOODIX=m \
"


do_configure_prepend_etcher-pro () {
    cat ${S}/arch/arm64/configs/cl-som-imx8_defconfig > ${S}/arch/arm64/configs/etcher-pro_defconfig
}

do_deploy_append_etcher-pro () {
    cp ${WORKDIR}/sbc-imx8-no-wp_v2.46.0+rev10.dtb ${DEPLOYDIR}
    cp ${WORKDIR}/sbc-imx8-no-wp_v2.51.1+rev3.dtb ${DEPLOYDIR}
}
