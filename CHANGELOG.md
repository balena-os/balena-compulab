# Change Log
-----------

# v2.49.0+rev2
## (2020-05-11)

* Undo removal of USB devices scan [Vicentiu Galanopulo]

# v2.49.0+rev1
## (2020-05-08)


<details>
<summary> Update the meta-balena submodule from v2.46.0 to v2.49.0 [Vicentiu Galanopulo] </summary>

> ## meta-balena-2.49.0
> ### (2020-05-01)
> 
> * balena-host: Ignore environment file if it does not exist [Alex Gonzalez]
> * Bump balena-engine to 18.09.17 [Robert Günzler]
> * networkmanager: Use absolute path in drop-in [Sven Schwermer]
> * Update ModemManager to v1.12.8 [Michal Toman]
> * Update balena-engine to 18.09.16 [Robert Günzler]
> * Add support for using udev by-state links in balenaOS [Alex Gonzalez]
> * Add initramfs module to regenerate default filesystem UUIDs [Alex Gonzalez]
> * Create udev state symlinks for all partitions [Alex Gonzalez]
> * initramfs-framework: Add os-helpers to module prepare [Alex Gonzalez]
> * Fix initramfs fsck warnings for the boot partition [Andrei Gherzan]
> * Switch to built-in FAT kernel configs [Andrei Gherzan]
> 
<details>
<summary> Update balena-supervisor from v10.8.0 to v10.11.0 [Cameron Diver] </summary>

>> ### balena-supervisor-10.11.0
>> #### (2020-03-30)
>> 
>> * Add BALENA_DEVICE_ARCH environment variable for containers [Cameron Diver]

>> ### balena-supervisor-10.10.15
>> #### (2020-03-30)
>> 
>> * Don't throw an error when getting an unhealthy state [Cameron Diver]

>> ### balena-supervisor-10.10.14
>> #### (2020-03-28)
>> 
>> * Convert src/device-api/common.coffee to javascript [Pagan Gazzard]

>> ### balena-supervisor-10.10.13
>> #### (2020-03-27)
>> 
>> * Switch to mz for the proxyvisor [Pagan Gazzard]
>> * Convert proxyvisor to javascript [Pagan Gazzard]

>> ### balena-supervisor-10.10.12
>> #### (2020-03-26)
>> 
>> * Remove unnecessary code from application-manager [Pagan Gazzard]
>> * Switch to a named export for application-manager [Pagan Gazzard]

>> ### balena-supervisor-10.10.11
>> #### (2020-03-25)
>> 
>> * Convert device-api/v1 to javascript [Pagan Gazzard]

>> ### balena-supervisor-10.10.10
>> #### (2020-03-24)
>> 
>> * Update livepush [Cameron Diver]

>> ### balena-supervisor-10.10.9
>> #### (2020-03-24)
>> 
>> * Add type checking for javascript files [Pagan Gazzard]

>> ### balena-supervisor-10.10.8
>> #### (2020-03-24)
>> 
>> * Pin resin-cli-visuals to avoid build error of lzma-native [Cameron Diver]
>> * Update dependencies [Cameron Diver]

>> ### balena-supervisor-10.10.7
>> #### (2020-03-24)
>> 
>> * Avoid any transpilation of node_modules [Pagan Gazzard]

>> ### balena-supervisor-10.10.6
>> #### (2020-03-24)
>> 
>> * Add transpilation for javascript files to ease node 6 compatibility [Pagan Gazzard]
>> * Add a precheck that linting/tests work on node 10 [Pagan Gazzard]
>> * Update to balena-lint and enable javascript linting [Pagan Gazzard]

>> ### balena-supervisor-10.10.5
>> #### (2020-03-23)
>> 
>> * Tests: Add missing await [Pagan Gazzard]

>> ### balena-supervisor-10.10.4
>> #### (2020-03-16)
>> 
>> * docs: Clarify update locks for multicontainer applications [Gareth Davies]

>> ### balena-supervisor-10.10.3
>> #### (2020-03-16)
>> 
>> * logging: fix up some typos [Matthew McGinn]

