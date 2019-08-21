inherit kernel-resin

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
