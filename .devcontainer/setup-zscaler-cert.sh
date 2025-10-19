#!/usr/bin/env bash

# Copy the Zscaler root CA certificate to the system's CA certificates directory
sudo cp ./.devcontainer/ZscalerRootCA.crt /usr/local/share/ca-certificates/ZscalerRootCA.crt
sudo update-ca-certificates