>> ### balena-supervisor-10.10.2
>> #### (2020-03-16)
>> 
>> * Bump acorn from 5.7.3 to 5.7.4 [dependabot[bot]]

>> ### balena-supervisor-10.10.1
>> #### (2020-03-13)
>> 
>> * Update dependencies [Pagan Gazzard]

>> ### balena-supervisor-10.10.0
>> #### (2020-03-06)
>> 
>> * Allow semver comparison on l4t versions in contracts [Cameron Diver]
>> * Allow l4t versions with three numbers as well as two [Cameron Diver]

>> ### balena-supervisor-10.9.2
>> #### (2020-03-05)
>> 
>> * config: Support loading SSDT via ConfigFS [Rich Bayliss]

>> ### balena-supervisor-10.9.1
>> #### (2020-02-25)
>> 
>> * Convert device-state module to typescript [Cameron Diver]
>> * Improve application-manager typings [Cameron Diver]
>> * Improve and extend internal typings [Cameron Diver]

>> ### balena-supervisor-10.9.0
>> #### (2020-02-24)
>> 
>> * Add a containerId request parameter for journal-logs api endpoint, and pass it along to journalctl process options. [Ivan]
</details>

> 

> ## meta-balena-2.48.0
> ### (2020-03-20)
> 
> * Add the linux-firmware recipe from the Poky zeus-22.0.1 release and package various iwlwifi firmware separately [Florin Sarbu]
> * Add regulatory.db (Wireless Central Regulatory Domain Database) to rootfs so kernel versions >= v4.15 can load it (for Poky Thud and Warrior based board) [Florin Sarbu]
> * Do not send SIGKILL directly to user containers (set KillMode=process in balena.service) [Florin Sarbu]
> * Update balena-supervisor from  to v10.8.0 [Cameron Diver]
> * Update config.json documentation for disabling NM connectivity checks [Gareth Davies]
> * Fix a typo in a NetworkManager plugin path [Zubair Lutfullah Kakakhel]
> * Remove unnecessary openvpn v2.4.4 recipe in meta-resin-pyro. [Zubair Lutfullah Kakakhel]
> * Use a weak default assignment in a recipe for customer trying to override a variable in his layer [Zubair Lutfullah Kakakhel]

> ## meta-balena-2.47.1
> ### (2020-02-13)
> 
> * Affects 2.45+ on all devices. Fix dangling sshd services on failed connections that would grow and cause cpu load to keep rising. See issue 1837 in meta-balena for more detail. [Zubair Lutfullah Kakakhel]

> ## meta-balena-2.47.0
> ### (2020-01-29)
> 
> * Update usb-modeswitch-data to version 20191128 [Florin Sarbu]
> * Update usb-modeswitch to version 2.5.2 [Florin Sarbu]
> * Update to ModemManager v1.12.4 [Florin Sarbu]
> * Update libmbim to version 1.22.0 [Florin Sarbu]
> * Update libqmi to version 1.24.4 [Florin Sarbu]
> * Add periodic vacuuming of journald log files [Alex Gonzalez]
> * No user impact. Increase limit for maximum initramfs size from 12MB to 32MB. This helps reduce unnecessary overrides in integration layers. [Zubair Lutfullah Kakakhel]
> * Match licenses with license files. [Alex Gonzalez]
> * Enable sixaxis support in bluez5 [Alexis Svinartchouk]
> * Addressing review comments [Gareth Davies]
> * Update config.json documentation [Gareth Davies]
> * Increase DNS clients timeout to 15 seconds [Alex Gonzalez]
> * Fix supervisor nested changelogs [Zubair Lutfullah Kakakhel]
> * Enable memory overcommit [Alex Gonzalez]
> * Add uinput kernel module [Florin Sarbu]
> * Make sure to add in rootfs the wifi firmware for wl18xx [Florin Sarbu]
> * Add supported USB WiFi dongle [Vicentiu Galanopulo]

> ## meta-balena-2.46.2
> ### (2020-01-17)
> 
> * Americanize the README.md [Matthew McGinn]

