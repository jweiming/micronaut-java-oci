#setup oke, keys on OCI
!/bin/bash

echo "**** Start of OKE Setup ****"
echo "**** Generating SSH Key ****"
mkdir oke-keys
ssh-keygen -t rsa -b 2048 -f oke-keys/oke_rsa_keys -N "" > oke-keys/oke_rsa_keys.output

echo "**** Cloning OCI-OKE Terraform ****"
cd terraform/
terraform init
terraform plan
terraform apply -auto-approve
