include resin-image.inc

RESIN_BOOT_PARTITION_FILES_append_cl-som-imx8 = " \
    imx-boot-${MACHINE}-sd.bin-flash_evk:\
"

# Fixes error: packages already installed
# by kernel-image-initramfs
IMAGE_INSTALL_remove = " kernel-image"