> ## meta-balena-2.46.1
> ### (2020-01-01)
> 
> * Disable by default the option to stop u-boot autoboot by pressing CTRL+C in all OS versions [Florin Sarbu]
> * Increase NTP polling time to around 4.5 hours. [Alex Gonzalez]
> * Disable the option to stop u-boot autoboot by pressing CTRL+C in production OS version [Florin Sarbu]
</details>

# v2.46.0+rev14
## (2020-05-08)

* Add etcher-pro logo [Vicentiu Galanopulo]

# v2.46.0+rev13
## (2020-05-06)

* Add service to set CPU governor by temperature [Vicentiu Galanopulo]

# v2.46.0+rev12
## (2020-04-13)

* Added support for the Goodix GT911 touch panel [Vicentiu Galanopulo]

# v2.46.0+rev11
## (2020-04-09)

* Add support for MIPI Maxen display [Vicentiu Galanopulo]
* Update BSP layer from Compulab [Vicentiu Galanopulo]

# v2.46.0+rev10
## (2020-03-12)

* Correct EtcherPro flashing instruction [Vicentiu Galanopulo]

# v2.46.0+rev9
## (2020-03-10)

* Update meta-rust to include 1.36 [Zubair Lutfullah Kakakhel]

# v2.46.0+rev8
## (2020-02-17)

* Update from 1.5.2 to 1.5.4 [Vicentiu Galanopulo]

# v2.46.0+rev7
## (2020-01-28)

* Enable KSZ9893R switch for Etcher Pro board [Sebastian Panceac]
* linux-imx: Add support for Microchip KSZ9893R switch [Sebastian Panceac]

# v2.46.0+rev6
## (2020-01-22)

* Remove the usb-modeswitch patch that fixes crashes on 64 bits architectures [Florin Sarbu]

# v2.46.0+rev5
## (2020-01-22)

* Change the state to 'released' in the coffee file [Vicentiu Galanopulo]

# v2.46.0+rev4
## (2020-01-13)

* linux-imx: Enable PWM1 interface in Etcher Pro dtb to control buzzer [Sebastian Panceac]
* linux-imx: Set fec1 controller to fixed-linx mode in Etcher Pro dtb [Sebastian Panceac]

# v2.46.0+rev3
## (2020-01-10)

* linux-imx: Add support for the PCA9956B LED drivers [Sebastian Panceac]

# v2.46.0+rev2
## (2020-01-01)

* linux-imx: Disable CONFIG_DEBUG_PREEMPT kernel config to prevent eMMC crash at boot [Sebastian Panceac]

# v2.46.0+rev1
## (2019-12-31)

* Update the balena-yocto-scripts submodule to v1.5.2 [Florin Sarbu]

<details>
<summary> Update meta-balena from v2.44.0 to v2.46.0 [Florin Sarbu] </summary>

> ## meta-balena-2.46.0
> ### (2019-12-23)
> 
> * Update to ModemManager v1.12.2 [Zahari Petkov]
> * Update libmbim to version 1.20.2 [Zahari Petkov]
> * Update libqmi to version 1.24.2 [Zahari Petkov]
> * Update balena-supervisor to v10.6.27 [Cameron Diver]
> * Tweak how the flasher asserts that internal media is valid for being installed balena OS on [Florin Sarbu]
> * Remove networkmanager stale temporary files at startup [Alex Gonzalez]
> * networkmanager: Rework patches to remove fuzzing [Alex Gonzalez]
> * Update openvpn to v2.4.7 [Will Boyce]
> * Enable kernel configs for USB_SERIAL, USB_SERIAL_PL2303 and HFS for all devices [Zubair Lutfullah Kakakhel]
> * image-resin.bbclass: Mark do_populate_lic_deploy with nostamp [Zubair Lutfullah Kakakhel]
> * Namespace the hello-world healthcheck image [Zubair Lutfullah Kakakhel]
> * Update balena-supervisor to v10.6.17 [Cameron Diver]
> * Update balena-supervisor to v10.6.13 [Cameron Diver]
> * Update CODEOWNERS [Zubair Lutfullah Kakakhel]

