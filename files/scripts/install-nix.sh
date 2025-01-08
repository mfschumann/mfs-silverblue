#!/usr/bin/env bash

set -oue pipefail

curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install --determinate --no-confirm
sed -i -r -e '/^\s*Defaults\s+secure_path/ s[=(.*)[=\1:/nix/var/nix/profiles/default/bin[' /etc/sudoers