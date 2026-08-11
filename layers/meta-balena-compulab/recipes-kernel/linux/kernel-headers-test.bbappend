# Override the bundled Dockerfile with one that passes HOSTCFLAGS=-fcommon
# to the host-tool build - see kernel-headers-test/Dockerfile for why.
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
