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
                windows: 'http://docs.resin.io/etcher-pro/nodejs/getting-started/#adding-your-first-device'
                osx: 'http://docs.resin.io/etcher-pro/getting-started/#adding-your-first-device'
                linux: 'http://docs.resin.io/etcher-pro/getting-started/#adding-your-first-device'

        supportsBlink: false

        yocto:
                machine: 'etcher-pro'
                image: 'resin-image-flasher'
                fstype: 'resinos-img'
                version: 'yocto-sumo'
                deployArtifact: 'resin-image-flasher-etcher-pro.resinos-img'
                compressed: true

        options: [ networkOptions.group ]

        configuration:
                config:
                        partition:
                                primary: 1
                        path: '/config.json'

        initialization: commonImg.initialization
