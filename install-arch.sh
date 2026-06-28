#!/usr/bin/env bash
set -euo pipefail

REPO="https://raw.githubusercontent.com/kurashizu/dotfiles/main"

echo ":: Downloading archinstall config files..."
curl -sL -o /tmp/archinstall_config.json "$REPO/archinstall_config.json"
curl -sL -o /tmp/archinstall_creds.json "$REPO/archinstall_creds.json"

echo ":: Starting archinstall..."
exec archinstall --config /tmp/archinstall_config.json --creds /tmp/archinstall_creds.json
