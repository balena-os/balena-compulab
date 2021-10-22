do_install() {
    mkdir -p ${D}/boot
    for type in Image.gz; do
        install -m 0644 ${DEPLOY_DIR_IMAGE}/${type}-initramfs-${MACHINE}.bin ${D}/boot/${type}
    done
}