> ## meta-balena-2.45.1
> ### (2019-11-21)
> 
> * Fix for a race condition where occasionally the supervisor might not be able to come up during boot. Also can be caused by using io.balena.features.balena-socket and app container restart always policy. Affects meta-balena 2.44.0 and 2.45.0. To be fixed in 2.44.1 and 2.46.0 [Zubair Lutfullah Kakakhel]
> * Rename resin to balena where possible [Pagan Gazzard]
> * Add leading new line for PACKAGE_INSTALL variable [Vicentiu Galanopulo]
> * Set `net.ipv4.ip_local_port_range` to recommended range (49152-65535) [Will Boyce]
> * No user impact, subtle fix in rollback version checks [Zubair Lutfullah Kakakhel]

> ## meta-balena-2.45.0
> ### (2019-10-30)
> 
> * Increase persistent journal size to 32M [Will Boyce]
> * Move persistent logs from state to data partition [Will Boyce]
> * Add wpa-supplicant recipe and update to v2.9 [Will Boyce]
> * Improve robustness by making variou services restart if they stop for some reason [Zubair Lutfullah Kakakhel]
> * Build net/dummy as module [Alexandru Costache]
</details>

# v2.44.0+rev3
## (2019-12-31)

* linux-imx: Enable I2C4 for Etcher Pro in dtb [Sebastian Panceac]
* Add etcher-pro machine support [Sebastian Panceac]

# v2.44.0+rev2
## (2019-12-10)

* linux-imx: Fix host USB3 crashes [Sebastian Panceac]

# v2.44.0+rev1
## (2019-10-18)


<details>
<summary> Update meta-balena from v2.43.0 to v2.44.0 [Vicentiu Galanopulo] </summary>

> ## meta-balena-2.44.0
> ### (2019-10-03)
> 
> * Make uboot dev images autoboot delay build time configurable. Default is no delay [Zubair Lutfullah Kakakhel]
> * Reduce systemd logging level from info to notice [Zubair Lutfullah Kakakhel]
> * resin-supervisor: Expose container ID via env variable [Roman Mazur]
> * kernel-devsrc: Copy vdso.lds.S file in source archive if available [Sebastian Panceac]
> * Disable PasswordAuthentication in sshd in production images as an extra precautionary measure. [Zubair Lutfullah Kakakhel]
> * Update balena-engine to 18.9.10 [Robert Günzler]
> * hostapp-update-hooks: Filter out automount for inactive sysroot [Alexandru Costache]
> * Add support for hooks 2.0 enabling finer granularity during HostOS updates. [Zubair Lutfullah Kakakhel]
> * Update balena-supervisor to v10.3.7 [Cameron Diver]
> * Add support for balena cloud SSH public keys [Andrei Gherzan]
> * Map any user to root using libnss-ato [Andrei Gherzan]
> * Add option to disable kernel headers from being built. [Zubair Lutfullah Kakakhel]
</details>

# v2.43.0+rev1
## (2019-09-30)


<details>
<summary> Update the meta-balena submodule from v2.41.0 to v2.43.0 [Vicentiu Galanopulo] </summary>

> ## meta-balena-2.43.0
> ### (2019-09-13)
> 
> * Update NetworkManager to 1.20.2 [Andrei Gherzan]
> * Update ModemManager to 1.10.6 [Andrei Gherzan]

> ## meta-balena-2.42.0
> ### (2019-09-13)
> 
> * A small fix in initramfs when /dev/console is invalid due to whatever reason [Zubair Lutfullah Kakakhel]
> * Add automated testing for external kernel module header tarballs [Zubair Lutfullah Kakakhel]
> * Make sure correct utsrelease.h is packaged [Zubair Lutfullah Kakakhel]
> * Fix a bug where application containers with new systemd versions were failing to start in cases. Switch to systemd cgroup driver in balenaEngine [Zubair Lutfullah Kakakhel]

> ## meta-balena-2.41.1
> ### (2019-09-03)
> 
> * Update ModemManager to version 1.10.4 [Florin Sarbu]
> * Fix for some innocous systemd tmpfile warnings /var/run -> /run ones [Zubair Lutfullah Kakakhel]
> * Fix for rollbacks where the inactive partition mount was unavailable when altboot triggered [Zubair Lutfullah Kakakhel]
> * kernel-resin: Enable FTDI USB-serial convertors driver [Sebastian Panceac]
</details>

