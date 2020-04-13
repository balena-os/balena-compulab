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
	file://0001-Add-support-for-KSZ9893R.patch \
	file://0001-Enable-KSZ9893R-switch-in-Etcher-Pro-dtb.patch \
	file://0001-Revert-MLK-17537-8-drm-mxsfb-Add-support-for-mode_va.patch \
	file://0002-Revert-MLK-17537-9-gpu-imx-dcss-Add-support-for-mode.patch \
	file://0003-Revert-MLK-17537-10-drm-imx-dcss-Add-support-for-mod.patch \
	file://0004-Revert-MLK-17537-11-arch-arm64-fsl-imx8mq-evk-Reconf.patch \
	file://0005-gpu-imx-dcss-Update-clocks.patch \
	file://0006-drm-bridge-nwl-Improve-the-clock-calculation.patch \
	file://0007-arch64-dts-fsl-imx8mq-Update-DCSS-LCDIF-and-DSI-cloc.patch \
	file://0001-tune-raydium-driver-for-maxen-display.patch \
	file://0001-enable-maxen-display-in-dt.patch \
	file://defconfig \
	file://0008-Enable_touchpanel_GT911.patch \
"

KERNEL_IMAGETYPE_cl-som-imx8 = "Image.gz"

RESIN_CONFIGS_append = " 80211 iwlwifi overlayfs debug_preempt_disable"
RESIN_CONFIGS[80211] = " \
    CONFIG_CFG80211=y \
"

RESIN_CONFIGS[overlayfs] = " \
    CONFIG_OVERLAY_FS=y \
"

RESIN_CONFIGS[iwlwifi] = " \
    CONFIG_IWLWIFI=m \
"

RESIN_CONFIGS[debug_preempt_disable] = " \
    CONFIG_DEBUG_PREEMPT=n \
"

RESIN_CONFIGS_append_etcher-pro = " pca9956b ksz9893r"
RESIN_CONFIGS[pca9956b] = " \
    CONFIG_LEDS_PCA9956B=y \
"

RESIN_CONFIGS[ksz9893r] = " \
    CONFIG_MICROCHIP_KSZ9893R=y \
"

RESIN_CONFIGS_append_etcher-pro = " maxen_display"
RESIN_CONFIGS[maxen_display] = " \
    CONFIG_DRM_PANEL_RAYDIUM_RM67191=y \
"

do_configure_prepend_etcher-pro () {
    cat ${S}/arch/arm64/configs/cl-som-imx8_defconfig > ${S}/arch/arm64/configs/etcher-pro_defconfig
}
