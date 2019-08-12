# Copyright (C) 2013-2016 Freescale Semiconductor
# Copyright 2017-2018 NXP
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
FILESEXTRAPATHS_prepend := "${THISDIR}/compulab:"

include compulab/cl-som-imx8.inc

SRC_URI_append = " file://Install-dma-buf-h.patch"

inherit fsl-vivante-kernel-driver-handler

inherit kernel-resin

RESIN_CONFIGS_append = " 80211 iwlwifi"
RESIN_CONFIGS[80211] = " \
    CONFIG_CFG80211=y \
"

RESIN_CONFIGS[iwlwifi] = " \
    CONFIG_IWLWIFI=m \
"

# We set this in order to have
# the modules built with the same
# version as the kernel, otherwise
# it won't be possible to load them
SCMVERSION="n"

IMX_UAPI_HEADERS = "videodev2.h dma-buf.h"

MORE_UAPI_HEADERS = "ion.h"

do_install_append () {
   # Install i.MX specific uapi headers
   oe_runmake headers_install INSTALL_HDR_PATH=${B}${exec_prefix}
   for UAPI_HDR in ${IMX_UAPI_HEADERS}; do
       found_result=`find ${B}${exec_prefix}/include -name ${UAPI_HDR} -printf '%P '`
       for hdr_file in $found_result ; do
           folder_name=`echo ${hdr_file%/*} `
           install -d ${D}${exec_prefix}/include/$folder_name
           cp ${B}${exec_prefix}/include/$hdr_file ${D}${exec_prefix}/include/$folder_name
           echo "copy ${UAPI_HDR} to $hdr_file"
       done
   done
}

do_install_append () {
   # Install some additional uapi headers
   install -d ${D}${exec_prefix}/include/linux
   for UAPI_HDR in ${MORE_UAPI_HEADERS}; do
       find ${STAGING_KERNEL_DIR} -path '*uapi*' -name ${UAPI_HDR} -exec cp {} ${D}${exec_prefix}/include/linux \;
       ls ${D}${exec_prefix}/include/linux
       echo "copy ${UAPI_HDR} done"
   done
   rm ${D}${exec_prefix}/include/linux/dma-buf.h
}

sysroot_stage_all_append () {
    # FIXME: Remove videodev2.h as conflict with linux-libc-headers
    find ${D}${exec_prefix}/include -name videodev2.h -exec mv {} ${B} \;
    # Install SOC related uapi headers to sysroot
    sysroot_stage_dir ${D}${exec_prefix}/include ${SYSROOT_DESTDIR}${exec_prefix}/include
    # FIXME: Restore videodev2 back
    if [ -e ${B}/videodev2.h ]; then
        mv ${B}/videodev2.h ${D}${exec_prefix}/include/linux/
    fi
}

PACKAGES += "${PN}-soc-headers"
FILES_${PN}-soc-headers = "${exec_prefix}/include"


do_configure_append_cl-som-imx8 () {
    oe_runmake cl-som-imx8_defconfig
# Unset CONFIG_MXC_GPU_VIV in oredr to
# allow compiling galcore externally
    sed -i '/CONFIG_MXC_GPU_VIV/d;$a # CONFIG_MXC_GPU_VIV is not set' .config
}

KERNEL_MODULE_AUTOLOAD += "goodix"