# v2.41.0+rev3
## (2019-09-30)

* Update balena-yocto-scripts to v1.3.8 [Zubair Lutfullah Kakakhel]

# v2.41.0+rev2
## (2019-09-13)

* Patches for TCP-based remote denial of service vulnerabilities [Vicentiu Galanopulo]

# v2.41.0+rev1
## (2019-09-03)

* Update the balena-yocto-scripts submodule to v1.3.5 [Florin Sarbu]

<details>
<summary> Update meta-balena from v2.38.1 to v2.41.0 [Florin Sarbu] </summary>

> ## meta-balena-2.41.0
> ### (2019-08-22)
> 
> * Fix a hang in initramfs for warrior production images [Zubair Lutfullah Kakakhel]
> * Update balena-engine to 18.09.8 [Robert Günzler]
> * Avoid overlayfs mounts in poky's volatile-binds [Andrei Gherzan]

> ## meta-balena-2.40.0
> ### (2019-08-14)
> 
> * Update balena-supervisor to v10.2.2 [Cameron Diver]
> * Workaround for a cornercase bug in PersistentLogging where journalctl filled the state partition. Vacuum the journal on boot. [Zubair Lutfullah Kakakhel]

> ## meta-balena-2.39.0
> ### (2019-07-31)
> 
> * usb-modeswitch-data: Switch Huawei E3372 12d1:1f01 to mbim mode [Alexandru Costache]
> * Fix rollback altboots to prevent good reboots by supervisor triggering rollback. [Zubair Lutfullah Kakakhel]
> * Devices using u-boot. Remove any BOOTDELAY for production images. Add a 2 seconds delay for development images [Zubair Lutfullah Kakakhel]
> * Devices using u-boot. Enable CONFIG_CMD_SETEXPR for all devices. Required for rollbacks to work [Zubair Lutfullah Kakakhel]
> * Devices using u-boot. Enable rollback-altboot by handling bootcount via meta-balena. [Zubair Lutfullah Kakakhel]
> * Production Devices using u-boot. Enable CONFIG_RESET_TO_RETRY to reset a device in case it drops into a u-boot shell [Zubair Lutfullah Kakakhel]
> * Remove confusing networkmanager https connectivity warning [Zubair Lutfullah Kakakhel]
> * Increase fs.inotify.max_user_instances to 512 [Zubair Lutfullah Kakakhel]
> * Update balena-supervisor to v10.0.3 [Cameron Diver]
> * Fix balena hello-world healthcheck [Zubair Lutfullah Kakakhel]
> * Add nf_table kernel modules [Zubair Lutfullah Kakakhel]
> * hostapp-update-hooks: Use correct source for inactive sysroot [Alexandru Costache]
> * Add extra healthcheck to balena service. It will spin up a hello-world container as well [Zubair Lutfullah Kakakhel]
> * Update balena-supervisor to v9.18.8 [Cameron Diver]
> * image-resin.bbclass: fixed a typo [Kyle Harding]
> * kernel-resin: Add support for CH340 family of usb-serial adapters [Sebastian Panceac]
> * resin-proxy-config: add missing reserved ip ranges to default noproxy [Will Boyce]
> * Reduce data partition size from 1G to 192M [Zubair Lutfullah Kakakhel]

> ## meta-balena-2.38.3
> ### (2019-07-10)
> 
> * resin-proxy-config: fix up incorrect bash subshell command [Matthew McGinn]

> ## meta-balena-2.38.2
> ### (2019-06-27)
> 
> * Update to kernel-modules-headers v0.0.20 to fix missing target modpost binary on kernel 5.0.3 [Florin Sarbu]
> * Update to kernel-modules-headers v0.0.19 to fix target objtool compile issue on kernel 5.0.3 [Florin Sarbu]
</details>

# v2.38.1+rev2
## (2019-08-19)

* Update cl-som-imx8 machine to latest u-boot/kernel [Vicentiu Galanopulo]

# v2.38.1+rev1
## (2019-06-21)

