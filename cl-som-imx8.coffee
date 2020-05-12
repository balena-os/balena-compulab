deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon
 
CL_SOM_MX8_FLASH = 'Insert SD CARD. Press SW5 followed by SW6. Release SW5 then release SW6.'
 
postProvisioningInstructions = [
        instructions.BOARD_SHUTDOWN
        instructions.REMOVE_INSTALL_MEDIA
        instructions.BOARD_REPOWER
]
 
module.exports =
        version: 1
        slug: 'cl-som-imx8'
        name: 'Compulab MX8M'
        arch: 'aarch64'
        state: 'released'
        private: false
 
        stateInstructions:
                postProvisioning: postProvisioningInstructions
 
        instructions: [
                instructions.ETCHER_SD
                instructions.EJECT_SD
                instructions.FLASHER_WARNING
                CL_SOM_MX8_FLASH
        ].concat(postProvisioningInstructions)

        gettingStartedLink:
                windows: 'http://docs.resin.io/cl-som-imx8/nodejs/getting-started/#adding-your-first-device'
                osx: 'http://docs.resin.io/cl-som-imx8/getting-started/#adding-your-first-device'
                linux: 'http://docs.resin.io/cl-som-imx8/getting-started/#adding-your-first-device'

        supportsBlink: false

        yocto:
                machine: 'cl-som-imx8'
                image: 'resin-image-flasher'
                fstype: 'resinos-img'
                version: 'yocto-sumo'
                deployArtifact: 'resin-image-flasher-cl-som-imx8.resinos-img'
                compressed: true

        options: [ networkOptions.group ]

        configuration:
                config:
                        partition:
                                primary: 1
                        path: '/config.json'

        initialization: commonImg.initialization
