#Setting up the micronaut 

!/bin/bash

sdk_url=https://get.sdkman.io

echo "**** Installing Micronaut ****"

curl -s ${sdk_url} | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install micronaut
mn --version