* Update meta-balena from v2.38.0 to v2.38.1 [Alexandru Costache]
* Update the balena-yocto-scripts submodule to v1.2.1 [Alexandru Costache]

# v2.38.0+rev1
## (2019-06-18)

* Update rust to 1.33 [Alexandru Costache]
* Update meta-balena from v2.32.0 to v2.38.0 [Alexandru Costache]

<details>
<summary> View details </summary>

## meta-balena-2.38.0
### (2019-06-14)

* Fix VERSION_ID os-release to be semver complient [Andrei Gherzan]
* Introduce META_BALENA_VERSION in os-release [Andrei Gherzan]
* Fix a case where changes to u-boot were not regenerating the config file at build time and using stale values. [Zubair Lutfullah Kakakhel]
* Use all.rp_filter=2 as the default value in balenaOS [Andrei Gherzan]
* Persist bluetooth storage data over reboots [Andrei Gherzan]
* Drop support for morty and krogoth Yocto versions [Andrei Gherzan]
* Add Yocto Warrior support [Zubair Lutfullah Kakakhel]
* Set both VERSION_ID and VERSION in os-release to host OS version [Andrei Gherzan]
* Bump balena-engine to 18.9.6 [Zubair Lutfullah Kakakhel]
* Downgrade balena-supervisor to v9.15.7 [Andrei Gherzan]
* Switch from dropbear to openSSH [Andrei Gherzan]
* Rename meta-resin-common to meta-balena-common [Andrei Gherzan]
* Add wifi firmware for rtl8192su [Zubair Lutfullah Kakakhel]

## meta-balena-2.37.0
### (2019-05-29)

* Update balena-supervisor to v9.15.8 [Cameron Diver]
* kernel-modules-headers: Update to v0.0.18 [Andrei Gherzan]
* os-config: Update to v1.1.1 to fix mDNS [Andrei Gherzan]
* Fix busybox nslookup mdns lookups [Andrei Gherzan]
* Update balena-supervisor to v9.15.4 [Cameron Diver]
* Improve logging and version comparison in linux-firmware cleanup class [Andrei Gherzan]
* Sync ModemManager recipe with upstream [Andrei Gherzan]
* Update NetworkManager to 1.18.0 [Andrei Gherzan]

## meta-balena-2.36.0
### (2019-05-20)

* Cleanup old versions of iwlwifi firmware files in Yocto Thud [Florin Sarbu]

## meta-balena-2.35.0
### (2019-05-18)

* Update kernel-module-headers to version v0.0.16 [Florin Sarbu]
* Add uboot support for unified kernel cmdline arguments [Andrei Gherzan]
* Switch flasher detection in initramfs to flasher boot parameter [Andrei Gherzan]
* Update balena-supervisor to v9.15.0 [Cameron Diver]
* Improve boot speed by only mounting the inactive partition when needed [Zubair Lutfullah Kakakhel]
* Fix openssl dependency of balena-unique-key [Andrei Gherzan]
* Do not spawn getty in production images [Florin Sarbu]

## meta-balena-2.34.1
### (2019-05-14)

* Update balena-supervisor to v9.14.10 [Cameron Diver]

## meta-balena-2.34.0
### (2019-05-10)

* Add support to update a connectivity section in NetworkManager via config.json [Zubair Lutfullah Kakakhel]
* systemd: Fix journald configuration file [Andrei Gherzan]
* Add --max-download-attempts=10 to balenaEngine service to improve performance on shaky networks [Zubair Lutfullah Kakakhel]
* Update balena-engine to 18.09.5 [Zubair Lutfullah Kakakhel]
* Log initramfs messages to kernel dmesg to capture fsck, partition expand etc. command output [Zubair Lutfullah Kakakhel]
* kernel-resin: Add FAT fs specific configs to RESIN_CONFIGS [Sebastian Panceac]
* Update balena-supervisor to v9.14.9 [Cameron Diver]
* Introduce meta-balena yocto thud support [Andrei Gherzan]
* Update os-config to 1.1.0 [Andrei Gherzan]

## meta-balena-2.33.0
### (2019-05-02)

