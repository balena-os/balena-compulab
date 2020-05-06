FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_etcher-pro = " \
    file://etcher-logo.png \
    "

do_deploy_append_etcher-pro() {
    install -m 0644 ${WORKDIR}/etcher-logo.png ${DEPLOYDIR}/resin-logo.png
}