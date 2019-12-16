inherit kernel-resin
FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI_append = " \
        file://0002-NFLX-2019-001-SACK-Panic.patch \
        file://0003-NFLX-2019-001-SACK-Panic-for-lteq-4.14.patch \
        file://0004-NFLX-2019-001-SACK-Slowness.patch \
        file://0005-NFLX-2019-001-Resour-Consump-Low-MSS.patch \
        file://0006-NFLX-2019-001-Resour-Consump-Low-MSS.patch \
        file://USB3-stability-fix.patch \
        file://0001-linux-imx-Enable-I2C4-in-cl-som-imx8-dtb.patch \
"


KERNEL_IMAGETYPE_cl-som-imx8 = "Image.gz"

RESIN_CONFIGS_append = " 80211 iwlwifi overlayfs"
RESIN_CONFIGS[80211] = " \
    CONFIG_CFG80211=y \
"

RESIN_CONFIGS[overlayfs] = " \
    CONFIG_OVERLAY_FS=y \
"

RESIN_CONFIGS[iwlwifi] = " \
    CONFIG_IWLWIFI=m \
"