* Fixes for sysroot symlinks creation [Andrei Gherzan]
* libmbim: Refresh patches after last update to avoid build warnings [Andrei Gherzan]
* modemmanager: Refresh patches after last update to avoid build warnings [Andrei Gherzan]
* Make security flags inclusion yocto version specific [Andrei Gherzan]
* systemd: Make directory warning patch yocto version specific [Andrei Gherzan]
* Replace wireless tools by iw [Andrei Gherzan]
* systemd: Use a conf.d file for journald configuration [Andrei Gherzan]
* Set go verison to 1.10.8 to match balena-engine requirements [Andrei Gherzan]
* Update balena-engine to 18.09.3 [Andrei Gherzan]
* Update balena-supervisor to v9.14.6 [Cameron Diver]
* resin-u-boot: make devtool-compatible [Sven Schwermer]
* docker-disk: Disable unnecessary docker pid check [Armin Schlegel]
* Update libmbim to version 1.18.0 [Zahari Petkov]
* Update libqmi to version 1.22.2 [Zahari Petkov]
* Update to ModemManager v1.10.0 [Zahari Petkov]
* Add a OS_KERNEL_CMDLINE parameter that allows BSPs to easily add extra kernel cmdline args to production images [Zubair Lutfullah Kakakhel]
</details>

* Update the balena-yocto-scripts submodule to v1.2.0 [Alexandru Costache]

# v2.32.0+rev1
## (2019-04-25)

* Change the poky submodule to our github mirror [Alexandru Costache]
* Update repo.yml to be able to trigger VersionBot with `meta-balena` [Alexandru Costache]
* Update meta-resin from v2.31.5 to v2.32.0 [Alexandru Costache]

<details>
<summary> View details </summary>

## meta-resin-2.32.0
### (2019-04-08)

* balena-supervisor: Update to v9.14.0 [Cameron Diver]
* readme: Replace resin with balena where appropriate [Roman Mazur]
* Add systemd-analyze to production images as well [Zubair Lutfullah Kakakhel]
* Enable dbus interface for dnsmasq [Zubair Lutfullah Kakakhel]
* Disable docker bridge while pulling the supervisor container to remove runtime balena-engine warnings [Zubair Lutfullah Kakakhel]
* Fix typo in os-networkmanager that prevented it from working [Zubair Lutfullah Kakakhel]
* Fix bug where fsck was run on the data partition on every boot even if it wasn't needed due to old system time. [Zubair Lutfullah Kakakhel]
* Fix the balena version string reported by balena-engine info [Zubair Lutfullah Kakakhel]
* Only check mmc devices for flasher image presence by default. [Zubair Lutfullah Kakakhel]
* Remove an extra redundant copy of udev rules database [Zubair Lutfullah Kakakhel]
* Un-upx mobynit and os-config to speed them up a bit. Approx 1 second boost to boot time. [Zubair Lutfullah Kakakhel]
</details>

* Update the balena-yocto-scripts submodule to v1.0.5 [Alexandru Costache]
* Rename meta-resin to meta-balena in repository [Alexandru Costache]

# v2.31.5+rev1
## (2019-03-27)

* Update the meta-resin submodule from v2.29.2 to v2.31.5 [Alexandru Costache]

<details>
<summary> View details </summary>

## meta-resin-2.31.5
### (2019-03-21)

* Update resin-supervisor to v9.11.3 [Andrei Gherzan]

## meta-resin-2.31.4
### (2019-03-20)

* resin-supervisor: Recreate on start if config has changed [Rich Bayliss]

## meta-resin-2.31.3
### (2019-03-20)

* Update resin-supervisor to v9.11.2 [Pablo Carranza Velez]

## meta-resin-2.31.2
### (2019-03-19)

* Update resin-supervisor to v9.11.1 [Pablo Carranza Velez]

## meta-resin-2.31.1
### (2019-03-18)

* Update resin-supervisor to v9.11.0 [Pablo Carranza Velez]

## meta-resin-2.31.0
### (2019-03-08)

* README:md: Document dnsServers behaviour [Alexis Svinartchouk]
* Update resin-supervisor to v9.9.0 [Cameron Diver]
* Cleanup old versions of iwlwifi firmware files in Yocto sumo [Andrei Gherzan]
* Remove polkit dependency in balenaOS [Andrei Gherzan]
* Remove support for XFS file system [Andrei Gherzan]
* resin-init: update resin.io reference to balenaOS [Matthew McGinn]

