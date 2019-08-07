# ---------------------------------------------------------------------------------------------------------------------
# Terraform variables
# DO NOT CHANGE THESE UNLESS YOU KNOW WHAT YOU ARE DOING
# Note: The values will be replaced with the variables defined in the main vars file
#
# Instructions on that are here: https://github.com/cloud-partners/oci-prerequisites
# ---------------------------------------------------------------------------------------------------------------------

variable "compartment_ocid" {
  default="ocid1.compartment.oc1..aaaaaaaag4otvjvl3zo6jyzlevoycc5bqtst5uwixlpztaxlovm2fudabqnq"
}

# Required by the OCI Provider
variable "tenancy_ocid" {
  default="ocid1.tenancy.oc1..aaaaaaaa6kxbn3rz7cv3l5rbf5nvkptu2k7ly3wwgqsmfowonkbgyp26267q"
}

variable "user_ocid" {
  default="ocid1.user.oc1..aaaaaaaaggsgb2fll3kj6exhbj24coa6guoy6rtnzfg7473ff32plihmcqjq"
}
variable "fingerprint" {
  default= "40:b5:12:e7:4c:39:23:3a:bf:94:e2:42:a2:44:99:fe"
}

variable "private_key_path" {
  default="/home/opc/.oci/oci_api_key.pem"
}

variable "region" {
  default="us-phoenix-1"
}

# Key used to SSH to OCI VMs
variable "ssh_public_key" {
  default="oke-keys/oke_rsa_keys.pub"
}

variable "ssh_private_key" {
  default="oke-keys/oke_rsa_keys"
}


# ---------------------------------------------------------------------------------------------------------------------
# Optional variables
# The defaults here will give you a cluster. 
# ---------------------------------------------------------------------------------------------------------------------

variable "oke" {
  type = "map"

  default = {
    name             = "OKE"
    shape            = "VM.Standard2.2"
    nodes_per_subnet = 1
  }
}
