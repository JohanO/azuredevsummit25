#!/usr/bin/env bash

# Unset Git HTTP proxy settings
git config --global --unset http.proxy || true
git config --global --unset https.proxy || true

# Install uv - the fast Python package installer
curl -LsSf https://astral.sh/uv/install.sh | sh
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc

# Install specify-cli
uv tool install specify-cli --from git+https://github.com/github/spec-kit.git
