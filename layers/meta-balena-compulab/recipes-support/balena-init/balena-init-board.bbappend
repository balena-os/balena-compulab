FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI = "file://balena-init-board"
S = "${WORKDIR}"

RDEPENDS_${PN} = "bash"

do_install_append_etcher-pro() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/balena-init-board ${D}${bindir}
}
