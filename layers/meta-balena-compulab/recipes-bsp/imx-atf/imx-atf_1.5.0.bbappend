FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
           file://0001-Allow-BUILD_STRING-to-be-set-in-.revision-file.patch \
"