## meta-resin-2.30.0
### (2019-02-28)

* resin-supervisor: Recreate on start if config has changed [Rich Bayliss]
* Generate the temporary kernel-devsrc compressed archive in WORKDIR instead of B [Florin Sarbu]
* balena-engine: Update to include fix for signal SIGRTMIN+3 [Andrei Gherzan]
* Reduce sleeps while trying to mount partition to speed up boot [Zubair Lutfullah Kakakhel]
* resin-expand: Reduce sleep duration to speed up boot [Zubair Lutfullah Kakakhel]
* initrdscripts: Reduce sleep to speed up boot [Zubair Lutfullah Kakakhel]
* Make balena-host daemon socket activated to reduce baseline cpu/memory usage [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v9.8.6 [Cameron Diver]
* Add support for aufs 4.18.11+, 4.19, 4.20 variants and update 4.14, 4.14.56+, 4.15, 4.16, 4.17, 4.18 [Florin Sarbu]
* balena-engine: Bump to include runc patch [Andrei Gherzan]
* Improve kernel-module-headers for v4.18+ kernels [Zubair Lutfullah Kakakhel]
* Update balena-supervisor to v9.8.3 [Cameron Diver]
* Ask chrony to quickly take measurements from custom NTP servers when they are added [Zubair Lutfullah Kakakhel]
* Disable in-tree rtl8192cu driver [Florin Sarbu]
* Prevent rollbacks from running if the previous OS is before v2.30.0 [Zubair Lutfullah Kakakhel]
* Change rollbacks to accept hex partition numbers for jetsons [Zubair Lutfullah Kakakhel]
* Convert partition numbers to hex in u-boot hook. Shouldn't affect any device. [Zubair Lutfullah Kakakhel]
* Reduce default reboot/poweroff timeouts from 30 minutes to 10 minutes [Zubair Lutfullah Kakakhel]
* Configure systemd tmpfiles to ignore supervisor tmp directories [Andrei Gherzan]
* Fixed "Can't have overlapping partitions." error in flasher [Alexandru Costache]
* Define default DNS servers behaviour with and without google DNS [Andrei Gherzan]
* Update balena-supervisor to v9.4.2 [Cameron Diver]
* Fix for some warnings [Zubair Lutfullah Kakakhel]
* Fix tini filename after balena-engine rename [Andrei Gherzan]
* Fix nm dispatcher hook when there are no custom ntp servers in config.json [Zubair Lutfullah Kakakhel]
* Improve persistent logging systemd service dependencies [Zubair Lutfullah Kakakhel]
* Update balena-supervisor to v9.3.0 [Cameron Diver]
* Use the new revision for balena source code [Florin Sarbu]
* Add a workaround for a bug where the chronyc online command in network manager hook would get stuck and eat cpu cycles [Zubair Lutfullah Kakakhel]
* Fix img to rootfs dependency when img is invalidated [Andrei Gherzan]
* Have boot partition type configurable as FAT32 [Andrei Gherzan]
* Deprecate morty and krogoth [Zubair Lutfullah Kakakhel]
* Deploy kernel source as a build artifact as well for external module compilation [Zubair Lutfullah Kakakhel]
* kernel-devsrc: Tarball up the kernel source and deploy it. [Zubair Lutfullah Kakakhel]
* kernel-modules-headers: Use the build directory for artifacts [Zubair Lutfullah Kakakhel]
* docs: Add documentation on nested changelogs [Giovanni Garufi]
* VersionBot: update upstream name and url [Giovanni Garufi]
</details>

* Update the balena-yocto-scripts submodule to v1.0.3 [Alexandru Costache]

# v2.29.2+rev2
## (2019-01-23)

* Add parsable changelog [Giovanni Garufi]

# v2.29.2+rev1
## (2019-01-22)

* Add hostapp-update hooks for cl-som-imx8 [Alexandru Costache]
* resin-image: Added resin-image support for mx8 [Alexandru Costache]
