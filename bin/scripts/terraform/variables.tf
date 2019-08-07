# ---------------------------------------------------------------------------------------------------------------------
# Environmental variables
# You probably want to define these as environmental variables.
# Instructions on that are here: https://github.com/cloud-partners/oci-prerequisites
# ---------------------------------------------------------------------------------------------------------------------

variable "compartment_ocid" {
  default="<COMPARTMENT_OCID>"
}

# Required by the OCI Provider
variable "tenancy_ocid" {
  default="<TENANCY_OCID>"
}

variable "user_ocid" {
  default="<USER_OCID>"
}
variable "fingerprint" {
  default= "<USER_FINGERPRINT>"
}

variable "private_key_path" {
  default="/home/opc/.oci/oci_api_key.pem"
}

variable "region" {
  default="<REGION>"
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
# The defaults here will give you a cluster.  You can also modify these.
# ---------------------------------------------------------------------------------------------------------------------

variable "oke" {
  type = "map"

  default = {
    name             = "OKE"
    shape            = "VM.Standard2.2"
    nodes_per_subnet = 1
  }
}
