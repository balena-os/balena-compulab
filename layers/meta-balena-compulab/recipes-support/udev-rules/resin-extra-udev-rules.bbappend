FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI += "file://99-fan-pwm-enable.rules"

do_install_append_etcher-pro () {
        install -D -m 0644 ${WORKDIR}/99-fan-pwm-enable.rules ${D}/lib/udev/rules.d/
}

