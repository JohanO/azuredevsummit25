#!/usr/bin/env bash

# Unset Git HTTP proxy settings
git config --global --unset http.proxy || true
git config --global --unset https.proxy || true
