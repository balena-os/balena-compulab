deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon
 
ETCHER_PRO_FLASH = 'Insert microSD card into flashing slot and toggle DSW1 switch to ON position. Power-up board'
ETCHER_PRO_POST_FLASH  = 'Remove microSD card from flashing slot and toggle DSW1 switch to OFF position'
 
postProvisioningInstructions = [
        instructions.BOARD_SHUTDOWN
        ETCHER_PRO_POST_FLASH
        instructions.REMOVE_INSTALL_MEDIA
        instructions.BOARD_REPOWER
]
 
module.exports =
        version: 1
        slug: 'etcher-pro'
        name: 'Etcher Pro'
        arch: 'aarch64'
        state: 'new'
        private: false
 
        stateInstructions:
                postProvisioning: postProvisioningInstructions
 
        instructions: [
                instructions.ETCHER_SD
                instructions.EJECT_SD
                instructions.FLASHER_WARNING
                ETCHER_PRO_FLASH
        ].concat(postProvisioningInstructions)

        gettingStartedLink:
                windows: 'https://www.balena.io/docs/learn/getting-started/raspberrypi4/nodejs/'
                osx: 'https://www.balena.io/docs/learn/getting-started/raspberrypi4/nodejs/'
                linux: 'https://www.balena.io/docs/learn/getting-started/raspberrypi4/nodejs/'

        supportsBlink: false

        yocto:
                machine: 'etcher-pro'
                image: 'balena-image-flasher'
                fstype: 'balenaos-img'
                version: 'yocto-dunfell'
                deployArtifact: 'balena-image-flasher-etcher-pro.balenaos-img'
                compressed: true

        options: [ networkOptions.group ]

        configuration:
                config:
                        partition:
                                primary: 1
                        path: '/config.json'

        initialization: commonImg.initialization
