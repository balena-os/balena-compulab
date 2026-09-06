FROM debian:bullseye-20260824

# bullseye LTS ended 2026-08-31 and packages are being deleted from the live
# mirrors while the index still advertises them, so apt 404s mid-build.
# archive.debian.org is no use here: it is frozen at point release 11.11, whose
# libc6-dev/libssl-dev pin exact runtime versions older than the ones this image
# already has installed, so they cannot be co-installed.
# The snapshot archive matching this image tag is consistent by construction,
# because the image was built from it. The base image ships both sets of lines
# in /etc/apt/sources.list, so flipping which are commented takes the timestamp
# from the image and stays correct when the base tag is bumped. The grep fails
# the build if a future base image stops shipping snapshot lines.
# Snapshot Release files are historical, so their Valid-Until has passed.
# See balena-os/meta-balena#3938.
RUN sed -i -E \
	-e 's|^deb +http://deb\.debian\.org|# &|' \
	-e 's|^# *(deb +http://snapshot\.debian\.org)|\1|' \
	/etc/apt/sources.list \
	&& grep -q '^deb http://snapshot\.debian\.org' /etc/apt/sources.list \
	&& printf 'Acquire::Check-Valid-Until "false";\nAcquire::Retries "3";\n' > /etc/apt/apt.conf.d/99snapshot

# Install dependencies
RUN apt-get update && apt-get install -y curl wget build-essential libelf-dev bc flex libssl-dev bison gcc-arm-linux-gnueabi gcc-aarch64-linux-gnu python3-minimal

# Fetch kernel module headers built and source
ADD example_module /usr/src/app/example_module_headers_src/
ADD kernel_modules_headers.tar.gz /usr/src/app/
WORKDIR /usr/src/app

# Workaround for a subtle issue in the linker path. Debian defaults to /lib64/ld-linux-x86-64.so.2 while balenaOS defaults to /lib/ld-linux-x86-64.so.2 for os/headers. Affects NUC.
RUN if [ -f /lib64/ld-linux-x86-64.so.2 ]; then \
	if [ ! -f /lib/ld-linux-x86-64.so.2 ]; then \
		ln -s /lib64/ld-linux-x86-64.so.2  /lib/ld-linux-x86-64.so.2 ; \
	fi; \
    fi;

ARG kernel_arch
ARG cross_compile_prefix
# bullseye's default gcc is gcc-10, which flipped the default from -fcommon
# to -fno-common - this board's kernel (4.9-era) bundles a scripts/dtc
# lexer/parser pair that tentatively-defines `yylloc` in both, relying on
# -fcommon to merge them; under -fno-common that's a link-time "multiple
# definition" error. HOSTCFLAGS=-fcommon restores the old behavior for the
# host-tool build only (modules_prepare), matching what this kernel's own
# in-tree host gcc (7.x, pre-fno-common) would have done.
# This kernel's top-level Makefile sets `HOSTCFLAGS = ...` with a plain
# assignment (not :=/override), which in GNU Make silently overrides an
# inherited *environment* variable of the same name but not a `make
# VAR=value` command-line argument - HOSTCFLAGS has to be passed as an
# argument to make itself, after the target, not as a shell env-var prefix.
# Compile external hello module using header sources
RUN ARCH=${kernel_arch} CROSS_COMPILE=${cross_compile_prefix} make -C /usr/src/app/*/build modules_prepare HOSTCFLAGS="-fcommon"
RUN ARCH=${kernel_arch} CROSS_COMPILE=${cross_compile_prefix} make -C /usr/src/app/*/build/ M=/usr/src/app/example_module_headers_src HOSTCFLAGS="-fcommon"
