#!/bin/bash

echo "**** Generating API Keys ****"
if [ -d "~/.oci" ]; then
  echo "OCI user folder exists."
else
  mkdir ~/.oci
fi
openssl genrsa -out ~/.oci/oci_api_key.pem 2048
chmod go-rwx ~/.oci/oci_api_key.pem
openssl rsa -pubout -in ~/.oci/oci_api_key.pem -out ~/.oci/oci_api_key_public.pem

# Get the fingerprint
FINGERPRINT=$(openssl rsa -pubout -outform DER -in ~/.oci/oci_api_key.pem | openssl md5 -c)
echo "[INFO]	API key generated. Key fingerprint=$FINGERPRINT"
cat ~/.oci/oci_api_key_public.pem
echo "[INFO]	Note: You are required to upload this key to your OCI user console."
