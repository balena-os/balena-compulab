inherit kernel-resin
FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI_append = " \
        file://0002-NFLX-2019-001-SACK-Panic.patch \
        file://0003-NFLX-2019-001-SACK-Panic-for-lteq-4.14.patch \
        file://0004-NFLX-2019-001-SACK-Slowness.patch \
        file://0005-NFLX-2019-001-Resour-Consump-Low-MSS.patch \
        file://0006-NFLX-2019-001-Resour-Consump-Low-MSS.patch \
        file://USB3-stability-fix.patch \
        file://0001-Add-support-for-NXP-PCA9956B-LED-controller.patch \
"

SRC_URI_append_etcher-pro = " \
	file://0001-linux-imx-Enable-I2C4-in-cl-som-imx8-dtb.patch \
	file://0001-Enable-the-two-PCA9956B-LED-drivers-in-dtb.patch \
	file://0001-Set-fec1-to-fixed-link-mode.patch \
	file://0001-Enable-pwm1-interface.patch \
	file://0001-Revert-MLK-17537-8-drm-mxsfb-Add-support-for-mode_va.patch \
	file://0002-Revert-MLK-17537-9-gpu-imx-dcss-Add-support-for-mode.patch \
	file://0003-Revert-MLK-17537-10-drm-imx-dcss-Add-support-for-mod.patch \
	file://0004-Revert-MLK-17537-11-arch-arm64-fsl-imx8mq-evk-Reconf.patch \
	file://0005-gpu-imx-dcss-Update-clocks.patch \
	file://0006-drm-bridge-nwl-Improve-the-clock-calculation.patch \
	file://0007-arch64-dts-fsl-imx8mq-Update-DCSS-LCDIF-and-DSI-cloc.patch \
	file://0001-tune-raydium-driver-for-maxen-display.patch \
	file://0001-enable-maxen-display-in-dt.patch \
	file://0008-Enable_touchpanel_GT911.patch \
	file://0009-Rotate_180degree_touchpanel_GT911.patch \
	file://0010-change_i2c4_clock_freq_400kHz.patch \
	file://0011-remove-reset-gpio-for-pcie0.patch \
	file://0012-remove-reset-pin-from-gt911.patch \
	file://0014-Enable_PWM2_and_PWM4.patch \
	file://0016-Remove-ecspi-pin-controller-and-dts-node.patch \
	file://0017-Remove-uart1-dts-reference-and-change-pad-and-pad-va.patch \
	file://0018-Enable-UART1-node.patch \
	file://0019-Add-kernel-5.x-mainline-KSZ9893-switch-support.patch \
	file://0020-Disable-internal-imx-RTC-and-external-i2c-RTC.patch \
	file://0021-Input-goodix-add-support-for-ESD.patch \
	file://0022-Add-RST-touchpanel-pin-GPIO4_IO24.patch \
	file://0023-Add-dts-thermal-PWM-cooling.patch \
	file://sbc-imx8-no-wp_v2.46.0+rev10.dtb \
	file://sbc-imx8-no-wp_v2.51.1+rev3.dtb \
	file://0001-drm-panel-raydium-rm67191-Adjust-for-Maxen-display.patch \
	file://0002-nwl_dsi-imx-Delays-before-and-after-clock-enabling-d.patch \
  file://0001-compulab-imx8mq.dtsi-Configure-SPDIX_RX-as-GPIO5_IO4.patch \
"

KERNEL_IMAGETYPE_cl-som-imx8 = "Image.gz"

# Disable commit SHA in kernel version string
SCMVERSION="n"

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

BALENA_CONFIGS_append_etcher-pro = " maxen_display"
BALENA_CONFIGS[maxen_display] = " \
    CONFIG_DRM_PANEL_RAYDIUM_RM67191=y \
"

BALENA_CONFIGS_append_etcher-pro = " dsa"
BALENA_CONFIGS[dsa] = " \
    CONFIG_NET_DSA=y \
    CONFIG_NET_DSA_MICROCHIP_KSZ_COMMON=y \
    CONFIG_NET_DSA_MICROCHIP_KSZ9477=y \
    CONFIG_NET_DSA_MICROCHIP_KSZ9477_I2C=y \
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

do_configure_prepend_etcher-pro () {
    cat ${S}/arch/arm64/configs/cl-som-imx8_defconfig > ${S}/arch/arm64/configs/etcher-pro_defconfig
}

do_deploy_append_etcher-pro () {
    cp ${WORKDIR}/sbc-imx8-no-wp_v2.46.0+rev10.dtb ${DEPLOYDIR}
    cp ${WORKDIR}/sbc-imx8-no-wp_v2.51.1+rev3.dtb ${DEPLOYDIR}
}
